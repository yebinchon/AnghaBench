; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/hyperv/extr_hv_init.c_hyperv_stop_tsc_emulation.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/hyperv/extr_hv_init.c_hyperv_stop_tsc_emulation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hv_tsc_emulation_status = type { i64 }

@HV_X64_MSR_TSC_EMULATION_STATUS = common dso_local global i32 0, align 4
@HV_X64_MSR_TSC_FREQUENCY = common dso_local global i32 0, align 4
@tsc_khz = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hyperv_stop_tsc_emulation() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.hv_tsc_emulation_status, align 8
  %3 = load i32, i32* @HV_X64_MSR_TSC_EMULATION_STATUS, align 4
  %4 = bitcast %struct.hv_tsc_emulation_status* %2 to i32*
  %5 = load i32, i32* %4, align 8
  %6 = call i32 @rdmsrl(i32 %3, i32 %5)
  %7 = getelementptr inbounds %struct.hv_tsc_emulation_status, %struct.hv_tsc_emulation_status* %2, i32 0, i32 0
  store i64 0, i64* %7, align 8
  %8 = load i32, i32* @HV_X64_MSR_TSC_EMULATION_STATUS, align 4
  %9 = bitcast %struct.hv_tsc_emulation_status* %2 to i32*
  %10 = load i32, i32* %9, align 8
  %11 = call i32 @wrmsrl(i32 %8, i32 %10)
  %12 = load i32, i32* @HV_X64_MSR_TSC_FREQUENCY, align 4
  %13 = load i32, i32* %1, align 4
  %14 = call i32 @rdmsrl(i32 %12, i32 %13)
  %15 = load i32, i32* %1, align 4
  %16 = call i32 @div64_u64(i32 %15, i32 1000)
  store i32 %16, i32* @tsc_khz, align 4
  ret void
}

declare dso_local i32 @rdmsrl(i32, i32) #1

declare dso_local i32 @wrmsrl(i32, i32) #1

declare dso_local i32 @div64_u64(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
