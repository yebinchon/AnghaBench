; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/sunxi-ng/extr_ccu_frac.c_ccu_frac_helper_set_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/sunxi-ng/extr_ccu_frac.c_ccu_frac_helper_set_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccu_common = type { i32, i32, i64, i64 }
%struct.ccu_frac_internal = type { i64*, i32 }

@CCU_FEATURE_FRACTIONAL = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ccu_frac_helper_set_rate(%struct.ccu_common* %0, %struct.ccu_frac_internal* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ccu_common*, align 8
  %7 = alloca %struct.ccu_frac_internal*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.ccu_common* %0, %struct.ccu_common** %6, align 8
  store %struct.ccu_frac_internal* %1, %struct.ccu_frac_internal** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load %struct.ccu_common*, %struct.ccu_common** %6, align 8
  %14 = getelementptr inbounds %struct.ccu_common, %struct.ccu_common* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @CCU_FEATURE_FRACTIONAL, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %4
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %5, align 4
  br label %86

22:                                               ; preds = %4
  %23 = load %struct.ccu_frac_internal*, %struct.ccu_frac_internal** %7, align 8
  %24 = getelementptr inbounds %struct.ccu_frac_internal, %struct.ccu_frac_internal* %23, i32 0, i32 0
  %25 = load i64*, i64** %24, align 8
  %26 = getelementptr inbounds i64, i64* %25, i64 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* %8, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %22
  store i32 0, i32* %12, align 4
  br label %47

31:                                               ; preds = %22
  %32 = load %struct.ccu_frac_internal*, %struct.ccu_frac_internal** %7, align 8
  %33 = getelementptr inbounds %struct.ccu_frac_internal, %struct.ccu_frac_internal* %32, i32 0, i32 0
  %34 = load i64*, i64** %33, align 8
  %35 = getelementptr inbounds i64, i64* %34, i64 1
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* %8, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %43

39:                                               ; preds = %31
  %40 = load %struct.ccu_frac_internal*, %struct.ccu_frac_internal** %7, align 8
  %41 = getelementptr inbounds %struct.ccu_frac_internal, %struct.ccu_frac_internal* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  store i32 %42, i32* %12, align 4
  br label %46

43:                                               ; preds = %31
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %5, align 4
  br label %86

46:                                               ; preds = %39
  br label %47

47:                                               ; preds = %46, %30
  %48 = load %struct.ccu_common*, %struct.ccu_common** %6, align 8
  %49 = getelementptr inbounds %struct.ccu_common, %struct.ccu_common* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load i64, i64* %10, align 8
  %52 = call i32 @spin_lock_irqsave(i32 %50, i64 %51)
  %53 = load %struct.ccu_common*, %struct.ccu_common** %6, align 8
  %54 = getelementptr inbounds %struct.ccu_common, %struct.ccu_common* %53, i32 0, i32 3
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.ccu_common*, %struct.ccu_common** %6, align 8
  %57 = getelementptr inbounds %struct.ccu_common, %struct.ccu_common* %56, i32 0, i32 2
  %58 = load i64, i64* %57, align 8
  %59 = add nsw i64 %55, %58
  %60 = call i32 @readl(i64 %59)
  store i32 %60, i32* %11, align 4
  %61 = load %struct.ccu_frac_internal*, %struct.ccu_frac_internal** %7, align 8
  %62 = getelementptr inbounds %struct.ccu_frac_internal, %struct.ccu_frac_internal* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = xor i32 %63, -1
  %65 = load i32, i32* %11, align 4
  %66 = and i32 %65, %64
  store i32 %66, i32* %11, align 4
  %67 = load i32, i32* %11, align 4
  %68 = load i32, i32* %12, align 4
  %69 = or i32 %67, %68
  %70 = load %struct.ccu_common*, %struct.ccu_common** %6, align 8
  %71 = getelementptr inbounds %struct.ccu_common, %struct.ccu_common* %70, i32 0, i32 3
  %72 = load i64, i64* %71, align 8
  %73 = load %struct.ccu_common*, %struct.ccu_common** %6, align 8
  %74 = getelementptr inbounds %struct.ccu_common, %struct.ccu_common* %73, i32 0, i32 2
  %75 = load i64, i64* %74, align 8
  %76 = add nsw i64 %72, %75
  %77 = call i32 @writel(i32 %69, i64 %76)
  %78 = load %struct.ccu_common*, %struct.ccu_common** %6, align 8
  %79 = getelementptr inbounds %struct.ccu_common, %struct.ccu_common* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load i64, i64* %10, align 8
  %82 = call i32 @spin_unlock_irqrestore(i32 %80, i64 %81)
  %83 = load %struct.ccu_common*, %struct.ccu_common** %6, align 8
  %84 = load i32, i32* %9, align 4
  %85 = call i32 @ccu_helper_wait_for_lock(%struct.ccu_common* %83, i32 %84)
  store i32 0, i32* %5, align 4
  br label %86

86:                                               ; preds = %47, %43, %19
  %87 = load i32, i32* %5, align 4
  ret i32 %87
}

declare dso_local i32 @spin_lock_irqsave(i32, i64) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32, i64) #1

declare dso_local i32 @ccu_helper_wait_for_lock(%struct.ccu_common*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
