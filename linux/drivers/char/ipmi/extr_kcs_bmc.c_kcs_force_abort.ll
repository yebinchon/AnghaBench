; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/ipmi/extr_kcs_bmc.c_kcs_force_abort.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/ipmi/extr_kcs_bmc.c_kcs_force_abort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kcs_bmc = type { i32, i64, i32 }

@ERROR_STATE = common dso_local global i32 0, align 4
@KCS_ZERO_DATA = common dso_local global i32 0, align 4
@KCS_PHASE_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kcs_bmc*)* @kcs_force_abort to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kcs_force_abort(%struct.kcs_bmc* %0) #0 {
  %2 = alloca %struct.kcs_bmc*, align 8
  store %struct.kcs_bmc* %0, %struct.kcs_bmc** %2, align 8
  %3 = load %struct.kcs_bmc*, %struct.kcs_bmc** %2, align 8
  %4 = load i32, i32* @ERROR_STATE, align 4
  %5 = call i32 @set_state(%struct.kcs_bmc* %3, i32 %4)
  %6 = load %struct.kcs_bmc*, %struct.kcs_bmc** %2, align 8
  %7 = call i32 @read_data(%struct.kcs_bmc* %6)
  %8 = load %struct.kcs_bmc*, %struct.kcs_bmc** %2, align 8
  %9 = load i32, i32* @KCS_ZERO_DATA, align 4
  %10 = call i32 @write_data(%struct.kcs_bmc* %8, i32 %9)
  %11 = load i32, i32* @KCS_PHASE_ERROR, align 4
  %12 = load %struct.kcs_bmc*, %struct.kcs_bmc** %2, align 8
  %13 = getelementptr inbounds %struct.kcs_bmc, %struct.kcs_bmc* %12, i32 0, i32 2
  store i32 %11, i32* %13, align 8
  %14 = load %struct.kcs_bmc*, %struct.kcs_bmc** %2, align 8
  %15 = getelementptr inbounds %struct.kcs_bmc, %struct.kcs_bmc* %14, i32 0, i32 0
  store i32 0, i32* %15, align 8
  %16 = load %struct.kcs_bmc*, %struct.kcs_bmc** %2, align 8
  %17 = getelementptr inbounds %struct.kcs_bmc, %struct.kcs_bmc* %16, i32 0, i32 1
  store i64 0, i64* %17, align 8
  ret void
}

declare dso_local i32 @set_state(%struct.kcs_bmc*, i32) #1

declare dso_local i32 @read_data(%struct.kcs_bmc*) #1

declare dso_local i32 @write_data(%struct.kcs_bmc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
