; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/sunxi-ng/extr_ccu_frac.c_ccu_frac_helper_is_enabled.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/sunxi-ng/extr_ccu_frac.c_ccu_frac_helper_is_enabled.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccu_common = type { i32, i64, i64 }
%struct.ccu_frac_internal = type { i32 }

@CCU_FEATURE_FRACTIONAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ccu_frac_helper_is_enabled(%struct.ccu_common* %0, %struct.ccu_frac_internal* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ccu_common*, align 8
  %5 = alloca %struct.ccu_frac_internal*, align 8
  store %struct.ccu_common* %0, %struct.ccu_common** %4, align 8
  store %struct.ccu_frac_internal* %1, %struct.ccu_frac_internal** %5, align 8
  %6 = load %struct.ccu_common*, %struct.ccu_common** %4, align 8
  %7 = getelementptr inbounds %struct.ccu_common, %struct.ccu_common* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = load i32, i32* @CCU_FEATURE_FRACTIONAL, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %29

13:                                               ; preds = %2
  %14 = load %struct.ccu_common*, %struct.ccu_common** %4, align 8
  %15 = getelementptr inbounds %struct.ccu_common, %struct.ccu_common* %14, i32 0, i32 2
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.ccu_common*, %struct.ccu_common** %4, align 8
  %18 = getelementptr inbounds %struct.ccu_common, %struct.ccu_common* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = add nsw i64 %16, %19
  %21 = call i32 @readl(i64 %20)
  %22 = load %struct.ccu_frac_internal*, %struct.ccu_frac_internal** %5, align 8
  %23 = getelementptr inbounds %struct.ccu_frac_internal, %struct.ccu_frac_internal* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = and i32 %21, %24
  %26 = icmp ne i32 %25, 0
  %27 = xor i1 %26, true
  %28 = zext i1 %27 to i32
  store i32 %28, i32* %3, align 4
  br label %29

29:                                               ; preds = %13, %12
  %30 = load i32, i32* %3, align 4
  ret i32 %30
}

declare dso_local i32 @readl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
