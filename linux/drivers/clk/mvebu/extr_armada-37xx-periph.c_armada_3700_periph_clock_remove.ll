; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/mvebu/extr_armada-37xx-periph.c_armada_3700_periph_clock_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/mvebu/extr_armada-37xx-periph.c_armada_3700_periph_clock_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.clk_periph_driver_data = type { %struct.clk_hw_onecell_data* }
%struct.clk_hw_onecell_data = type { i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @armada_3700_periph_clock_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @armada_3700_periph_clock_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.clk_periph_driver_data*, align 8
  %4 = alloca %struct.clk_hw_onecell_data*, align 8
  %5 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %6 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %7 = call %struct.clk_periph_driver_data* @platform_get_drvdata(%struct.platform_device* %6)
  store %struct.clk_periph_driver_data* %7, %struct.clk_periph_driver_data** %3, align 8
  %8 = load %struct.clk_periph_driver_data*, %struct.clk_periph_driver_data** %3, align 8
  %9 = getelementptr inbounds %struct.clk_periph_driver_data, %struct.clk_periph_driver_data* %8, i32 0, i32 0
  %10 = load %struct.clk_hw_onecell_data*, %struct.clk_hw_onecell_data** %9, align 8
  store %struct.clk_hw_onecell_data* %10, %struct.clk_hw_onecell_data** %4, align 8
  %11 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %12 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @of_clk_del_provider(i32 %14)
  store i32 0, i32* %5, align 4
  br label %16

16:                                               ; preds = %31, %1
  %17 = load i32, i32* %5, align 4
  %18 = load %struct.clk_hw_onecell_data*, %struct.clk_hw_onecell_data** %4, align 8
  %19 = getelementptr inbounds %struct.clk_hw_onecell_data, %struct.clk_hw_onecell_data* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp slt i32 %17, %20
  br i1 %21, label %22, label %34

22:                                               ; preds = %16
  %23 = load %struct.clk_hw_onecell_data*, %struct.clk_hw_onecell_data** %4, align 8
  %24 = getelementptr inbounds %struct.clk_hw_onecell_data, %struct.clk_hw_onecell_data* %23, i32 0, i32 1
  %25 = load i32*, i32** %24, align 8
  %26 = load i32, i32* %5, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @clk_hw_unregister(i32 %29)
  br label %31

31:                                               ; preds = %22
  %32 = load i32, i32* %5, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %5, align 4
  br label %16

34:                                               ; preds = %16
  ret i32 0
}

declare dso_local %struct.clk_periph_driver_data* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @of_clk_del_provider(i32) #1

declare dso_local i32 @clk_hw_unregister(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
