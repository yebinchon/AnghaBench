; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/ipmi/extr_ipmi_msghandler.c_event_receiver_fetcher.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/ipmi/extr_ipmi_msghandler.c_event_receiver_fetcher.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipmi_smi = type { i32, i32 }
%struct.ipmi_recv_msg = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64, i64, i32* }
%struct.TYPE_3__ = type { i64 }

@IPMI_SYSTEM_INTERFACE_ADDR_TYPE = common dso_local global i64 0, align 8
@IPMI_NETFN_SENSOR_EVENT_RESPONSE = common dso_local global i64 0, align 8
@IPMI_GET_EVENT_RECEIVER_CMD = common dso_local global i64 0, align 8
@IPMI_CC_NO_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ipmi_smi*, %struct.ipmi_recv_msg*)* @event_receiver_fetcher to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @event_receiver_fetcher(%struct.ipmi_smi* %0, %struct.ipmi_recv_msg* %1) #0 {
  %3 = alloca %struct.ipmi_smi*, align 8
  %4 = alloca %struct.ipmi_recv_msg*, align 8
  store %struct.ipmi_smi* %0, %struct.ipmi_smi** %3, align 8
  store %struct.ipmi_recv_msg* %1, %struct.ipmi_recv_msg** %4, align 8
  %5 = load %struct.ipmi_recv_msg*, %struct.ipmi_recv_msg** %4, align 8
  %6 = getelementptr inbounds %struct.ipmi_recv_msg, %struct.ipmi_recv_msg* %5, i32 0, i32 1
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @IPMI_SYSTEM_INTERFACE_ADDR_TYPE, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %52

11:                                               ; preds = %2
  %12 = load %struct.ipmi_recv_msg*, %struct.ipmi_recv_msg** %4, align 8
  %13 = getelementptr inbounds %struct.ipmi_recv_msg, %struct.ipmi_recv_msg* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @IPMI_NETFN_SENSOR_EVENT_RESPONSE, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %52

18:                                               ; preds = %11
  %19 = load %struct.ipmi_recv_msg*, %struct.ipmi_recv_msg** %4, align 8
  %20 = getelementptr inbounds %struct.ipmi_recv_msg, %struct.ipmi_recv_msg* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @IPMI_GET_EVENT_RECEIVER_CMD, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %52

25:                                               ; preds = %18
  %26 = load %struct.ipmi_recv_msg*, %struct.ipmi_recv_msg** %4, align 8
  %27 = getelementptr inbounds %struct.ipmi_recv_msg, %struct.ipmi_recv_msg* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 2
  %29 = load i32*, i32** %28, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @IPMI_CC_NO_ERROR, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %52

34:                                               ; preds = %25
  %35 = load %struct.ipmi_recv_msg*, %struct.ipmi_recv_msg** %4, align 8
  %36 = getelementptr inbounds %struct.ipmi_recv_msg, %struct.ipmi_recv_msg* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 2
  %38 = load i32*, i32** %37, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.ipmi_smi*, %struct.ipmi_smi** %3, align 8
  %42 = getelementptr inbounds %struct.ipmi_smi, %struct.ipmi_smi* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 4
  %43 = load %struct.ipmi_recv_msg*, %struct.ipmi_recv_msg** %4, align 8
  %44 = getelementptr inbounds %struct.ipmi_recv_msg, %struct.ipmi_recv_msg* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 2
  %46 = load i32*, i32** %45, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 2
  %48 = load i32, i32* %47, align 4
  %49 = and i32 %48, 3
  %50 = load %struct.ipmi_smi*, %struct.ipmi_smi** %3, align 8
  %51 = getelementptr inbounds %struct.ipmi_smi, %struct.ipmi_smi* %50, i32 0, i32 1
  store i32 %49, i32* %51, align 4
  br label %52

52:                                               ; preds = %34, %25, %18, %11, %2
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
