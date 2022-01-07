; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/ipmi/extr_kcs_bmc_npcm7xx.c_npcm7xx_kcs_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/ipmi/extr_kcs_bmc_npcm7xx.c_npcm7xx_kcs_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.platform_device = type { %struct.device }
%struct.device = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.npcm7xx_kcs_bmc = type { %struct.TYPE_6__*, i32 }
%struct.kcs_bmc = type { %struct.TYPE_5__, i32, i32, i32 }
%struct.TYPE_5__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [9 x i8] c"kcs_chan\00", align 1
@KCS_CHANNEL_MAX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"no valid 'kcs_chan' configured\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"Couldn't get regmap\0A\00", align 1
@npcm7xx_kcs_reg_tbl = common dso_local global %struct.TYPE_6__* null, align 8
@npcm7xx_kcs_inb = common dso_local global i32 0, align 4
@npcm7xx_kcs_outb = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [27 x i8] c"Unable to register device\0A\00", align 1
@.str.4 = private unnamed_addr constant [39 x i8] c"channel=%u idr=0x%x odr=0x%x str=0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @npcm7xx_kcs_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @npcm7xx_kcs_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.npcm7xx_kcs_bmc*, align 8
  %6 = alloca %struct.kcs_bmc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 0
  store %struct.device* %10, %struct.device** %4, align 8
  %11 = load %struct.device*, %struct.device** %4, align 8
  %12 = getelementptr inbounds %struct.device, %struct.device* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @of_property_read_u32(i32 %13, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32* %7)
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %8, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %24, label %17

17:                                               ; preds = %1
  %18 = load i32, i32* %7, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %24, label %20

20:                                               ; preds = %17
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* @KCS_CHANNEL_MAX, align 4
  %23 = icmp sgt i32 %21, %22
  br i1 %23, label %24, label %29

