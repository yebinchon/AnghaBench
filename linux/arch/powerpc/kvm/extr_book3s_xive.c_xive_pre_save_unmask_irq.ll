; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_xive.c_xive_pre_save_unmask_irq.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_xive.c_xive_pre_save_unmask_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvmppc_xive = type { i32 }
%struct.kvmppc_xive_src_block = type { i32, %struct.kvmppc_xive_irq_state* }
%struct.kvmppc_xive_irq_state = type { i64, i32 }

@MASKED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kvmppc_xive*, %struct.kvmppc_xive_src_block*, i64)* @xive_pre_save_unmask_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xive_pre_save_unmask_irq(%struct.kvmppc_xive* %0, %struct.kvmppc_xive_src_block* %1, i64 %2) #0 {
  %4 = alloca %struct.kvmppc_xive*, align 8
  %5 = alloca %struct.kvmppc_xive_src_block*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.kvmppc_xive_irq_state*, align 8
  store %struct.kvmppc_xive* %0, %struct.kvmppc_xive** %4, align 8
  store %struct.kvmppc_xive_src_block* %1, %struct.kvmppc_xive_src_block** %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load %struct.kvmppc_xive_src_block*, %struct.kvmppc_xive_src_block** %5, align 8
  %9 = getelementptr inbounds %struct.kvmppc_xive_src_block, %struct.kvmppc_xive_src_block* %8, i32 0, i32 1
  %10 = load %struct.kvmppc_xive_irq_state*, %struct.kvmppc_xive_irq_state** %9, align 8
  %11 = load i64, i64* %6, align 8
  %12 = getelementptr inbounds %struct.kvmppc_xive_irq_state, %struct.kvmppc_xive_irq_state* %10, i64 %11
  store %struct.kvmppc_xive_irq_state* %12, %struct.kvmppc_xive_irq_state** %7, align 8
  %13 = load %struct.kvmppc_xive_irq_state*, %struct.kvmppc_xive_irq_state** %7, align 8
  %14 = getelementptr inbounds %struct.kvmppc_xive_irq_state, %struct.kvmppc_xive_irq_state* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %3
  br label %39

18:                                               ; preds = %3
  %19 = load %struct.kvmppc_xive_src_block*, %struct.kvmppc_xive_src_block** %5, align 8
  %20 = load %struct.kvmppc_xive_irq_state*, %struct.kvmppc_xive_irq_state** %7, align 8
  %21 = call i32 @xive_lock_for_unmask(%struct.kvmppc_xive_src_block* %19, %struct.kvmppc_xive_irq_state* %20)
  %22 = load %struct.kvmppc_xive_irq_state*, %struct.kvmppc_xive_irq_state** %7, align 8
  %23 = getelementptr inbounds %struct.kvmppc_xive_irq_state, %struct.kvmppc_xive_irq_state* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @MASKED, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %35

27:                                               ; preds = %18
  %28 = load %struct.kvmppc_xive*, %struct.kvmppc_xive** %4, align 8
  %29 = load %struct.kvmppc_xive_src_block*, %struct.kvmppc_xive_src_block** %5, align 8
  %30 = load %struct.kvmppc_xive_irq_state*, %struct.kvmppc_xive_irq_state** %7, align 8
  %31 = load %struct.kvmppc_xive_irq_state*, %struct.kvmppc_xive_irq_state** %7, align 8
  %32 = getelementptr inbounds %struct.kvmppc_xive_irq_state, %struct.kvmppc_xive_irq_state* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = call i32 @xive_finish_unmask(%struct.kvmppc_xive* %28, %struct.kvmppc_xive_src_block* %29, %struct.kvmppc_xive_irq_state* %30, i64 %33)
  br label %35

35:                                               ; preds = %27, %18
  %36 = load %struct.kvmppc_xive_src_block*, %struct.kvmppc_xive_src_block** %5, align 8
  %37 = getelementptr inbounds %struct.kvmppc_xive_src_block, %struct.kvmppc_xive_src_block* %36, i32 0, i32 0
  %38 = call i32 @arch_spin_unlock(i32* %37)
  br label %39

39:                                               ; preds = %35, %17
  ret void
}

declare dso_local i32 @xive_lock_for_unmask(%struct.kvmppc_xive_src_block*, %struct.kvmppc_xive_irq_state*) #1

declare dso_local i32 @xive_finish_unmask(%struct.kvmppc_xive*, %struct.kvmppc_xive_src_block*, %struct.kvmppc_xive_irq_state*, i64) #1

declare dso_local i32 @arch_spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
