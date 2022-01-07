; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/ipmi/extr_ipmi_msghandler.c_bmc_device_id_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/ipmi/extr_ipmi_msghandler.c_bmc_device_id_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipmi_smi = type { i32, %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.ipmi_recv_msg = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i64, i64, i32, i32 }
%struct.TYPE_4__ = type { i64 }

@IPMI_SYSTEM_INTERFACE_ADDR_TYPE = common dso_local global i64 0, align 8
@IPMI_NETFN_APP_RESPONSE = common dso_local global i64 0, align 8
@IPMI_GET_DEVICE_ID_CMD = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [53 x i8] c"invalid device_id msg: addr_type=%d netfn=%x cmd=%x\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"device id demangle failed: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ipmi_smi*, %struct.ipmi_recv_msg*)* @bmc_device_id_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bmc_device_id_handler(%struct.ipmi_smi* %0, %struct.ipmi_recv_msg* %1) #0 {
  %3 = alloca %struct.ipmi_smi*, align 8
  %4 = alloca %struct.ipmi_recv_msg*, align 8
  %5 = alloca i32, align 4
  store %struct.ipmi_smi* %0, %struct.ipmi_smi** %3, align 8
  store %struct.ipmi_recv_msg* %1, %struct.ipmi_recv_msg** %4, align 8
  %6 = load %struct.ipmi_recv_msg*, %struct.ipmi_recv_msg** %4, align 8
  %7 = getelementptr inbounds %struct.ipmi_recv_msg, %struct.ipmi_recv_msg* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @IPMI_SYSTEM_INTERFACE_ADDR_TYPE, align 8
  %11 = icmp ne i64 %9, %10
  br i1 %11, label %26, label %12

12:                                               ; preds = %2
  %13 = load %struct.ipmi_recv_msg*, %struct.ipmi_recv_msg** %4, align 8
  %14 = getelementptr inbounds %struct.ipmi_recv_msg, %struct.ipmi_recv_msg* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @IPMI_NETFN_APP_RESPONSE, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %26, label %19

19:                                               ; preds = %12
  %20 = load %struct.ipmi_recv_msg*, %struct.ipmi_recv_msg** %4, align 8
  %21 = getelementptr inbounds %struct.ipmi_recv_msg, %struct.ipmi_recv_msg* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @IPMI_GET_DEVICE_ID_CMD, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %44

26:                                               ; preds = %19, %12, %2
  %27 = load %struct.ipmi_smi*, %struct.ipmi_smi** %3, align 8
  %28 = getelementptr inbounds %struct.ipmi_smi, %struct.ipmi_smi* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.ipmi_recv_msg*, %struct.ipmi_recv_msg** %4, align 8
  %31 = getelementptr inbounds %struct.ipmi_recv_msg, %struct.ipmi_recv_msg* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = trunc i64 %33 to i32
  %35 = load %struct.ipmi_recv_msg*, %struct.ipmi_recv_msg** %4, align 8
  %36 = getelementptr inbounds %struct.ipmi_recv_msg, %struct.ipmi_recv_msg* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.ipmi_recv_msg*, %struct.ipmi_recv_msg** %4, align 8
  %40 = getelementptr inbounds %struct.ipmi_recv_msg, %struct.ipmi_recv_msg* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = call i32 (i32, i8*, i32, ...) @dev_warn(i32 %29, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i32 %34, i64 %38, i64 %42)
  br label %88

44:                                               ; preds = %19
  %45 = load %struct.ipmi_recv_msg*, %struct.ipmi_recv_msg** %4, align 8
  %46 = getelementptr inbounds %struct.ipmi_recv_msg, %struct.ipmi_recv_msg* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.ipmi_recv_msg*, %struct.ipmi_recv_msg** %4, align 8
  %50 = getelementptr inbounds %struct.ipmi_recv_msg, %struct.ipmi_recv_msg* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.ipmi_recv_msg*, %struct.ipmi_recv_msg** %4, align 8
  %54 = getelementptr inbounds %struct.ipmi_recv_msg, %struct.ipmi_recv_msg* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.ipmi_recv_msg*, %struct.ipmi_recv_msg** %4, align 8
  %58 = getelementptr inbounds %struct.ipmi_recv_msg, %struct.ipmi_recv_msg* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.ipmi_smi*, %struct.ipmi_smi** %3, align 8
  %62 = getelementptr inbounds %struct.ipmi_smi, %struct.ipmi_smi* %61, i32 0, i32 1
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 1
  %65 = call i32 @ipmi_demangle_device_id(i64 %48, i64 %52, i32 %56, i32 %60, i32* %64)
  store i32 %65, i32* %5, align 4
  %66 = load i32, i32* %5, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %78

68:                                               ; preds = %44
  %69 = load %struct.ipmi_smi*, %struct.ipmi_smi** %3, align 8
  %70 = getelementptr inbounds %struct.ipmi_smi, %struct.ipmi_smi* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* %5, align 4
  %73 = call i32 (i32, i8*, i32, ...) @dev_warn(i32 %71, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %72)
  %74 = load %struct.ipmi_smi*, %struct.ipmi_smi** %3, align 8
  %75 = getelementptr inbounds %struct.ipmi_smi, %struct.ipmi_smi* %74, i32 0, i32 1
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 0
  store i32 0, i32* %77, align 4
  br label %84

78:                                               ; preds = %44
  %79 = call i32 (...) @smp_wmb()
  %80 = load %struct.ipmi_smi*, %struct.ipmi_smi** %3, align 8
  %81 = getelementptr inbounds %struct.ipmi_smi, %struct.ipmi_smi* %80, i32 0, i32 1
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 0
  store i32 1, i32* %83, align 4
  br label %84

84:                                               ; preds = %78, %68
  %85 = load %struct.ipmi_smi*, %struct.ipmi_smi** %3, align 8
  %86 = getelementptr inbounds %struct.ipmi_smi, %struct.ipmi_smi* %85, i32 0, i32 0
  %87 = call i32 @wake_up(i32* %86)
  br label %88

88:                                               ; preds = %84, %26
  ret void
}

declare dso_local i32 @dev_warn(i32, i8*, i32, ...) #1

declare dso_local i32 @ipmi_demangle_device_id(i64, i64, i32, i32, i32*) #1

declare dso_local i32 @smp_wmb(...) #1

declare dso_local i32 @wake_up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
