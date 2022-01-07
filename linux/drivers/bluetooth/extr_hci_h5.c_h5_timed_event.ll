; ModuleID = '/home/carl/AnghaBench/linux/drivers/bluetooth/extr_hci_h5.c_h5_timed_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bluetooth/extr_hci_h5.c_h5_timed_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.h5 = type { i64, i64, i32, %struct.TYPE_4__, i32, i32, %struct.hci_uart* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.hci_uart = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.timer_list = type { i32 }
%struct.sk_buff = type { i32 }

@__const.h5_timed_event.sync_req = private unnamed_addr constant [2 x i8] c"\01~", align 1
@__const.h5_timed_event.conf_req = private unnamed_addr constant [3 x i8] c"\03\FC\00", align 1
@timer = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@H5_UNINITIALIZED = common dso_local global i64 0, align 8
@H5_INITIALIZED = common dso_local global i64 0, align 8
@H5_ACTIVE = common dso_local global i64 0, align 8
@jiffies = common dso_local global i64 0, align 8
@H5_SYNC_TIMEOUT = common dso_local global i64 0, align 8
@H5_AWAKE = common dso_local global i64 0, align 8
@H5_SLEEPING = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [29 x i8] c"hu %p retransmitting %u pkts\00", align 1
@SINGLE_DEPTH_NESTING = common dso_local global i32 0, align 4
@h5 = common dso_local global %struct.h5* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @h5_timed_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @h5_timed_event(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca [2 x i8], align 1
  %4 = alloca [3 x i8], align 1
  %5 = alloca %struct.h5*, align 8
  %6 = alloca %struct.hci_uart*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca i64, align 8
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %9 = bitcast [2 x i8]* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %9, i8* align 1 getelementptr inbounds ([2 x i8], [2 x i8]* @__const.h5_timed_event.sync_req, i32 0, i32 0), i64 2, i1 false)
  %10 = bitcast [3 x i8]* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %10, i8* align 1 getelementptr inbounds ([3 x i8], [3 x i8]* @__const.h5_timed_event.conf_req, i32 0, i32 0), i64 3, i1 false)
  %11 = load %struct.h5*, %struct.h5** %5, align 8
  %12 = ptrtoint %struct.h5* %11 to i32
  %13 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %14 = load i32, i32* @timer, align 4
  %15 = call %struct.h5* @from_timer(i32 %12, %struct.timer_list* %13, i32 %14)
  store %struct.h5* %15, %struct.h5** %5, align 8
  %16 = load %struct.h5*, %struct.h5** %5, align 8
  %17 = getelementptr inbounds %struct.h5, %struct.h5* %16, i32 0, i32 6
  %18 = load %struct.hci_uart*, %struct.hci_uart** %17, align 8
  store %struct.hci_uart* %18, %struct.hci_uart** %6, align 8
  %19 = load %struct.hci_uart*, %struct.hci_uart** %6, align 8
  %20 = getelementptr inbounds %struct.hci_uart, %struct.hci_uart* %19, i32 0, i32 0
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = sext i32 %23 to i64
  %25 = inttoptr i64 %24 to %struct.hci_uart*
  %26 = call i32 (i8*, %struct.hci_uart*, ...) @BT_DBG(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), %struct.hci_uart* %25)
  %27 = load %struct.h5*, %struct.h5** %5, align 8
  %28 = getelementptr inbounds %struct.h5, %struct.h5* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @H5_UNINITIALIZED, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %36

32:                                               ; preds = %1
  %33 = load %struct.hci_uart*, %struct.hci_uart** %6, align 8
  %34 = getelementptr inbounds [2 x i8], [2 x i8]* %3, i64 0, i64 0
  %35 = call i32 @h5_link_control(%struct.hci_uart* %33, i8* %34, i32 2)
  br label %36

36:                                               ; preds = %32, %1
  %37 = load %struct.h5*, %struct.h5** %5, align 8
  %38 = getelementptr inbounds %struct.h5, %struct.h5* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @H5_INITIALIZED, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %49

42:                                               ; preds = %36
  %43 = load %struct.h5*, %struct.h5** %5, align 8
  %44 = call zeroext i8 @h5_cfg_field(%struct.h5* %43)
  %45 = getelementptr inbounds [3 x i8], [3 x i8]* %4, i64 0, i64 2
  store i8 %44, i8* %45, align 1
  %46 = load %struct.hci_uart*, %struct.hci_uart** %6, align 8
  %47 = getelementptr inbounds [3 x i8], [3 x i8]* %4, i64 0, i64 0
  %48 = call i32 @h5_link_control(%struct.hci_uart* %46, i8* %47, i32 3)
  br label %49

49:                                               ; preds = %42, %36
  %50 = load %struct.h5*, %struct.h5** %5, align 8
  %51 = getelementptr inbounds %struct.h5, %struct.h5* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @H5_ACTIVE, align 8
  %54 = icmp ne i64 %52, %53
  br i1 %54, label %55, label %62

