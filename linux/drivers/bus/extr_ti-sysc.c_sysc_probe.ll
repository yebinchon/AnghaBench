; ModuleID = '/home/carl/AnghaBench/linux/drivers/bus/extr_ti-sysc.c_sysc_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bus/extr_ti-sysc.c_sysc_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32, i32* }
%struct.ti_sysc_platform_data = type { i32* }
%struct.sysc = type { i32, %struct.TYPE_11__, %struct.TYPE_12__*, i64 }
%struct.TYPE_11__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@sysc_device_type = common dso_local global i32 0, align 4
@sysc_match_table = common dso_local global i32 0, align 4
@ti_sysc_idle = common dso_local global i32 0, align 4
@SYSC_QUIRK_NO_IDLE = common dso_local global i32 0, align 4
@SYSC_QUIRK_NO_IDLE_ON_INIT = common dso_local global i32 0, align 4
@SYSC_QUIRK_NO_RESET_ON_INIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @sysc_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sysc_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.ti_sysc_platform_data*, align 8
  %5 = alloca %struct.sysc*, align 8
  %6 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 0
  %9 = call %struct.ti_sysc_platform_data* @dev_get_platdata(%struct.TYPE_12__* %8)
  store %struct.ti_sysc_platform_data* %9, %struct.ti_sysc_platform_data** %4, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %11 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %10, i32 0, i32 0
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.sysc* @devm_kzalloc(%struct.TYPE_12__* %11, i32 24, i32 %12)
  store %struct.sysc* %13, %struct.sysc** %5, align 8
  %14 = load %struct.sysc*, %struct.sysc** %5, align 8
  %15 = icmp ne %struct.sysc* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %1
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %191

19:                                               ; preds = %1
  %20 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %21 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %20, i32 0, i32 0
  %22 = load %struct.sysc*, %struct.sysc** %5, align 8
  %23 = getelementptr inbounds %struct.sysc, %struct.sysc* %22, i32 0, i32 2
  store %struct.TYPE_12__* %21, %struct.TYPE_12__** %23, align 8
  %24 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %25 = load %struct.sysc*, %struct.sysc** %5, align 8
  %26 = call i32 @platform_set_drvdata(%struct.platform_device* %24, %struct.sysc* %25)
  %27 = load %struct.sysc*, %struct.sysc** %5, align 8
  %28 = call i32 @sysc_init_match(%struct.sysc* %27)
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %6, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %19
  %32 = load i32, i32* %6, align 4
  store i32 %32, i32* %2, align 4
  br label %191

33:                                               ; preds = %19
  %34 = load %struct.sysc*, %struct.sysc** %5, align 8
  %35 = call i32 @sysc_init_dts_quirks(%struct.sysc* %34)
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* %6, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %33
  %39 = load i32, i32* %6, align 4
  store i32 %39, i32* %2, align 4
  br label %191

40:                                               ; preds = %33
  %41 = load %struct.sysc*, %struct.sysc** %5, align 8
  %42 = call i32 @sysc_map_and_check_registers(%struct.sysc* %41)
  store i32 %42, i32* %6, align 4
  %43 = load i32, i32* %6, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %40
  %46 = load i32, i32* %6, align 4
  store i32 %46, i32* %2, align 4
  br label %191

47:                                               ; preds = %40
  %48 = load %struct.sysc*, %struct.sysc** %5, align 8
  %49 = call i32 @sysc_init_sysc_mask(%struct.sysc* %48)
  store i32 %49, i32* %6, align 4
  %50 = load i32, i32* %6, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %47
  %53 = load i32, i32* %6, align 4
  store i32 %53, i32* %2, align 4
  br label %191

54:                                               ; preds = %47
  %55 = load %struct.sysc*, %struct.sysc** %5, align 8
  %56 = call i32 @sysc_init_idlemodes(%struct.sysc* %55)
  store i32 %56, i32* %6, align 4
  %57 = load i32, i32* %6, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %54
  %60 = load i32, i32* %6, align 4
  store i32 %60, i32* %2, align 4
  br label %191

61:                                               ; preds = %54
  %62 = load %struct.sysc*, %struct.sysc** %5, align 8
  %63 = call i32 @sysc_init_syss_mask(%struct.sysc* %62)
  store i32 %63, i32* %6, align 4
  %64 = load i32, i32* %6, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %61
  %67 = load i32, i32* %6, align 4
  store i32 %67, i32* %2, align 4
  br label %191

68:                                               ; preds = %61
  %69 = load %struct.sysc*, %struct.sysc** %5, align 8
  %70 = call i32 @sysc_init_pdata(%struct.sysc* %69)
  store i32 %70, i32* %6, align 4
  %71 = load i32, i32* %6, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %68
  %74 = load i32, i32* %6, align 4
  store i32 %74, i32* %2, align 4
  br label %191

