; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/ipmi/extr_ipmi_si_intf.c_start_clear_flags.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/ipmi/extr_ipmi_si_intf.c_start_clear_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smi_info = type { i32 }

@IPMI_NETFN_APP_REQUEST = common dso_local global i32 0, align 4
@IPMI_CLEAR_MSG_FLAGS_CMD = common dso_local global i8 0, align 1
@WDT_PRE_TIMEOUT_INT = common dso_local global i8 0, align 1
@SI_CLEARING_FLAGS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.smi_info*)* @start_clear_flags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @start_clear_flags(%struct.smi_info* %0) #0 {
  %2 = alloca %struct.smi_info*, align 8
  %3 = alloca [3 x i8], align 1
  store %struct.smi_info* %0, %struct.smi_info** %2, align 8
  %4 = load i32, i32* @IPMI_NETFN_APP_REQUEST, align 4
  %5 = shl i32 %4, 2
  %6 = trunc i32 %5 to i8
  %7 = getelementptr inbounds [3 x i8], [3 x i8]* %3, i64 0, i64 0
  store i8 %6, i8* %7, align 1
  %8 = load i8, i8* @IPMI_CLEAR_MSG_FLAGS_CMD, align 1
  %9 = getelementptr inbounds [3 x i8], [3 x i8]* %3, i64 0, i64 1
  store i8 %8, i8* %9, align 1
  %10 = load i8, i8* @WDT_PRE_TIMEOUT_INT, align 1
  %11 = getelementptr inbounds [3 x i8], [3 x i8]* %3, i64 0, i64 2
  store i8 %10, i8* %11, align 1
  %12 = load %struct.smi_info*, %struct.smi_info** %2, align 8
  %13 = getelementptr inbounds [3 x i8], [3 x i8]* %3, i64 0, i64 0
  %14 = call i32 @start_new_msg(%struct.smi_info* %12, i8* %13, i32 3)
  %15 = load i32, i32* @SI_CLEARING_FLAGS, align 4
  %16 = load %struct.smi_info*, %struct.smi_info** %2, align 8
  %17 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 4
  ret void
}

declare dso_local i32 @start_new_msg(%struct.smi_info*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
