; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/extr_clk-palmas.c_palmas_clks_get_clk_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/extr_clk-palmas.c_palmas_clks_get_clk_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.palmas_clock_info = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c"ti,external-sleep-control\00", align 1
@PALMAS_EXT_CONTROL_ENABLE1 = common dso_local global i32 0, align 4
@PALMAS_EXT_CONTROL_ENABLE2 = common dso_local global i32 0, align 4
@PALMAS_EXT_CONTROL_NSLEEP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"%pOFn: Invalid ext control option: %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.platform_device*, %struct.palmas_clock_info*)* @palmas_clks_get_clk_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @palmas_clks_get_clk_data(%struct.platform_device* %0, %struct.palmas_clock_info* %1) #0 {
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.palmas_clock_info*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  store %struct.palmas_clock_info* %1, %struct.palmas_clock_info** %4, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load %struct.device_node*, %struct.device_node** %10, align 8
  store %struct.device_node* %11, %struct.device_node** %5, align 8
  %12 = load %struct.device_node*, %struct.device_node** %5, align 8
  %13 = call i32 @of_property_read_u32(%struct.device_node* %12, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32* %6)
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %7, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  br label %35

17:                                               ; preds = %2
  %18 = load i32, i32* %6, align 4
  switch i32 %18, label %25 [
    i32 130, label %19
    i32 129, label %21
    i32 128, label %23
  ]

19:                                               ; preds = %17
  %20 = load i32, i32* @PALMAS_EXT_CONTROL_ENABLE1, align 4
  store i32 %20, i32* %6, align 4
  br label %31

21:                                               ; preds = %17
  %22 = load i32, i32* @PALMAS_EXT_CONTROL_ENABLE2, align 4
  store i32 %22, i32* %6, align 4
  br label %31

23:                                               ; preds = %17
  %24 = load i32, i32* @PALMAS_EXT_CONTROL_NSLEEP, align 4
  store i32 %24, i32* %6, align 4
  br label %31

25:                                               ; preds = %17
  %26 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %27 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %26, i32 0, i32 0
  %28 = load %struct.device_node*, %struct.device_node** %5, align 8
  %29 = load i32, i32* %6, align 4
  %30 = call i32 @dev_warn(%struct.TYPE_2__* %27, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), %struct.device_node* %28, i32 %29)
  store i32 0, i32* %6, align 4
  br label %31

31:                                               ; preds = %25, %23, %21, %19
  %32 = load i32, i32* %6, align 4
  %33 = load %struct.palmas_clock_info*, %struct.palmas_clock_info** %4, align 8
  %34 = getelementptr inbounds %struct.palmas_clock_info, %struct.palmas_clock_info* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 4
  br label %35

35:                                               ; preds = %31, %16
  ret void
}

declare dso_local i32 @of_property_read_u32(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @dev_warn(%struct.TYPE_2__*, i8*, %struct.device_node*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