75:                                               ; preds = %68
  %76 = load %struct.sysc*, %struct.sysc** %5, align 8
  %77 = call i32 @sysc_init_early_quirks(%struct.sysc* %76)
  %78 = load %struct.sysc*, %struct.sysc** %5, align 8
  %79 = call i32 @sysc_get_clocks(%struct.sysc* %78)
  store i32 %79, i32* %6, align 4
  %80 = load i32, i32* %6, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %75
  %83 = load i32, i32* %6, align 4
  store i32 %83, i32* %2, align 4
  br label %191

84:                                               ; preds = %75
  %85 = load %struct.sysc*, %struct.sysc** %5, align 8
  %86 = call i32 @sysc_init_resets(%struct.sysc* %85)
  store i32 %86, i32* %6, align 4
  %87 = load i32, i32* %6, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %84
  br label %187

90:                                               ; preds = %84
  %91 = load %struct.sysc*, %struct.sysc** %5, align 8
  %92 = call i32 @sysc_init_module(%struct.sysc* %91)
  store i32 %92, i32* %6, align 4
  %93 = load i32, i32* %6, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %90
  br label %187

96:                                               ; preds = %90
  %97 = load %struct.sysc*, %struct.sysc** %5, align 8
  %98 = getelementptr inbounds %struct.sysc, %struct.sysc* %97, i32 0, i32 2
  %99 = load %struct.TYPE_12__*, %struct.TYPE_12__** %98, align 8
  %100 = call i32 @pm_runtime_enable(%struct.TYPE_12__* %99)
  %101 = load %struct.sysc*, %struct.sysc** %5, align 8
  %102 = getelementptr inbounds %struct.sysc, %struct.sysc* %101, i32 0, i32 2
  %103 = load %struct.TYPE_12__*, %struct.TYPE_12__** %102, align 8
  %104 = call i32 @pm_runtime_get_sync(%struct.TYPE_12__* %103)
  store i32 %104, i32* %6, align 4
  %105 = load i32, i32* %6, align 4
  %106 = icmp slt i32 %105, 0
  br i1 %106, label %107, label %116

107:                                              ; preds = %96
  %108 = load %struct.sysc*, %struct.sysc** %5, align 8
  %109 = getelementptr inbounds %struct.sysc, %struct.sysc* %108, i32 0, i32 2
  %110 = load %struct.TYPE_12__*, %struct.TYPE_12__** %109, align 8
  %111 = call i32 @pm_runtime_put_noidle(%struct.TYPE_12__* %110)
  %112 = load %struct.sysc*, %struct.sysc** %5, align 8
  %113 = getelementptr inbounds %struct.sysc, %struct.sysc* %112, i32 0, i32 2
  %114 = load %struct.TYPE_12__*, %struct.TYPE_12__** %113, align 8
  %115 = call i32 @pm_runtime_disable(%struct.TYPE_12__* %114)
  br label %187

116:                                              ; preds = %96
  %117 = load %struct.sysc*, %struct.sysc** %5, align 8
  %118 = getelementptr inbounds %struct.sysc, %struct.sysc* %117, i32 0, i32 3
  %119 = load i64, i64* %118, align 8
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %126

121:                                              ; preds = %116
  %122 = load %struct.sysc*, %struct.sysc** %5, align 8
  %123 = getelementptr inbounds %struct.sysc, %struct.sysc* %122, i32 0, i32 3
  %124 = load i64, i64* %123, align 8
  %125 = call i32 @reset_control_assert(i64 %124)
  br label %126

126:                                              ; preds = %121, %116
  %127 = load %struct.sysc*, %struct.sysc** %5, align 8
  %128 = call i32 @sysc_show_registers(%struct.sysc* %127)
  %129 = load %struct.sysc*, %struct.sysc** %5, align 8
  %130 = getelementptr inbounds %struct.sysc, %struct.sysc* %129, i32 0, i32 2
  %131 = load %struct.TYPE_12__*, %struct.TYPE_12__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %131, i32 0, i32 1
  store i32* @sysc_device_type, i32** %132, align 8
  %133 = load %struct.sysc*, %struct.sysc** %5, align 8
  %134 = getelementptr inbounds %struct.sysc, %struct.sysc* %133, i32 0, i32 2
  %135 = load %struct.TYPE_12__*, %struct.TYPE_12__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = load i32, i32* @sysc_match_table, align 4
  %139 = load %struct.ti_sysc_platform_data*, %struct.ti_sysc_platform_data** %4, align 8
  %140 = icmp ne %struct.ti_sysc_platform_data* %139, null
  br i1 %140, label %141, label %145

141:                                              ; preds = %126
  %142 = load %struct.ti_sysc_platform_data*, %struct.ti_sysc_platform_data** %4, align 8
  %143 = getelementptr inbounds %struct.ti_sysc_platform_data, %struct.ti_sysc_platform_data* %142, i32 0, i32 0
  %144 = load i32*, i32** %143, align 8
  br label %146

145:                                              ; preds = %126
  br label %146

