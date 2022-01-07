; ModuleID = '/home/carl/AnghaBench/linux/drivers/bluetooth/extr_hci_qca.c_qca_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bluetooth/extr_hci_qca.c_qca_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_uart = type { %struct.qca_data*, i32, i32, i64 }
%struct.qca_data = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.hci_uart*, i32, i32, i32, i32, i32, i32, i32 }
%struct.qca_serdev = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [15 x i8] c"hu %p qca_open\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"qca_wq\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"QCA Workqueue not initialized properly\00", align 1
@qca_wq_awake_rx = common dso_local global i32 0, align 4
@qca_wq_awake_device = common dso_local global i32 0, align 4
@qca_wq_serial_rx_clock_vote_off = common dso_local global i32 0, align 4
@qca_wq_serial_tx_clock_vote_off = common dso_local global i32 0, align 4
@HCI_IBS_TX_ASLEEP = common dso_local global i32 0, align 4
@HCI_IBS_RX_ASLEEP = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@hci_ibs_wake_retrans_timeout = common dso_local global i32 0, align 4
@IBS_WAKE_RETRANS_TIMEOUT_MS = common dso_local global i32 0, align 4
@hci_ibs_tx_idle_timeout = common dso_local global i32 0, align 4
@IBS_TX_IDLE_TIMEOUT_MS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [53 x i8] c"HCI_UART_QCA open, tx_idle_delay=%u, wake_retrans=%u\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hci_uart*)* @qca_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qca_open(%struct.hci_uart* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hci_uart*, align 8
  %4 = alloca %struct.qca_serdev*, align 8
  %5 = alloca %struct.qca_data*, align 8
  %6 = alloca i32, align 4
  store %struct.hci_uart* %0, %struct.hci_uart** %3, align 8
  %7 = load %struct.hci_uart*, %struct.hci_uart** %3, align 8
  %8 = call i32 (i8*, %struct.hci_uart*, ...) @BT_DBG(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), %struct.hci_uart* %7)
  %9 = load %struct.hci_uart*, %struct.hci_uart** %3, align 8
  %10 = call i32 @hci_uart_has_flow_control(%struct.hci_uart* %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @EOPNOTSUPP, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %156

15:                                               ; preds = %1
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call %struct.qca_data* @kzalloc(i32 80, i32 %16)
  store %struct.qca_data* %17, %struct.qca_data** %5, align 8
  %18 = load %struct.qca_data*, %struct.qca_data** %5, align 8
  %19 = icmp ne %struct.qca_data* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %15
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %156

23:                                               ; preds = %15
  %24 = load %struct.qca_data*, %struct.qca_data** %5, align 8
  %25 = getelementptr inbounds %struct.qca_data, %struct.qca_data* %24, i32 0, i32 17
  %26 = call i32 @skb_queue_head_init(i32* %25)
  %27 = load %struct.qca_data*, %struct.qca_data** %5, align 8
  %28 = getelementptr inbounds %struct.qca_data, %struct.qca_data* %27, i32 0, i32 16
  %29 = call i32 @skb_queue_head_init(i32* %28)
  %30 = load %struct.qca_data*, %struct.qca_data** %5, align 8
  %31 = getelementptr inbounds %struct.qca_data, %struct.qca_data* %30, i32 0, i32 15
  %32 = call i32 @spin_lock_init(i32* %31)
  %33 = call i32 @alloc_ordered_workqueue(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 0)
  %34 = load %struct.qca_data*, %struct.qca_data** %5, align 8
  %35 = getelementptr inbounds %struct.qca_data, %struct.qca_data* %34, i32 0, i32 5
  store i32 %33, i32* %35, align 4
  %36 = load %struct.qca_data*, %struct.qca_data** %5, align 8
  %37 = getelementptr inbounds %struct.qca_data, %struct.qca_data* %36, i32 0, i32 5
  %38 = load i32, i32* %37, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %46, label %40

40:                                               ; preds = %23
  %41 = call i32 @BT_ERR(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0))
  %42 = load %struct.qca_data*, %struct.qca_data** %5, align 8
  %43 = call i32 @kfree(%struct.qca_data* %42)
  %44 = load i32, i32* @ENOMEM, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %2, align 4
  br label %156

