; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/tpm/eventlog/extr_tpm2.c_calc_tpm2_event_size.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/tpm/eventlog/extr_tpm2.c_calc_tpm2_event_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcg_pcr_event2_head = type { i32 }
%struct.tcg_pcr_event = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.tcg_pcr_event2_head*, %struct.tcg_pcr_event*)* @calc_tpm2_event_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @calc_tpm2_event_size(%struct.tcg_pcr_event2_head* %0, %struct.tcg_pcr_event* %1) #0 {
  %3 = alloca %struct.tcg_pcr_event2_head*, align 8
  %4 = alloca %struct.tcg_pcr_event*, align 8
  store %struct.tcg_pcr_event2_head* %0, %struct.tcg_pcr_event2_head** %3, align 8
  store %struct.tcg_pcr_event* %1, %struct.tcg_pcr_event** %4, align 8
  %5 = load %struct.tcg_pcr_event2_head*, %struct.tcg_pcr_event2_head** %3, align 8
  %6 = load %struct.tcg_pcr_event*, %struct.tcg_pcr_event** %4, align 8
  %7 = call i64 @__calc_tpm2_event_size(%struct.tcg_pcr_event2_head* %5, %struct.tcg_pcr_event* %6, i32 0)
  ret i64 %7
}

declare dso_local i64 @__calc_tpm2_event_size(%struct.tcg_pcr_event2_head*, %struct.tcg_pcr_event*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
