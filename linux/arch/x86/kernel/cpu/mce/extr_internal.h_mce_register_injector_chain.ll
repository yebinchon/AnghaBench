; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/mce/extr_internal.h_mce_register_injector_chain.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/mce/extr_internal.h_mce_register_injector_chain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.notifier_block = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.notifier_block*)* @mce_register_injector_chain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mce_register_injector_chain(%struct.notifier_block* %0) #0 {
  %2 = alloca %struct.notifier_block*, align 8
  store %struct.notifier_block* %0, %struct.notifier_block** %2, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
