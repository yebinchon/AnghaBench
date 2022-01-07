; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_e500_mmu.c_tlbilx_all.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_e500_mmu.c_tlbilx_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvmppc_vcpu_e500 = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.kvm_book3e_206_tlb_entry = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kvmppc_vcpu_e500*, i32, i32, i32)* @tlbilx_all to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tlbilx_all(%struct.kvmppc_vcpu_e500* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.kvmppc_vcpu_e500*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.kvm_book3e_206_tlb_entry*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.kvmppc_vcpu_e500* %0, %struct.kvmppc_vcpu_e500** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %11, align 4
  br label %12

12:                                               ; preds = %46, %4
  %13 = load i32, i32* %11, align 4
  %14 = load %struct.kvmppc_vcpu_e500*, %struct.kvmppc_vcpu_e500** %5, align 8
  %15 = getelementptr inbounds %struct.kvmppc_vcpu_e500, %struct.kvmppc_vcpu_e500* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = load i32, i32* %6, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp slt i32 %13, %21
  br i1 %22, label %23, label %49

23:                                               ; preds = %12
  %24 = load %struct.kvmppc_vcpu_e500*, %struct.kvmppc_vcpu_e500** %5, align 8
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* %11, align 4
  %27 = call %struct.kvm_book3e_206_tlb_entry* @get_entry(%struct.kvmppc_vcpu_e500* %24, i32 %25, i32 %26)
  store %struct.kvm_book3e_206_tlb_entry* %27, %struct.kvm_book3e_206_tlb_entry** %9, align 8
  %28 = load %struct.kvm_book3e_206_tlb_entry*, %struct.kvm_book3e_206_tlb_entry** %9, align 8
  %29 = call i32 @get_tlb_tid(%struct.kvm_book3e_206_tlb_entry* %28)
  store i32 %29, i32* %10, align 4
  %30 = load i32, i32* %8, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %36, label %32

32:                                               ; preds = %23
  %33 = load i32, i32* %10, align 4
  %34 = load i32, i32* %7, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %45

36:                                               ; preds = %32, %23
  %37 = load %struct.kvmppc_vcpu_e500*, %struct.kvmppc_vcpu_e500** %5, align 8
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* %11, align 4
  %40 = call i32 @inval_gtlbe_on_host(%struct.kvmppc_vcpu_e500* %37, i32 %38, i32 %39)
  %41 = load %struct.kvmppc_vcpu_e500*, %struct.kvmppc_vcpu_e500** %5, align 8
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* %11, align 4
  %44 = call i32 @kvmppc_e500_gtlbe_invalidate(%struct.kvmppc_vcpu_e500* %41, i32 %42, i32 %43)
  br label %45

45:                                               ; preds = %36, %32
  br label %46

46:                                               ; preds = %45
  %47 = load i32, i32* %11, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %11, align 4
  br label %12

49:                                               ; preds = %12
  ret void
}

declare dso_local %struct.kvm_book3e_206_tlb_entry* @get_entry(%struct.kvmppc_vcpu_e500*, i32, i32) #1

declare dso_local i32 @get_tlb_tid(%struct.kvm_book3e_206_tlb_entry*) #1

declare dso_local i32 @inval_gtlbe_on_host(%struct.kvmppc_vcpu_e500*, i32, i32) #1

declare dso_local i32 @kvmppc_e500_gtlbe_invalidate(%struct.kvmppc_vcpu_e500*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
