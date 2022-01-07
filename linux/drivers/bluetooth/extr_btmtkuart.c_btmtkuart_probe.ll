; ModuleID = '/home/carl/AnghaBench/linux/drivers/bluetooth/extr_btmtkuart.c_btmtkuart_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bluetooth/extr_btmtkuart.c_btmtkuart_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.serdev_device = type { i32 }
%struct.btmtkuart_dev = type { i32, i32, i32, i32, i64, i64, i32, i32, %struct.hci_dev*, i32, i32, %struct.serdev_device*, i32 }
%struct.hci_dev = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@btmtkuart_client_ops = common dso_local global i32 0, align 4
@btmtkuart_tx_work = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Can't allocate HCI device\0A\00", align 1
@HCI_UART = common dso_local global i32 0, align 4
@btmtkuart_open = common dso_local global i32 0, align 4
@btmtkuart_close = common dso_local global i32 0, align 4
@btmtkuart_flush = common dso_local global i32 0, align 4
@btmtkuart_setup = common dso_local global i32 0, align 4
@btmtkuart_shutdown = common dso_local global i32 0, align 4
@btmtkuart_send_frame = common dso_local global i32 0, align 4
@HCI_QUIRK_NON_PERSISTENT_SETUP = common dso_local global i32 0, align 4
@BTMTKUART_REQUIRED_WAKEUP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"Can't register HCI device\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.serdev_device*)* @btmtkuart_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @btmtkuart_probe(%struct.serdev_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.serdev_device*, align 8
  %4 = alloca %struct.btmtkuart_dev*, align 8
  %5 = alloca %struct.hci_dev*, align 8
  %6 = alloca i32, align 4
  store %struct.serdev_device* %0, %struct.serdev_device** %3, align 8
  %7 = load %struct.serdev_device*, %struct.serdev_device** %3, align 8
  %8 = getelementptr inbounds %struct.serdev_device, %struct.serdev_device* %7, i32 0, i32 0
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.btmtkuart_dev* @devm_kzalloc(i32* %8, i32 72, i32 %9)
  store %struct.btmtkuart_dev* %10, %struct.btmtkuart_dev** %4, align 8
  %11 = load %struct.btmtkuart_dev*, %struct.btmtkuart_dev** %4, align 8
  %12 = icmp ne %struct.btmtkuart_dev* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %208

16:                                               ; preds = %1
  %17 = load %struct.serdev_device*, %struct.serdev_device** %3, align 8
  %18 = getelementptr inbounds %struct.serdev_device, %struct.serdev_device* %17, i32 0, i32 0
  %19 = call i32 @of_device_get_match_data(i32* %18)
  %20 = load %struct.btmtkuart_dev*, %struct.btmtkuart_dev** %4, align 8
  %21 = getelementptr inbounds %struct.btmtkuart_dev, %struct.btmtkuart_dev* %20, i32 0, i32 12
  store i32 %19, i32* %21, align 8
  %22 = load %struct.btmtkuart_dev*, %struct.btmtkuart_dev** %4, align 8
  %23 = getelementptr inbounds %struct.btmtkuart_dev, %struct.btmtkuart_dev* %22, i32 0, i32 12
  %24 = load i32, i32* %23, align 8
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %16
  %27 = load i32, i32* @ENODEV, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %2, align 4
  br label %208

