; ModuleID = '/home/carl/AnghaBench/lede/target/linux/ramips/files-4.14/drivers/net/ethernet/mediatek/extr_gsw_mt7621.c_mt7621_gsw_probe.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/ramips/files-4.14/drivers/net/ethernet/mediatek/extr_gsw_mt7621.c_mt7621_gsw_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.resource = type { i32 }
%struct.mt7620_gsw = type { i32, i32*, i32 }

@IORESOURCE_MEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @mt7621_gsw_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt7621_gsw_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.resource*, align 8
  %5 = alloca %struct.mt7620_gsw*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %6 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %7 = load i32, i32* @IORESOURCE_MEM, align 4
  %8 = call %struct.resource* @platform_get_resource(%struct.platform_device* %6, i32 %7, i32 0)
  store %struct.resource* %8, %struct.resource** %4, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 0
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.mt7620_gsw* @devm_kzalloc(i32* %10, i32 24, i32 %11)
  store %struct.mt7620_gsw* %12, %struct.mt7620_gsw** %5, align 8
  %13 = load %struct.mt7620_gsw*, %struct.mt7620_gsw** %5, align 8
  %14 = icmp ne %struct.mt7620_gsw* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %47

18:                                               ; preds = %1
  %19 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %20 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %19, i32 0, i32 0
  %21 = load %struct.resource*, %struct.resource** %4, align 8
  %22 = call i32 @devm_ioremap_resource(i32* %20, %struct.resource* %21)
  %23 = load %struct.mt7620_gsw*, %struct.mt7620_gsw** %5, align 8
  %24 = getelementptr inbounds %struct.mt7620_gsw, %struct.mt7620_gsw* %23, i32 0, i32 2
  store i32 %22, i32* %24, align 8
  %25 = load %struct.mt7620_gsw*, %struct.mt7620_gsw** %5, align 8
  %26 = getelementptr inbounds %struct.mt7620_gsw, %struct.mt7620_gsw* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = call i64 @IS_ERR(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %18
  %31 = load %struct.mt7620_gsw*, %struct.mt7620_gsw** %5, align 8
  %32 = getelementptr inbounds %struct.mt7620_gsw, %struct.mt7620_gsw* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @PTR_ERR(i32 %33)
  store i32 %34, i32* %2, align 4
  br label %47

35:                                               ; preds = %18
  %36 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %37 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %36, i32 0, i32 0
  %38 = load %struct.mt7620_gsw*, %struct.mt7620_gsw** %5, align 8
  %39 = getelementptr inbounds %struct.mt7620_gsw, %struct.mt7620_gsw* %38, i32 0, i32 1
  store i32* %37, i32** %39, align 8
  %40 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %41 = call i32 @platform_get_irq(%struct.platform_device* %40, i32 0)
  %42 = load %struct.mt7620_gsw*, %struct.mt7620_gsw** %5, align 8
  %43 = getelementptr inbounds %struct.mt7620_gsw, %struct.mt7620_gsw* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 8
  %44 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %45 = load %struct.mt7620_gsw*, %struct.mt7620_gsw** %5, align 8
  %46 = call i32 @platform_set_drvdata(%struct.platform_device* %44, %struct.mt7620_gsw* %45)
  store i32 0, i32* %2, align 4
  br label %47

47:                                               ; preds = %35, %30, %15
  %48 = load i32, i32* %2, align 4
  ret i32 %48
}

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local %struct.mt7620_gsw* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @devm_ioremap_resource(i32*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.mt7620_gsw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
