; ModuleID = '/home/carl/AnghaBench/linux/drivers/bus/extr_vexpress-config.c_vexpress_config_devres_release.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bus/extr_vexpress-config.c_vexpress_config_devres_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.vexpress_config_bridge = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.regmap*, i32)* }
%struct.regmap = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device*, i8*)* @vexpress_config_devres_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vexpress_config_devres_release(%struct.device* %0, i8* %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.vexpress_config_bridge*, align 8
  %6 = alloca %struct.regmap*, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load %struct.device*, %struct.device** %3, align 8
  %8 = getelementptr inbounds %struct.device, %struct.device* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.vexpress_config_bridge* @dev_get_drvdata(i32 %9)
  store %struct.vexpress_config_bridge* %10, %struct.vexpress_config_bridge** %5, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = bitcast i8* %11 to %struct.regmap*
  store %struct.regmap* %12, %struct.regmap** %6, align 8
  %13 = load %struct.vexpress_config_bridge*, %struct.vexpress_config_bridge** %5, align 8
  %14 = getelementptr inbounds %struct.vexpress_config_bridge, %struct.vexpress_config_bridge* %13, i32 0, i32 1
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32 (%struct.regmap*, i32)*, i32 (%struct.regmap*, i32)** %16, align 8
  %18 = load %struct.regmap*, %struct.regmap** %6, align 8
  %19 = load %struct.vexpress_config_bridge*, %struct.vexpress_config_bridge** %5, align 8
  %20 = getelementptr inbounds %struct.vexpress_config_bridge, %struct.vexpress_config_bridge* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call i32 %17(%struct.regmap* %18, i32 %21)
  ret void
}

declare dso_local %struct.vexpress_config_bridge* @dev_get_drvdata(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