24:                                               ; preds = %20, %17, %1
  %25 = load %struct.device*, %struct.device** %4, align 8
  %26 = call i32 @dev_err(%struct.device* %25, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %27 = load i32, i32* @ENODEV, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %2, align 4
  br label %134

29:                                               ; preds = %20
  %30 = load %struct.device*, %struct.device** %4, align 8
  %31 = load i32, i32* %7, align 4
  %32 = call %struct.kcs_bmc* @kcs_bmc_alloc(%struct.device* %30, i32 16, i32 %31)
  store %struct.kcs_bmc* %32, %struct.kcs_bmc** %6, align 8
  %33 = load %struct.kcs_bmc*, %struct.kcs_bmc** %6, align 8
  %34 = icmp ne %struct.kcs_bmc* %33, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %29
  %36 = load i32, i32* @ENOMEM, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %2, align 4
  br label %134

38:                                               ; preds = %29
  %39 = load %struct.kcs_bmc*, %struct.kcs_bmc** %6, align 8
  %40 = call %struct.npcm7xx_kcs_bmc* @kcs_bmc_priv(%struct.kcs_bmc* %39)
  store %struct.npcm7xx_kcs_bmc* %40, %struct.npcm7xx_kcs_bmc** %5, align 8
  %41 = load %struct.device*, %struct.device** %4, align 8
  %42 = getelementptr inbounds %struct.device, %struct.device* %41, i32 0, i32 0
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @syscon_node_to_regmap(i32 %45)
  %47 = load %struct.npcm7xx_kcs_bmc*, %struct.npcm7xx_kcs_bmc** %5, align 8
  %48 = getelementptr inbounds %struct.npcm7xx_kcs_bmc, %struct.npcm7xx_kcs_bmc* %47, i32 0, i32 1
  store i32 %46, i32* %48, align 8
  %49 = load %struct.npcm7xx_kcs_bmc*, %struct.npcm7xx_kcs_bmc** %5, align 8
  %50 = getelementptr inbounds %struct.npcm7xx_kcs_bmc, %struct.npcm7xx_kcs_bmc* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = call i64 @IS_ERR(i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %38
  %55 = load %struct.device*, %struct.device** %4, align 8
  %56 = call i32 @dev_err(%struct.device* %55, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  %57 = load i32, i32* @ENODEV, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %2, align 4
  br label %134

59:                                               ; preds = %38
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** @npcm7xx_kcs_reg_tbl, align 8
  %61 = load i32, i32* %7, align 4
  %62 = sub nsw i32 %61, 1
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i64 %63
  %65 = load %struct.npcm7xx_kcs_bmc*, %struct.npcm7xx_kcs_bmc** %5, align 8
  %66 = getelementptr inbounds %struct.npcm7xx_kcs_bmc, %struct.npcm7xx_kcs_bmc* %65, i32 0, i32 0
  store %struct.TYPE_6__* %64, %struct.TYPE_6__** %66, align 8
  %67 = load %struct.npcm7xx_kcs_bmc*, %struct.npcm7xx_kcs_bmc** %5, align 8
  %68 = getelementptr inbounds %struct.npcm7xx_kcs_bmc, %struct.npcm7xx_kcs_bmc* %67, i32 0, i32 0
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.kcs_bmc*, %struct.kcs_bmc** %6, align 8
  %73 = getelementptr inbounds %struct.kcs_bmc, %struct.kcs_bmc* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 2
  store i32 %71, i32* %74, align 4
  %75 = load %struct.npcm7xx_kcs_bmc*, %struct.npcm7xx_kcs_bmc** %5, align 8
  %76 = getelementptr inbounds %struct.npcm7xx_kcs_bmc, %struct.npcm7xx_kcs_bmc* %75, i32 0, i32 0
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.kcs_bmc*, %struct.kcs_bmc** %6, align 8
  %81 = getelementptr inbounds %struct.kcs_bmc, %struct.kcs_bmc* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 1
  store i32 %79, i32* %82, align 4
  %83 = load %struct.npcm7xx_kcs_bmc*, %struct.npcm7xx_kcs_bmc** %5, align 8
  %84 = getelementptr inbounds %struct.npcm7xx_kcs_bmc, %struct.npcm7xx_kcs_bmc* %83, i32 0, i32 0
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.kcs_bmc*, %struct.kcs_bmc** %6, align 8
  %89 = getelementptr inbounds %struct.kcs_bmc, %struct.kcs_bmc* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 0
  store i32 %87, i32* %90, align 4
  %91 = load i32, i32* @npcm7xx_kcs_inb, align 4
  %92 = load %struct.kcs_bmc*, %struct.kcs_bmc** %6, align 8
  %93 = getelementptr inbounds %struct.kcs_bmc, %struct.kcs_bmc* %92, i32 0, i32 3
  store i32 %91, i32* %93, align 4
  %94 = load i32, i32* @npcm7xx_kcs_outb, align 4
  %95 = load %struct.kcs_bmc*, %struct.kcs_bmc** %6, align 8
  %96 = getelementptr inbounds %struct.kcs_bmc, %struct.kcs_bmc* %95, i32 0, i32 2
  store i32 %94, i32* %96, align 4
  %97 = load %struct.device*, %struct.device** %4, align 8
  %98 = load %struct.kcs_bmc*, %struct.kcs_bmc** %6, align 8
  %99 = call i32 @dev_set_drvdata(%struct.device* %97, %struct.kcs_bmc* %98)
  %100 = load %struct.kcs_bmc*, %struct.kcs_bmc** %6, align 8
  %101 = call i32 @npcm7xx_kcs_enable_channel(%struct.kcs_bmc* %100, i32 1)
  %102 = load %struct.kcs_bmc*, %struct.kcs_bmc** %6, align 8
  %103 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %104 = call i32 @npcm7xx_kcs_config_irq(%struct.kcs_bmc* %102, %struct.platform_device* %103)
  store i32 %104, i32* %8, align 4
  %105 = load i32, i32* %8, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %109

107:                                              ; preds = %59
  %108 = load i32, i32* %8, align 4
  store i32 %108, i32* %2, align 4
  br label %134

109:                                              ; preds = %59
  %110 = load %struct.kcs_bmc*, %struct.kcs_bmc** %6, align 8
  %111 = getelementptr inbounds %struct.kcs_bmc, %struct.kcs_bmc* %110, i32 0, i32 1
  %112 = call i32 @misc_register(i32* %111)
  store i32 %112, i32* %8, align 4
  %113 = load i32, i32* %8, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %119

115:                                              ; preds = %109
  %116 = load %struct.device*, %struct.device** %4, align 8
  %117 = call i32 @dev_err(%struct.device* %116, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  %118 = load i32, i32* %8, align 4
  store i32 %118, i32* %2, align 4
  br label %134

119:                                              ; preds = %109
  %120 = load i32, i32* %7, align 4
  %121 = load %struct.kcs_bmc*, %struct.kcs_bmc** %6, align 8
  %122 = getelementptr inbounds %struct.kcs_bmc, %struct.kcs_bmc* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.kcs_bmc*, %struct.kcs_bmc** %6, align 8
  %126 = getelementptr inbounds %struct.kcs_bmc, %struct.kcs_bmc* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = load %struct.kcs_bmc*, %struct.kcs_bmc** %6, align 8
  %130 = getelementptr inbounds %struct.kcs_bmc, %struct.kcs_bmc* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = call i32 @pr_info(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0), i32 %120, i32 %124, i32 %128, i32 %132)
  store i32 0, i32* %2, align 4
  br label %134

134:                                              ; preds = %119, %115, %107, %54, %35, %24
  %135 = load i32, i32* %2, align 4
  ret i32 %135
}

declare dso_local i32 @of_property_read_u32(i32, i8*, i32*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local %struct.kcs_bmc* @kcs_bmc_alloc(%struct.device*, i32, i32) #1

declare dso_local %struct.npcm7xx_kcs_bmc* @kcs_bmc_priv(%struct.kcs_bmc*) #1

declare dso_local i32 @syscon_node_to_regmap(i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @dev_set_drvdata(%struct.device*, %struct.kcs_bmc*) #1

declare dso_local i32 @npcm7xx_kcs_enable_channel(%struct.kcs_bmc*, i32) #1

declare dso_local i32 @npcm7xx_kcs_config_irq(%struct.kcs_bmc*, %struct.platform_device*) #1

declare dso_local i32 @misc_register(i32*) #1

declare dso_local i32 @pr_info(i8*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
