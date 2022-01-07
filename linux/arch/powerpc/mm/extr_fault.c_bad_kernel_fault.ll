; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/mm/extr_fault.c_bad_kernel_fault.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/mm/extr_fault.c_bad_kernel_fault.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_regs = type { i32 }

@DSISR_NOEXEC_OR_G = common dso_local global i64 0, align 8
@DSISR_KEYFAULT = common dso_local global i64 0, align 8
@DSISR_PROTFAULT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [68 x i8] c"kernel tried to execute %s page (%lx) - exploit attempt? (uid: %d)\0A\00", align 1
@TASK_SIZE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [15 x i8] c"exec-protected\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"user\00", align 1
@init_user_ns = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [73 x i8] c"Kernel attempted to access user page (%lx) - exploit attempt? (uid: %d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pt_regs*, i64, i64, i32)* @bad_kernel_fault to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bad_kernel_fault(%struct.pt_regs* %0, i64 %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.pt_regs*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.pt_regs* %0, %struct.pt_regs** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = load %struct.pt_regs*, %struct.pt_regs** %6, align 8
  %12 = call i32 @TRAP(%struct.pt_regs* %11)
  %13 = icmp eq i32 %12, 1024
  %14 = zext i1 %13 to i32
  store i32 %14, i32* %10, align 4
  %15 = load i32, i32* %10, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %36

17:                                               ; preds = %4
  %18 = load i64, i64* %7, align 8
  %19 = load i64, i64* @DSISR_NOEXEC_OR_G, align 8
  %20 = load i64, i64* @DSISR_KEYFAULT, align 8
  %21 = or i64 %19, %20
  %22 = load i64, i64* @DSISR_PROTFAULT, align 8
  %23 = or i64 %21, %22
  %24 = and i64 %18, %23
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %36

26:                                               ; preds = %17
  %27 = load i64, i64* %8, align 8
  %28 = load i64, i64* @TASK_SIZE, align 8
  %29 = icmp uge i64 %27, %28
  %30 = zext i1 %29 to i64
  %31 = select i1 %29, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)
  %32 = load i64, i64* %8, align 8
  %33 = call i32 (...) @current_uid()
  %34 = call i32 @from_kuid(i32* @init_user_ns, i32 %33)
  %35 = call i32 (i8*, ...) @pr_crit_ratelimited(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str, i64 0, i64 0), i8* %31, i64 %32, i32 %34)
  store i32 1, i32* %5, align 4
  br label %78

36:                                               ; preds = %17, %4
  %37 = load i32, i32* %10, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %59, label %39

39:                                               ; preds = %36
  %40 = load i64, i64* %8, align 8
  %41 = load i64, i64* @TASK_SIZE, align 8
  %42 = icmp ult i64 %40, %41
  br i1 %42, label %43, label %59

43:                                               ; preds = %39
  %44 = load i64, i64* %7, align 8
  %45 = load i64, i64* @DSISR_PROTFAULT, align 8
  %46 = and i64 %44, %45
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %59

48:                                               ; preds = %43
  %49 = load %struct.pt_regs*, %struct.pt_regs** %6, align 8
  %50 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @search_exception_tables(i32 %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %59, label %54

54:                                               ; preds = %48
  %55 = load i64, i64* %8, align 8
  %56 = call i32 (...) @current_uid()
  %57 = call i32 @from_kuid(i32* @init_user_ns, i32 %56)
  %58 = call i32 (i8*, ...) @pr_crit_ratelimited(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.3, i64 0, i64 0), i64 %55, i32 %57)
  br label %59

59:                                               ; preds = %54, %48, %43, %39, %36
  %60 = load i64, i64* %8, align 8
  %61 = load i64, i64* @TASK_SIZE, align 8
  %62 = icmp uge i64 %60, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %59
  store i32 1, i32* %5, align 4
  br label %78

64:                                               ; preds = %59
  %65 = load %struct.pt_regs*, %struct.pt_regs** %6, align 8
  %66 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @search_exception_tables(i32 %67)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %71, label %70

70:                                               ; preds = %64
  store i32 1, i32* %5, align 4
  br label %78

71:                                               ; preds = %64
  %72 = load %struct.pt_regs*, %struct.pt_regs** %6, align 8
  %73 = load i32, i32* %9, align 4
  %74 = call i64 @bad_kuap_fault(%struct.pt_regs* %72, i32 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %71
  store i32 1, i32* %5, align 4
  br label %78

77:                                               ; preds = %71
  store i32 0, i32* %5, align 4
  br label %78

78:                                               ; preds = %77, %76, %70, %63, %26
  %79 = load i32, i32* %5, align 4
  ret i32 %79
}

declare dso_local i32 @TRAP(%struct.pt_regs*) #1

declare dso_local i32 @pr_crit_ratelimited(i8*, ...) #1

declare dso_local i32 @from_kuid(i32*, i32) #1

declare dso_local i32 @current_uid(...) #1

declare dso_local i32 @search_exception_tables(i32) #1

declare dso_local i64 @bad_kuap_fault(%struct.pt_regs*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
