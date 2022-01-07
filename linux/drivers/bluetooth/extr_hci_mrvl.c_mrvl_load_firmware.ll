; ModuleID = '/home/carl/AnghaBench/linux/drivers/bluetooth/extr_hci_mrvl.c_mrvl_load_firmware.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bluetooth/extr_hci_mrvl.c_mrvl_load_firmware.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_dev = type { i32 }
%struct.hci_uart = type { %struct.mrvl_data* }
%struct.mrvl_data = type { i32, i32, i32 }
%struct.firmware = type { i32, i32* }
%struct.sk_buff = type { i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [32 x i8] c"Failed to load firmware file %s\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"Loading %s\00", align 1
@STATE_FW_REQ_PENDING = common dso_local global i32 0, align 4
@TASK_INTERRUPTIBLE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"Firmware load interrupted\00", align 1
@EINTR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [25 x i8] c"Firmware request timeout\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [37 x i8] c"Firmware request, expecting %d bytes\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"Firmware loading complete\00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c"Firmware loading failure\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [23 x i8] c"Adjusting tx_len to %d\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [34 x i8] c"Failed to alloc mem for FW packet\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@MRVL_RAW_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hci_dev*, i8*)* @mrvl_load_firmware to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mrvl_load_firmware(%struct.hci_dev* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hci_dev*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.hci_uart*, align 8
  %7 = alloca %struct.mrvl_data*, align 8
  %8 = alloca %struct.firmware*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.sk_buff*, align 8
  store %struct.hci_dev* %0, %struct.hci_dev** %4, align 8
  store i8* %1, i8** %5, align 8
  %13 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %14 = call %struct.hci_uart* @hci_get_drvdata(%struct.hci_dev* %13)
  store %struct.hci_uart* %14, %struct.hci_uart** %6, align 8
  %15 = load %struct.hci_uart*, %struct.hci_uart** %6, align 8
  %16 = getelementptr inbounds %struct.hci_uart, %struct.hci_uart* %15, i32 0, i32 0
  %17 = load %struct.mrvl_data*, %struct.mrvl_data** %16, align 8
  store %struct.mrvl_data* %17, %struct.mrvl_data** %7, align 8
  store %struct.firmware* null, %struct.firmware** %8, align 8
  %18 = load i8*, i8** %5, align 8
  %19 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %20 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %19, i32 0, i32 0
  %21 = call i32 @request_firmware(%struct.firmware** %8, i8* %18, i32* %20)
  store i32 %21, i32* %11, align 4
  %22 = load i32, i32* %11, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %2
  %25 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %26 = load i8*, i8** %5, align 8
  %27 = call i32 (%struct.hci_dev*, i8*, ...) @bt_dev_err(%struct.hci_dev* %25, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i8* %26)
  %28 = load i32, i32* %11, align 4
  store i32 %28, i32* %3, align 4
  br label %166

29:                                               ; preds = %2
  %30 = load %struct.firmware*, %struct.firmware** %8, align 8
  %31 = getelementptr inbounds %struct.firmware, %struct.firmware* %30, i32 0, i32 1
  %32 = load i32*, i32** %31, align 8
  store i32* %32, i32** %9, align 8
  %33 = load %struct.firmware*, %struct.firmware** %8, align 8
  %34 = getelementptr inbounds %struct.firmware, %struct.firmware* %33, i32 0, i32 1
  %35 = load i32*, i32** %34, align 8
  %36 = load %struct.firmware*, %struct.firmware** %8, align 8
  %37 = getelementptr inbounds %struct.firmware, %struct.firmware* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %35, i64 %39
  store i32* %40, i32** %10, align 8
  %41 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %42 = load i8*, i8** %5, align 8
  %43 = call i32 (%struct.hci_dev*, i8*, ...) @bt_dev_info(%struct.hci_dev* %41, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8* %42)
  %44 = load i32, i32* @STATE_FW_REQ_PENDING, align 4
  %45 = load %struct.mrvl_data*, %struct.mrvl_data** %7, align 8
  %46 = getelementptr inbounds %struct.mrvl_data, %struct.mrvl_data* %45, i32 0, i32 2
  %47 = call i32 @set_bit(i32 %44, i32* %46)
  br label %48

48:                                               ; preds = %135, %29
  %49 = load i32*, i32** %9, align 8
  %50 = load i32*, i32** %10, align 8
  %51 = icmp ule i32* %49, %50
  br i1 %51, label %52, label %162

52:                                               ; preds = %48
  %53 = load %struct.mrvl_data*, %struct.mrvl_data** %7, align 8
  %54 = getelementptr inbounds %struct.mrvl_data, %struct.mrvl_data* %53, i32 0, i32 2
  %55 = load i32, i32* @STATE_FW_REQ_PENDING, align 4
  %56 = load i32, i32* @TASK_INTERRUPTIBLE, align 4
  %57 = call i32 @msecs_to_jiffies(i32 2000)
  %58 = call i32 @wait_on_bit_timeout(i32* %54, i32 %55, i32 %56, i32 %57)
  store i32 %58, i32* %11, align 4
  %59 = load i32, i32* %11, align 4
  %60 = icmp eq i32 %59, 1
  br i1 %60, label %61, label %66

61:                                               ; preds = %52
  %62 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %63 = call i32 (%struct.hci_dev*, i8*, ...) @bt_dev_err(%struct.hci_dev* %62, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  %64 = load i32, i32* @EINTR, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %11, align 4
  br label %162

66:                                               ; preds = %52
  %67 = load i32, i32* %11, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %74

69:                                               ; preds = %66
  %70 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %71 = call i32 (%struct.hci_dev*, i8*, ...) @bt_dev_err(%struct.hci_dev* %70, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  %72 = load i32, i32* @ETIMEDOUT, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %11, align 4
  br label %162

74:                                               ; preds = %66
  br label %75

75:                                               ; preds = %74
  %76 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %77 = load %struct.mrvl_data*, %struct.mrvl_data** %7, align 8
  %78 = getelementptr inbounds %struct.mrvl_data, %struct.mrvl_data* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @bt_dev_dbg(%struct.hci_dev* %76, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0), i32 %79)
  %81 = load i32*, i32** %9, align 8
  %82 = load i32*, i32** %10, align 8
  %83 = icmp eq i32* %81, %82
  br i1 %83, label %84, label %98

84:                                               ; preds = %75
  %85 = load %struct.mrvl_data*, %struct.mrvl_data** %7, align 8
  %86 = getelementptr inbounds %struct.mrvl_data, %struct.mrvl_data* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %92, label %89

89:                                               ; preds = %84
  %90 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %91 = call i32 (%struct.hci_dev*, i8*, ...) @bt_dev_info(%struct.hci_dev* %90, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0))
  br label %97

92:                                               ; preds = %84
  %93 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %94 = call i32 (%struct.hci_dev*, i8*, ...) @bt_dev_err(%struct.hci_dev* %93, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0))
  %95 = load i32, i32* @EINVAL, align 4
  %96 = sub nsw i32 0, %95
  store i32 %96, i32* %11, align 4
  br label %97

