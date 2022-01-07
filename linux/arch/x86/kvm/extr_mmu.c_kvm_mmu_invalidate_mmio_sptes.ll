; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_mmu.c_kvm_mmu_invalidate_mmio_sptes.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_mmu.c_kvm_mmu_invalidate_mmio_sptes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm = type { i32 }

@KVM_MEMSLOT_GEN_UPDATE_IN_PROGRESS = common dso_local global i32 0, align 4
@MMIO_SPTE_GEN_MASK = common dso_local global i32 0, align 4
@KVM_ADDRESS_SPACE_NUM = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [58 x i8] c"kvm: zapping shadow pages for mmio generation wraparound\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kvm_mmu_invalidate_mmio_sptes(%struct.kvm* %0, i32 %1) #0 {
  %3 = alloca %struct.kvm*, align 8
  %4 = alloca i32, align 4
  store %struct.kvm* %0, %struct.kvm** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = load i32, i32* @KVM_MEMSLOT_GEN_UPDATE_IN_PROGRESS, align 4
  %7 = and i32 %5, %6
  %8 = call i32 @WARN_ON(i32 %7)
  %9 = load i32, i32* @MMIO_SPTE_GEN_MASK, align 4
  %10 = load i32, i32* %4, align 4
  %11 = and i32 %10, %9
  store i32 %11, i32* %4, align 4
  %12 = load i64, i64* @KVM_ADDRESS_SPACE_NUM, align 8
  %13 = trunc i64 %12 to i32
  %14 = sub nsw i32 %13, 1
  %15 = xor i32 %14, -1
  %16 = load i32, i32* %4, align 4
  %17 = and i32 %16, %15
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* %4, align 4
  %19 = icmp eq i32 %18, 0
  %20 = zext i1 %19 to i32
  %21 = call i64 @unlikely(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %2
  %24 = call i32 @kvm_debug_ratelimited(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0))
  %25 = load %struct.kvm*, %struct.kvm** %3, align 8
  %26 = call i32 @kvm_mmu_zap_all_fast(%struct.kvm* %25)
  br label %27

27:                                               ; preds = %23, %2
  ret void
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @kvm_debug_ratelimited(i8*) #1

declare dso_local i32 @kvm_mmu_zap_all_fast(%struct.kvm*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
