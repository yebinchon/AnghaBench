; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_32_mmu.c_kvmppc_mmu_book3s_32_get_pteg.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_32_mmu.c_kvmppc_mmu_book3s_32_get_pteg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i32 }
%struct.kvmppc_vcpu_book3s = type { i32 }

@.str = private unnamed_addr constant [59 x i8] c"MMU: pc=0x%lx eaddr=0x%lx sdr1=0x%llx pteg=0x%x vsid=0x%x\0A\00", align 1
@PAGE_SHIFT = common dso_local global i32 0, align 4
@PAGE_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm_vcpu*, i32, i32, i32)* @kvmppc_mmu_book3s_32_get_pteg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kvmppc_mmu_book3s_32_get_pteg(%struct.kvm_vcpu* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.kvm_vcpu*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.kvmppc_vcpu_book3s*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %16 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %6, align 8
  %17 = call %struct.kvmppc_vcpu_book3s* @to_book3s(%struct.kvm_vcpu* %16)
  store %struct.kvmppc_vcpu_book3s* %17, %struct.kvmppc_vcpu_book3s** %10, align 8
  %18 = load i32, i32* %8, align 4
  %19 = and i32 %18, 268435455
  %20 = ashr i32 %19, 12
  store i32 %20, i32* %11, align 4
  %21 = load %struct.kvmppc_vcpu_book3s*, %struct.kvmppc_vcpu_book3s** %10, align 8
  %22 = getelementptr inbounds %struct.kvmppc_vcpu_book3s, %struct.kvmppc_vcpu_book3s* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = and i32 %23, 511
  %25 = shl i32 %24, 16
  %26 = or i32 %25, 65472
  store i32 %26, i32* %14, align 4
  %27 = load i32, i32* %7, align 4
  %28 = call i32 @sr_vsid(i32 %27)
  %29 = load i32, i32* %11, align 4
  %30 = xor i32 %28, %29
  %31 = shl i32 %30, 6
  store i32 %31, i32* %12, align 4
  %32 = load i32, i32* %9, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %4
  %35 = load i32, i32* %12, align 4
  %36 = xor i32 %35, -1
  store i32 %36, i32* %12, align 4
  br label %37

37:                                               ; preds = %34, %4
  %38 = load i32, i32* %14, align 4
  %39 = load i32, i32* %12, align 4
  %40 = and i32 %39, %38
  store i32 %40, i32* %12, align 4
  %41 = load %struct.kvmppc_vcpu_book3s*, %struct.kvmppc_vcpu_book3s** %10, align 8
  %42 = getelementptr inbounds %struct.kvmppc_vcpu_book3s, %struct.kvmppc_vcpu_book3s* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = and i32 %43, -65536
  %45 = load i32, i32* %12, align 4
  %46 = or i32 %44, %45
  store i32 %46, i32* %13, align 4
  %47 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %6, align 8
  %48 = call i32 @kvmppc_get_pc(%struct.kvm_vcpu* %47)
  %49 = load i32, i32* %8, align 4
  %50 = load %struct.kvmppc_vcpu_book3s*, %struct.kvmppc_vcpu_book3s** %10, align 8
  %51 = getelementptr inbounds %struct.kvmppc_vcpu_book3s, %struct.kvmppc_vcpu_book3s* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* %13, align 4
  %54 = load i32, i32* %7, align 4
  %55 = call i32 @sr_vsid(i32 %54)
  %56 = call i32 @dprintk(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0), i32 %48, i32 %49, i32 %52, i32 %53, i32 %55)
  %57 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %6, align 8
  %58 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* %13, align 4
  %61 = load i32, i32* @PAGE_SHIFT, align 4
  %62 = ashr i32 %60, %61
  %63 = call i32 @gfn_to_hva(i32 %59, i32 %62)
  store i32 %63, i32* %15, align 4
  %64 = load i32, i32* %15, align 4
  %65 = call i64 @kvm_is_error_hva(i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %37
  %68 = load i32, i32* %15, align 4
  store i32 %68, i32* %5, align 4
  br label %76

69:                                               ; preds = %37
  %70 = load i32, i32* %15, align 4
  %71 = load i32, i32* %13, align 4
  %72 = load i32, i32* @PAGE_MASK, align 4
  %73 = xor i32 %72, -1
  %74 = and i32 %71, %73
  %75 = or i32 %70, %74
  store i32 %75, i32* %5, align 4
  br label %76

76:                                               ; preds = %69, %67
  %77 = load i32, i32* %5, align 4
  ret i32 %77
}

declare dso_local %struct.kvmppc_vcpu_book3s* @to_book3s(%struct.kvm_vcpu*) #1

declare dso_local i32 @sr_vsid(i32) #1

declare dso_local i32 @dprintk(i8*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @kvmppc_get_pc(%struct.kvm_vcpu*) #1

declare dso_local i32 @gfn_to_hva(i32, i32) #1

declare dso_local i64 @kvm_is_error_hva(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
