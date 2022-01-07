; ModuleID = '/home/carl/AnghaBench/linux/arch/arm64/mm/extr_fault.c_esr_to_fault_info.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm64/mm/extr_fault.c_esr_to_fault_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fault_info = type { i32 }

@fault_info = common dso_local global %struct.fault_info* null, align 8
@ESR_ELx_FSC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.fault_info* (i32)* @esr_to_fault_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.fault_info* @esr_to_fault_info(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load %struct.fault_info*, %struct.fault_info** @fault_info, align 8
  %4 = load i32, i32* %2, align 4
  %5 = load i32, i32* @ESR_ELx_FSC, align 4
  %6 = and i32 %4, %5
  %7 = zext i32 %6 to i64
  %8 = getelementptr inbounds %struct.fault_info, %struct.fault_info* %3, i64 %7
  ret %struct.fault_info* %8
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
