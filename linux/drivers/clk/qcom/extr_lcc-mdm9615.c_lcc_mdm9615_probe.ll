; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/qcom/extr_lcc-mdm9615.c_lcc_mdm9615_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/qcom/extr_lcc-mdm9615.c_lcc_mdm9615_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i8* }
%struct.TYPE_12__ = type { i8* }
%struct.TYPE_14__ = type { i8* }
%struct.TYPE_9__ = type { i8* }
%struct.TYPE_13__ = type { i8* }
%struct.TYPE_8__ = type { i8* }
%struct.TYPE_11__ = type { i32 }
%struct.platform_device = type { i32 }
%struct.regmap = type { i32 }

@lcc_mdm9615_desc = common dso_local global i32 0, align 4
@clk_tbl_aif_osr_492 = common dso_local global i8* null, align 8
@slimbus_src = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@mi2s_osr_src = common dso_local global %struct.TYPE_12__ zeroinitializer, align 8
@codec_i2s_mic_osr_src = common dso_local global %struct.TYPE_14__ zeroinitializer, align 8
@spare_i2s_mic_osr_src = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@codec_i2s_spkr_osr_src = common dso_local global %struct.TYPE_13__ zeroinitializer, align 8
@spare_i2s_spkr_osr_src = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@clk_tbl_pcm_492 = common dso_local global i32 0, align 4
@pcm_src = common dso_local global %struct.TYPE_11__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @lcc_mdm9615_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lcc_mdm9615_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.regmap*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %6 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %7 = call %struct.regmap* @qcom_cc_map(%struct.platform_device* %6, i32* @lcc_mdm9615_desc)
  store %struct.regmap* %7, %struct.regmap** %5, align 8
  %8 = load %struct.regmap*, %struct.regmap** %5, align 8
  %9 = call i64 @IS_ERR(%struct.regmap* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = load %struct.regmap*, %struct.regmap** %5, align 8
  %13 = call i32 @PTR_ERR(%struct.regmap* %12)
  store i32 %13, i32* %2, align 4
  br label %33

14:                                               ; preds = %1
  %15 = load %struct.regmap*, %struct.regmap** %5, align 8
  %16 = call i32 @regmap_read(%struct.regmap* %15, i32 4, i32* %4)
  %17 = load i32, i32* %4, align 4
  %18 = icmp eq i32 %17, 18
  br i1 %18, label %19, label %27

19:                                               ; preds = %14
  %20 = load i8*, i8** @clk_tbl_aif_osr_492, align 8
  store i8* %20, i8** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @slimbus_src, i32 0, i32 0), align 8
  %21 = load i8*, i8** @clk_tbl_aif_osr_492, align 8
  store i8* %21, i8** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @mi2s_osr_src, i32 0, i32 0), align 8
  %22 = load i8*, i8** @clk_tbl_aif_osr_492, align 8
  store i8* %22, i8** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @codec_i2s_mic_osr_src, i32 0, i32 0), align 8
  %23 = load i8*, i8** @clk_tbl_aif_osr_492, align 8
  store i8* %23, i8** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @spare_i2s_mic_osr_src, i32 0, i32 0), align 8
  %24 = load i8*, i8** @clk_tbl_aif_osr_492, align 8
  store i8* %24, i8** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @codec_i2s_spkr_osr_src, i32 0, i32 0), align 8
  %25 = load i8*, i8** @clk_tbl_aif_osr_492, align 8
  store i8* %25, i8** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @spare_i2s_spkr_osr_src, i32 0, i32 0), align 8
  %26 = load i32, i32* @clk_tbl_pcm_492, align 4
  store i32 %26, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @pcm_src, i32 0, i32 0), align 4
  br label %27

27:                                               ; preds = %19, %14
  %28 = load %struct.regmap*, %struct.regmap** %5, align 8
  %29 = call i32 @regmap_write(%struct.regmap* %28, i32 196, i32 1)
  %30 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %31 = load %struct.regmap*, %struct.regmap** %5, align 8
  %32 = call i32 @qcom_cc_really_probe(%struct.platform_device* %30, i32* @lcc_mdm9615_desc, %struct.regmap* %31)
  store i32 %32, i32* %2, align 4
  br label %33

33:                                               ; preds = %27, %11
  %34 = load i32, i32* %2, align 4
  ret i32 %34
}

declare dso_local %struct.regmap* @qcom_cc_map(%struct.platform_device*, i32*) #1

declare dso_local i64 @IS_ERR(%struct.regmap*) #1

declare dso_local i32 @PTR_ERR(%struct.regmap*) #1

declare dso_local i32 @regmap_read(%struct.regmap*, i32, i32*) #1

declare dso_local i32 @regmap_write(%struct.regmap*, i32, i32) #1

declare dso_local i32 @qcom_cc_really_probe(%struct.platform_device*, i32*, %struct.regmap*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
