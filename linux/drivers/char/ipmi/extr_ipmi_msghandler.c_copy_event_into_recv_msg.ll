; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/ipmi/extr_ipmi_msghandler.c_copy_event_into_recv_msg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/ipmi/extr_ipmi_msghandler.c_copy_event_into_recv_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipmi_recv_msg = type { %struct.TYPE_2__, i32, i32, i32, i64 }
%struct.TYPE_2__ = type { i32, i32, i64, i32 }
%struct.ipmi_smi_msg = type { i32*, i64 }
%struct.ipmi_system_interface_addr = type { i32, i32, i32 }

@IPMI_SYSTEM_INTERFACE_ADDR_TYPE = common dso_local global i32 0, align 4
@IPMI_BMC_CHANNEL = common dso_local global i32 0, align 4
@IPMI_ASYNC_EVENT_RECV_TYPE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ipmi_recv_msg*, %struct.ipmi_smi_msg*)* @copy_event_into_recv_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @copy_event_into_recv_msg(%struct.ipmi_recv_msg* %0, %struct.ipmi_smi_msg* %1) #0 {
  %3 = alloca %struct.ipmi_recv_msg*, align 8
  %4 = alloca %struct.ipmi_smi_msg*, align 8
  %5 = alloca %struct.ipmi_system_interface_addr*, align 8
  store %struct.ipmi_recv_msg* %0, %struct.ipmi_recv_msg** %3, align 8
  store %struct.ipmi_smi_msg* %1, %struct.ipmi_smi_msg** %4, align 8
  %6 = load %struct.ipmi_recv_msg*, %struct.ipmi_recv_msg** %3, align 8
  %7 = getelementptr inbounds %struct.ipmi_recv_msg, %struct.ipmi_recv_msg* %6, i32 0, i32 4
  store i64 0, i64* %7, align 8
  %8 = load %struct.ipmi_recv_msg*, %struct.ipmi_recv_msg** %3, align 8
  %9 = getelementptr inbounds %struct.ipmi_recv_msg, %struct.ipmi_recv_msg* %8, i32 0, i32 3
  %10 = bitcast i32* %9 to %struct.ipmi_system_interface_addr*
  store %struct.ipmi_system_interface_addr* %10, %struct.ipmi_system_interface_addr** %5, align 8
  %11 = load i32, i32* @IPMI_SYSTEM_INTERFACE_ADDR_TYPE, align 4
  %12 = load %struct.ipmi_system_interface_addr*, %struct.ipmi_system_interface_addr** %5, align 8
  %13 = getelementptr inbounds %struct.ipmi_system_interface_addr, %struct.ipmi_system_interface_addr* %12, i32 0, i32 2
  store i32 %11, i32* %13, align 4
  %14 = load i32, i32* @IPMI_BMC_CHANNEL, align 4
  %15 = load %struct.ipmi_system_interface_addr*, %struct.ipmi_system_interface_addr** %5, align 8
  %16 = getelementptr inbounds %struct.ipmi_system_interface_addr, %struct.ipmi_system_interface_addr* %15, i32 0, i32 1
  store i32 %14, i32* %16, align 4
  %17 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %4, align 8
  %18 = getelementptr inbounds %struct.ipmi_smi_msg, %struct.ipmi_smi_msg* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 0
  %21 = load i32, i32* %20, align 4
  %22 = and i32 %21, 3
  %23 = load %struct.ipmi_system_interface_addr*, %struct.ipmi_system_interface_addr** %5, align 8
  %24 = getelementptr inbounds %struct.ipmi_system_interface_addr, %struct.ipmi_system_interface_addr* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 4
  %25 = load i32, i32* @IPMI_ASYNC_EVENT_RECV_TYPE, align 4
  %26 = load %struct.ipmi_recv_msg*, %struct.ipmi_recv_msg** %3, align 8
  %27 = getelementptr inbounds %struct.ipmi_recv_msg, %struct.ipmi_recv_msg* %26, i32 0, i32 2
  store i32 %25, i32* %27, align 4
  %28 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %4, align 8
  %29 = getelementptr inbounds %struct.ipmi_smi_msg, %struct.ipmi_smi_msg* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 0
  %32 = load i32, i32* %31, align 4
  %33 = ashr i32 %32, 2
  %34 = load %struct.ipmi_recv_msg*, %struct.ipmi_recv_msg** %3, align 8
  %35 = getelementptr inbounds %struct.ipmi_recv_msg, %struct.ipmi_recv_msg* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  store i32 %33, i32* %36, align 8
  %37 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %4, align 8
  %38 = getelementptr inbounds %struct.ipmi_smi_msg, %struct.ipmi_smi_msg* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 1
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.ipmi_recv_msg*, %struct.ipmi_recv_msg** %3, align 8
  %43 = getelementptr inbounds %struct.ipmi_recv_msg, %struct.ipmi_recv_msg* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 1
  store i32 %41, i32* %44, align 4
  %45 = load %struct.ipmi_recv_msg*, %struct.ipmi_recv_msg** %3, align 8
  %46 = getelementptr inbounds %struct.ipmi_recv_msg, %struct.ipmi_recv_msg* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %4, align 8
  %49 = getelementptr inbounds %struct.ipmi_smi_msg, %struct.ipmi_smi_msg* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 3
  %52 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %4, align 8
  %53 = getelementptr inbounds %struct.ipmi_smi_msg, %struct.ipmi_smi_msg* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = sub nsw i64 %54, 3
  %56 = call i32 @memcpy(i32 %47, i32* %51, i64 %55)
  %57 = load %struct.ipmi_recv_msg*, %struct.ipmi_recv_msg** %3, align 8
  %58 = getelementptr inbounds %struct.ipmi_recv_msg, %struct.ipmi_recv_msg* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.ipmi_recv_msg*, %struct.ipmi_recv_msg** %3, align 8
  %61 = getelementptr inbounds %struct.ipmi_recv_msg, %struct.ipmi_recv_msg* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 3
  store i32 %59, i32* %62, align 8
  %63 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %4, align 8
  %64 = getelementptr inbounds %struct.ipmi_smi_msg, %struct.ipmi_smi_msg* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = sub nsw i64 %65, 3
  %67 = load %struct.ipmi_recv_msg*, %struct.ipmi_recv_msg** %3, align 8
  %68 = getelementptr inbounds %struct.ipmi_recv_msg, %struct.ipmi_recv_msg* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 2
  store i64 %66, i64* %69, align 8
  ret void
}

declare dso_local i32 @memcpy(i32, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
