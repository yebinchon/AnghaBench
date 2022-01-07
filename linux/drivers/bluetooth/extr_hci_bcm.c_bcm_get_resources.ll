; ModuleID = '/home/carl/AnghaBench/linux/drivers/bluetooth/extr_hci_bcm.c_bcm_get_resources.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bluetooth/extr_hci_bcm.c_bcm_get_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcm_device = type { i64, i32, %struct.TYPE_2__*, i32, i32, %struct.gpio_desc*, %struct.gpio_desc*, %struct.gpio_desc*, %struct.gpio_desc*, i32 }
%struct.TYPE_2__ = type { i8* }
%struct.gpio_desc = type { i32 }
%struct.dmi_system_id = type { i32 }

@x86_apple_machine = common dso_local global i64 0, align 8
@EPROBE_DEFER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"lpo\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"device-wakeup\00", align 1
@GPIOD_OUT_LOW = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"shutdown\00", align 1
@bcm_gpio_set_device_wakeup = common dso_local global i32 0, align 4
@bcm_gpio_set_shutdown = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"vbat\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"vddio\00", align 1
@BCM_NUM_SUPPLIES = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [12 x i8] c"host-wakeup\00", align 1
@GPIOD_IN = common dso_local global i32 0, align 4
@bcm_broken_irq_dmi_table = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [65 x i8] c"%s: Has a broken IRQ config, disabling IRQ support / runtime-pm\0A\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"BCM irq: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bcm_device*)* @bcm_get_resources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcm_get_resources(%struct.bcm_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bcm_device*, align 8
  %4 = alloca %struct.dmi_system_id*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.gpio_desc*, align 8
  store %struct.bcm_device* %0, %struct.bcm_device** %3, align 8
  %7 = load %struct.bcm_device*, %struct.bcm_device** %3, align 8
  %8 = getelementptr inbounds %struct.bcm_device, %struct.bcm_device* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 8
  %10 = call i32 @dev_name(i32 %9)
  %11 = load %struct.bcm_device*, %struct.bcm_device** %3, align 8
  %12 = getelementptr inbounds %struct.bcm_device, %struct.bcm_device* %11, i32 0, i32 9
  store i32 %10, i32* %12, align 8
  %13 = load i64, i64* @x86_apple_machine, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %1
  %16 = load %struct.bcm_device*, %struct.bcm_device** %3, align 8
  %17 = call i32 @bcm_apple_get_resources(%struct.bcm_device* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %15
  store i32 0, i32* %2, align 4
  br label %213

20:                                               ; preds = %15, %1
  %21 = load %struct.bcm_device*, %struct.bcm_device** %3, align 8
  %22 = getelementptr inbounds %struct.bcm_device, %struct.bcm_device* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = call %struct.gpio_desc* @bcm_get_txco(i32 %23)
  %25 = load %struct.bcm_device*, %struct.bcm_device** %3, align 8
  %26 = getelementptr inbounds %struct.bcm_device, %struct.bcm_device* %25, i32 0, i32 7
  store %struct.gpio_desc* %24, %struct.gpio_desc** %26, align 8
  %27 = load %struct.bcm_device*, %struct.bcm_device** %3, align 8
  %28 = getelementptr inbounds %struct.bcm_device, %struct.bcm_device* %27, i32 0, i32 7
  %29 = load %struct.gpio_desc*, %struct.gpio_desc** %28, align 8
  %30 = load i32, i32* @EPROBE_DEFER, align 4
  %31 = sub nsw i32 0, %30
  %32 = call %struct.gpio_desc* @ERR_PTR(i32 %31)
  %33 = icmp eq %struct.gpio_desc* %29, %32
  br i1 %33, label %34, label %39

34:                                               ; preds = %20
  %35 = load %struct.bcm_device*, %struct.bcm_device** %3, align 8
  %36 = getelementptr inbounds %struct.bcm_device, %struct.bcm_device* %35, i32 0, i32 7
  %37 = load %struct.gpio_desc*, %struct.gpio_desc** %36, align 8
  %38 = call i32 @PTR_ERR(%struct.gpio_desc* %37)
  store i32 %38, i32* %2, align 4
  br label %213

39:                                               ; preds = %20
  %40 = load %struct.bcm_device*, %struct.bcm_device** %3, align 8
  %41 = getelementptr inbounds %struct.bcm_device, %struct.bcm_device* %40, i32 0, i32 7
  %42 = load %struct.gpio_desc*, %struct.gpio_desc** %41, align 8
  %43 = call i64 @IS_ERR(%struct.gpio_desc* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %39
  %46 = load %struct.bcm_device*, %struct.bcm_device** %3, align 8
  %47 = getelementptr inbounds %struct.bcm_device, %struct.bcm_device* %46, i32 0, i32 7
  store %struct.gpio_desc* null, %struct.gpio_desc** %47, align 8
  br label %48

48:                                               ; preds = %45, %39
  %49 = load %struct.bcm_device*, %struct.bcm_device** %3, align 8
  %50 = getelementptr inbounds %struct.bcm_device, %struct.bcm_device* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = call %struct.gpio_desc* @devm_clk_get(i32 %51, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %53 = load %struct.bcm_device*, %struct.bcm_device** %3, align 8
  %54 = getelementptr inbounds %struct.bcm_device, %struct.bcm_device* %53, i32 0, i32 8
  store %struct.gpio_desc* %52, %struct.gpio_desc** %54, align 8
  %55 = load %struct.bcm_device*, %struct.bcm_device** %3, align 8
  %56 = getelementptr inbounds %struct.bcm_device, %struct.bcm_device* %55, i32 0, i32 8
  %57 = load %struct.gpio_desc*, %struct.gpio_desc** %56, align 8
  %58 = load i32, i32* @EPROBE_DEFER, align 4
  %59 = sub nsw i32 0, %58
  %60 = call %struct.gpio_desc* @ERR_PTR(i32 %59)
  %61 = icmp eq %struct.gpio_desc* %57, %60
  br i1 %61, label %62, label %67

62:                                               ; preds = %48
  %63 = load %struct.bcm_device*, %struct.bcm_device** %3, align 8
  %64 = getelementptr inbounds %struct.bcm_device, %struct.bcm_device* %63, i32 0, i32 8
  %65 = load %struct.gpio_desc*, %struct.gpio_desc** %64, align 8
  %66 = call i32 @PTR_ERR(%struct.gpio_desc* %65)
  store i32 %66, i32* %2, align 4
  br label %213

67:                                               ; preds = %48
  %68 = load %struct.bcm_device*, %struct.bcm_device** %3, align 8
  %69 = getelementptr inbounds %struct.bcm_device, %struct.bcm_device* %68, i32 0, i32 8
  %70 = load %struct.gpio_desc*, %struct.gpio_desc** %69, align 8
  %71 = call i64 @IS_ERR(%struct.gpio_desc* %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %67
  %74 = load %struct.bcm_device*, %struct.bcm_device** %3, align 8
  %75 = getelementptr inbounds %struct.bcm_device, %struct.bcm_device* %74, i32 0, i32 8
  store %struct.gpio_desc* null, %struct.gpio_desc** %75, align 8
  br label %76

76:                                               ; preds = %73, %67
  %77 = load %struct.bcm_device*, %struct.bcm_device** %3, align 8
  %78 = getelementptr inbounds %struct.bcm_device, %struct.bcm_device* %77, i32 0, i32 8
  %79 = load %struct.gpio_desc*, %struct.gpio_desc** %78, align 8
  %80 = icmp ne %struct.gpio_desc* %79, null
  br i1 %80, label %81, label %100

81:                                               ; preds = %76
  %82 = load %struct.bcm_device*, %struct.bcm_device** %3, align 8
  %83 = getelementptr inbounds %struct.bcm_device, %struct.bcm_device* %82, i32 0, i32 8
  %84 = load %struct.gpio_desc*, %struct.gpio_desc** %83, align 8
  %85 = load %struct.bcm_device*, %struct.bcm_device** %3, align 8
  %86 = getelementptr inbounds %struct.bcm_device, %struct.bcm_device* %85, i32 0, i32 7
  %87 = load %struct.gpio_desc*, %struct.gpio_desc** %86, align 8
  %88 = call i64 @clk_is_match(%struct.gpio_desc* %84, %struct.gpio_desc* %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %100

90:                                               ; preds = %81
  %91 = load %struct.bcm_device*, %struct.bcm_device** %3, align 8
  %92 = getelementptr inbounds %struct.bcm_device, %struct.bcm_device* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 8
  %94 = load %struct.bcm_device*, %struct.bcm_device** %3, align 8
  %95 = getelementptr inbounds %struct.bcm_device, %struct.bcm_device* %94, i32 0, i32 7
  %96 = load %struct.gpio_desc*, %struct.gpio_desc** %95, align 8
  %97 = call i32 @devm_clk_put(i32 %93, %struct.gpio_desc* %96)
  %98 = load %struct.bcm_device*, %struct.bcm_device** %3, align 8
  %99 = getelementptr inbounds %struct.bcm_device, %struct.bcm_device* %98, i32 0, i32 7
  store %struct.gpio_desc* null, %struct.gpio_desc** %99, align 8
  br label %100

100:                                              ; preds = %90, %81, %76
  %101 = load %struct.bcm_device*, %struct.bcm_device** %3, align 8
  %102 = getelementptr inbounds %struct.bcm_device, %struct.bcm_device* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 8
  %104 = load i32, i32* @GPIOD_OUT_LOW, align 4
  %105 = call i8* @devm_gpiod_get_optional(i32 %103, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 %104)
  %106 = bitcast i8* %105 to %struct.gpio_desc*
  %107 = load %struct.bcm_device*, %struct.bcm_device** %3, align 8
  %108 = getelementptr inbounds %struct.bcm_device, %struct.bcm_device* %107, i32 0, i32 6
  store %struct.gpio_desc* %106, %struct.gpio_desc** %108, align 8
  %109 = load %struct.bcm_device*, %struct.bcm_device** %3, align 8
  %110 = getelementptr inbounds %struct.bcm_device, %struct.bcm_device* %109, i32 0, i32 6
  %111 = load %struct.gpio_desc*, %struct.gpio_desc** %110, align 8
  %112 = call i64 @IS_ERR(%struct.gpio_desc* %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %119

114:                                              ; preds = %100
  %115 = load %struct.bcm_device*, %struct.bcm_device** %3, align 8
  %116 = getelementptr inbounds %struct.bcm_device, %struct.bcm_device* %115, i32 0, i32 6
  %117 = load %struct.gpio_desc*, %struct.gpio_desc** %116, align 8
  %118 = call i32 @PTR_ERR(%struct.gpio_desc* %117)
  store i32 %118, i32* %2, align 4
  br label %213

119:                                              ; preds = %100
  %120 = load %struct.bcm_device*, %struct.bcm_device** %3, align 8
  %121 = getelementptr inbounds %struct.bcm_device, %struct.bcm_device* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 8
  %123 = load i32, i32* @GPIOD_OUT_LOW, align 4
  %124 = call i8* @devm_gpiod_get_optional(i32 %122, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 %123)
  %125 = bitcast i8* %124 to %struct.gpio_desc*
  %126 = load %struct.bcm_device*, %struct.bcm_device** %3, align 8
  %127 = getelementptr inbounds %struct.bcm_device, %struct.bcm_device* %126, i32 0, i32 5
  store %struct.gpio_desc* %125, %struct.gpio_desc** %127, align 8
  %128 = load %struct.bcm_device*, %struct.bcm_device** %3, align 8
  %129 = getelementptr inbounds %struct.bcm_device, %struct.bcm_device* %128, i32 0, i32 5
  %130 = load %struct.gpio_desc*, %struct.gpio_desc** %129, align 8
  %131 = call i64 @IS_ERR(%struct.gpio_desc* %130)
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %138

133:                                              ; preds = %119
  %134 = load %struct.bcm_device*, %struct.bcm_device** %3, align 8
  %135 = getelementptr inbounds %struct.bcm_device, %struct.bcm_device* %134, i32 0, i32 5
  %136 = load %struct.gpio_desc*, %struct.gpio_desc** %135, align 8
  %137 = call i32 @PTR_ERR(%struct.gpio_desc* %136)
  store i32 %137, i32* %2, align 4
  br label %213

138:                                              ; preds = %119
  %139 = load i32, i32* @bcm_gpio_set_device_wakeup, align 4
  %140 = load %struct.bcm_device*, %struct.bcm_device** %3, align 8
  %141 = getelementptr inbounds %struct.bcm_device, %struct.bcm_device* %140, i32 0, i32 4
  store i32 %139, i32* %141, align 4
  %142 = load i32, i32* @bcm_gpio_set_shutdown, align 4
  %143 = load %struct.bcm_device*, %struct.bcm_device** %3, align 8
  %144 = getelementptr inbounds %struct.bcm_device, %struct.bcm_device* %143, i32 0, i32 3
  store i32 %142, i32* %144, align 8
  %145 = load %struct.bcm_device*, %struct.bcm_device** %3, align 8
  %146 = getelementptr inbounds %struct.bcm_device, %struct.bcm_device* %145, i32 0, i32 2
  %147 = load %struct.TYPE_2__*, %struct.TYPE_2__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %147, i64 0
  %149 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %148, i32 0, i32 0
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8** %149, align 8
  %150 = load %struct.bcm_device*, %struct.bcm_device** %3, align 8
  %151 = getelementptr inbounds %struct.bcm_device, %struct.bcm_device* %150, i32 0, i32 2
  %152 = load %struct.TYPE_2__*, %struct.TYPE_2__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %152, i64 1
  %154 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %153, i32 0, i32 0
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i8** %154, align 8
  %155 = load %struct.bcm_device*, %struct.bcm_device** %3, align 8
  %156 = getelementptr inbounds %struct.bcm_device, %struct.bcm_device* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 8
  %158 = load i32, i32* @BCM_NUM_SUPPLIES, align 4
  %159 = load %struct.bcm_device*, %struct.bcm_device** %3, align 8
  %160 = getelementptr inbounds %struct.bcm_device, %struct.bcm_device* %159, i32 0, i32 2
  %161 = load %struct.TYPE_2__*, %struct.TYPE_2__** %160, align 8
  %162 = call i32 @devm_regulator_bulk_get(i32 %157, i32 %158, %struct.TYPE_2__* %161)
  store i32 %162, i32* %5, align 4
  %163 = load i32, i32* %5, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %167

165:                                              ; preds = %138
  %166 = load i32, i32* %5, align 4
  store i32 %166, i32* %2, align 4
  br label %213

167:                                              ; preds = %138
  %168 = load %struct.bcm_device*, %struct.bcm_device** %3, align 8
  %169 = getelementptr inbounds %struct.bcm_device, %struct.bcm_device* %168, i32 0, i32 0
  %170 = load i64, i64* %169, align 8
  %171 = icmp sle i64 %170, 0
  br i1 %171, label %172, label %190

172:                                              ; preds = %167
  %173 = load %struct.bcm_device*, %struct.bcm_device** %3, align 8
  %174 = getelementptr inbounds %struct.bcm_device, %struct.bcm_device* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 8
  %176 = load i32, i32* @GPIOD_IN, align 4
  %177 = call i8* @devm_gpiod_get_optional(i32 %175, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i32 %176)
  %178 = bitcast i8* %177 to %struct.gpio_desc*
  store %struct.gpio_desc* %178, %struct.gpio_desc** %6, align 8
  %179 = load %struct.gpio_desc*, %struct.gpio_desc** %6, align 8
  %180 = call i64 @IS_ERR(%struct.gpio_desc* %179)
  %181 = icmp ne i64 %180, 0
  br i1 %181, label %182, label %185

182:                                              ; preds = %172
  %183 = load %struct.gpio_desc*, %struct.gpio_desc** %6, align 8
  %184 = call i32 @PTR_ERR(%struct.gpio_desc* %183)
  store i32 %184, i32* %2, align 4
  br label %213

185:                                              ; preds = %172
  %186 = load %struct.gpio_desc*, %struct.gpio_desc** %6, align 8
  %187 = call i64 @gpiod_to_irq(%struct.gpio_desc* %186)
  %188 = load %struct.bcm_device*, %struct.bcm_device** %3, align 8
  %189 = getelementptr inbounds %struct.bcm_device, %struct.bcm_device* %188, i32 0, i32 0
  store i64 %187, i64* %189, align 8
  br label %190

190:                                              ; preds = %185, %167
  %191 = load i32, i32* @bcm_broken_irq_dmi_table, align 4
  %192 = call %struct.dmi_system_id* @dmi_first_match(i32 %191)
  store %struct.dmi_system_id* %192, %struct.dmi_system_id** %4, align 8
  %193 = load %struct.dmi_system_id*, %struct.dmi_system_id** %4, align 8
  %194 = icmp ne %struct.dmi_system_id* %193, null
  br i1 %194, label %195, label %205

195:                                              ; preds = %190
  %196 = load %struct.bcm_device*, %struct.bcm_device** %3, align 8
  %197 = getelementptr inbounds %struct.bcm_device, %struct.bcm_device* %196, i32 0, i32 1
  %198 = load i32, i32* %197, align 8
  %199 = load %struct.dmi_system_id*, %struct.dmi_system_id** %4, align 8
  %200 = getelementptr inbounds %struct.dmi_system_id, %struct.dmi_system_id* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 4
  %202 = call i32 @dev_info(i32 %198, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.6, i64 0, i64 0), i32 %201)
  %203 = load %struct.bcm_device*, %struct.bcm_device** %3, align 8
  %204 = getelementptr inbounds %struct.bcm_device, %struct.bcm_device* %203, i32 0, i32 0
  store i64 0, i64* %204, align 8
  br label %205

205:                                              ; preds = %195, %190
  %206 = load %struct.bcm_device*, %struct.bcm_device** %3, align 8
  %207 = getelementptr inbounds %struct.bcm_device, %struct.bcm_device* %206, i32 0, i32 1
  %208 = load i32, i32* %207, align 8
  %209 = load %struct.bcm_device*, %struct.bcm_device** %3, align 8
  %210 = getelementptr inbounds %struct.bcm_device, %struct.bcm_device* %209, i32 0, i32 0
  %211 = load i64, i64* %210, align 8
  %212 = call i32 @dev_dbg(i32 %208, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0), i64 %211)
  store i32 0, i32* %2, align 4
  br label %213

213:                                              ; preds = %205, %182, %165, %133, %114, %62, %34, %19
  %214 = load i32, i32* %2, align 4
  ret i32 %214
}

declare dso_local i32 @dev_name(i32) #1

declare dso_local i32 @bcm_apple_get_resources(%struct.bcm_device*) #1

declare dso_local %struct.gpio_desc* @bcm_get_txco(i32) #1

declare dso_local %struct.gpio_desc* @ERR_PTR(i32) #1

declare dso_local i32 @PTR_ERR(%struct.gpio_desc*) #1

declare dso_local i64 @IS_ERR(%struct.gpio_desc*) #1

declare dso_local %struct.gpio_desc* @devm_clk_get(i32, i8*) #1

declare dso_local i64 @clk_is_match(%struct.gpio_desc*, %struct.gpio_desc*) #1

declare dso_local i32 @devm_clk_put(i32, %struct.gpio_desc*) #1

declare dso_local i8* @devm_gpiod_get_optional(i32, i8*, i32) #1

declare dso_local i32 @devm_regulator_bulk_get(i32, i32, %struct.TYPE_2__*) #1

declare dso_local i64 @gpiod_to_irq(%struct.gpio_desc*) #1

declare dso_local %struct.dmi_system_id* @dmi_first_match(i32) #1

declare dso_local i32 @dev_info(i32, i8*, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
