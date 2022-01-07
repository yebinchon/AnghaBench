; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_64_mmu_radix.c_kvmppc_mmu_radix_xlate.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_64_mmu_radix.c_kvmppc_mmu_radix_xlate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { %struct.TYPE_6__, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i64, i64, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.kvmppc_pte = type { i64, i64, i64 }

@EINVAL = common dso_local global i32 0, align 4
@MSR_PR = common dso_local global i32 0, align 4
@_PAGE_PRIVILEGED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kvmppc_mmu_radix_xlate(%struct.kvm_vcpu* %0, i32 %1, %struct.kvmppc_pte* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.kvm_vcpu*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.kvmppc_pte*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.kvmppc_pte* %2, %struct.kvmppc_pte** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %15 = load i32, i32* %8, align 4
  %16 = ashr i32 %15, 62
  switch i32 %16, label %23 [
    i32 0, label %17
    i32 3, label %22
  ]

17:                                               ; preds = %5
  %18 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %19 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  store i32 %21, i32* %12, align 4
  br label %26

22:                                               ; preds = %5
  store i32 0, i32* %12, align 4
  br label %26

23:                                               ; preds = %5
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %6, align 4
  br label %99

26:                                               ; preds = %22, %17
  %27 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %28 = load i32, i32* %8, align 4
  %29 = load %struct.kvmppc_pte*, %struct.kvmppc_pte** %9, align 8
  %30 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %31 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %30, i32 0, i32 1
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %12, align 4
  %37 = call i32 @kvmppc_mmu_radix_translate_table(%struct.kvm_vcpu* %27, i32 %28, %struct.kvmppc_pte* %29, i32 %35, i32 %36, i32* %13)
  store i32 %37, i32* %14, align 4
  %38 = load i32, i32* %14, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %26
  %41 = load i32, i32* %14, align 4
  store i32 %41, i32* %6, align 4
  br label %99

42:                                               ; preds = %26
  %43 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %44 = call i32 @kvmppc_get_msr(%struct.kvm_vcpu* %43)
  %45 = load i32, i32* @MSR_PR, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %61

48:                                               ; preds = %42
  %49 = load i32, i32* %13, align 4
  %50 = load i32, i32* @_PAGE_PRIVILEGED, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %60

53:                                               ; preds = %48
  %54 = load %struct.kvmppc_pte*, %struct.kvmppc_pte** %9, align 8
  %55 = getelementptr inbounds %struct.kvmppc_pte, %struct.kvmppc_pte* %54, i32 0, i32 2
  store i64 0, i64* %55, align 8
  %56 = load %struct.kvmppc_pte*, %struct.kvmppc_pte** %9, align 8
  %57 = getelementptr inbounds %struct.kvmppc_pte, %struct.kvmppc_pte* %56, i32 0, i32 1
  store i64 0, i64* %57, align 8
  %58 = load %struct.kvmppc_pte*, %struct.kvmppc_pte** %9, align 8
  %59 = getelementptr inbounds %struct.kvmppc_pte, %struct.kvmppc_pte* %58, i32 0, i32 0
  store i64 0, i64* %59, align 8
  br label %60

60:                                               ; preds = %53, %48
  br label %98

61:                                               ; preds = %42
  %62 = load i32, i32* %13, align 4
  %63 = load i32, i32* @_PAGE_PRIVILEGED, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %97, label %66

66:                                               ; preds = %61
  %67 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %68 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = and i64 %70, 4611686018427387904
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %66
  %74 = load %struct.kvmppc_pte*, %struct.kvmppc_pte** %9, align 8
  %75 = getelementptr inbounds %struct.kvmppc_pte, %struct.kvmppc_pte* %74, i32 0, i32 2
  store i64 0, i64* %75, align 8
  br label %76

76:                                               ; preds = %73, %66
  %77 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %78 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = and i64 %80, -9223372036854775808
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %76
  %84 = load %struct.kvmppc_pte*, %struct.kvmppc_pte** %9, align 8
  %85 = getelementptr inbounds %struct.kvmppc_pte, %struct.kvmppc_pte* %84, i32 0, i32 1
  store i64 0, i64* %85, align 8
  br label %86

86:                                               ; preds = %83, %76
  %87 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %88 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = and i64 %90, 4611686018427387904
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %86
  %94 = load %struct.kvmppc_pte*, %struct.kvmppc_pte** %9, align 8
  %95 = getelementptr inbounds %struct.kvmppc_pte, %struct.kvmppc_pte* %94, i32 0, i32 0
  store i64 0, i64* %95, align 8
  br label %96

96:                                               ; preds = %93, %86
  br label %97

97:                                               ; preds = %96, %61
  br label %98

98:                                               ; preds = %97, %60
  store i32 0, i32* %6, align 4
  br label %99

99:                                               ; preds = %98, %40, %23
  %100 = load i32, i32* %6, align 4
  ret i32 %100
}

declare dso_local i32 @kvmppc_mmu_radix_translate_table(%struct.kvm_vcpu*, i32, %struct.kvmppc_pte*, i32, i32, i32*) #1

declare dso_local i32 @kvmppc_get_msr(%struct.kvm_vcpu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
