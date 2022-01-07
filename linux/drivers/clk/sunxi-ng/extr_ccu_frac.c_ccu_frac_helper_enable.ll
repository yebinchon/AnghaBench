; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/sunxi-ng/extr_ccu_frac.c_ccu_frac_helper_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/sunxi-ng/extr_ccu_frac.c_ccu_frac_helper_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccu_common = type { i32, i32, i64, i64 }
%struct.ccu_frac_internal = type { i32 }

@CCU_FEATURE_FRACTIONAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ccu_frac_helper_enable(%struct.ccu_common* %0, %struct.ccu_frac_internal* %1) #0 {
  %3 = alloca %struct.ccu_common*, align 8
  %4 = alloca %struct.ccu_frac_internal*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.ccu_common* %0, %struct.ccu_common** %3, align 8
  store %struct.ccu_frac_internal* %1, %struct.ccu_frac_internal** %4, align 8
  %7 = load %struct.ccu_common*, %struct.ccu_common** %3, align 8
  %8 = getelementptr inbounds %struct.ccu_common, %struct.ccu_common* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* @CCU_FEATURE_FRACTIONAL, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  br label %47

14:                                               ; preds = %2
  %15 = load %struct.ccu_common*, %struct.ccu_common** %3, align 8
  %16 = getelementptr inbounds %struct.ccu_common, %struct.ccu_common* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load i64, i64* %5, align 8
  %19 = call i32 @spin_lock_irqsave(i32 %17, i64 %18)
  %20 = load %struct.ccu_common*, %struct.ccu_common** %3, align 8
  %21 = getelementptr inbounds %struct.ccu_common, %struct.ccu_common* %20, i32 0, i32 3
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.ccu_common*, %struct.ccu_common** %3, align 8
  %24 = getelementptr inbounds %struct.ccu_common, %struct.ccu_common* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = add nsw i64 %22, %25
  %27 = call i32 @readl(i64 %26)
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* %6, align 4
  %29 = load %struct.ccu_frac_internal*, %struct.ccu_frac_internal** %4, align 8
  %30 = getelementptr inbounds %struct.ccu_frac_internal, %struct.ccu_frac_internal* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = xor i32 %31, -1
  %33 = and i32 %28, %32
  %34 = load %struct.ccu_common*, %struct.ccu_common** %3, align 8
  %35 = getelementptr inbounds %struct.ccu_common, %struct.ccu_common* %34, i32 0, i32 3
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.ccu_common*, %struct.ccu_common** %3, align 8
  %38 = getelementptr inbounds %struct.ccu_common, %struct.ccu_common* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = add nsw i64 %36, %39
  %41 = call i32 @writel(i32 %33, i64 %40)
  %42 = load %struct.ccu_common*, %struct.ccu_common** %3, align 8
  %43 = getelementptr inbounds %struct.ccu_common, %struct.ccu_common* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load i64, i64* %5, align 8
  %46 = call i32 @spin_unlock_irqrestore(i32 %44, i64 %45)
  br label %47

47:                                               ; preds = %14, %13
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32, i64) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
