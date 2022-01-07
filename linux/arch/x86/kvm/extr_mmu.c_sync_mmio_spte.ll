; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_mmu.c_sync_mmio_spte.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_mmu.c_sync_mmio_spte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm_vcpu*, i32*, i64, i32, i32*)* @sync_mmio_spte to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sync_mmio_spte(%struct.kvm_vcpu* %0, i32* %1, i64 %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.kvm_vcpu*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %7, align 8
  store i32* %1, i32** %8, align 8
  store i64 %2, i64* %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %12 = load i32*, i32** %8, align 8
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @is_mmio_spte(i32 %13)
  %15 = call i64 @unlikely(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %35

17:                                               ; preds = %5
  %18 = load i64, i64* %9, align 8
  %19 = load i32*, i32** %8, align 8
  %20 = load i32, i32* %19, align 4
  %21 = call i64 @get_mmio_spte_gfn(i32 %20)
  %22 = icmp ne i64 %18, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %17
  %24 = load i32*, i32** %8, align 8
  %25 = call i32 @mmu_spte_clear_no_track(i32* %24)
  store i32 1, i32* %6, align 4
  br label %36

26:                                               ; preds = %17
  %27 = load i32*, i32** %11, align 8
  %28 = load i32, i32* %27, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %27, align 4
  %30 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %31 = load i32*, i32** %8, align 8
  %32 = load i64, i64* %9, align 8
  %33 = load i32, i32* %10, align 4
  %34 = call i32 @mark_mmio_spte(%struct.kvm_vcpu* %30, i32* %31, i64 %32, i32 %33)
  store i32 1, i32* %6, align 4
  br label %36

35:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %36

36:                                               ; preds = %35, %26, %23
  %37 = load i32, i32* %6, align 4
  ret i32 %37
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @is_mmio_spte(i32) #1

declare dso_local i64 @get_mmio_spte_gfn(i32) #1

declare dso_local i32 @mmu_spte_clear_no_track(i32*) #1

declare dso_local i32 @mark_mmio_spte(%struct.kvm_vcpu*, i32*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
