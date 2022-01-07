; ModuleID = '/home/carl/AnghaBench/linux/drivers/bluetooth/extr_hci_h5.c_h5_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bluetooth/extr_hci_h5.c_h5_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_uart = type { i32, %struct.h5*, i64 }
%struct.h5 = type { i32, %struct.TYPE_2__*, i32, i32, i32, i32, %struct.hci_uart* }
%struct.TYPE_2__ = type { i32 (%struct.h5*)* }

@__const.h5_open.sync = private unnamed_addr constant [2 x i8] c"\01~", align 1
@.str = private unnamed_addr constant [6 x i8] c"hu %p\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@h5_timed_event = common dso_local global i32 0, align 4
@H5_TX_WIN_MAX = common dso_local global i32 0, align 4
@HCI_UART_INIT_PENDING = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@H5_SYNC_TIMEOUT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hci_uart*)* @h5_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @h5_open(%struct.hci_uart* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hci_uart*, align 8
  %4 = alloca %struct.h5*, align 8
  %5 = alloca [2 x i8], align 1
  store %struct.hci_uart* %0, %struct.hci_uart** %3, align 8
  %6 = bitcast [2 x i8]* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %6, i8* align 1 getelementptr inbounds ([2 x i8], [2 x i8]* @__const.h5_open.sync, i32 0, i32 0), i64 2, i1 false)
  %7 = load %struct.hci_uart*, %struct.hci_uart** %3, align 8
  %8 = call i32 @BT_DBG(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), %struct.hci_uart* %7)
  %9 = load %struct.hci_uart*, %struct.hci_uart** %3, align 8
  %10 = getelementptr inbounds %struct.hci_uart, %struct.hci_uart* %9, i32 0, i32 2
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %1
  %14 = load %struct.hci_uart*, %struct.hci_uart** %3, align 8
  %15 = getelementptr inbounds %struct.hci_uart, %struct.hci_uart* %14, i32 0, i32 2
  %16 = load i64, i64* %15, align 8
  %17 = call %struct.h5* @serdev_device_get_drvdata(i64 %16)
  store %struct.h5* %17, %struct.h5** %4, align 8
  br label %27

18:                                               ; preds = %1
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = call %struct.h5* @kzalloc(i32 40, i32 %19)
  store %struct.h5* %20, %struct.h5** %4, align 8
  %21 = load %struct.h5*, %struct.h5** %4, align 8
  %22 = icmp ne %struct.h5* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %18
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %2, align 4
  br label %85

26:                                               ; preds = %18
  br label %27

27:                                               ; preds = %26, %13
  %28 = load %struct.h5*, %struct.h5** %4, align 8
  %29 = load %struct.hci_uart*, %struct.hci_uart** %3, align 8
  %30 = getelementptr inbounds %struct.hci_uart, %struct.hci_uart* %29, i32 0, i32 1
  store %struct.h5* %28, %struct.h5** %30, align 8
  %31 = load %struct.hci_uart*, %struct.hci_uart** %3, align 8
  %32 = load %struct.h5*, %struct.h5** %4, align 8
  %33 = getelementptr inbounds %struct.h5, %struct.h5* %32, i32 0, i32 6
  store %struct.hci_uart* %31, %struct.hci_uart** %33, align 8
  %34 = load %struct.h5*, %struct.h5** %4, align 8
  %35 = getelementptr inbounds %struct.h5, %struct.h5* %34, i32 0, i32 5
  %36 = call i32 @skb_queue_head_init(i32* %35)
  %37 = load %struct.h5*, %struct.h5** %4, align 8
  %38 = getelementptr inbounds %struct.h5, %struct.h5* %37, i32 0, i32 4
  %39 = call i32 @skb_queue_head_init(i32* %38)
  %40 = load %struct.h5*, %struct.h5** %4, align 8
  %41 = getelementptr inbounds %struct.h5, %struct.h5* %40, i32 0, i32 3
  %42 = call i32 @skb_queue_head_init(i32* %41)
  %43 = load %struct.h5*, %struct.h5** %4, align 8
  %44 = call i32 @h5_reset_rx(%struct.h5* %43)
  %45 = load %struct.h5*, %struct.h5** %4, align 8
  %46 = getelementptr inbounds %struct.h5, %struct.h5* %45, i32 0, i32 0
  %47 = load i32, i32* @h5_timed_event, align 4
  %48 = call i32 @timer_setup(i32* %46, i32 %47, i32 0)
  %49 = load i32, i32* @H5_TX_WIN_MAX, align 4
  %50 = load %struct.h5*, %struct.h5** %4, align 8
  %51 = getelementptr inbounds %struct.h5, %struct.h5* %50, i32 0, i32 2
  store i32 %49, i32* %51, align 8
  %52 = load %struct.h5*, %struct.h5** %4, align 8
  %53 = getelementptr inbounds %struct.h5, %struct.h5* %52, i32 0, i32 1
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = icmp ne %struct.TYPE_2__* %54, null
  br i1 %55, label %56, label %71