29:                                               ; preds = %16
  %30 = load %struct.serdev_device*, %struct.serdev_device** %3, align 8
  %31 = load %struct.btmtkuart_dev*, %struct.btmtkuart_dev** %4, align 8
  %32 = getelementptr inbounds %struct.btmtkuart_dev, %struct.btmtkuart_dev* %31, i32 0, i32 11
  store %struct.serdev_device* %30, %struct.serdev_device** %32, align 8
  %33 = load %struct.serdev_device*, %struct.serdev_device** %3, align 8
  %34 = load %struct.btmtkuart_dev*, %struct.btmtkuart_dev** %4, align 8
  %35 = call i32 @serdev_device_set_drvdata(%struct.serdev_device* %33, %struct.btmtkuart_dev* %34)
  %36 = load %struct.serdev_device*, %struct.serdev_device** %3, align 8
  %37 = call i32 @serdev_device_set_client_ops(%struct.serdev_device* %36, i32* @btmtkuart_client_ops)
  %38 = load %struct.serdev_device*, %struct.serdev_device** %3, align 8
  %39 = call i32 @btmtkuart_parse_dt(%struct.serdev_device* %38)
  store i32 %39, i32* %6, align 4
  %40 = load i32, i32* %6, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %29
  %43 = load i32, i32* %6, align 4
  store i32 %43, i32* %2, align 4
  br label %208

44:                                               ; preds = %29
  %45 = load %struct.btmtkuart_dev*, %struct.btmtkuart_dev** %4, align 8
  %46 = getelementptr inbounds %struct.btmtkuart_dev, %struct.btmtkuart_dev* %45, i32 0, i32 10
  %47 = load i32, i32* @btmtkuart_tx_work, align 4
  %48 = call i32 @INIT_WORK(i32* %46, i32 %47)
  %49 = load %struct.btmtkuart_dev*, %struct.btmtkuart_dev** %4, align 8
  %50 = getelementptr inbounds %struct.btmtkuart_dev, %struct.btmtkuart_dev* %49, i32 0, i32 9
  %51 = call i32 @skb_queue_head_init(i32* %50)
  %52 = call %struct.hci_dev* (...) @hci_alloc_dev()
  store %struct.hci_dev* %52, %struct.hci_dev** %5, align 8
  %53 = load %struct.hci_dev*, %struct.hci_dev** %5, align 8
  %54 = icmp ne %struct.hci_dev* %53, null
  br i1 %54, label %61, label %55

