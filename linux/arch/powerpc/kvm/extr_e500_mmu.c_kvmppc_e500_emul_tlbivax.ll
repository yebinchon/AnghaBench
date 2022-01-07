; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_e500_mmu.c_kvmppc_e500_emul_tlbivax.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_e500_mmu.c_kvmppc_e500_emul_tlbivax.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i32 }
%struct.kvmppc_vcpu_e500 = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@EMULATE_DONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kvmppc_e500_emul_tlbivax(%struct.kvm_vcpu* %0, i32 %1) #0 {
  %3 = alloca %struct.kvm_vcpu*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.kvmppc_vcpu_e500*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %10 = call %struct.kvmppc_vcpu_e500* @to_e500(%struct.kvm_vcpu* %9)
  store %struct.kvmppc_vcpu_e500* %10, %struct.kvmppc_vcpu_e500** %5, align 8
  %11 = load i32, i32* %4, align 4
  %12 = ashr i32 %11, 2
  %13 = and i32 %12, 1
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %4, align 4
  %15 = ashr i32 %14, 3
  %16 = and i32 %15, 1
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %6, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %40

19:                                               ; preds = %2
  store i32 0, i32* %7, align 4
  br label %20

20:                                               ; preds = %36, %19
  %21 = load i32, i32* %7, align 4
  %22 = load %struct.kvmppc_vcpu_e500*, %struct.kvmppc_vcpu_e500** %5, align 8
  %23 = getelementptr inbounds %struct.kvmppc_vcpu_e500, %struct.kvmppc_vcpu_e500* %22, i32 0, i32 1
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = load i32, i32* %8, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp slt i32 %21, %29
  br i1 %30, label %31, label %39

31:                                               ; preds = %20
  %32 = load %struct.kvmppc_vcpu_e500*, %struct.kvmppc_vcpu_e500** %5, align 8
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* %7, align 4
  %35 = call i32 @kvmppc_e500_gtlbe_invalidate(%struct.kvmppc_vcpu_e500* %32, i32 %33, i32 %34)
  br label %36

36:                                               ; preds = %31
  %37 = load i32, i32* %7, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %7, align 4
  br label %20

39:                                               ; preds = %20
  br label %57

40:                                               ; preds = %2
  %41 = load i32, i32* %4, align 4
  %42 = and i32 %41, -4096
  store i32 %42, i32* %4, align 4
  %43 = load %struct.kvmppc_vcpu_e500*, %struct.kvmppc_vcpu_e500** %5, align 8
  %44 = load i32, i32* %4, align 4
  %45 = load i32, i32* %8, align 4
  %46 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %47 = call i32 @get_cur_pid(%struct.kvm_vcpu* %46)
  %48 = call i32 @kvmppc_e500_tlb_index(%struct.kvmppc_vcpu_e500* %43, i32 %44, i32 %45, i32 %47, i32 -1)
  store i32 %48, i32* %7, align 4
  %49 = load i32, i32* %7, align 4
  %50 = icmp sge i32 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %40
  %52 = load %struct.kvmppc_vcpu_e500*, %struct.kvmppc_vcpu_e500** %5, align 8
  %53 = load i32, i32* %8, align 4
  %54 = load i32, i32* %7, align 4
  %55 = call i32 @kvmppc_e500_gtlbe_invalidate(%struct.kvmppc_vcpu_e500* %52, i32 %53, i32 %54)
  br label %56

56:                                               ; preds = %51, %40
  br label %57

57:                                               ; preds = %56, %39
  %58 = load %struct.kvmppc_vcpu_e500*, %struct.kvmppc_vcpu_e500** %5, align 8
  %59 = getelementptr inbounds %struct.kvmppc_vcpu_e500, %struct.kvmppc_vcpu_e500* %58, i32 0, i32 0
  %60 = call i32 @kvmppc_core_flush_tlb(i32* %59)
  %61 = load i32, i32* @EMULATE_DONE, align 4
  ret i32 %61
}

declare dso_local %struct.kvmppc_vcpu_e500* @to_e500(%struct.kvm_vcpu*) #1

declare dso_local i32 @kvmppc_e500_gtlbe_invalidate(%struct.kvmppc_vcpu_e500*, i32, i32) #1

declare dso_local i32 @kvmppc_e500_tlb_index(%struct.kvmppc_vcpu_e500*, i32, i32, i32, i32) #1

declare dso_local i32 @get_cur_pid(%struct.kvm_vcpu*) #1

declare dso_local i32 @kvmppc_core_flush_tlb(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
