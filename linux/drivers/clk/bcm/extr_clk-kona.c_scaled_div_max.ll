; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/bcm/extr_clk-kona.c_scaled_div_max.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/bcm/extr_clk-kona.c_scaled_div_max.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcm_clk_div = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @scaled_div_max(%struct.bcm_clk_div* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bcm_clk_div*, align 8
  %4 = alloca i32, align 4
  store %struct.bcm_clk_div* %0, %struct.bcm_clk_div** %3, align 8
  %5 = load %struct.bcm_clk_div*, %struct.bcm_clk_div** %3, align 8
  %6 = call i64 @divider_is_fixed(%struct.bcm_clk_div* %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %13

8:                                                ; preds = %1
  %9 = load %struct.bcm_clk_div*, %struct.bcm_clk_div** %3, align 8
  %10 = getelementptr inbounds %struct.bcm_clk_div, %struct.bcm_clk_div* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %2, align 4
  br label %24

13:                                               ; preds = %1
  %14 = load %struct.bcm_clk_div*, %struct.bcm_clk_div** %3, align 8
  %15 = getelementptr inbounds %struct.bcm_clk_div, %struct.bcm_clk_div* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = shl i32 1, %18
  %20 = sub nsw i32 %19, 1
  store i32 %20, i32* %4, align 4
  %21 = load %struct.bcm_clk_div*, %struct.bcm_clk_div** %3, align 8
  %22 = load i32, i32* %4, align 4
  %23 = call i32 @scaled_div_value(%struct.bcm_clk_div* %21, i32 %22)
  store i32 %23, i32* %2, align 4
  br label %24

24:                                               ; preds = %13, %8
  %25 = load i32, i32* %2, align 4
  ret i32 %25
}

declare dso_local i64 @divider_is_fixed(%struct.bcm_clk_div*) #1

declare dso_local i32 @scaled_div_value(%struct.bcm_clk_div*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