146:                                              ; preds = %145, %141
  %147 = phi i32* [ %144, %141 ], [ null, %145 ]
  %148 = load %struct.sysc*, %struct.sysc** %5, align 8
  %149 = getelementptr inbounds %struct.sysc, %struct.sysc* %148, i32 0, i32 2
  %150 = load %struct.TYPE_12__*, %struct.TYPE_12__** %149, align 8
  %151 = call i32 @of_platform_populate(i32 %137, i32 %138, i32* %147, %struct.TYPE_12__* %150)
  store i32 %151, i32* %6, align 4
  %152 = load i32, i32* %6, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %155

154:                                              ; preds = %146
  br label %180

155:                                              ; preds = %146
  %156 = load %struct.sysc*, %struct.sysc** %5, align 8
  %157 = getelementptr inbounds %struct.sysc, %struct.sysc* %156, i32 0, i32 0
  %158 = load i32, i32* @ti_sysc_idle, align 4
  %159 = call i32 @INIT_DELAYED_WORK(i32* %157, i32 %158)
  %160 = load %struct.sysc*, %struct.sysc** %5, align 8
  %161 = getelementptr inbounds %struct.sysc, %struct.sysc* %160, i32 0, i32 1
  %162 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 4
  %164 = load i32, i32* @SYSC_QUIRK_NO_IDLE, align 4
  %165 = load i32, i32* @SYSC_QUIRK_NO_IDLE_ON_INIT, align 4
  %166 = or i32 %164, %165
  %167 = load i32, i32* @SYSC_QUIRK_NO_RESET_ON_INIT, align 4
  %168 = or i32 %166, %167
  %169 = and i32 %163, %168
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %175

171:                                              ; preds = %155
  %172 = load %struct.sysc*, %struct.sysc** %5, align 8
  %173 = getelementptr inbounds %struct.sysc, %struct.sysc* %172, i32 0, i32 0
  %174 = call i32 @schedule_delayed_work(i32* %173, i32 3000)
  br label %179

175:                                              ; preds = %155
  %176 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %177 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %176, i32 0, i32 0
  %178 = call i32 @pm_runtime_put(%struct.TYPE_12__* %177)
  br label %179

179:                                              ; preds = %175, %171
  store i32 0, i32* %2, align 4
  br label %191

180:                                              ; preds = %154
  %181 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %182 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %181, i32 0, i32 0
  %183 = call i32 @pm_runtime_put_sync(%struct.TYPE_12__* %182)
  %184 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %185 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %184, i32 0, i32 0
  %186 = call i32 @pm_runtime_disable(%struct.TYPE_12__* %185)
  br label %187

187:                                              ; preds = %180, %107, %95, %89
  %188 = load %struct.sysc*, %struct.sysc** %5, align 8
  %189 = call i32 @sysc_unprepare(%struct.sysc* %188)
  %190 = load i32, i32* %6, align 4
  store i32 %190, i32* %2, align 4
  br label %191

191:                                              ; preds = %187, %179, %82, %73, %66, %59, %52, %45, %38, %31, %16
  %192 = load i32, i32* %2, align 4
  ret i32 %192
}

declare dso_local %struct.ti_sysc_platform_data* @dev_get_platdata(%struct.TYPE_12__*) #1

declare dso_local %struct.sysc* @devm_kzalloc(%struct.TYPE_12__*, i32, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.sysc*) #1

declare dso_local i32 @sysc_init_match(%struct.sysc*) #1

declare dso_local i32 @sysc_init_dts_quirks(%struct.sysc*) #1

declare dso_local i32 @sysc_map_and_check_registers(%struct.sysc*) #1

declare dso_local i32 @sysc_init_sysc_mask(%struct.sysc*) #1

declare dso_local i32 @sysc_init_idlemodes(%struct.sysc*) #1

declare dso_local i32 @sysc_init_syss_mask(%struct.sysc*) #1

declare dso_local i32 @sysc_init_pdata(%struct.sysc*) #1

declare dso_local i32 @sysc_init_early_quirks(%struct.sysc*) #1

declare dso_local i32 @sysc_get_clocks(%struct.sysc*) #1

declare dso_local i32 @sysc_init_resets(%struct.sysc*) #1

declare dso_local i32 @sysc_init_module(%struct.sysc*) #1

declare dso_local i32 @pm_runtime_enable(%struct.TYPE_12__*) #1

declare dso_local i32 @pm_runtime_get_sync(%struct.TYPE_12__*) #1

declare dso_local i32 @pm_runtime_put_noidle(%struct.TYPE_12__*) #1

declare dso_local i32 @pm_runtime_disable(%struct.TYPE_12__*) #1

declare dso_local i32 @reset_control_assert(i64) #1

declare dso_local i32 @sysc_show_registers(%struct.sysc*) #1

declare dso_local i32 @of_platform_populate(i32, i32, i32*, %struct.TYPE_12__*) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i32 @schedule_delayed_work(i32*, i32) #1

declare dso_local i32 @pm_runtime_put(%struct.TYPE_12__*) #1

declare dso_local i32 @pm_runtime_put_sync(%struct.TYPE_12__*) #1

declare dso_local i32 @sysc_unprepare(%struct.sysc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