97:                                               ; preds = %92, %89
  br label %162

98:                                               ; preds = %75
  %99 = load i32*, i32** %9, align 8
  %100 = load %struct.mrvl_data*, %struct.mrvl_data** %7, align 8
  %101 = getelementptr inbounds %struct.mrvl_data, %struct.mrvl_data* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i32, i32* %99, i64 %103
  %105 = load i32*, i32** %10, align 8
  %106 = icmp ugt i32* %104, %105
  br i1 %106, label %107, label %122

107:                                              ; preds = %98
  %108 = load i32*, i32** %10, align 8
  %109 = load i32*, i32** %9, align 8
  %110 = ptrtoint i32* %108 to i64
  %111 = ptrtoint i32* %109 to i64
  %112 = sub i64 %110, %111
  %113 = sdiv exact i64 %112, 4
  %114 = trunc i64 %113 to i32
  %115 = load %struct.mrvl_data*, %struct.mrvl_data** %7, align 8
  %116 = getelementptr inbounds %struct.mrvl_data, %struct.mrvl_data* %115, i32 0, i32 0
  store i32 %114, i32* %116, align 4
  %117 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %118 = load %struct.mrvl_data*, %struct.mrvl_data** %7, align 8
  %119 = getelementptr inbounds %struct.mrvl_data, %struct.mrvl_data* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @bt_dev_dbg(%struct.hci_dev* %117, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0), i32 %120)
  br label %122