46:                                               ; preds = %23
  %47 = load %struct.qca_data*, %struct.qca_data** %5, align 8
  %48 = getelementptr inbounds %struct.qca_data, %struct.qca_data* %47, i32 0, i32 14
  %49 = load i32, i32* @qca_wq_awake_rx, align 4
  %50 = call i32 @INIT_WORK(i32* %48, i32 %49)
  %51 = load %struct.qca_data*, %struct.qca_data** %5, align 8
  %52 = getelementptr inbounds %struct.qca_data, %struct.qca_data* %51, i32 0, i32 13
  %53 = load i32, i32* @qca_wq_awake_device, align 4
  %54 = call i32 @INIT_WORK(i32* %52, i32 %53)
  %55 = load %struct.qca_data*, %struct.qca_data** %5, align 8
  %56 = getelementptr inbounds %struct.qca_data, %struct.qca_data* %55, i32 0, i32 12
  %57 = load i32, i32* @qca_wq_serial_rx_clock_vote_off, align 4
  %58 = call i32 @INIT_WORK(i32* %56, i32 %57)
  %59 = load %struct.qca_data*, %struct.qca_data** %5, align 8
  %60 = getelementptr inbounds %struct.qca_data, %struct.qca_data* %59, i32 0, i32 11
  %61 = load i32, i32* @qca_wq_serial_tx_clock_vote_off, align 4
  %62 = call i32 @INIT_WORK(i32* %60, i32 %61)
  %63 = load %struct.hci_uart*, %struct.hci_uart** %3, align 8
  %64 = load %struct.qca_data*, %struct.qca_data** %5, align 8
  %65 = getelementptr inbounds %struct.qca_data, %struct.qca_data* %64, i32 0, i32 10
  store %struct.hci_uart* %63, %struct.hci_uart** %65, align 8
  %66 = load %struct.qca_data*, %struct.qca_data** %5, align 8
  %67 = getelementptr inbounds %struct.qca_data, %struct.qca_data* %66, i32 0, i32 9
  %68 = call i32 @init_completion(i32* %67)
  %69 = load i32, i32* @HCI_IBS_TX_ASLEEP, align 4
  %70 = load %struct.qca_data*, %struct.qca_data** %5, align 8
  %71 = getelementptr inbounds %struct.qca_data, %struct.qca_data* %70, i32 0, i32 8
  store i32 %69, i32* %71, align 8
  %72 = load i32, i32* @HCI_IBS_RX_ASLEEP, align 4
  %73 = load %struct.qca_data*, %struct.qca_data** %5, align 8
  %74 = getelementptr inbounds %struct.qca_data, %struct.qca_data* %73, i32 0, i32 7
  store i32 %72, i32* %74, align 4
  %75 = load i32, i32* @jiffies, align 4
  %76 = load %struct.qca_data*, %struct.qca_data** %5, align 8
  %77 = getelementptr inbounds %struct.qca_data, %struct.qca_data* %76, i32 0, i32 6
  store i32 %75, i32* %77, align 8
  %78 = load %struct.qca_data*, %struct.qca_data** %5, align 8
  %79 = load %struct.hci_uart*, %struct.hci_uart** %3, align 8
  %80 = getelementptr inbounds %struct.hci_uart, %struct.hci_uart* %79, i32 0, i32 0
  store %struct.qca_data* %78, %struct.qca_data** %80, align 8
  %81 = load %struct.hci_uart*, %struct.hci_uart** %3, align 8
  %82 = getelementptr inbounds %struct.hci_uart, %struct.hci_uart* %81, i32 0, i32 3
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %132

85:                                               ; preds = %46
  %86 = load %struct.hci_uart*, %struct.hci_uart** %3, align 8
  %87 = getelementptr inbounds %struct.hci_uart, %struct.hci_uart* %86, i32 0, i32 3
  %88 = load i64, i64* %87, align 8
  %89 = call %struct.qca_serdev* @serdev_device_get_drvdata(i64 %88)
  store %struct.qca_serdev* %89, %struct.qca_serdev** %4, align 8
  %90 = load %struct.qca_serdev*, %struct.qca_serdev** %4, align 8
  %91 = getelementptr inbounds %struct.qca_serdev, %struct.qca_serdev* %90, i32 0, i32 3
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @qca_is_wcn399x(i32 %92)
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %101, label %95

95:                                               ; preds = %85
  %96 = load %struct.qca_serdev*, %struct.qca_serdev** %4, align 8
  %97 = getelementptr inbounds %struct.qca_serdev, %struct.qca_serdev* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @gpiod_set_value_cansleep(i32 %98, i32 1)
  %100 = call i32 @msleep(i32 150)
  br label %131

101:                                              ; preds = %85
  %102 = load %struct.qca_serdev*, %struct.qca_serdev** %4, align 8
  %103 = getelementptr inbounds %struct.qca_serdev, %struct.qca_serdev* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.hci_uart*, %struct.hci_uart** %3, align 8
  %106 = getelementptr inbounds %struct.hci_uart, %struct.hci_uart* %105, i32 0, i32 2
  store i32 %104, i32* %106, align 4
  %107 = load %struct.qca_serdev*, %struct.qca_serdev** %4, align 8
  %108 = getelementptr inbounds %struct.qca_serdev, %struct.qca_serdev* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.hci_uart*, %struct.hci_uart** %3, align 8
  %111 = getelementptr inbounds %struct.hci_uart, %struct.hci_uart* %110, i32 0, i32 1
  store i32 %109, i32* %111, align 8
  %112 = load %struct.hci_uart*, %struct.hci_uart** %3, align 8
  %113 = call i32 @qca_power_setup(%struct.hci_uart* %112, i32 1)
  store i32 %113, i32* %6, align 4
  %114 = load i32, i32* %6, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %130

