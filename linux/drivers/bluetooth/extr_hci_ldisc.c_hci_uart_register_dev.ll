; ModuleID = '/home/carl/AnghaBench/linux/drivers/bluetooth/extr_hci_ldisc.c_hci_uart_register_dev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bluetooth/extr_hci_ldisc.c_hci_uart_register_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_uart = type { i32, %struct.hci_dev*, %struct.TYPE_4__*, i32, %struct.TYPE_3__* }
%struct.hci_dev = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { {}*, {}*, i32, i64 }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"Can't allocate HCI device\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@HCI_UART = common dso_local global i32 0, align 4
@hci_uart_open = common dso_local global i32 0, align 4
@hci_uart_close = common dso_local global i32 0, align 4
@hci_uart_flush = common dso_local global i32 0, align 4
@hci_uart_send_frame = common dso_local global i32 0, align 4
@hci_uart_setup = common dso_local global i32 0, align 4
@HCI_UART_RAW_DEVICE = common dso_local global i32 0, align 4
@HCI_QUIRK_RAW_DEVICE = common dso_local global i32 0, align 4
@HCI_UART_EXT_CONFIG = common dso_local global i32 0, align 4
@HCI_QUIRK_EXTERNAL_CONFIG = common dso_local global i32 0, align 4
@HCI_UART_RESET_ON_INIT = common dso_local global i32 0, align 4
@HCI_QUIRK_RESET_ON_CLOSE = common dso_local global i32 0, align 4
@HCI_UART_CREATE_AMP = common dso_local global i32 0, align 4
@HCI_AMP = common dso_local global i32 0, align 4
@HCI_PRIMARY = common dso_local global i32 0, align 4
@HCI_UART_INIT_PENDING = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"Can't register HCI device\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@HCI_UART_REGISTERED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hci_uart*)* @hci_uart_register_dev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hci_uart_register_dev(%struct.hci_uart* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hci_uart*, align 8
  %4 = alloca %struct.hci_dev*, align 8
  %5 = alloca i32, align 4
  store %struct.hci_uart* %0, %struct.hci_uart** %3, align 8
  %6 = call i32 @BT_DBG(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %7 = call %struct.hci_dev* (...) @hci_alloc_dev()
  store %struct.hci_dev* %7, %struct.hci_dev** %4, align 8
  %8 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %9 = icmp ne %struct.hci_dev* %8, null
  br i1 %9, label %14, label %10

10:                                               ; preds = %1
  %11 = call i32 @BT_ERR(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %12 = load i32, i32* @ENOMEM, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %2, align 4
  br label %156

14:                                               ; preds = %1
  %15 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %16 = load %struct.hci_uart*, %struct.hci_uart** %3, align 8
  %17 = getelementptr inbounds %struct.hci_uart, %struct.hci_uart* %16, i32 0, i32 1
  store %struct.hci_dev* %15, %struct.hci_dev** %17, align 8
  %18 = load i32, i32* @HCI_UART, align 4
  %19 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %20 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %19, i32 0, i32 8
  store i32 %18, i32* %20, align 4
  %21 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %22 = load %struct.hci_uart*, %struct.hci_uart** %3, align 8
  %23 = call i32 @hci_set_drvdata(%struct.hci_dev* %21, %struct.hci_uart* %22)
  %24 = load %struct.hci_uart*, %struct.hci_uart** %3, align 8
  %25 = getelementptr inbounds %struct.hci_uart, %struct.hci_uart* %24, i32 0, i32 2
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 3
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %38

30:                                               ; preds = %14
  %31 = load %struct.hci_uart*, %struct.hci_uart** %3, align 8
  %32 = getelementptr inbounds %struct.hci_uart, %struct.hci_uart* %31, i32 0, i32 2
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %37 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %36, i32 0, i32 7
  store i32 %35, i32* %37, align 4
  br label %38

38:                                               ; preds = %30, %14
  %39 = load i32, i32* @hci_uart_open, align 4
  %40 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %41 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %40, i32 0, i32 6
  store i32 %39, i32* %41, align 4
  %42 = load i32, i32* @hci_uart_close, align 4
  %43 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %44 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %43, i32 0, i32 5
  store i32 %42, i32* %44, align 4
  %45 = load i32, i32* @hci_uart_flush, align 4
  %46 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %47 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %46, i32 0, i32 4
  store i32 %45, i32* %47, align 4
  %48 = load i32, i32* @hci_uart_send_frame, align 4
  %49 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %50 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %49, i32 0, i32 3
  store i32 %48, i32* %50, align 4
  %51 = load i32, i32* @hci_uart_setup, align 4
  %52 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %53 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %52, i32 0, i32 2
  store i32 %51, i32* %53, align 4
  %54 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %55 = load %struct.hci_uart*, %struct.hci_uart** %3, align 8
  %56 = getelementptr inbounds %struct.hci_uart, %struct.hci_uart* %55, i32 0, i32 4
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @SET_HCIDEV_DEV(%struct.hci_dev* %54, i32 %59)
  %61 = load i32, i32* @HCI_UART_RAW_DEVICE, align 4
  %62 = load %struct.hci_uart*, %struct.hci_uart** %3, align 8
  %63 = getelementptr inbounds %struct.hci_uart, %struct.hci_uart* %62, i32 0, i32 3
  %64 = call i64 @test_bit(i32 %61, i32* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %71

66:                                               ; preds = %38
  %67 = load i32, i32* @HCI_QUIRK_RAW_DEVICE, align 4
  %68 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %69 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %68, i32 0, i32 1
  %70 = call i32 @set_bit(i32 %67, i32* %69)
  br label %71

71:                                               ; preds = %66, %38
  %72 = load i32, i32* @HCI_UART_EXT_CONFIG, align 4
  %73 = load %struct.hci_uart*, %struct.hci_uart** %3, align 8
  %74 = getelementptr inbounds %struct.hci_uart, %struct.hci_uart* %73, i32 0, i32 3
  %75 = call i64 @test_bit(i32 %72, i32* %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %82

77:                                               ; preds = %71
  %78 = load i32, i32* @HCI_QUIRK_EXTERNAL_CONFIG, align 4
  %79 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %80 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %79, i32 0, i32 1
  %81 = call i32 @set_bit(i32 %78, i32* %80)
  br label %82

82:                                               ; preds = %77, %71
  %83 = load i32, i32* @HCI_UART_RESET_ON_INIT, align 4
  %84 = load %struct.hci_uart*, %struct.hci_uart** %3, align 8
  %85 = getelementptr inbounds %struct.hci_uart, %struct.hci_uart* %84, i32 0, i32 3
  %86 = call i64 @test_bit(i32 %83, i32* %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %93, label %88

88:                                               ; preds = %82
  %89 = load i32, i32* @HCI_QUIRK_RESET_ON_CLOSE, align 4
  %90 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %91 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %90, i32 0, i32 1
  %92 = call i32 @set_bit(i32 %89, i32* %91)
  br label %93

93:                                               ; preds = %88, %82
  %94 = load i32, i32* @HCI_UART_CREATE_AMP, align 4
  %95 = load %struct.hci_uart*, %struct.hci_uart** %3, align 8
  %96 = getelementptr inbounds %struct.hci_uart, %struct.hci_uart* %95, i32 0, i32 3
  %97 = call i64 @test_bit(i32 %94, i32* %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %103

99:                                               ; preds = %93
  %100 = load i32, i32* @HCI_AMP, align 4
  %101 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %102 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %101, i32 0, i32 0
  store i32 %100, i32* %102, align 4
  br label %107

103:                                              ; preds = %93
  %104 = load i32, i32* @HCI_PRIMARY, align 4
  %105 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %106 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %105, i32 0, i32 0
  store i32 %104, i32* %106, align 4
  br label %107

107:                                              ; preds = %103, %99
  %108 = load %struct.hci_uart*, %struct.hci_uart** %3, align 8
  %109 = getelementptr inbounds %struct.hci_uart, %struct.hci_uart* %108, i32 0, i32 2
  %110 = load %struct.TYPE_4__*, %struct.TYPE_4__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 0
  %112 = bitcast {}** %111 to i32 (%struct.hci_uart*)**
  %113 = load i32 (%struct.hci_uart*)*, i32 (%struct.hci_uart*)** %112, align 8
  %114 = load %struct.hci_uart*, %struct.hci_uart** %3, align 8
  %115 = call i32 %113(%struct.hci_uart* %114)
  store i32 %115, i32* %5, align 4
  %116 = load i32, i32* %5, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %124

118:                                              ; preds = %107
  %119 = load %struct.hci_uart*, %struct.hci_uart** %3, align 8
  %120 = getelementptr inbounds %struct.hci_uart, %struct.hci_uart* %119, i32 0, i32 1
  store %struct.hci_dev* null, %struct.hci_dev** %120, align 8
  %121 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %122 = call i32 @hci_free_dev(%struct.hci_dev* %121)
  %123 = load i32, i32* %5, align 4
  store i32 %123, i32* %2, align 4
  br label %156

124:                                              ; preds = %107
  %125 = load i32, i32* @HCI_UART_INIT_PENDING, align 4
  %126 = load %struct.hci_uart*, %struct.hci_uart** %3, align 8
  %127 = getelementptr inbounds %struct.hci_uart, %struct.hci_uart* %126, i32 0, i32 3
  %128 = call i64 @test_bit(i32 %125, i32* %127)
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %131

130:                                              ; preds = %124
  store i32 0, i32* %2, align 4
  br label %156

131:                                              ; preds = %124
  %132 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %133 = call i64 @hci_register_dev(%struct.hci_dev* %132)
  %134 = icmp slt i64 %133, 0
  br i1 %134, label %135, label %151

135:                                              ; preds = %131
  %136 = call i32 @BT_ERR(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  %137 = load %struct.hci_uart*, %struct.hci_uart** %3, align 8
  %138 = getelementptr inbounds %struct.hci_uart, %struct.hci_uart* %137, i32 0, i32 2
  %139 = load %struct.TYPE_4__*, %struct.TYPE_4__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %139, i32 0, i32 1
  %141 = bitcast {}** %140 to i32 (%struct.hci_uart*)**
  %142 = load i32 (%struct.hci_uart*)*, i32 (%struct.hci_uart*)** %141, align 8
  %143 = load %struct.hci_uart*, %struct.hci_uart** %3, align 8
  %144 = call i32 %142(%struct.hci_uart* %143)
  %145 = load %struct.hci_uart*, %struct.hci_uart** %3, align 8
  %146 = getelementptr inbounds %struct.hci_uart, %struct.hci_uart* %145, i32 0, i32 1
  store %struct.hci_dev* null, %struct.hci_dev** %146, align 8
  %147 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %148 = call i32 @hci_free_dev(%struct.hci_dev* %147)
  %149 = load i32, i32* @ENODEV, align 4
  %150 = sub nsw i32 0, %149
  store i32 %150, i32* %2, align 4
  br label %156

151:                                              ; preds = %131
  %152 = load i32, i32* @HCI_UART_REGISTERED, align 4
  %153 = load %struct.hci_uart*, %struct.hci_uart** %3, align 8
  %154 = getelementptr inbounds %struct.hci_uart, %struct.hci_uart* %153, i32 0, i32 0
  %155 = call i32 @set_bit(i32 %152, i32* %154)
  store i32 0, i32* %2, align 4
  br label %156

156:                                              ; preds = %151, %135, %130, %118, %10
  %157 = load i32, i32* %2, align 4
  ret i32 %157
}

declare dso_local i32 @BT_DBG(i8*) #1

declare dso_local %struct.hci_dev* @hci_alloc_dev(...) #1

declare dso_local i32 @BT_ERR(i8*) #1

declare dso_local i32 @hci_set_drvdata(%struct.hci_dev*, %struct.hci_uart*) #1

declare dso_local i32 @SET_HCIDEV_DEV(%struct.hci_dev*, i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @hci_free_dev(%struct.hci_dev*) #1

declare dso_local i64 @hci_register_dev(%struct.hci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
