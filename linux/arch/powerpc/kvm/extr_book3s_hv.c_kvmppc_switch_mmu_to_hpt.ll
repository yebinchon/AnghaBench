; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_hv.c_kvmppc_switch_mmu_to_hpt.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_hv.c_kvmppc_switch_mmu_to_hpt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64 }

@LPCR_VPM1 = common dso_local global i32 0, align 4
@LPCR_UPRT = common dso_local global i32 0, align 4
@LPCR_GTSE = common dso_local global i32 0, align 4
@LPCR_HR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kvmppc_switch_mmu_to_hpt(%struct.kvm* %0) #0 {
  %2 = alloca %struct.kvm*, align 8
  store %struct.kvm* %0, %struct.kvm** %2, align 8
  %3 = load %struct.kvm*, %struct.kvm** %2, align 8
  %4 = call i64 @nesting_enabled(%struct.kvm* %3)
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %9

6:                                                ; preds = %1
  %7 = load %struct.kvm*, %struct.kvm** %2, align 8
  %8 = call i32 @kvmhv_release_all_nested(%struct.kvm* %7)
  br label %9

9:                                                ; preds = %6, %1
  %10 = load %struct.kvm*, %struct.kvm** %2, align 8
  %11 = call i32 @kvmppc_rmap_reset(%struct.kvm* %10)
  %12 = load %struct.kvm*, %struct.kvm** %2, align 8
  %13 = getelementptr inbounds %struct.kvm, %struct.kvm* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 1
  store i64 0, i64* %14, align 8
  %15 = load %struct.kvm*, %struct.kvm** %2, align 8
  %16 = getelementptr inbounds %struct.kvm, %struct.kvm* %15, i32 0, i32 0
  %17 = call i32 @spin_lock(i32* %16)
  %18 = load %struct.kvm*, %struct.kvm** %2, align 8
  %19 = getelementptr inbounds %struct.kvm, %struct.kvm* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  store i64 0, i64* %20, align 8
  %21 = load %struct.kvm*, %struct.kvm** %2, align 8
  %22 = getelementptr inbounds %struct.kvm, %struct.kvm* %21, i32 0, i32 0
  %23 = call i32 @spin_unlock(i32* %22)
  %24 = load %struct.kvm*, %struct.kvm** %2, align 8
  %25 = call i32 @kvmppc_free_radix(%struct.kvm* %24)
  %26 = load %struct.kvm*, %struct.kvm** %2, align 8
  %27 = load i32, i32* @LPCR_VPM1, align 4
  %28 = load i32, i32* @LPCR_VPM1, align 4
  %29 = load i32, i32* @LPCR_UPRT, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* @LPCR_GTSE, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* @LPCR_HR, align 4
  %34 = or i32 %32, %33
  %35 = call i32 @kvmppc_update_lpcr(%struct.kvm* %26, i32 %27, i32 %34)
  ret i32 0
}

declare dso_local i64 @nesting_enabled(%struct.kvm*) #1

declare dso_local i32 @kvmhv_release_all_nested(%struct.kvm*) #1

declare dso_local i32 @kvmppc_rmap_reset(%struct.kvm*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @kvmppc_free_radix(%struct.kvm*) #1

declare dso_local i32 @kvmppc_update_lpcr(%struct.kvm*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
