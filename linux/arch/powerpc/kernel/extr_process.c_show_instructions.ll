; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_process.c_show_instructions.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_process.c_show_instructions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_regs = type { i32, i32 }

@NR_INSN_TO_PRINT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"Instruction dump:\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@MSR_IR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"XXXXXXXX \00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"<%08x> \00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"%08x \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pt_regs*)* @show_instructions to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @show_instructions(%struct.pt_regs* %0) #0 {
  %2 = alloca %struct.pt_regs*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.pt_regs* %0, %struct.pt_regs** %2, align 8
  %6 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %7 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  %10 = load i32, i32* @NR_INSN_TO_PRINT, align 4
  %11 = mul nsw i32 %10, 3
  %12 = sdiv i32 %11, 4
  %13 = sext i32 %12 to i64
  %14 = mul i64 %13, 4
  %15 = sub i64 %9, %14
  store i64 %15, i64* %4, align 8
  %16 = call i32 @printk(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %17

17:                                               ; preds = %66, %1
  %18 = load i32, i32* %3, align 4
  %19 = load i32, i32* @NR_INSN_TO_PRINT, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %69

21:                                               ; preds = %17
  %22 = load i32, i32* %3, align 4
  %23 = srem i32 %22, 8
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %21
  %26 = call i32 (i8*, ...) @pr_cont(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %27

27:                                               ; preds = %25, %21
  %28 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %29 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @MSR_IR, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %27
  %35 = load i64, i64* %4, align 8
  %36 = call i64 @phys_to_virt(i64 %35)
  store i64 %36, i64* %4, align 8
  br label %37

37:                                               ; preds = %34, %27
  %38 = load i64, i64* %4, align 8
  %39 = call i32 @__kernel_text_address(i64 %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %37
  %42 = load i64, i64* %4, align 8
  %43 = inttoptr i64 %42 to i8*
  %44 = load i32, i32* %5, align 4
  %45 = call i64 @probe_kernel_address(i8* %43, i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %41, %37
  %48 = call i32 (i8*, ...) @pr_cont(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  br label %63

49:                                               ; preds = %41
  %50 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %51 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = sext i32 %52 to i64
  %54 = load i64, i64* %4, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %59

56:                                               ; preds = %49
  %57 = load i32, i32* %5, align 4
  %58 = call i32 (i8*, ...) @pr_cont(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32 %57)
  br label %62

59:                                               ; preds = %49
  %60 = load i32, i32* %5, align 4
  %61 = call i32 (i8*, ...) @pr_cont(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i32 %60)
  br label %62

62:                                               ; preds = %59, %56
  br label %63

63:                                               ; preds = %62, %47
  %64 = load i64, i64* %4, align 8
  %65 = add i64 %64, 4
  store i64 %65, i64* %4, align 8
  br label %66

66:                                               ; preds = %63
  %67 = load i32, i32* %3, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %3, align 4
  br label %17

69:                                               ; preds = %17
  %70 = call i32 (i8*, ...) @pr_cont(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  ret void
}

declare dso_local i32 @printk(i8*) #1

declare dso_local i32 @pr_cont(i8*, ...) #1

declare dso_local i64 @phys_to_virt(i64) #1

declare dso_local i32 @__kernel_text_address(i64) #1

declare dso_local i64 @probe_kernel_address(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
