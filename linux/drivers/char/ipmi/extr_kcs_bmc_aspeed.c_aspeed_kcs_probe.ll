; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/ipmi/extr_kcs_bmc_aspeed.c_aspeed_kcs_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/ipmi/extr_kcs_bmc_aspeed.c_aspeed_kcs_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.platform_device = type { %struct.device }
%struct.device = type { %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.aspeed_kcs_bmc = type { i32 }
%struct.kcs_bmc = type { %struct.TYPE_4__, i32, i32, i32 }

@.str = private unnamed_addr constant [9 x i8] c"kcs_chan\00", align 1
@KCS_CHANNEL_MAX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"no valid 'kcs_chan' configured\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"kcs_addr\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"no valid 'kcs_addr' configured\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [21 x i8] c"Couldn't get regmap\0A\00", align 1
@ast_kcs_bmc_ioregs = common dso_local global %struct.TYPE_4__* null, align 8
@aspeed_kcs_inb = common dso_local global i32 0, align 4
@aspeed_kcs_outb = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [27 x i8] c"Unable to register device\0A\00", align 1
@.str.6 = private unnamed_addr constant [49 x i8] c"channel=%u addr=0x%x idr=0x%x odr=0x%x str=0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @aspeed_kcs_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aspeed_kcs_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.aspeed_kcs_bmc*, align 8
  %6 = alloca %struct.kcs_bmc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %11 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %10, i32 0, i32 0
  store %struct.device* %11, %struct.device** %4, align 8
  %12 = load %struct.device*, %struct.device** %4, align 8
  %13 = getelementptr inbounds %struct.device, %struct.device* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @of_property_read_u32(i32 %14, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32* %7)
  store i32 %15, i32* %9, align 4
  %16 = load i32, i32* %9, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %25, label %18

18:                                               ; preds = %1
  %19 = load i32, i32* %7, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %18
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* @KCS_CHANNEL_MAX, align 4
  %24 = icmp sgt i32 %22, %23
  br i1 %24, label %25, label %30

25:                                               ; preds = %21, %18, %1
  %26 = load %struct.device*, %struct.device** %4, align 8
  %27 = call i32 @dev_err(%struct.device* %26, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %28 = load i32, i32* @ENODEV, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %2, align 4
  br label %129

30:                                               ; preds = %21
  %31 = load %struct.device*, %struct.device** %4, align 8
  %32 = getelementptr inbounds %struct.device, %struct.device* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @of_property_read_u32(i32 %33, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32* %8)
  store i32 %34, i32* %9, align 4
  %35 = load i32, i32* %9, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %30
  %38 = load %struct.device*, %struct.device** %4, align 8
  %39 = call i32 @dev_err(%struct.device* %38, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  %40 = load i32, i32* @ENODEV, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %2, align 4
  br label %129

42:                                               ; preds = %30
  %43 = load %struct.device*, %struct.device** %4, align 8
  %44 = load i32, i32* %7, align 4
  %45 = call %struct.kcs_bmc* @kcs_bmc_alloc(%struct.device* %43, i32 4, i32 %44)
  store %struct.kcs_bmc* %45, %struct.kcs_bmc** %6, align 8
  %46 = load %struct.kcs_bmc*, %struct.kcs_bmc** %6, align 8
  %47 = icmp ne %struct.kcs_bmc* %46, null
  br i1 %47, label %51, label %48

48:                                               ; preds = %42
  %49 = load i32, i32* @ENOMEM, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %2, align 4
  br label %129

51:                                               ; preds = %42
  %52 = load %struct.kcs_bmc*, %struct.kcs_bmc** %6, align 8
  %53 = call %struct.aspeed_kcs_bmc* @kcs_bmc_priv(%struct.kcs_bmc* %52)
  store %struct.aspeed_kcs_bmc* %53, %struct.aspeed_kcs_bmc** %5, align 8
  %54 = load %struct.device*, %struct.device** %4, align 8
  %55 = getelementptr inbounds %struct.device, %struct.device* %54, i32 0, i32 0
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @syscon_node_to_regmap(i32 %58)
  %60 = load %struct.aspeed_kcs_bmc*, %struct.aspeed_kcs_bmc** %5, align 8
  %61 = getelementptr inbounds %struct.aspeed_kcs_bmc, %struct.aspeed_kcs_bmc* %60, i32 0, i32 0
  store i32 %59, i32* %61, align 4
  %62 = load %struct.aspeed_kcs_bmc*, %struct.aspeed_kcs_bmc** %5, align 8
  %63 = getelementptr inbounds %struct.aspeed_kcs_bmc, %struct.aspeed_kcs_bmc* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i64 @IS_ERR(i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %72

67:                                               ; preds = %51
  %68 = load %struct.device*, %struct.device** %4, align 8
  %69 = call i32 @dev_err(%struct.device* %68, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0))
  %70 = load i32, i32* @ENODEV, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %2, align 4
  br label %129

72:                                               ; preds = %51
  %73 = load %struct.kcs_bmc*, %struct.kcs_bmc** %6, align 8
  %74 = getelementptr inbounds %struct.kcs_bmc, %struct.kcs_bmc* %73, i32 0, i32 0
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ast_kcs_bmc_ioregs, align 8
  %76 = load i32, i32* %7, align 4
  %77 = sub nsw i32 %76, 1
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i64 %78
  %80 = bitcast %struct.TYPE_4__* %74 to i8*
  %81 = bitcast %struct.TYPE_4__* %79 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %80, i8* align 4 %81, i64 12, i1 false)
  %82 = load i32, i32* @aspeed_kcs_inb, align 4
  %83 = load %struct.kcs_bmc*, %struct.kcs_bmc** %6, align 8
  %84 = getelementptr inbounds %struct.kcs_bmc, %struct.kcs_bmc* %83, i32 0, i32 3
  store i32 %82, i32* %84, align 4
  %85 = load i32, i32* @aspeed_kcs_outb, align 4
  %86 = load %struct.kcs_bmc*, %struct.kcs_bmc** %6, align 8
  %87 = getelementptr inbounds %struct.kcs_bmc, %struct.kcs_bmc* %86, i32 0, i32 2
  store i32 %85, i32* %87, align 4
  %88 = load %struct.device*, %struct.device** %4, align 8
  %89 = load %struct.kcs_bmc*, %struct.kcs_bmc** %6, align 8
  %90 = call i32 @dev_set_drvdata(%struct.device* %88, %struct.kcs_bmc* %89)
  %91 = load %struct.kcs_bmc*, %struct.kcs_bmc** %6, align 8
  %92 = load i32, i32* %8, align 4
  %93 = call i32 @aspeed_kcs_set_address(%struct.kcs_bmc* %91, i32 %92)
  %94 = load %struct.kcs_bmc*, %struct.kcs_bmc** %6, align 8
  %95 = call i32 @aspeed_kcs_enable_channel(%struct.kcs_bmc* %94, i32 1)
  %96 = load %struct.kcs_bmc*, %struct.kcs_bmc** %6, align 8
  %97 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %98 = call i32 @aspeed_kcs_config_irq(%struct.kcs_bmc* %96, %struct.platform_device* %97)
  store i32 %98, i32* %9, align 4
  %99 = load i32, i32* %9, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %103

101:                                              ; preds = %72
  %102 = load i32, i32* %9, align 4
  store i32 %102, i32* %2, align 4
  br label %129

103:                                              ; preds = %72
  %104 = load %struct.kcs_bmc*, %struct.kcs_bmc** %6, align 8
  %105 = getelementptr inbounds %struct.kcs_bmc, %struct.kcs_bmc* %104, i32 0, i32 1
  %106 = call i32 @misc_register(i32* %105)
  store i32 %106, i32* %9, align 4
  %107 = load i32, i32* %9, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %113

109:                                              ; preds = %103
  %110 = load %struct.device*, %struct.device** %4, align 8
  %111 = call i32 @dev_err(%struct.device* %110, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0))
  %112 = load i32, i32* %9, align 4
  store i32 %112, i32* %2, align 4
  br label %129

113:                                              ; preds = %103
  %114 = load i32, i32* %7, align 4
  %115 = load i32, i32* %8, align 4
  %116 = load %struct.kcs_bmc*, %struct.kcs_bmc** %6, align 8
  %117 = getelementptr inbounds %struct.kcs_bmc, %struct.kcs_bmc* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.kcs_bmc*, %struct.kcs_bmc** %6, align 8
  %121 = getelementptr inbounds %struct.kcs_bmc, %struct.kcs_bmc* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.kcs_bmc*, %struct.kcs_bmc** %6, align 8
  %125 = getelementptr inbounds %struct.kcs_bmc, %struct.kcs_bmc* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = call i32 @pr_info(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.6, i64 0, i64 0), i32 %114, i32 %115, i32 %119, i32 %123, i32 %127)
  store i32 0, i32* %2, align 4
  br label %129

129:                                              ; preds = %113, %109, %101, %67, %48, %37, %25
  %130 = load i32, i32* %2, align 4
  ret i32 %130
}

declare dso_local i32 @of_property_read_u32(i32, i8*, i32*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local %struct.kcs_bmc* @kcs_bmc_alloc(%struct.device*, i32, i32) #1

declare dso_local %struct.aspeed_kcs_bmc* @kcs_bmc_priv(%struct.kcs_bmc*) #1

declare dso_local i32 @syscon_node_to_regmap(i32) #1

declare dso_local i64 @IS_ERR(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @dev_set_drvdata(%struct.device*, %struct.kcs_bmc*) #1

declare dso_local i32 @aspeed_kcs_set_address(%struct.kcs_bmc*, i32) #1

declare dso_local i32 @aspeed_kcs_enable_channel(%struct.kcs_bmc*, i32) #1

declare dso_local i32 @aspeed_kcs_config_irq(%struct.kcs_bmc*, %struct.platform_device*) #1

declare dso_local i32 @misc_register(i32*) #1

declare dso_local i32 @pr_info(i8*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
