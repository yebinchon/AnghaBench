; ModuleID = '/home/carl/AnghaBench/linux/arch/arm64/kernel/extr_perf_regs.c_perf_reg_value.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm64/kernel/extr_perf_regs.c_perf_reg_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_regs = type { i32*, i32, i32, i32, i32 }

@PERF_REG_ARM64_MAX = common dso_local global i64 0, align 8
@PERF_REG_ARM64_SP = common dso_local global i64 0, align 8
@PERF_REG_ARM64_LR = common dso_local global i64 0, align 8
@PERF_REG_ARM64_PC = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @perf_reg_value(%struct.pt_regs* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pt_regs*, align 8
  %5 = alloca i32, align 4
  store %struct.pt_regs* %0, %struct.pt_regs** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = sext i32 %6 to i64
  %8 = load i64, i64* @PERF_REG_ARM64_MAX, align 8
  %9 = icmp sge i64 %7, %8
  %10 = zext i1 %9 to i32
  %11 = call i64 @WARN_ON_ONCE(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %63

14:                                               ; preds = %2
  %15 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %16 = call i64 @compat_user_mode(%struct.pt_regs* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %37

18:                                               ; preds = %14
  %19 = load i32, i32* %5, align 4
  %20 = sext i32 %19 to i64
  %21 = load i64, i64* @PERF_REG_ARM64_SP, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %27

23:                                               ; preds = %18
  %24 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %25 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %24, i32 0, i32 4
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %3, align 4
  br label %63

27:                                               ; preds = %18
  %28 = load i32, i32* %5, align 4
  %29 = sext i32 %28 to i64
  %30 = load i64, i64* @PERF_REG_ARM64_LR, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %36

32:                                               ; preds = %27
  %33 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %34 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 8
  store i32 %35, i32* %3, align 4
  br label %63

36:                                               ; preds = %27
  br label %37

37:                                               ; preds = %36, %14
  %38 = load i32, i32* %5, align 4
  %39 = sext i32 %38 to i64
  %40 = load i64, i64* @PERF_REG_ARM64_SP, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %46

42:                                               ; preds = %37
  %43 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %44 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* %3, align 4
  br label %63

46:                                               ; preds = %37
  %47 = load i32, i32* %5, align 4
  %48 = sext i32 %47 to i64
  %49 = load i64, i64* @PERF_REG_ARM64_PC, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %55

51:                                               ; preds = %46
  %52 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %53 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  store i32 %54, i32* %3, align 4
  br label %63

55:                                               ; preds = %46
  %56 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %57 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %56, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = load i32, i32* %5, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  %62 = load i32, i32* %61, align 4
  store i32 %62, i32* %3, align 4
  br label %63

63:                                               ; preds = %55, %51, %42, %32, %23, %13
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local i64 @compat_user_mode(%struct.pt_regs*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
