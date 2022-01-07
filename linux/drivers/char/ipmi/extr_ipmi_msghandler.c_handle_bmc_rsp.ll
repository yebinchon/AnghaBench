; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/ipmi/extr_ipmi_msghandler.c_handle_bmc_rsp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/ipmi/extr_ipmi_msghandler.c_handle_bmc_rsp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipmi_smi = type { i32 }
%struct.ipmi_smi_msg = type { i32*, i64, i32, i64 }
%struct.ipmi_recv_msg = type { %struct.TYPE_2__, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32, i32, i64, i32 }
%struct.ipmi_system_interface_addr = type { i32, i32, i32 }

@.str = private unnamed_addr constant [162 x i8] c"IPMI message received with no owner. This could be because of a malformed message, or because of a hardware error.  Contact your hardware vendor for assistance.\0A\00", align 1
@IPMI_RESPONSE_RECV_TYPE = common dso_local global i32 0, align 4
@IPMI_SYSTEM_INTERFACE_ADDR_TYPE = common dso_local global i32 0, align 4
@IPMI_BMC_CHANNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ipmi_smi*, %struct.ipmi_smi_msg*)* @handle_bmc_rsp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_bmc_rsp(%struct.ipmi_smi* %0, %struct.ipmi_smi_msg* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ipmi_smi*, align 8
  %5 = alloca %struct.ipmi_smi_msg*, align 8
  %6 = alloca %struct.ipmi_recv_msg*, align 8
  %7 = alloca %struct.ipmi_system_interface_addr*, align 8
  store %struct.ipmi_smi* %0, %struct.ipmi_smi** %4, align 8
  store %struct.ipmi_smi_msg* %1, %struct.ipmi_smi_msg** %5, align 8
  %8 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %5, align 8
  %9 = getelementptr inbounds %struct.ipmi_smi_msg, %struct.ipmi_smi_msg* %8, i32 0, i32 3
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to %struct.ipmi_recv_msg*
  store %struct.ipmi_recv_msg* %11, %struct.ipmi_recv_msg** %6, align 8
  %12 = load %struct.ipmi_recv_msg*, %struct.ipmi_recv_msg** %6, align 8
  %13 = icmp eq %struct.ipmi_recv_msg* %12, null
  br i1 %13, label %14, label %19

14:                                               ; preds = %2
  %15 = load %struct.ipmi_smi*, %struct.ipmi_smi** %4, align 8
  %16 = getelementptr inbounds %struct.ipmi_smi, %struct.ipmi_smi* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @dev_warn(i32 %17, i8* getelementptr inbounds ([162 x i8], [162 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %90

19:                                               ; preds = %2
  %20 = load i32, i32* @IPMI_RESPONSE_RECV_TYPE, align 4
  %21 = load %struct.ipmi_recv_msg*, %struct.ipmi_recv_msg** %6, align 8
  %22 = getelementptr inbounds %struct.ipmi_recv_msg, %struct.ipmi_recv_msg* %21, i32 0, i32 4
  store i32 %20, i32* %22, align 4
  %23 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %5, align 8
  %24 = getelementptr inbounds %struct.ipmi_smi_msg, %struct.ipmi_smi_msg* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.ipmi_recv_msg*, %struct.ipmi_recv_msg** %6, align 8
  %27 = getelementptr inbounds %struct.ipmi_recv_msg, %struct.ipmi_recv_msg* %26, i32 0, i32 3
  store i32 %25, i32* %27, align 8
  %28 = load %struct.ipmi_recv_msg*, %struct.ipmi_recv_msg** %6, align 8
  %29 = getelementptr inbounds %struct.ipmi_recv_msg, %struct.ipmi_recv_msg* %28, i32 0, i32 2
  %30 = bitcast i32* %29 to %struct.ipmi_system_interface_addr*
  store %struct.ipmi_system_interface_addr* %30, %struct.ipmi_system_interface_addr** %7, align 8
  %31 = load i32, i32* @IPMI_SYSTEM_INTERFACE_ADDR_TYPE, align 4
  %32 = load %struct.ipmi_system_interface_addr*, %struct.ipmi_system_interface_addr** %7, align 8
  %33 = getelementptr inbounds %struct.ipmi_system_interface_addr, %struct.ipmi_system_interface_addr* %32, i32 0, i32 2
  store i32 %31, i32* %33, align 4
  %34 = load i32, i32* @IPMI_BMC_CHANNEL, align 4
  %35 = load %struct.ipmi_system_interface_addr*, %struct.ipmi_system_interface_addr** %7, align 8
  %36 = getelementptr inbounds %struct.ipmi_system_interface_addr, %struct.ipmi_system_interface_addr* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 4
  %37 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %5, align 8
  %38 = getelementptr inbounds %struct.ipmi_smi_msg, %struct.ipmi_smi_msg* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 0
  %41 = load i32, i32* %40, align 4
  %42 = and i32 %41, 3
  %43 = load %struct.ipmi_system_interface_addr*, %struct.ipmi_system_interface_addr** %7, align 8
  %44 = getelementptr inbounds %struct.ipmi_system_interface_addr, %struct.ipmi_system_interface_addr* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 4
  %45 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %5, align 8
  %46 = getelementptr inbounds %struct.ipmi_smi_msg, %struct.ipmi_smi_msg* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 0
  %49 = load i32, i32* %48, align 4
  %50 = ashr i32 %49, 2
  %51 = load %struct.ipmi_recv_msg*, %struct.ipmi_recv_msg** %6, align 8
  %52 = getelementptr inbounds %struct.ipmi_recv_msg, %struct.ipmi_recv_msg* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  store i32 %50, i32* %53, align 8
  %54 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %5, align 8
  %55 = getelementptr inbounds %struct.ipmi_smi_msg, %struct.ipmi_smi_msg* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 1
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.ipmi_recv_msg*, %struct.ipmi_recv_msg** %6, align 8
  %60 = getelementptr inbounds %struct.ipmi_recv_msg, %struct.ipmi_recv_msg* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 1
  store i32 %58, i32* %61, align 4
  %62 = load %struct.ipmi_recv_msg*, %struct.ipmi_recv_msg** %6, align 8
  %63 = getelementptr inbounds %struct.ipmi_recv_msg, %struct.ipmi_recv_msg* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %5, align 8
  %66 = getelementptr inbounds %struct.ipmi_smi_msg, %struct.ipmi_smi_msg* %65, i32 0, i32 0
  %67 = load i32*, i32** %66, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 2
  %69 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %5, align 8
  %70 = getelementptr inbounds %struct.ipmi_smi_msg, %struct.ipmi_smi_msg* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = sub nsw i64 %71, 2
  %73 = call i32 @memcpy(i32 %64, i32* %68, i64 %72)
  %74 = load %struct.ipmi_recv_msg*, %struct.ipmi_recv_msg** %6, align 8
  %75 = getelementptr inbounds %struct.ipmi_recv_msg, %struct.ipmi_recv_msg* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.ipmi_recv_msg*, %struct.ipmi_recv_msg** %6, align 8
  %78 = getelementptr inbounds %struct.ipmi_recv_msg, %struct.ipmi_recv_msg* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 3
  store i32 %76, i32* %79, align 8
  %80 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %5, align 8
  %81 = getelementptr inbounds %struct.ipmi_smi_msg, %struct.ipmi_smi_msg* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = sub nsw i64 %82, 2
  %84 = load %struct.ipmi_recv_msg*, %struct.ipmi_recv_msg** %6, align 8
  %85 = getelementptr inbounds %struct.ipmi_recv_msg, %struct.ipmi_recv_msg* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 2
  store i64 %83, i64* %86, align 8
  %87 = load %struct.ipmi_smi*, %struct.ipmi_smi** %4, align 8
  %88 = load %struct.ipmi_recv_msg*, %struct.ipmi_recv_msg** %6, align 8
  %89 = call i32 @deliver_local_response(%struct.ipmi_smi* %87, %struct.ipmi_recv_msg* %88)
  store i32 0, i32* %3, align 4
  br label %90

90:                                               ; preds = %19, %14
  %91 = load i32, i32* %3, align 4
  ret i32 %91
}

declare dso_local i32 @dev_warn(i32, i8*) #1

declare dso_local i32 @memcpy(i32, i32*, i64) #1

declare dso_local i32 @deliver_local_response(%struct.ipmi_smi*, %struct.ipmi_recv_msg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
