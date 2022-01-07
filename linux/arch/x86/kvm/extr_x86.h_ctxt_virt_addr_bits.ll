; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_x86.h_ctxt_virt_addr_bits.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_x86.h_ctxt_virt_addr_bits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.x86_emulate_ctxt = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.x86_emulate_ctxt*, i32)* }

@X86_CR4_LA57 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.x86_emulate_ctxt*)* @ctxt_virt_addr_bits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ctxt_virt_addr_bits(%struct.x86_emulate_ctxt* %0) #0 {
  %2 = alloca %struct.x86_emulate_ctxt*, align 8
  store %struct.x86_emulate_ctxt* %0, %struct.x86_emulate_ctxt** %2, align 8
  %3 = load %struct.x86_emulate_ctxt*, %struct.x86_emulate_ctxt** %2, align 8
  %4 = getelementptr inbounds %struct.x86_emulate_ctxt, %struct.x86_emulate_ctxt* %3, i32 0, i32 0
  %5 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load i32 (%struct.x86_emulate_ctxt*, i32)*, i32 (%struct.x86_emulate_ctxt*, i32)** %6, align 8
  %8 = load %struct.x86_emulate_ctxt*, %struct.x86_emulate_ctxt** %2, align 8
  %9 = call i32 %7(%struct.x86_emulate_ctxt* %8, i32 4)
  %10 = load i32, i32* @X86_CR4_LA57, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  %13 = zext i1 %12 to i64
  %14 = select i1 %12, i32 57, i32 48
  ret i32 %14
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
