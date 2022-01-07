; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_xive.c_xive_lock_for_unmask.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_xive.c_xive_lock_for_unmask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvmppc_xive_src_block = type { i32 }
%struct.kvmppc_xive_irq_state = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kvmppc_xive_src_block*, %struct.kvmppc_xive_irq_state*)* @xive_lock_for_unmask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xive_lock_for_unmask(%struct.kvmppc_xive_src_block* %0, %struct.kvmppc_xive_irq_state* %1) #0 {
  %3 = alloca %struct.kvmppc_xive_src_block*, align 8
  %4 = alloca %struct.kvmppc_xive_irq_state*, align 8
  store %struct.kvmppc_xive_src_block* %0, %struct.kvmppc_xive_src_block** %3, align 8
  store %struct.kvmppc_xive_irq_state* %1, %struct.kvmppc_xive_irq_state** %4, align 8
  br label %5

5:                                                ; preds = %14, %2
  %6 = load %struct.kvmppc_xive_src_block*, %struct.kvmppc_xive_src_block** %3, align 8
  %7 = getelementptr inbounds %struct.kvmppc_xive_src_block, %struct.kvmppc_xive_src_block* %6, i32 0, i32 0
  %8 = call i32 @arch_spin_lock(i32* %7)
  %9 = load %struct.kvmppc_xive_irq_state*, %struct.kvmppc_xive_irq_state** %4, align 8
  %10 = getelementptr inbounds %struct.kvmppc_xive_irq_state, %struct.kvmppc_xive_irq_state* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %5
  br label %18

14:                                               ; preds = %5
  %15 = load %struct.kvmppc_xive_src_block*, %struct.kvmppc_xive_src_block** %3, align 8
  %16 = getelementptr inbounds %struct.kvmppc_xive_src_block, %struct.kvmppc_xive_src_block* %15, i32 0, i32 0
  %17 = call i32 @arch_spin_unlock(i32* %16)
  br label %5

18:                                               ; preds = %13
  ret void
}

declare dso_local i32 @arch_spin_lock(i32*) #1

declare dso_local i32 @arch_spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
