; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_mmu.c_kvm_set_mmio_spte_mask.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_mmu.c_kvm_set_mmio_spte_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CONFIG_X86_64 = common dso_local global i32 0, align 4
@shadow_phys_bits = common dso_local global i32 0, align 4
@ACC_WRITE_MASK = common dso_local global i32 0, align 4
@ACC_USER_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @kvm_set_mmio_spte_mask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kvm_set_mmio_spte_mask() #0 {
  %1 = alloca i64, align 8
  store i64 2251799813685248, i64* %1, align 8
  %2 = load i64, i64* %1, align 8
  %3 = or i64 %2, 1
  store i64 %3, i64* %1, align 8
  %4 = load i32, i32* @CONFIG_X86_64, align 4
  %5 = call i64 @IS_ENABLED(i32 %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %13

7:                                                ; preds = %0
  %8 = load i32, i32* @shadow_phys_bits, align 4
  %9 = icmp eq i32 %8, 52
  br i1 %9, label %10, label %13

10:                                               ; preds = %7
  %11 = load i64, i64* %1, align 8
  %12 = and i64 %11, -2
  store i64 %12, i64* %1, align 8
  br label %13

13:                                               ; preds = %10, %7, %0
  %14 = load i64, i64* %1, align 8
  %15 = load i64, i64* %1, align 8
  %16 = load i32, i32* @ACC_WRITE_MASK, align 4
  %17 = load i32, i32* @ACC_USER_MASK, align 4
  %18 = or i32 %16, %17
  %19 = call i32 @kvm_mmu_set_mmio_spte_mask(i64 %14, i64 %15, i32 %18)
  ret void
}

declare dso_local i64 @IS_ENABLED(i32) #1

declare dso_local i32 @kvm_mmu_set_mmio_spte_mask(i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
