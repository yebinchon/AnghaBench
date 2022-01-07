; ModuleID = '/home/carl/AnghaBench/linux/arch/alpha/kernel/extr_err_marvel.c_marvel_print_680_frame.c'
source_filename = "/home/carl/AnghaBench/linux/arch/alpha/kernel/extr_err_marvel.c_marvel_print_680_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ev7_lf_subpackets = type { %struct.ev7_pal_environmental_subpacket** }
%struct.ev7_pal_environmental_subpacket = type { i8*, i32, i32, i32, i32 }

@EL_TYPE__PAL__ENV__AIRMOVER_FAN = common dso_local global i32 0, align 4
@EL_TYPE__PAL__ENV__AMBIENT_TEMPERATURE = common dso_local global i32 0, align 4
@EL_TYPE__PAL__ENV__HOT_PLUG = common dso_local global i32 0, align 4
@EL_TYPE__PAL__ENV__INTRUSION = common dso_local global i32 0, align 4
@EL_TYPE__PAL__ENV__LAN = common dso_local global i32 0, align 4
@EL_TYPE__PAL__ENV__POWER_SUPPLY = common dso_local global i32 0, align 4
@EL_TYPE__PAL__ENV__VOLTAGE = common dso_local global i32 0, align 4
@err_print_prefix = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ev7_lf_subpackets*)* @marvel_print_680_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @marvel_print_680_frame(%struct.ev7_lf_subpackets* %0) #0 {
  %2 = alloca %struct.ev7_lf_subpackets*, align 8
  store %struct.ev7_lf_subpackets* %0, %struct.ev7_lf_subpackets** %2, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
