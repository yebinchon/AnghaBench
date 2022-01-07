; ModuleID = '/home/carl/AnghaBench/lede/target/linux/ramips/files-4.14/drivers/net/ethernet/mediatek/extr_gsw_mt7620.c_mt7620_gsw_probe.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/ramips/files-4.14/drivers/net/ethernet/mediatek/extr_gsw_mt7620.c_mt7620_gsw_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.resource = type { i32 }
%struct.mt7620_gsw = type { i32, i8*, %struct.TYPE_3__*, i32 }

@IORESOURCE_MEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"mediatek,port4\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"ephy\00", align 1
@PORT4_EPHY = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [5 x i8] c"gmac\00", align 1
@PORT4_EXT = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @mt7620_gsw_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt7620_gsw_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.resource*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.mt7620_gsw*, align 8
  %7 = alloca %struct.device_node*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = load i32, i32* @IORESOURCE_MEM, align 4
  %10 = call %struct.resource* @platform_get_resource(%struct.platform_device* %8, i32 %9, i32 0)
  store %struct.resource* %10, %struct.resource** %4, align 8
  store i8* null, i8** %5, align 8
  %11 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %12 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load %struct.device_node*, %struct.device_node** %13, align 8
  store %struct.device_node* %14, %struct.device_node** %7, align 8
  %15 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %16 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %15, i32 0, i32 0
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call %struct.mt7620_gsw* @devm_kzalloc(%struct.TYPE_3__* %16, i32 32, i32 %17)
  store %struct.mt7620_gsw* %18, %struct.mt7620_gsw** %6, align 8
  %19 = load %struct.mt7620_gsw*, %struct.mt7620_gsw** %6, align 8
  %20 = icmp ne %struct.mt7620_gsw* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %1
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %2, align 4
  br label %82

24:                                               ; preds = %1
  %25 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %26 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %25, i32 0, i32 0
  %27 = load %struct.resource*, %struct.resource** %4, align 8
  %28 = call i32 @devm_ioremap_resource(%struct.TYPE_3__* %26, %struct.resource* %27)
  %29 = load %struct.mt7620_gsw*, %struct.mt7620_gsw** %6, align 8
  %30 = getelementptr inbounds %struct.mt7620_gsw, %struct.mt7620_gsw* %29, i32 0, i32 3
  store i32 %28, i32* %30, align 8
  %31 = load %struct.mt7620_gsw*, %struct.mt7620_gsw** %6, align 8
  %32 = getelementptr inbounds %struct.mt7620_gsw, %struct.mt7620_gsw* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 8
  %34 = call i64 @IS_ERR(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %24
  %37 = load %struct.mt7620_gsw*, %struct.mt7620_gsw** %6, align 8
  %38 = getelementptr inbounds %struct.mt7620_gsw, %struct.mt7620_gsw* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @PTR_ERR(i32 %39)
  store i32 %40, i32* %2, align 4
  br label %82

41:                                               ; preds = %24
  %42 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %43 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %42, i32 0, i32 0
  %44 = load %struct.mt7620_gsw*, %struct.mt7620_gsw** %6, align 8
  %45 = getelementptr inbounds %struct.mt7620_gsw, %struct.mt7620_gsw* %44, i32 0, i32 2
  store %struct.TYPE_3__* %43, %struct.TYPE_3__** %45, align 8
  %46 = load %struct.device_node*, %struct.device_node** %7, align 8
  %47 = call i32 @of_property_read_string(%struct.device_node* %46, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8** %5)
  %48 = load i8*, i8** %5, align 8
  %49 = icmp ne i8* %48, null
  br i1 %49, label %50, label %58

50:                                               ; preds = %41
  %51 = load i8*, i8** %5, align 8
  %52 = call i32 @strcmp(i8* %51, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %58, label %54

54:                                               ; preds = %50
  %55 = load i8*, i8** @PORT4_EPHY, align 8
  %56 = load %struct.mt7620_gsw*, %struct.mt7620_gsw** %6, align 8
  %57 = getelementptr inbounds %struct.mt7620_gsw, %struct.mt7620_gsw* %56, i32 0, i32 1
  store i8* %55, i8** %57, align 8
  br label %74

58:                                               ; preds = %50, %41
  %59 = load i8*, i8** %5, align 8
  %60 = icmp ne i8* %59, null
  br i1 %60, label %61, label %69

61:                                               ; preds = %58
  %62 = load i8*, i8** %5, align 8
  %63 = call i32 @strcmp(i8* %62, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %69, label %65

65:                                               ; preds = %61
  %66 = load i8*, i8** @PORT4_EXT, align 8
  %67 = load %struct.mt7620_gsw*, %struct.mt7620_gsw** %6, align 8
  %68 = getelementptr inbounds %struct.mt7620_gsw, %struct.mt7620_gsw* %67, i32 0, i32 1
  store i8* %66, i8** %68, align 8
  br label %73

69:                                               ; preds = %61, %58
  %70 = load i8*, i8** @PORT4_EPHY, align 8
  %71 = load %struct.mt7620_gsw*, %struct.mt7620_gsw** %6, align 8
  %72 = getelementptr inbounds %struct.mt7620_gsw, %struct.mt7620_gsw* %71, i32 0, i32 1
  store i8* %70, i8** %72, align 8
  br label %73

73:                                               ; preds = %69, %65
  br label %74

74:                                               ; preds = %73, %54
  %75 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %76 = call i32 @platform_get_irq(%struct.platform_device* %75, i32 0)
  %77 = load %struct.mt7620_gsw*, %struct.mt7620_gsw** %6, align 8
  %78 = getelementptr inbounds %struct.mt7620_gsw, %struct.mt7620_gsw* %77, i32 0, i32 0
  store i32 %76, i32* %78, align 8
  %79 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %80 = load %struct.mt7620_gsw*, %struct.mt7620_gsw** %6, align 8
  %81 = call i32 @platform_set_drvdata(%struct.platform_device* %79, %struct.mt7620_gsw* %80)
  store i32 0, i32* %2, align 4
  br label %82

82:                                               ; preds = %74, %36, %21
  %83 = load i32, i32* %2, align 4
  ret i32 %83
}

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local %struct.mt7620_gsw* @devm_kzalloc(%struct.TYPE_3__*, i32, i32) #1

declare dso_local i32 @devm_ioremap_resource(%struct.TYPE_3__*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @of_property_read_string(%struct.device_node*, i8*, i8**) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.mt7620_gsw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
