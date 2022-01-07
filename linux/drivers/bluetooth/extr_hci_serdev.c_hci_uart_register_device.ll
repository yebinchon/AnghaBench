; ModuleID = '/home/carl/AnghaBench/linux/drivers/bluetooth/extr_hci_serdev.c_hci_uart_register_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bluetooth/extr_hci_serdev.c_hci_uart_register_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_uart = type { %struct.TYPE_4__*, i32, i32, %struct.hci_uart_proto*, i32, i32, i32, %struct.hci_dev* }
%struct.TYPE_4__ = type { i32 }
%struct.hci_dev = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.hci_uart_proto = type { i32 (%struct.hci_uart.0*)*, i32 (%struct.hci_uart.1*)*, i32, i64 }
%struct.hci_uart.0 = type opaque
%struct.hci_uart.1 = type opaque

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@hci_serdev_client_ops = common dso_local global i32 0, align 4
@HCI_UART_PROTO_READY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"Can't allocate HCI device\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@HCI_UART = common dso_local global i32 0, align 4
@hci_uart_init_work = common dso_local global i32 0, align 4
@hci_uart_write_work = common dso_local global i32 0, align 4
@hci_uart_open = common dso_local global i32 0, align 4
@hci_uart_close = common dso_local global i32 0, align 4
@hci_uart_flush = common dso_local global i32 0, align 4
@hci_uart_send_frame = common dso_local global i32 0, align 4
@hci_uart_setup = common dso_local global i32 0, align 4
@HCI_UART_RAW_DEVICE = common dso_local global i32 0, align 4
@HCI_QUIRK_RAW_DEVICE = common dso_local global i32 0, align 4
@HCI_UART_EXT_CONFIG = common dso_local global i32 0, align 4
@HCI_QUIRK_EXTERNAL_CONFIG = common dso_local global i32 0, align 4
@HCI_UART_CREATE_AMP = common dso_local global i32 0, align 4
@HCI_AMP = common dso_local global i32 0, align 4
@HCI_PRIMARY = common dso_local global i32 0, align 4
@HCI_UART_INIT_PENDING = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"Can't register HCI device\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@HCI_UART_REGISTERED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hci_uart_register_device(%struct.hci_uart* %0, %struct.hci_uart_proto* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hci_uart*, align 8
  %5 = alloca %struct.hci_uart_proto*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.hci_dev*, align 8
  store %struct.hci_uart* %0, %struct.hci_uart** %4, align 8
  store %struct.hci_uart_proto* %1, %struct.hci_uart_proto** %5, align 8
  %8 = call i32 @BT_DBG(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %9 = load %struct.hci_uart*, %struct.hci_uart** %4, align 8
  %10 = getelementptr inbounds %struct.hci_uart, %struct.hci_uart* %9, i32 0, i32 0
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = call i32 @serdev_device_set_client_ops(%struct.TYPE_4__* %11, i32* @hci_serdev_client_ops)
  %13 = load %struct.hci_uart*, %struct.hci_uart** %4, align 8
  %14 = getelementptr inbounds %struct.hci_uart, %struct.hci_uart* %13, i32 0, i32 0
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = call i32 @serdev_device_open(%struct.TYPE_4__* %15)
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %2
  %20 = load i32, i32* %6, align 4
  store i32 %20, i32* %3, align 4
  br label %178

21:                                               ; preds = %2
  %22 = load %struct.hci_uart_proto*, %struct.hci_uart_proto** %5, align 8
  %23 = getelementptr inbounds %struct.hci_uart_proto, %struct.hci_uart_proto* %22, i32 0, i32 0
  %24 = load i32 (%struct.hci_uart.0*)*, i32 (%struct.hci_uart.0*)** %23, align 8
  %25 = load %struct.hci_uart*, %struct.hci_uart** %4, align 8
  %26 = bitcast %struct.hci_uart* %25 to %struct.hci_uart.0*
  %27 = call i32 %24(%struct.hci_uart.0* %26)
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* %6, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %21
  br label %172

31:                                               ; preds = %21
  %32 = load %struct.hci_uart_proto*, %struct.hci_uart_proto** %5, align 8
  %33 = load %struct.hci_uart*, %struct.hci_uart** %4, align 8
  %34 = getelementptr inbounds %struct.hci_uart, %struct.hci_uart* %33, i32 0, i32 3
  store %struct.hci_uart_proto* %32, %struct.hci_uart_proto** %34, align 8
  %35 = load i32, i32* @HCI_UART_PROTO_READY, align 4
  %36 = load %struct.hci_uart*, %struct.hci_uart** %4, align 8
  %37 = getelementptr inbounds %struct.hci_uart, %struct.hci_uart* %36, i32 0, i32 1
  %38 = call i32 @set_bit(i32 %35, i32* %37)
  %39 = call %struct.hci_dev* (...) @hci_alloc_dev()
  store %struct.hci_dev* %39, %struct.hci_dev** %7, align 8
  %40 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %41 = icmp ne %struct.hci_dev* %40, null
  br i1 %41, label %46, label %42

42:                                               ; preds = %31
  %43 = call i32 @BT_ERR(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %44 = load i32, i32* @ENOMEM, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %6, align 4
  br label %161

46:                                               ; preds = %31
  %47 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %48 = load %struct.hci_uart*, %struct.hci_uart** %4, align 8
  %49 = getelementptr inbounds %struct.hci_uart, %struct.hci_uart* %48, i32 0, i32 7
  store %struct.hci_dev* %47, %struct.hci_dev** %49, align 8
  %50 = load i32, i32* @HCI_UART, align 4
  %51 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %52 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %51, i32 0, i32 8
  store i32 %50, i32* %52, align 4
  %53 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %54 = load %struct.hci_uart*, %struct.hci_uart** %4, align 8
  %55 = call i32 @hci_set_drvdata(%struct.hci_dev* %53, %struct.hci_uart* %54)
  %56 = load %struct.hci_uart*, %struct.hci_uart** %4, align 8
  %57 = getelementptr inbounds %struct.hci_uart, %struct.hci_uart* %56, i32 0, i32 6
  %58 = load i32, i32* @hci_uart_init_work, align 4
  %59 = call i32 @INIT_WORK(i32* %57, i32 %58)
  %60 = load %struct.hci_uart*, %struct.hci_uart** %4, align 8
  %61 = getelementptr inbounds %struct.hci_uart, %struct.hci_uart* %60, i32 0, i32 5
  %62 = load i32, i32* @hci_uart_write_work, align 4
  %63 = call i32 @INIT_WORK(i32* %61, i32 %62)
  %64 = load %struct.hci_uart*, %struct.hci_uart** %4, align 8
  %65 = getelementptr inbounds %struct.hci_uart, %struct.hci_uart* %64, i32 0, i32 4
  %66 = call i32 @percpu_init_rwsem(i32* %65)
  %67 = load %struct.hci_uart*, %struct.hci_uart** %4, align 8
  %68 = getelementptr inbounds %struct.hci_uart, %struct.hci_uart* %67, i32 0, i32 3
  %69 = load %struct.hci_uart_proto*, %struct.hci_uart_proto** %68, align 8
  %70 = getelementptr inbounds %struct.hci_uart_proto, %struct.hci_uart_proto* %69, i32 0, i32 3
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %81

73:                                               ; preds = %46
  %74 = load %struct.hci_uart*, %struct.hci_uart** %4, align 8
  %75 = getelementptr inbounds %struct.hci_uart, %struct.hci_uart* %74, i32 0, i32 3
  %76 = load %struct.hci_uart_proto*, %struct.hci_uart_proto** %75, align 8
  %77 = getelementptr inbounds %struct.hci_uart_proto, %struct.hci_uart_proto* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %80 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %79, i32 0, i32 7
  store i32 %78, i32* %80, align 4
  br label %81

81:                                               ; preds = %73, %46
  %82 = load i32, i32* @hci_uart_open, align 4
  %83 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %84 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %83, i32 0, i32 6
  store i32 %82, i32* %84, align 4
  %85 = load i32, i32* @hci_uart_close, align 4
  %86 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %87 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %86, i32 0, i32 5
  store i32 %85, i32* %87, align 4
  %88 = load i32, i32* @hci_uart_flush, align 4
  %89 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %90 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %89, i32 0, i32 4
  store i32 %88, i32* %90, align 4
  %91 = load i32, i32* @hci_uart_send_frame, align 4
  %92 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %93 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %92, i32 0, i32 3
  store i32 %91, i32* %93, align 4
  %94 = load i32, i32* @hci_uart_setup, align 4
  %95 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %96 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %95, i32 0, i32 2
  store i32 %94, i32* %96, align 4
  %97 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %98 = load %struct.hci_uart*, %struct.hci_uart** %4, align 8
  %99 = getelementptr inbounds %struct.hci_uart, %struct.hci_uart* %98, i32 0, i32 0
  %100 = load %struct.TYPE_4__*, %struct.TYPE_4__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 0
  %102 = call i32 @SET_HCIDEV_DEV(%struct.hci_dev* %97, i32* %101)
  %103 = load i32, i32* @HCI_UART_RAW_DEVICE, align 4
  %104 = load %struct.hci_uart*, %struct.hci_uart** %4, align 8
  %105 = getelementptr inbounds %struct.hci_uart, %struct.hci_uart* %104, i32 0, i32 2
  %106 = call i64 @test_bit(i32 %103, i32* %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %113

108:                                              ; preds = %81
  %109 = load i32, i32* @HCI_QUIRK_RAW_DEVICE, align 4
  %110 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %111 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %110, i32 0, i32 1
  %112 = call i32 @set_bit(i32 %109, i32* %111)
  br label %113

113:                                              ; preds = %108, %81
  %114 = load i32, i32* @HCI_UART_EXT_CONFIG, align 4
  %115 = load %struct.hci_uart*, %struct.hci_uart** %4, align 8
  %116 = getelementptr inbounds %struct.hci_uart, %struct.hci_uart* %115, i32 0, i32 2
  %117 = call i64 @test_bit(i32 %114, i32* %116)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %124

119:                                              ; preds = %113
  %120 = load i32, i32* @HCI_QUIRK_EXTERNAL_CONFIG, align 4
  %121 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %122 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %121, i32 0, i32 1
  %123 = call i32 @set_bit(i32 %120, i32* %122)
  br label %124

124:                                              ; preds = %119, %113
  %125 = load i32, i32* @HCI_UART_CREATE_AMP, align 4
  %126 = load %struct.hci_uart*, %struct.hci_uart** %4, align 8
  %127 = getelementptr inbounds %struct.hci_uart, %struct.hci_uart* %126, i32 0, i32 2
  %128 = call i64 @test_bit(i32 %125, i32* %127)
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %134

130:                                              ; preds = %124
  %131 = load i32, i32* @HCI_AMP, align 4
  %132 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %133 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %132, i32 0, i32 0
  store i32 %131, i32* %133, align 4
  br label %138

134:                                              ; preds = %124
  %135 = load i32, i32* @HCI_PRIMARY, align 4
  %136 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %137 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %136, i32 0, i32 0
  store i32 %135, i32* %137, align 4
  br label %138

138:                                              ; preds = %134, %130
  %139 = load i32, i32* @HCI_UART_INIT_PENDING, align 4
  %140 = load %struct.hci_uart*, %struct.hci_uart** %4, align 8
  %141 = getelementptr inbounds %struct.hci_uart, %struct.hci_uart* %140, i32 0, i32 2
  %142 = call i64 @test_bit(i32 %139, i32* %141)
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %145

144:                                              ; preds = %138
  store i32 0, i32* %3, align 4
  br label %178

145:                                              ; preds = %138
  %146 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %147 = call i64 @hci_register_dev(%struct.hci_dev* %146)
  %148 = icmp slt i64 %147, 0
  br i1 %148, label %149, label %153

149:                                              ; preds = %145
  %150 = call i32 @BT_ERR(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  %151 = load i32, i32* @ENODEV, align 4
  %152 = sub nsw i32 0, %151
  store i32 %152, i32* %6, align 4
  br label %158

153:                                              ; preds = %145
  %154 = load i32, i32* @HCI_UART_REGISTERED, align 4
  %155 = load %struct.hci_uart*, %struct.hci_uart** %4, align 8
  %156 = getelementptr inbounds %struct.hci_uart, %struct.hci_uart* %155, i32 0, i32 1
  %157 = call i32 @set_bit(i32 %154, i32* %156)
  store i32 0, i32* %3, align 4
  br label %178

158:                                              ; preds = %149
  %159 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %160 = call i32 @hci_free_dev(%struct.hci_dev* %159)
  br label %161

161:                                              ; preds = %158, %42
  %162 = load i32, i32* @HCI_UART_PROTO_READY, align 4
  %163 = load %struct.hci_uart*, %struct.hci_uart** %4, align 8
  %164 = getelementptr inbounds %struct.hci_uart, %struct.hci_uart* %163, i32 0, i32 1
  %165 = call i32 @clear_bit(i32 %162, i32* %164)
  %166 = load %struct.hci_uart_proto*, %struct.hci_uart_proto** %5, align 8
  %167 = getelementptr inbounds %struct.hci_uart_proto, %struct.hci_uart_proto* %166, i32 0, i32 1
  %168 = load i32 (%struct.hci_uart.1*)*, i32 (%struct.hci_uart.1*)** %167, align 8
  %169 = load %struct.hci_uart*, %struct.hci_uart** %4, align 8
  %170 = bitcast %struct.hci_uart* %169 to %struct.hci_uart.1*
  %171 = call i32 %168(%struct.hci_uart.1* %170)
  br label %172

172:                                              ; preds = %161, %30
  %173 = load %struct.hci_uart*, %struct.hci_uart** %4, align 8
  %174 = getelementptr inbounds %struct.hci_uart, %struct.hci_uart* %173, i32 0, i32 0
  %175 = load %struct.TYPE_4__*, %struct.TYPE_4__** %174, align 8
  %176 = call i32 @serdev_device_close(%struct.TYPE_4__* %175)
  %177 = load i32, i32* %6, align 4
  store i32 %177, i32* %3, align 4
  br label %178

178:                                              ; preds = %172, %153, %144, %19
  %179 = load i32, i32* %3, align 4
  ret i32 %179
}

declare dso_local i32 @BT_DBG(i8*) #1

declare dso_local i32 @serdev_device_set_client_ops(%struct.TYPE_4__*, i32*) #1

declare dso_local i32 @serdev_device_open(%struct.TYPE_4__*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local %struct.hci_dev* @hci_alloc_dev(...) #1

declare dso_local i32 @BT_ERR(i8*) #1

declare dso_local i32 @hci_set_drvdata(%struct.hci_dev*, %struct.hci_uart*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @percpu_init_rwsem(i32*) #1

declare dso_local i32 @SET_HCIDEV_DEV(%struct.hci_dev*, i32*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i64 @hci_register_dev(%struct.hci_dev*) #1

declare dso_local i32 @hci_free_dev(%struct.hci_dev*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @serdev_device_close(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
