; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_mmu_hpte.c_kvmppc_mmu_pte_flush.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_mmu_hpte.c_kvmppc_mmu_pte_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kvmppc_mmu_pte_flush(%struct.kvm_vcpu* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.kvm_vcpu*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %8 = load i32, i32* %5, align 4
  %9 = load i32, i32* %6, align 4
  %10 = call i32 @trace_kvm_book3s_mmu_flush(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), %struct.kvm_vcpu* %7, i32 %8, i32 %9)
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* %5, align 4
  %13 = and i32 %12, %11
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %6, align 4
  switch i32 %14, label %26 [
    i32 -4096, label %15
    i32 268431360, label %19
    i32 0, label %23
  ]

15:                                               ; preds = %3
  %16 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @kvmppc_mmu_pte_flush_page(%struct.kvm_vcpu* %16, i32 %17)
  br label %28

19:                                               ; preds = %3
  %20 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %21 = load i32, i32* %5, align 4
  %22 = call i32 @kvmppc_mmu_pte_flush_long(%struct.kvm_vcpu* %20, i32 %21)
  br label %28

23:                                               ; preds = %3
  %24 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %25 = call i32 @kvmppc_mmu_pte_flush_all(%struct.kvm_vcpu* %24)
  br label %28

26:                                               ; preds = %3
  %27 = call i32 @WARN_ON(i32 1)
  br label %28

28:                                               ; preds = %26, %23, %19, %15
  ret void
}

declare dso_local i32 @trace_kvm_book3s_mmu_flush(i8*, %struct.kvm_vcpu*, i32, i32) #1

declare dso_local i32 @kvmppc_mmu_pte_flush_page(%struct.kvm_vcpu*, i32) #1

declare dso_local i32 @kvmppc_mmu_pte_flush_long(%struct.kvm_vcpu*, i32) #1

declare dso_local i32 @kvmppc_mmu_pte_flush_all(%struct.kvm_vcpu*) #1

declare dso_local i32 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