55:                                               ; preds = %44
  %56 = load %struct.serdev_device*, %struct.serdev_device** %3, align 8
  %57 = getelementptr inbounds %struct.serdev_device, %struct.serdev_device* %56, i32 0, i32 0
  %58 = call i32 @dev_err(i32* %57, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %59 = load i32, i32* @ENOMEM, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %2, align 4
  br label %208

61:                                               ; preds = %44
  %62 = load %struct.hci_dev*, %struct.hci_dev** %5, align 8
  %63 = load %struct.btmtkuart_dev*, %struct.btmtkuart_dev** %4, align 8
  %64 = getelementptr inbounds %struct.btmtkuart_dev, %struct.btmtkuart_dev* %63, i32 0, i32 8
  store %struct.hci_dev* %62, %struct.hci_dev** %64, align 8
  %65 = load i32, i32* @HCI_UART, align 4
  %66 = load %struct.hci_dev*, %struct.hci_dev** %5, align 8
  %67 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %66, i32 0, i32 8
  store i32 %65, i32* %67, align 4
  %68 = load %struct.hci_dev*, %struct.hci_dev** %5, align 8
  %69 = load %struct.btmtkuart_dev*, %struct.btmtkuart_dev** %4, align 8
  %70 = call i32 @hci_set_drvdata(%struct.hci_dev* %68, %struct.btmtkuart_dev* %69)
  %71 = load i32, i32* @btmtkuart_open, align 4
  %72 = load %struct.hci_dev*, %struct.hci_dev** %5, align 8
  %73 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %72, i32 0, i32 7
  store i32 %71, i32* %73, align 4
  %74 = load i32, i32* @btmtkuart_close, align 4
  %75 = load %struct.hci_dev*, %struct.hci_dev** %5, align 8
  %76 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %75, i32 0, i32 6
  store i32 %74, i32* %76, align 4
  %77 = load i32, i32* @btmtkuart_flush, align 4
  %78 = load %struct.hci_dev*, %struct.hci_dev** %5, align 8
  %79 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %78, i32 0, i32 5
  store i32 %77, i32* %79, align 4
  %80 = load i32, i32* @btmtkuart_setup, align 4
  %81 = load %struct.hci_dev*, %struct.hci_dev** %5, align 8
  %82 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %81, i32 0, i32 4
  store i32 %80, i32* %82, align 4
  %83 = load i32, i32* @btmtkuart_shutdown, align 4
  %84 = load %struct.hci_dev*, %struct.hci_dev** %5, align 8
  %85 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %84, i32 0, i32 3
  store i32 %83, i32* %85, align 4
  %86 = load i32, i32* @btmtkuart_send_frame, align 4
  %87 = load %struct.hci_dev*, %struct.hci_dev** %5, align 8
  %88 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %87, i32 0, i32 2
  store i32 %86, i32* %88, align 4
  %89 = load %struct.hci_dev*, %struct.hci_dev** %5, align 8
  %90 = load %struct.serdev_device*, %struct.serdev_device** %3, align 8
  %91 = getelementptr inbounds %struct.serdev_device, %struct.serdev_device* %90, i32 0, i32 0
  %92 = call i32 @SET_HCIDEV_DEV(%struct.hci_dev* %89, i32* %91)
  %93 = load %struct.hci_dev*, %struct.hci_dev** %5, align 8
  %94 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %93, i32 0, i32 0
  store i32 70, i32* %94, align 4
  %95 = load i32, i32* @HCI_QUIRK_NON_PERSISTENT_SETUP, align 4
  %96 = load %struct.hci_dev*, %struct.hci_dev** %5, align 8
  %97 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %96, i32 0, i32 1
  %98 = call i32 @set_bit(i32 %95, i32* %97)
  %99 = load %struct.btmtkuart_dev*, %struct.btmtkuart_dev** %4, align 8
  %100 = call i64 @btmtkuart_is_standalone(%struct.btmtkuart_dev* %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %185

102:                                              ; preds = %61
  %103 = load %struct.btmtkuart_dev*, %struct.btmtkuart_dev** %4, align 8
  %104 = getelementptr inbounds %struct.btmtkuart_dev, %struct.btmtkuart_dev* %103, i32 0, i32 6
  %105 = load i32, i32* %104, align 8
  %106 = call i32 @clk_prepare_enable(i32 %105)
  store i32 %106, i32* %6, align 4
  %107 = load i32, i32* %6, align 4
  %108 = icmp slt i32 %107, 0
  br i1 %108, label %109, label %111

109:                                              ; preds = %102
  %110 = load i32, i32* %6, align 4
  store i32 %110, i32* %2, align 4
  br label %208

111:                                              ; preds = %102
  %112 = load %struct.btmtkuart_dev*, %struct.btmtkuart_dev** %4, align 8
  %113 = getelementptr inbounds %struct.btmtkuart_dev, %struct.btmtkuart_dev* %112, i32 0, i32 4
  %114 = load i64, i64* %113, align 8
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %121

116:                                              ; preds = %111
  %117 = load %struct.btmtkuart_dev*, %struct.btmtkuart_dev** %4, align 8
  %118 = getelementptr inbounds %struct.btmtkuart_dev, %struct.btmtkuart_dev* %117, i32 0, i32 4
  %119 = load i64, i64* %118, align 8
  %120 = call i32 @gpiod_set_value_cansleep(i64 %119, i32 1)
  br label %129

121:                                              ; preds = %111
  %122 = load %struct.btmtkuart_dev*, %struct.btmtkuart_dev** %4, align 8
  %123 = getelementptr inbounds %struct.btmtkuart_dev, %struct.btmtkuart_dev* %122, i32 0, i32 3
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.btmtkuart_dev*, %struct.btmtkuart_dev** %4, align 8
  %126 = getelementptr inbounds %struct.btmtkuart_dev, %struct.btmtkuart_dev* %125, i32 0, i32 7
  %127 = load i32, i32* %126, align 4
  %128 = call i32 @pinctrl_select_state(i32 %124, i32 %127)
  br label %129

129:                                              ; preds = %121, %116
  %130 = load %struct.btmtkuart_dev*, %struct.btmtkuart_dev** %4, align 8
  %131 = getelementptr inbounds %struct.btmtkuart_dev, %struct.btmtkuart_dev* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = call i32 @regulator_enable(i32 %132)
  store i32 %133, i32* %6, align 4
  %134 = load i32, i32* %6, align 4
  %135 = icmp slt i32 %134, 0
  br i1 %135, label %136, label %142

136:                                              ; preds = %129
  %137 = load %struct.btmtkuart_dev*, %struct.btmtkuart_dev** %4, align 8
  %138 = getelementptr inbounds %struct.btmtkuart_dev, %struct.btmtkuart_dev* %137, i32 0, i32 6
  %139 = load i32, i32* %138, align 8
  %140 = call i32 @clk_disable_unprepare(i32 %139)
  %141 = load i32, i32* %6, align 4
  store i32 %141, i32* %2, align 4
  br label %208

142:                                              ; preds = %129
  %143 = load %struct.btmtkuart_dev*, %struct.btmtkuart_dev** %4, align 8
  %144 = getelementptr inbounds %struct.btmtkuart_dev, %struct.btmtkuart_dev* %143, i32 0, i32 5
  %145 = load i64, i64* %144, align 8
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %157

147:                                              ; preds = %142
  %148 = load %struct.btmtkuart_dev*, %struct.btmtkuart_dev** %4, align 8
  %149 = getelementptr inbounds %struct.btmtkuart_dev, %struct.btmtkuart_dev* %148, i32 0, i32 5
  %150 = load i64, i64* %149, align 8
  %151 = call i32 @gpiod_set_value_cansleep(i64 %150, i32 1)
  %152 = call i32 @usleep_range(i32 1000, i32 2000)
  %153 = load %struct.btmtkuart_dev*, %struct.btmtkuart_dev** %4, align 8
  %154 = getelementptr inbounds %struct.btmtkuart_dev, %struct.btmtkuart_dev* %153, i32 0, i32 5
  %155 = load i64, i64* %154, align 8
  %156 = call i32 @gpiod_set_value_cansleep(i64 %155, i32 0)
  br label %157

157:                                              ; preds = %147, %142
  %158 = call i32 @msleep(i32 50)
  %159 = load %struct.btmtkuart_dev*, %struct.btmtkuart_dev** %4, align 8
  %160 = getelementptr inbounds %struct.btmtkuart_dev, %struct.btmtkuart_dev* %159, i32 0, i32 4
  %161 = load i64, i64* %160, align 8
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %170

163:                                              ; preds = %157
  %164 = load %struct.serdev_device*, %struct.serdev_device** %3, align 8
  %165 = getelementptr inbounds %struct.serdev_device, %struct.serdev_device* %164, i32 0, i32 0
  %166 = load %struct.btmtkuart_dev*, %struct.btmtkuart_dev** %4, align 8
  %167 = getelementptr inbounds %struct.btmtkuart_dev, %struct.btmtkuart_dev* %166, i32 0, i32 4
  %168 = load i64, i64* %167, align 8
  %169 = call i32 @devm_gpiod_put(i32* %165, i64 %168)
  br label %170

170:                                              ; preds = %163, %157
  %171 = load %struct.btmtkuart_dev*, %struct.btmtkuart_dev** %4, align 8
  %172 = getelementptr inbounds %struct.btmtkuart_dev, %struct.btmtkuart_dev* %171, i32 0, i32 3
  %173 = load i32, i32* %172, align 4
  %174 = load %struct.btmtkuart_dev*, %struct.btmtkuart_dev** %4, align 8
  %175 = getelementptr inbounds %struct.btmtkuart_dev, %struct.btmtkuart_dev* %174, i32 0, i32 2
  %176 = load i32, i32* %175, align 8
  %177 = call i32 @pinctrl_select_state(i32 %173, i32 %176)
  %178 = load %struct.serdev_device*, %struct.serdev_device** %3, align 8
  %179 = getelementptr inbounds %struct.serdev_device, %struct.serdev_device* %178, i32 0, i32 0
  %180 = call i32 @pm_runtime_no_callbacks(i32* %179)
  %181 = load i32, i32* @BTMTKUART_REQUIRED_WAKEUP, align 4
  %182 = load %struct.btmtkuart_dev*, %struct.btmtkuart_dev** %4, align 8
  %183 = getelementptr inbounds %struct.btmtkuart_dev, %struct.btmtkuart_dev* %182, i32 0, i32 1
  %184 = call i32 @set_bit(i32 %181, i32* %183)
  br label %185

185:                                              ; preds = %170, %61
  %186 = load %struct.hci_dev*, %struct.hci_dev** %5, align 8
  %187 = call i32 @hci_register_dev(%struct.hci_dev* %186)
  store i32 %187, i32* %6, align 4
  %188 = load i32, i32* %6, align 4
  %189 = icmp slt i32 %188, 0
  br i1 %189, label %190, label %196

190:                                              ; preds = %185
  %191 = load %struct.serdev_device*, %struct.serdev_device** %3, align 8
  %192 = getelementptr inbounds %struct.serdev_device, %struct.serdev_device* %191, i32 0, i32 0
  %193 = call i32 @dev_err(i32* %192, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %194 = load %struct.hci_dev*, %struct.hci_dev** %5, align 8
  %195 = call i32 @hci_free_dev(%struct.hci_dev* %194)
  br label %197

196:                                              ; preds = %185
  store i32 0, i32* %2, align 4
  br label %208

197:                                              ; preds = %190
  %198 = load %struct.btmtkuart_dev*, %struct.btmtkuart_dev** %4, align 8
  %199 = call i64 @btmtkuart_is_standalone(%struct.btmtkuart_dev* %198)
  %200 = icmp ne i64 %199, 0
  br i1 %200, label %201, label %206

201:                                              ; preds = %197
  %202 = load %struct.btmtkuart_dev*, %struct.btmtkuart_dev** %4, align 8
  %203 = getelementptr inbounds %struct.btmtkuart_dev, %struct.btmtkuart_dev* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 8
  %205 = call i32 @regulator_disable(i32 %204)
  br label %206

206:                                              ; preds = %201, %197
  %207 = load i32, i32* %6, align 4
  store i32 %207, i32* %2, align 4
  br label %208

208:                                              ; preds = %206, %196, %136, %109, %55, %42, %26, %13
  %209 = load i32, i32* %2, align 4
  ret i32 %209
}

declare dso_local %struct.btmtkuart_dev* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @of_device_get_match_data(i32*) #1

declare dso_local i32 @serdev_device_set_drvdata(%struct.serdev_device*, %struct.btmtkuart_dev*) #1

declare dso_local i32 @serdev_device_set_client_ops(%struct.serdev_device*, i32*) #1

declare dso_local i32 @btmtkuart_parse_dt(%struct.serdev_device*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @skb_queue_head_init(i32*) #1

declare dso_local %struct.hci_dev* @hci_alloc_dev(...) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @hci_set_drvdata(%struct.hci_dev*, %struct.btmtkuart_dev*) #1

declare dso_local i32 @SET_HCIDEV_DEV(%struct.hci_dev*, i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i64 @btmtkuart_is_standalone(%struct.btmtkuart_dev*) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @gpiod_set_value_cansleep(i64, i32) #1

declare dso_local i32 @pinctrl_select_state(i32, i32) #1

declare dso_local i32 @regulator_enable(i32) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @devm_gpiod_put(i32*, i64) #1

declare dso_local i32 @pm_runtime_no_callbacks(i32*) #1

declare dso_local i32 @hci_register_dev(%struct.hci_dev*) #1

declare dso_local i32 @hci_free_dev(%struct.hci_dev*) #1

declare dso_local i32 @regulator_disable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
