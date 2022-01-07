; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/xmon/extr_xmon.c_do_step.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/xmon/extr_xmon.c_do_step.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_regs = type { i32, i32, i32 }

@MSR_64BIT = common dso_local global i32 0, align 4
@MSR_PR = common dso_local global i32 0, align 4
@MSR_IR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Couldn't single-step %s instruction\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"rfid\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"mtmsrd\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"stepped to \00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@MSR_SE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pt_regs*)* @do_step to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_step(%struct.pt_regs* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pt_regs*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.pt_regs* %0, %struct.pt_regs** %3, align 8
  %6 = call i32 (...) @force_enable_xmon()
  %7 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %8 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @MSR_64BIT, align 4
  %11 = load i32, i32* @MSR_PR, align 4
  %12 = or i32 %10, %11
  %13 = load i32, i32* @MSR_IR, align 4
  %14 = or i32 %12, %13
  %15 = and i32 %9, %14
  %16 = load i32, i32* @MSR_64BIT, align 4
  %17 = load i32, i32* @MSR_IR, align 4
  %18 = or i32 %16, %17
  %19 = icmp eq i32 %15, %18
  br i1 %19, label %20, label %61

20:                                               ; preds = %1
  %21 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %22 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @mread(i32 %23, i32* %4, i32 4)
  %25 = icmp eq i32 %24, 4
  br i1 %25, label %26, label %60

26:                                               ; preds = %20
  %27 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %28 = load i32, i32* %4, align 4
  %29 = call i32 @emulate_step(%struct.pt_regs* %27, i32 %28)
  store i32 %29, i32* %5, align 4
  %30 = load i32, i32* %5, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %39

32:                                               ; preds = %26
  %33 = load i32, i32* %4, align 4
  %34 = call i64 @IS_RFID(i32 %33)
  %35 = icmp ne i64 %34, 0
  %36 = zext i1 %35 to i64
  %37 = select i1 %35, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0)
  %38 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i8* %37)
  store i32 0, i32* %2, align 4
  br label %67

39:                                               ; preds = %26
  %40 = load i32, i32* %5, align 4
  %41 = icmp sgt i32 %40, 0
  br i1 %41, label %42, label %59

42:                                               ; preds = %39
  %43 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %44 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = and i32 %45, 1
  %47 = or i32 3328, %46
  %48 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %49 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %48, i32 0, i32 1
  store i32 %47, i32* %49, align 4
  %50 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  %51 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %52 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @xmon_print_symbol(i32 %53, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  %55 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %56 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @ppc_inst_dump(i32 %57, i32 1, i32 0)
  store i32 0, i32* %2, align 4
  br label %67

59:                                               ; preds = %39
  br label %60

60:                                               ; preds = %59, %20
  br label %61

61:                                               ; preds = %60, %1
  %62 = load i32, i32* @MSR_SE, align 4
  %63 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %64 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = or i32 %65, %62
  store i32 %66, i32* %64, align 4
  store i32 1, i32* %2, align 4
  br label %67

67:                                               ; preds = %61, %42, %32
  %68 = load i32, i32* %2, align 4
  ret i32 %68
}

declare dso_local i32 @force_enable_xmon(...) #1

declare dso_local i32 @mread(i32, i32*, i32) #1

declare dso_local i32 @emulate_step(%struct.pt_regs*, i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i64 @IS_RFID(i32) #1

declare dso_local i32 @xmon_print_symbol(i32, i8*, i8*) #1

declare dso_local i32 @ppc_inst_dump(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
