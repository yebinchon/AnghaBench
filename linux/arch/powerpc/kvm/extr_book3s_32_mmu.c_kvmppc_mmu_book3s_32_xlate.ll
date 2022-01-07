; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_32_mmu.c_kvmppc_mmu_book3s_32_xlate.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_32_mmu.c_kvmppc_mmu_book3s_32_xlate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.kvmppc_pte = type { i32, i32, i32, i32, i32, i32, i32 }

@MMU_PAGE_4K = common dso_local global i32 0, align 4
@MSR_PR = common dso_local global i32 0, align 4
@KVM_PAM = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm_vcpu*, i32, %struct.kvmppc_pte*, i32, i32)* @kvmppc_mmu_book3s_32_xlate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kvmppc_mmu_book3s_32_xlate(%struct.kvm_vcpu* %0, i32 %1, %struct.kvmppc_pte* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.kvm_vcpu*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.kvmppc_pte*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.kvmppc_pte* %2, %struct.kvmppc_pte** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %14 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %15 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %13, align 4
  %18 = load i32, i32* %8, align 4
  %19 = load %struct.kvmppc_pte*, %struct.kvmppc_pte** %9, align 8
  %20 = getelementptr inbounds %struct.kvmppc_pte, %struct.kvmppc_pte* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 4
  %21 = load i32, i32* @MMU_PAGE_4K, align 4
  %22 = load %struct.kvmppc_pte*, %struct.kvmppc_pte** %9, align 8
  %23 = getelementptr inbounds %struct.kvmppc_pte, %struct.kvmppc_pte* %22, i32 0, i32 6
  store i32 %21, i32* %23, align 4
  %24 = load i32, i32* %13, align 4
  %25 = call i64 @unlikely(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %73

27:                                               ; preds = %5
  %28 = load i32, i32* %8, align 4
  %29 = sext i32 %28 to i64
  %30 = and i64 %29, -4096
  %31 = load i32, i32* %13, align 4
  %32 = sext i32 %31 to i64
  %33 = and i64 %32, -4096
  %34 = icmp eq i64 %30, %33
  %35 = zext i1 %34 to i32
  %36 = call i64 @unlikely(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %73

38:                                               ; preds = %27
  %39 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %40 = call i32 @kvmppc_get_msr(%struct.kvm_vcpu* %39)
  %41 = load i32, i32* @MSR_PR, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %73, label %44

44:                                               ; preds = %38
  %45 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %46 = load i32, i32* %8, align 4
  %47 = load i32, i32* %10, align 4
  %48 = call i32 @kvmppc_mmu_book3s_32_ea_to_vp(%struct.kvm_vcpu* %45, i32 %46, i32 %47)
  %49 = load %struct.kvmppc_pte*, %struct.kvmppc_pte** %9, align 8
  %50 = getelementptr inbounds %struct.kvmppc_pte, %struct.kvmppc_pte* %49, i32 0, i32 5
  store i32 %48, i32* %50, align 4
  %51 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %52 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.kvmppc_pte*, %struct.kvmppc_pte** %9, align 8
  %56 = getelementptr inbounds %struct.kvmppc_pte, %struct.kvmppc_pte* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = and i32 %57, 4095
  %59 = or i32 %54, %58
  %60 = load %struct.kvmppc_pte*, %struct.kvmppc_pte** %9, align 8
  %61 = getelementptr inbounds %struct.kvmppc_pte, %struct.kvmppc_pte* %60, i32 0, i32 1
  store i32 %59, i32* %61, align 4
  %62 = load i32, i32* @KVM_PAM, align 4
  %63 = load %struct.kvmppc_pte*, %struct.kvmppc_pte** %9, align 8
  %64 = getelementptr inbounds %struct.kvmppc_pte, %struct.kvmppc_pte* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = and i32 %65, %62
  store i32 %66, i32* %64, align 4
  %67 = load %struct.kvmppc_pte*, %struct.kvmppc_pte** %9, align 8
  %68 = getelementptr inbounds %struct.kvmppc_pte, %struct.kvmppc_pte* %67, i32 0, i32 2
  store i32 1, i32* %68, align 4
  %69 = load %struct.kvmppc_pte*, %struct.kvmppc_pte** %9, align 8
  %70 = getelementptr inbounds %struct.kvmppc_pte, %struct.kvmppc_pte* %69, i32 0, i32 3
  store i32 1, i32* %70, align 4
  %71 = load %struct.kvmppc_pte*, %struct.kvmppc_pte** %9, align 8
  %72 = getelementptr inbounds %struct.kvmppc_pte, %struct.kvmppc_pte* %71, i32 0, i32 4
  store i32 1, i32* %72, align 4
  store i32 0, i32* %6, align 4
  br label %103

73:                                               ; preds = %38, %27, %5
  %74 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %75 = load i32, i32* %8, align 4
  %76 = load %struct.kvmppc_pte*, %struct.kvmppc_pte** %9, align 8
  %77 = load i32, i32* %10, align 4
  %78 = load i32, i32* %11, align 4
  %79 = call i32 @kvmppc_mmu_book3s_32_xlate_bat(%struct.kvm_vcpu* %74, i32 %75, %struct.kvmppc_pte* %76, i32 %77, i32 %78)
  store i32 %79, i32* %12, align 4
  %80 = load i32, i32* %12, align 4
  %81 = icmp slt i32 %80, 0
  br i1 %81, label %82, label %89

82:                                               ; preds = %73
  %83 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %84 = load i32, i32* %8, align 4
  %85 = load %struct.kvmppc_pte*, %struct.kvmppc_pte** %9, align 8
  %86 = load i32, i32* %10, align 4
  %87 = load i32, i32* %11, align 4
  %88 = call i32 @kvmppc_mmu_book3s_32_xlate_pte(%struct.kvm_vcpu* %83, i32 %84, %struct.kvmppc_pte* %85, i32 %86, i32 %87, i32 1)
  store i32 %88, i32* %12, align 4
  br label %89

89:                                               ; preds = %82, %73
  %90 = load i32, i32* %12, align 4
  %91 = load i32, i32* @ENOENT, align 4
  %92 = sub nsw i32 0, %91
  %93 = icmp eq i32 %90, %92
  br i1 %93, label %94, label %101

94:                                               ; preds = %89
  %95 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %96 = load i32, i32* %8, align 4
  %97 = load %struct.kvmppc_pte*, %struct.kvmppc_pte** %9, align 8
  %98 = load i32, i32* %10, align 4
  %99 = load i32, i32* %11, align 4
  %100 = call i32 @kvmppc_mmu_book3s_32_xlate_pte(%struct.kvm_vcpu* %95, i32 %96, %struct.kvmppc_pte* %97, i32 %98, i32 %99, i32 0)
  store i32 %100, i32* %12, align 4
  br label %101

101:                                              ; preds = %94, %89
  %102 = load i32, i32* %12, align 4
  store i32 %102, i32* %6, align 4
  br label %103

103:                                              ; preds = %101, %44
  %104 = load i32, i32* %6, align 4
  ret i32 %104
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @kvmppc_get_msr(%struct.kvm_vcpu*) #1

declare dso_local i32 @kvmppc_mmu_book3s_32_ea_to_vp(%struct.kvm_vcpu*, i32, i32) #1

declare dso_local i32 @kvmppc_mmu_book3s_32_xlate_bat(%struct.kvm_vcpu*, i32, %struct.kvmppc_pte*, i32, i32) #1

declare dso_local i32 @kvmppc_mmu_book3s_32_xlate_pte(%struct.kvm_vcpu*, i32, %struct.kvmppc_pte*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
