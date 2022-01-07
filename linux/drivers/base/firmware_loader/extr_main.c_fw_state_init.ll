; ModuleID = '/home/carl/AnghaBench/linux/drivers/base/firmware_loader/extr_main.c_fw_state_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/base/firmware_loader/extr_main.c_fw_state_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fw_priv = type { %struct.fw_state }
%struct.fw_state = type { i32, i32 }

@FW_STATUS_UNKNOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fw_priv*)* @fw_state_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fw_state_init(%struct.fw_priv* %0) #0 {
  %2 = alloca %struct.fw_priv*, align 8
  %3 = alloca %struct.fw_state*, align 8
  store %struct.fw_priv* %0, %struct.fw_priv** %2, align 8
  %4 = load %struct.fw_priv*, %struct.fw_priv** %2, align 8
  %5 = getelementptr inbounds %struct.fw_priv, %struct.fw_priv* %4, i32 0, i32 0
  store %struct.fw_state* %5, %struct.fw_state** %3, align 8
  %6 = load %struct.fw_state*, %struct.fw_state** %3, align 8
  %7 = getelementptr inbounds %struct.fw_state, %struct.fw_state* %6, i32 0, i32 1
  %8 = call i32 @init_completion(i32* %7)
  %9 = load i32, i32* @FW_STATUS_UNKNOWN, align 4
  %10 = load %struct.fw_state*, %struct.fw_state** %3, align 8
  %11 = getelementptr inbounds %struct.fw_state, %struct.fw_state* %10, i32 0, i32 0
  store i32 %9, i32* %11, align 4
  ret void
}

declare dso_local i32 @init_completion(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