55:                                               ; preds = %49
  %56 = load %struct.h5*, %struct.h5** %5, align 8
  %57 = getelementptr inbounds %struct.h5, %struct.h5* %56, i32 0, i32 5
  %58 = load i64, i64* @jiffies, align 8
  %59 = load i64, i64* @H5_SYNC_TIMEOUT, align 8
  %60 = add nsw i64 %58, %59
  %61 = call i32 @mod_timer(i32* %57, i64 %60)
  br label %108

62:                                               ; preds = %49
  %63 = load %struct.h5*, %struct.h5** %5, align 8
  %64 = getelementptr inbounds %struct.h5, %struct.h5* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @H5_AWAKE, align 8
  %67 = icmp ne i64 %65, %66
  br i1 %67, label %68, label %72

68:                                               ; preds = %62
  %69 = load i64, i64* @H5_SLEEPING, align 8
  %70 = load %struct.h5*, %struct.h5** %5, align 8
  %71 = getelementptr inbounds %struct.h5, %struct.h5* %70, i32 0, i32 1
  store i64 %69, i64* %71, align 8
  br label %108

72:                                               ; preds = %62
  %73 = load %struct.hci_uart*, %struct.hci_uart** %6, align 8
  %74 = load %struct.h5*, %struct.h5** %5, align 8
  %75 = getelementptr inbounds %struct.h5, %struct.h5* %74, i32 0, i32 3
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = call i32 (i8*, %struct.hci_uart*, ...) @BT_DBG(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), %struct.hci_uart* %73, i32 %77)
  %79 = load %struct.h5*, %struct.h5** %5, align 8
  %80 = getelementptr inbounds %struct.h5, %struct.h5* %79, i32 0, i32 3
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 0
  %82 = load i64, i64* %8, align 8
  %83 = load i32, i32* @SINGLE_DEPTH_NESTING, align 4
  %84 = call i32 @spin_lock_irqsave_nested(i32* %81, i64 %82, i32 %83)
  br label %85

85:                                               ; preds = %90, %72
  %86 = load %struct.h5*, %struct.h5** %5, align 8
  %87 = getelementptr inbounds %struct.h5, %struct.h5* %86, i32 0, i32 3
  %88 = call %struct.sk_buff* @__skb_dequeue_tail(%struct.TYPE_4__* %87)
  store %struct.sk_buff* %88, %struct.sk_buff** %7, align 8
  %89 = icmp ne %struct.sk_buff* %88, null
  br i1 %89, label %90, label %102

90:                                               ; preds = %85
  %91 = load %struct.h5*, %struct.h5** %5, align 8
  %92 = getelementptr inbounds %struct.h5, %struct.h5* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 8
  %94 = sub nsw i32 %93, 1
  %95 = and i32 %94, 7
  %96 = load %struct.h5*, %struct.h5** %5, align 8
  %97 = getelementptr inbounds %struct.h5, %struct.h5* %96, i32 0, i32 2
  store i32 %95, i32* %97, align 8
  %98 = load %struct.h5*, %struct.h5** %5, align 8
  %99 = getelementptr inbounds %struct.h5, %struct.h5* %98, i32 0, i32 4
  %100 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %101 = call i32 @skb_queue_head(i32* %99, %struct.sk_buff* %100)
  br label %85

102:                                              ; preds = %85
  %103 = load %struct.h5*, %struct.h5** %5, align 8
  %104 = getelementptr inbounds %struct.h5, %struct.h5* %103, i32 0, i32 3
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 0
  %106 = load i64, i64* %8, align 8
  %107 = call i32 @spin_unlock_irqrestore(i32* %105, i64 %106)
  br label %108

108:                                              ; preds = %102, %68, %55
  %109 = load %struct.hci_uart*, %struct.hci_uart** %6, align 8
  %110 = call i32 @hci_uart_tx_wakeup(%struct.hci_uart* %109)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local %struct.h5* @from_timer(i32, %struct.timer_list*, i32) #2

declare dso_local i32 @BT_DBG(i8*, %struct.hci_uart*, ...) #2

declare dso_local i32 @h5_link_control(%struct.hci_uart*, i8*, i32) #2

declare dso_local zeroext i8 @h5_cfg_field(%struct.h5*) #2

declare dso_local i32 @mod_timer(i32*, i64) #2

declare dso_local i32 @spin_lock_irqsave_nested(i32*, i64, i32) #2

declare dso_local %struct.sk_buff* @__skb_dequeue_tail(%struct.TYPE_4__*) #2

declare dso_local i32 @skb_queue_head(i32*, %struct.sk_buff*) #2

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #2

declare dso_local i32 @hci_uart_tx_wakeup(%struct.hci_uart*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
