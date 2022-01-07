; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_hv.c_kvmppc_switch_mmu_to_radix.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_hv.c_kvmppc_switch_mmu_to_radix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@LPCR_UPRT = common dso_local global i32 0, align 4
@LPCR_GTSE = common dso_local global i32 0, align 4
@LPCR_HR = common dso_local global i32 0, align 4
@LPCR_VPM1 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kvmppc_switch_mmu_to_radix(%struct.kvm* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.kvm*, align 8
  %4 = alloca i32, align 4
  store %struct.kvm* %0, %struct.kvm** %3, align 8
  %5 = load %struct.kvm*, %struct.kvm** %3, align 8
  %6 = call i32 @kvmppc_init_vm_radix(%struct.kvm* %5)
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = load i32, i32* %4, align 4
  store i32 %10, i32* %2, align 4
  br label %41

11:                                               ; preds = %1
  %12 = load %struct.kvm*, %struct.kvm** %3, align 8
  %13 = call i32 @kvmppc_rmap_reset(%struct.kvm* %12)
  %14 = load %struct.kvm*, %struct.kvm** %3, align 8
  %15 = getelementptr inbounds %struct.kvm, %struct.kvm* %14, i32 0, i32 1
  %16 = call i32 @spin_lock(i32* %15)
  %17 = load %struct.kvm*, %struct.kvm** %3, align 8
  %18 = getelementptr inbounds %struct.kvm, %struct.kvm* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  store i32 1, i32* %19, align 4
  %20 = load %struct.kvm*, %struct.kvm** %3, align 8
  %21 = getelementptr inbounds %struct.kvm, %struct.kvm* %20, i32 0, i32 1
  %22 = call i32 @spin_unlock(i32* %21)
  %23 = load %struct.kvm*, %struct.kvm** %3, align 8
  %24 = getelementptr inbounds %struct.kvm, %struct.kvm* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  %26 = call i32 @kvmppc_free_hpt(i32* %25)
  %27 = load %struct.kvm*, %struct.kvm** %3, align 8
  %28 = load i32, i32* @LPCR_UPRT, align 4
  %29 = load i32, i32* @LPCR_GTSE, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* @LPCR_HR, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* @LPCR_VPM1, align 4
  %34 = load i32, i32* @LPCR_UPRT, align 4
  %35 = or i32 %33, %34
  %36 = load i32, i32* @LPCR_GTSE, align 4
  %37 = or i32 %35, %36
  %38 = load i32, i32* @LPCR_HR, align 4
  %39 = or i32 %37, %38
  %40 = call i32 @kvmppc_update_lpcr(%struct.kvm* %27, i32 %32, i32 %39)
  store i32 0, i32* %2, align 4
  br label %41

41:                                               ; preds = %11, %9
  %42 = load i32, i32* %2, align 4
  ret i32 %42
}

declare dso_local i32 @kvmppc_init_vm_radix(%struct.kvm*) #1

declare dso_local i32 @kvmppc_rmap_reset(%struct.kvm*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @kvmppc_free_hpt(i32*) #1

declare dso_local i32 @kvmppc_update_lpcr(%struct.kvm*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