116:                                              ; preds = %101
  %117 = load %struct.qca_data*, %struct.qca_data** %5, align 8
  %118 = getelementptr inbounds %struct.qca_data, %struct.qca_data* %117, i32 0, i32 5
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @destroy_workqueue(i32 %119)
  %121 = load %struct.qca_data*, %struct.qca_data** %5, align 8
  %122 = getelementptr inbounds %struct.qca_data, %struct.qca_data* %121, i32 0, i32 4
  %123 = load i32, i32* %122, align 8
  %124 = call i32 @kfree_skb(i32 %123)
  %125 = load %struct.hci_uart*, %struct.hci_uart** %3, align 8
  %126 = getelementptr inbounds %struct.hci_uart, %struct.hci_uart* %125, i32 0, i32 0
  store %struct.qca_data* null, %struct.qca_data** %126, align 8
  %127 = load %struct.qca_data*, %struct.qca_data** %5, align 8
  %128 = call i32 @kfree(%struct.qca_data* %127)
  %129 = load i32, i32* %6, align 4
  store i32 %129, i32* %2, align 4
  br label %156

130:                                              ; preds = %101
  br label %131

131:                                              ; preds = %130, %95
  br label %132

132:                                              ; preds = %131, %46
  %133 = load %struct.qca_data*, %struct.qca_data** %5, align 8
  %134 = getelementptr inbounds %struct.qca_data, %struct.qca_data* %133, i32 0, i32 3
  %135 = load i32, i32* @hci_ibs_wake_retrans_timeout, align 4
  %136 = call i32 @timer_setup(i32* %134, i32 %135, i32 0)
  %137 = load i32, i32* @IBS_WAKE_RETRANS_TIMEOUT_MS, align 4
  %138 = load %struct.qca_data*, %struct.qca_data** %5, align 8
  %139 = getelementptr inbounds %struct.qca_data, %struct.qca_data* %138, i32 0, i32 0
  store i32 %137, i32* %139, align 8
  %140 = load %struct.qca_data*, %struct.qca_data** %5, align 8
  %141 = getelementptr inbounds %struct.qca_data, %struct.qca_data* %140, i32 0, i32 2
  %142 = load i32, i32* @hci_ibs_tx_idle_timeout, align 4
  %143 = call i32 @timer_setup(i32* %141, i32 %142, i32 0)
  %144 = load i32, i32* @IBS_TX_IDLE_TIMEOUT_MS, align 4
  %145 = load %struct.qca_data*, %struct.qca_data** %5, align 8
  %146 = getelementptr inbounds %struct.qca_data, %struct.qca_data* %145, i32 0, i32 1
  store i32 %144, i32* %146, align 4
  %147 = load %struct.qca_data*, %struct.qca_data** %5, align 8
  %148 = getelementptr inbounds %struct.qca_data, %struct.qca_data* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = sext i32 %149 to i64
  %151 = inttoptr i64 %150 to %struct.hci_uart*
  %152 = load %struct.qca_data*, %struct.qca_data** %5, align 8
  %153 = getelementptr inbounds %struct.qca_data, %struct.qca_data* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = call i32 (i8*, %struct.hci_uart*, ...) @BT_DBG(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.3, i64 0, i64 0), %struct.hci_uart* %151, i32 %154)
  store i32 0, i32* %2, align 4
  br label %156

156:                                              ; preds = %132, %116, %40, %20, %12
  %157 = load i32, i32* %2, align 4
  ret i32 %157
}

declare dso_local i32 @BT_DBG(i8*, %struct.hci_uart*, ...) #1

declare dso_local i32 @hci_uart_has_flow_control(%struct.hci_uart*) #1

declare dso_local %struct.qca_data* @kzalloc(i32, i32) #1

declare dso_local i32 @skb_queue_head_init(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @alloc_ordered_workqueue(i8*, i32) #1

declare dso_local i32 @BT_ERR(i8*) #1

declare dso_local i32 @kfree(%struct.qca_data*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local %struct.qca_serdev* @serdev_device_get_drvdata(i64) #1

declare dso_local i32 @qca_is_wcn399x(i32) #1

declare dso_local i32 @gpiod_set_value_cansleep(i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @qca_power_setup(%struct.hci_uart*, i32) #1

declare dso_local i32 @destroy_workqueue(i32) #1

declare dso_local i32 @kfree_skb(i32) #1

declare dso_local i32 @timer_setup(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
