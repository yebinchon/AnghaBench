; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/actions/extr_owl-s700.c_s700_clk_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/actions/extr_owl-s700.c_s700_clk_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.owl_clk_desc = type { i32, i32, i32, i32 }
%struct.platform_device = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.owl_reset = type { %struct.TYPE_7__, i32, i32 }
%struct.TYPE_7__ = type { i32, i32*, i32 }

@s700_clk_desc = common dso_local global %struct.owl_clk_desc zeroinitializer, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@owl_reset_ops = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Failed to register reset controller\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @s700_clk_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s700_clk_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.owl_clk_desc*, align 8
  %5 = alloca %struct.owl_reset*, align 8
  %6 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  store %struct.owl_clk_desc* @s700_clk_desc, %struct.owl_clk_desc** %4, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %8 = load %struct.owl_clk_desc*, %struct.owl_clk_desc** %4, align 8
  %9 = call i32 @owl_clk_regmap_init(%struct.platform_device* %7, %struct.owl_clk_desc* %8)
  %10 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %11 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %10, i32 0, i32 0
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.owl_reset* @devm_kzalloc(%struct.TYPE_6__* %11, i32 32, i32 %12)
  store %struct.owl_reset* %13, %struct.owl_reset** %5, align 8
  %14 = load %struct.owl_reset*, %struct.owl_reset** %5, align 8
  %15 = icmp ne %struct.owl_reset* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %1
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %64

19:                                               ; preds = %1
  %20 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %21 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.owl_reset*, %struct.owl_reset** %5, align 8
  %25 = getelementptr inbounds %struct.owl_reset, %struct.owl_reset* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 2
  store i32 %23, i32* %26, align 8
  %27 = load %struct.owl_reset*, %struct.owl_reset** %5, align 8
  %28 = getelementptr inbounds %struct.owl_reset, %struct.owl_reset* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 1
  store i32* @owl_reset_ops, i32** %29, align 8
  %30 = load %struct.owl_clk_desc*, %struct.owl_clk_desc** %4, align 8
  %31 = getelementptr inbounds %struct.owl_clk_desc, %struct.owl_clk_desc* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.owl_reset*, %struct.owl_reset** %5, align 8
  %34 = getelementptr inbounds %struct.owl_reset, %struct.owl_reset* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  store i32 %32, i32* %35, align 8
  %36 = load %struct.owl_clk_desc*, %struct.owl_clk_desc** %4, align 8
  %37 = getelementptr inbounds %struct.owl_clk_desc, %struct.owl_clk_desc* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.owl_reset*, %struct.owl_reset** %5, align 8
  %40 = getelementptr inbounds %struct.owl_reset, %struct.owl_reset* %39, i32 0, i32 2
  store i32 %38, i32* %40, align 4
  %41 = load %struct.owl_clk_desc*, %struct.owl_clk_desc** %4, align 8
  %42 = getelementptr inbounds %struct.owl_clk_desc, %struct.owl_clk_desc* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.owl_reset*, %struct.owl_reset** %5, align 8
  %45 = getelementptr inbounds %struct.owl_reset, %struct.owl_reset* %44, i32 0, i32 1
  store i32 %43, i32* %45, align 8
  %46 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %47 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %46, i32 0, i32 0
  %48 = load %struct.owl_reset*, %struct.owl_reset** %5, align 8
  %49 = getelementptr inbounds %struct.owl_reset, %struct.owl_reset* %48, i32 0, i32 0
  %50 = call i32 @devm_reset_controller_register(%struct.TYPE_6__* %47, %struct.TYPE_7__* %49)
  store i32 %50, i32* %6, align 4
  %51 = load i32, i32* %6, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %19
  %54 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %55 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %54, i32 0, i32 0
  %56 = call i32 @dev_err(%struct.TYPE_6__* %55, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  br label %57

57:                                               ; preds = %53, %19
  %58 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %59 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %58, i32 0, i32 0
  %60 = load %struct.owl_clk_desc*, %struct.owl_clk_desc** %4, align 8
  %61 = getelementptr inbounds %struct.owl_clk_desc, %struct.owl_clk_desc* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @owl_clk_probe(%struct.TYPE_6__* %59, i32 %62)
  store i32 %63, i32* %2, align 4
  br label %64

64:                                               ; preds = %57, %16
  %65 = load i32, i32* %2, align 4
  ret i32 %65
}

declare dso_local i32 @owl_clk_regmap_init(%struct.platform_device*, %struct.owl_clk_desc*) #1

declare dso_local %struct.owl_reset* @devm_kzalloc(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @devm_reset_controller_register(%struct.TYPE_6__*, %struct.TYPE_7__*) #1

declare dso_local i32 @dev_err(%struct.TYPE_6__*, i8*) #1

declare dso_local i32 @owl_clk_probe(%struct.TYPE_6__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
