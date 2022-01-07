; ModuleID = '/home/carl/AnghaBench/linux/drivers/bluetooth/extr_hci_nokia.c_nokia_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bluetooth/extr_hci_nokia.c_nokia_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_uart = type { %struct.TYPE_4__*, %struct.nokia_bt_dev* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.nokia_bt_dev = type { i32, i32, i64, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.device }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [15 x i8] c"protocol setup\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"Reset failed: %d\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"Negotiation failed: %d\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"Alive check failed: %d\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"Could not setup FW: %d\00", align 1
@MAX_BAUD_RATE = common dso_local global i32 0, align 4
@NOKIA_ID_BCM2048 = common dso_local global i64 0, align 8
@btbcm_set_bdaddr = common dso_local global i32 0, align 4
@HCI_QUIRK_INVALID_BDADDR = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [39 x i8] c"bcm2048 has invalid bluetooth address!\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"protocol setup done!\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hci_uart*)* @nokia_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nokia_setup(%struct.hci_uart* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hci_uart*, align 8
  %4 = alloca %struct.nokia_bt_dev*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca i32, align 4
  store %struct.hci_uart* %0, %struct.hci_uart** %3, align 8
  %7 = load %struct.hci_uart*, %struct.hci_uart** %3, align 8
  %8 = getelementptr inbounds %struct.hci_uart, %struct.hci_uart* %7, i32 0, i32 1
  %9 = load %struct.nokia_bt_dev*, %struct.nokia_bt_dev** %8, align 8
  store %struct.nokia_bt_dev* %9, %struct.nokia_bt_dev** %4, align 8
  %10 = load %struct.nokia_bt_dev*, %struct.nokia_bt_dev** %4, align 8
  %11 = getelementptr inbounds %struct.nokia_bt_dev, %struct.nokia_bt_dev* %10, i32 0, i32 4
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  store %struct.device* %13, %struct.device** %5, align 8
  %14 = load %struct.nokia_bt_dev*, %struct.nokia_bt_dev** %4, align 8
  %15 = getelementptr inbounds %struct.nokia_bt_dev, %struct.nokia_bt_dev* %14, i32 0, i32 0
  store i32 0, i32* %15, align 8
  %16 = load %struct.nokia_bt_dev*, %struct.nokia_bt_dev** %4, align 8
  %17 = getelementptr inbounds %struct.nokia_bt_dev, %struct.nokia_bt_dev* %16, i32 0, i32 4
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %19 = call i32 @nokia_flow_control(%struct.TYPE_5__* %18, i32 0)
  %20 = load %struct.device*, %struct.device** %5, align 8
  %21 = call i32 @pm_runtime_get_sync(%struct.device* %20)
  %22 = load %struct.nokia_bt_dev*, %struct.nokia_bt_dev** %4, align 8
  %23 = getelementptr inbounds %struct.nokia_bt_dev, %struct.nokia_bt_dev* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %38

26:                                               ; preds = %1
  %27 = load %struct.nokia_bt_dev*, %struct.nokia_bt_dev** %4, align 8
  %28 = getelementptr inbounds %struct.nokia_bt_dev, %struct.nokia_bt_dev* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @gpiod_set_value_cansleep(i32 %29, i32 0)
  %31 = load %struct.nokia_bt_dev*, %struct.nokia_bt_dev** %4, align 8
  %32 = getelementptr inbounds %struct.nokia_bt_dev, %struct.nokia_bt_dev* %31, i32 0, i32 4
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = call i32 @pm_runtime_put(%struct.device* %34)
  %36 = load %struct.nokia_bt_dev*, %struct.nokia_bt_dev** %4, align 8
  %37 = getelementptr inbounds %struct.nokia_bt_dev, %struct.nokia_bt_dev* %36, i32 0, i32 1
  store i32 0, i32* %37, align 4
  br label %38

38:                                               ; preds = %26, %1
  %39 = load %struct.device*, %struct.device** %5, align 8
  %40 = call i32 @dev_dbg(%struct.device* %39, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %41 = load %struct.hci_uart*, %struct.hci_uart** %3, align 8
  %42 = call i32 @nokia_reset(%struct.hci_uart* %41)
  store i32 %42, i32* %6, align 4
  %43 = load i32, i32* %6, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %38
  %46 = load %struct.device*, %struct.device** %5, align 8
  %47 = load i32, i32* %6, align 4
  %48 = call i32 @dev_err(%struct.device* %46, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %47)
  br label %122

49:                                               ; preds = %38
  %50 = load %struct.hci_uart*, %struct.hci_uart** %3, align 8
  %51 = call i32 @nokia_send_negotiation(%struct.hci_uart* %50)
  store i32 %51, i32* %6, align 4
  %52 = load i32, i32* %6, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %49
  %55 = load %struct.device*, %struct.device** %5, align 8
  %56 = load i32, i32* %6, align 4
  %57 = call i32 @dev_err(%struct.device* %55, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 %56)
  br label %122

58:                                               ; preds = %49
  %59 = load %struct.hci_uart*, %struct.hci_uart** %3, align 8
  %60 = call i32 @nokia_send_alive_packet(%struct.hci_uart* %59)
  store i32 %60, i32* %6, align 4
  %61 = load i32, i32* %6, align 4
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %58
  %64 = load %struct.device*, %struct.device** %5, align 8
  %65 = load i32, i32* %6, align 4
  %66 = call i32 @dev_err(%struct.device* %64, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i32 %65)
  br label %122

67:                                               ; preds = %58
  %68 = load %struct.hci_uart*, %struct.hci_uart** %3, align 8
  %69 = call i32 @nokia_setup_fw(%struct.hci_uart* %68)
  store i32 %69, i32* %6, align 4
  %70 = load i32, i32* %6, align 4
  %71 = icmp slt i32 %70, 0
  br i1 %71, label %72, label %76

72:                                               ; preds = %67
  %73 = load %struct.device*, %struct.device** %5, align 8
  %74 = load i32, i32* %6, align 4
  %75 = call i32 @dev_err(%struct.device* %73, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i32 %74)
  br label %122

76:                                               ; preds = %67
  %77 = load %struct.nokia_bt_dev*, %struct.nokia_bt_dev** %4, align 8
  %78 = getelementptr inbounds %struct.nokia_bt_dev, %struct.nokia_bt_dev* %77, i32 0, i32 4
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** %78, align 8
  %80 = call i32 @nokia_flow_control(%struct.TYPE_5__* %79, i32 0)
  %81 = load %struct.nokia_bt_dev*, %struct.nokia_bt_dev** %4, align 8
  %82 = getelementptr inbounds %struct.nokia_bt_dev, %struct.nokia_bt_dev* %81, i32 0, i32 4
  %83 = load %struct.TYPE_5__*, %struct.TYPE_5__** %82, align 8
  %84 = load i32, i32* @MAX_BAUD_RATE, align 4
  %85 = call i32 @serdev_device_set_baudrate(%struct.TYPE_5__* %83, i32 %84)
  %86 = load %struct.nokia_bt_dev*, %struct.nokia_bt_dev** %4, align 8
  %87 = getelementptr inbounds %struct.nokia_bt_dev, %struct.nokia_bt_dev* %86, i32 0, i32 4
  %88 = load %struct.TYPE_5__*, %struct.TYPE_5__** %87, align 8
  %89 = call i32 @nokia_flow_control(%struct.TYPE_5__* %88, i32 1)
  %90 = load %struct.nokia_bt_dev*, %struct.nokia_bt_dev** %4, align 8
  %91 = getelementptr inbounds %struct.nokia_bt_dev, %struct.nokia_bt_dev* %90, i32 0, i32 2
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* @NOKIA_ID_BCM2048, align 8
  %94 = icmp eq i64 %92, %93
  br i1 %94, label %95, label %109

95:                                               ; preds = %76
  %96 = load i32, i32* @btbcm_set_bdaddr, align 4
  %97 = load %struct.hci_uart*, %struct.hci_uart** %3, align 8
  %98 = getelementptr inbounds %struct.hci_uart, %struct.hci_uart* %97, i32 0, i32 0
  %99 = load %struct.TYPE_4__*, %struct.TYPE_4__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 1
  store i32 %96, i32* %100, align 4
  %101 = load i32, i32* @HCI_QUIRK_INVALID_BDADDR, align 4
  %102 = load %struct.hci_uart*, %struct.hci_uart** %3, align 8
  %103 = getelementptr inbounds %struct.hci_uart, %struct.hci_uart* %102, i32 0, i32 0
  %104 = load %struct.TYPE_4__*, %struct.TYPE_4__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 0
  %106 = call i32 @set_bit(i32 %101, i32* %105)
  %107 = load %struct.device*, %struct.device** %5, align 8
  %108 = call i32 @dev_dbg(%struct.device* %107, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.5, i64 0, i64 0))
  br label %109

109:                                              ; preds = %95, %76
  %110 = load %struct.device*, %struct.device** %5, align 8
  %111 = call i32 @dev_dbg(%struct.device* %110, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0))
  %112 = load %struct.nokia_bt_dev*, %struct.nokia_bt_dev** %4, align 8
  %113 = getelementptr inbounds %struct.nokia_bt_dev, %struct.nokia_bt_dev* %112, i32 0, i32 3
  %114 = load i32, i32* %113, align 8
  %115 = call i32 @gpiod_set_value_cansleep(i32 %114, i32 0)
  %116 = load %struct.device*, %struct.device** %5, align 8
  %117 = call i32 @pm_runtime_put(%struct.device* %116)
  %118 = load %struct.nokia_bt_dev*, %struct.nokia_bt_dev** %4, align 8
  %119 = getelementptr inbounds %struct.nokia_bt_dev, %struct.nokia_bt_dev* %118, i32 0, i32 1
  store i32 0, i32* %119, align 4
  %120 = load %struct.nokia_bt_dev*, %struct.nokia_bt_dev** %4, align 8
  %121 = getelementptr inbounds %struct.nokia_bt_dev, %struct.nokia_bt_dev* %120, i32 0, i32 0
  store i32 1, i32* %121, align 8
  store i32 0, i32* %2, align 4
  br label %126

122:                                              ; preds = %72, %63, %54, %45
  %123 = load %struct.device*, %struct.device** %5, align 8
  %124 = call i32 @pm_runtime_put(%struct.device* %123)
  %125 = load i32, i32* %6, align 4
  store i32 %125, i32* %2, align 4
  br label %126

126:                                              ; preds = %122, %109
  %127 = load i32, i32* %2, align 4
  ret i32 %127
}

declare dso_local i32 @nokia_flow_control(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @pm_runtime_get_sync(%struct.device*) #1

declare dso_local i32 @gpiod_set_value_cansleep(i32, i32) #1

declare dso_local i32 @pm_runtime_put(%struct.device*) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*) #1

declare dso_local i32 @nokia_reset(%struct.hci_uart*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @nokia_send_negotiation(%struct.hci_uart*) #1

declare dso_local i32 @nokia_send_alive_packet(%struct.hci_uart*) #1

declare dso_local i32 @nokia_setup_fw(%struct.hci_uart*) #1

declare dso_local i32 @serdev_device_set_baudrate(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