56:                                               ; preds = %27
  %57 = load %struct.h5*, %struct.h5** %4, align 8
  %58 = getelementptr inbounds %struct.h5, %struct.h5* %57, i32 0, i32 1
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load i32 (%struct.h5*)*, i32 (%struct.h5*)** %60, align 8
  %62 = icmp ne i32 (%struct.h5*)* %61, null
  br i1 %62, label %63, label %71

63:                                               ; preds = %56
  %64 = load %struct.h5*, %struct.h5** %4, align 8
  %65 = getelementptr inbounds %struct.h5, %struct.h5* %64, i32 0, i32 1
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = load i32 (%struct.h5*)*, i32 (%struct.h5*)** %67, align 8
  %69 = load %struct.h5*, %struct.h5** %4, align 8
  %70 = call i32 %68(%struct.h5* %69)
  br label %71

71:                                               ; preds = %63, %56, %27
  %72 = load i32, i32* @HCI_UART_INIT_PENDING, align 4
  %73 = load %struct.hci_uart*, %struct.hci_uart** %3, align 8
  %74 = getelementptr inbounds %struct.hci_uart, %struct.hci_uart* %73, i32 0, i32 0
  %75 = call i32 @set_bit(i32 %72, i32* %74)
  %76 = load %struct.hci_uart*, %struct.hci_uart** %3, align 8
  %77 = getelementptr inbounds [2 x i8], [2 x i8]* %5, i64 0, i64 0
  %78 = call i32 @h5_link_control(%struct.hci_uart* %76, i8* %77, i32 2)
  %79 = load %struct.h5*, %struct.h5** %4, align 8
  %80 = getelementptr inbounds %struct.h5, %struct.h5* %79, i32 0, i32 0
  %81 = load i64, i64* @jiffies, align 8
  %82 = load i64, i64* @H5_SYNC_TIMEOUT, align 8
  %83 = add nsw i64 %81, %82
  %84 = call i32 @mod_timer(i32* %80, i64 %83)
  store i32 0, i32* %2, align 4
  br label %85

85:                                               ; preds = %71, %23
  %86 = load i32, i32* %2, align 4
  ret i32 %86
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @BT_DBG(i8*, %struct.hci_uart*) #2

declare dso_local %struct.h5* @serdev_device_get_drvdata(i64) #2

declare dso_local %struct.h5* @kzalloc(i32, i32) #2

declare dso_local i32 @skb_queue_head_init(i32*) #2

declare dso_local i32 @h5_reset_rx(%struct.h5*) #2

declare dso_local i32 @timer_setup(i32*, i32, i32) #2

declare dso_local i32 @set_bit(i32, i32*) #2

declare dso_local i32 @h5_link_control(%struct.hci_uart*, i8*, i32) #2

declare dso_local i32 @mod_timer(i32*, i64) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