122:                                              ; preds = %107, %98
  %123 = load %struct.mrvl_data*, %struct.mrvl_data** %7, align 8
  %124 = getelementptr inbounds %struct.mrvl_data, %struct.mrvl_data* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = load i32, i32* @GFP_KERNEL, align 4
  %127 = call %struct.sk_buff* @bt_skb_alloc(i32 %125, i32 %126)
  store %struct.sk_buff* %127, %struct.sk_buff** %12, align 8
  %128 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %129 = icmp ne %struct.sk_buff* %128, null
  br i1 %129, label %135, label %130

130:                                              ; preds = %122
  %131 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %132 = call i32 (%struct.hci_dev*, i8*, ...) @bt_dev_err(%struct.hci_dev* %131, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.8, i64 0, i64 0))
  %133 = load i32, i32* @ENOMEM, align 4
  %134 = sub nsw i32 0, %133
  store i32 %134, i32* %11, align 4
  br label %162

135:                                              ; preds = %122
  %136 = load i32, i32* @MRVL_RAW_DATA, align 4
  %137 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %138 = call %struct.TYPE_2__* @bt_cb(%struct.sk_buff* %137)
  %139 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %138, i32 0, i32 0
  store i32 %136, i32* %139, align 4
  %140 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %141 = load i32*, i32** %9, align 8
  %142 = load %struct.mrvl_data*, %struct.mrvl_data** %7, align 8
  %143 = getelementptr inbounds %struct.mrvl_data, %struct.mrvl_data* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = call i32 @skb_put_data(%struct.sk_buff* %140, i32* %141, i32 %144)
  %146 = load %struct.mrvl_data*, %struct.mrvl_data** %7, align 8
  %147 = getelementptr inbounds %struct.mrvl_data, %struct.mrvl_data* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = load i32*, i32** %9, align 8
  %150 = sext i32 %148 to i64
  %151 = getelementptr inbounds i32, i32* %149, i64 %150
  store i32* %151, i32** %9, align 8
  %152 = load i32, i32* @STATE_FW_REQ_PENDING, align 4
  %153 = load %struct.mrvl_data*, %struct.mrvl_data** %7, align 8
  %154 = getelementptr inbounds %struct.mrvl_data, %struct.mrvl_data* %153, i32 0, i32 2
  %155 = call i32 @set_bit(i32 %152, i32* %154)
  %156 = load %struct.mrvl_data*, %struct.mrvl_data** %7, align 8
  %157 = getelementptr inbounds %struct.mrvl_data, %struct.mrvl_data* %156, i32 0, i32 1
  %158 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %159 = call i32 @skb_queue_tail(i32* %157, %struct.sk_buff* %158)
  %160 = load %struct.hci_uart*, %struct.hci_uart** %6, align 8
  %161 = call i32 @hci_uart_tx_wakeup(%struct.hci_uart* %160)
  br label %48

162:                                              ; preds = %130, %97, %69, %61, %48
  %163 = load %struct.firmware*, %struct.firmware** %8, align 8
  %164 = call i32 @release_firmware(%struct.firmware* %163)
  %165 = load i32, i32* %11, align 4
  store i32 %165, i32* %3, align 4
  br label %166

166:                                              ; preds = %162, %24
  %167 = load i32, i32* %3, align 4
  ret i32 %167
}

declare dso_local %struct.hci_uart* @hci_get_drvdata(%struct.hci_dev*) #1

declare dso_local i32 @request_firmware(%struct.firmware**, i8*, i32*) #1

declare dso_local i32 @bt_dev_err(%struct.hci_dev*, i8*, ...) #1

declare dso_local i32 @bt_dev_info(%struct.hci_dev*, i8*, ...) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @wait_on_bit_timeout(i32*, i32, i32, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @bt_dev_dbg(%struct.hci_dev*, i8*, i32) #1

declare dso_local %struct.sk_buff* @bt_skb_alloc(i32, i32) #1

declare dso_local %struct.TYPE_2__* @bt_cb(%struct.sk_buff*) #1

declare dso_local i32 @skb_put_data(%struct.sk_buff*, i32*, i32) #1

declare dso_local i32 @skb_queue_tail(i32*, %struct.sk_buff*) #1

declare dso_local i32 @hci_uart_tx_wakeup(%struct.hci_uart*) #1

declare dso_local i32 @release_firmware(%struct.firmware*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
