; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_64_mmu.c_kvmppc_mmu_book3s_64_get_pteg.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_64_mmu.c_kvmppc_mmu_book3s_64_get_pteg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.kvmppc_slb = type { i32, i64 }
%struct.kvmppc_vcpu_book3s = type { i32 }

@MMU_SEGSIZE_1T = common dso_local global i32 0, align 4
@MMU_SEGSIZE_256M = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"MMU: page=0x%x sdr1=0x%llx pteg=0x%llx vsid=0x%llx\0A\00", align 1
@page = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i64 0, align 8
@PAGE_MASK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.kvm_vcpu*, %struct.kvmppc_slb*, i32, i32)* @kvmppc_mmu_book3s_64_get_pteg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @kvmppc_mmu_book3s_64_get_pteg(%struct.kvm_vcpu* %0, %struct.kvmppc_slb* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.kvm_vcpu*, align 8
  %7 = alloca %struct.kvmppc_slb*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.kvmppc_vcpu_book3s*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %6, align 8
  store %struct.kvmppc_slb* %1, %struct.kvmppc_slb** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %17 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %6, align 8
  %18 = call %struct.kvmppc_vcpu_book3s* @to_book3s(%struct.kvm_vcpu* %17)
  store %struct.kvmppc_vcpu_book3s* %18, %struct.kvmppc_vcpu_book3s** %10, align 8
  %19 = load %struct.kvmppc_vcpu_book3s*, %struct.kvmppc_vcpu_book3s** %10, align 8
  %20 = getelementptr inbounds %struct.kvmppc_vcpu_book3s, %struct.kvmppc_vcpu_book3s* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = and i32 %21, 31
  %23 = add nsw i32 %22, 11
  %24 = shl i32 1, %23
  %25 = sub nsw i32 %24, 1
  %26 = sext i32 %25 to i64
  store i64 %26, i64* %13, align 8
  %27 = load %struct.kvmppc_slb*, %struct.kvmppc_slb** %7, align 8
  %28 = load i32, i32* %8, align 4
  %29 = call i64 @kvmppc_slb_calc_vpn(%struct.kvmppc_slb* %27, i32 %28)
  store i64 %29, i64* %16, align 8
  %30 = load %struct.kvmppc_slb*, %struct.kvmppc_slb** %7, align 8
  %31 = getelementptr inbounds %struct.kvmppc_slb, %struct.kvmppc_slb* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %4
  %35 = load i32, i32* @MMU_SEGSIZE_1T, align 4
  br label %38

36:                                               ; preds = %4
  %37 = load i32, i32* @MMU_SEGSIZE_256M, align 4
  br label %38

38:                                               ; preds = %36, %34
  %39 = phi i32 [ %35, %34 ], [ %37, %36 ]
  store i32 %39, i32* %14, align 4
  %40 = load i64, i64* %16, align 8
  %41 = load %struct.kvmppc_slb*, %struct.kvmppc_slb** %7, align 8
  %42 = call i32 @kvmppc_mmu_book3s_64_get_pagesize(%struct.kvmppc_slb* %41)
  %43 = load i32, i32* %14, align 4
  %44 = call i64 @hpt_hash(i64 %40, i32 %42, i32 %43)
  store i64 %44, i64* %11, align 8
  %45 = load i32, i32* %9, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %38
  %48 = load i64, i64* %11, align 8
  %49 = xor i64 %48, -1
  store i64 %49, i64* %11, align 8
  br label %50

50:                                               ; preds = %47, %38
  %51 = load i64, i64* %11, align 8
  %52 = and i64 %51, 549755813887
  store i64 %52, i64* %11, align 8
  %53 = load i64, i64* %13, align 8
  %54 = load i64, i64* %11, align 8
  %55 = and i64 %54, %53
  store i64 %55, i64* %11, align 8
  %56 = load i64, i64* %11, align 8
  %57 = shl i64 %56, 7
  store i64 %57, i64* %11, align 8
  %58 = load %struct.kvmppc_vcpu_book3s*, %struct.kvmppc_vcpu_book3s** %10, align 8
  %59 = getelementptr inbounds %struct.kvmppc_vcpu_book3s, %struct.kvmppc_vcpu_book3s* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = sext i32 %60 to i64
  %62 = and i64 %61, -262144
  store i64 %62, i64* %12, align 8
  %63 = load i64, i64* %11, align 8
  %64 = load i64, i64* %12, align 8
  %65 = or i64 %64, %63
  store i64 %65, i64* %12, align 8
  %66 = load i32, i32* @page, align 4
  %67 = load %struct.kvmppc_vcpu_book3s*, %struct.kvmppc_vcpu_book3s** %10, align 8
  %68 = getelementptr inbounds %struct.kvmppc_vcpu_book3s, %struct.kvmppc_vcpu_book3s* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i64, i64* %12, align 8
  %71 = load %struct.kvmppc_slb*, %struct.kvmppc_slb** %7, align 8
  %72 = getelementptr inbounds %struct.kvmppc_slb, %struct.kvmppc_slb* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @dprintk(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 %66, i32 %69, i64 %70, i32 %73)
  %75 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %6, align 8
  %76 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %50
  %81 = load i64, i64* %12, align 8
  store i64 %81, i64* %15, align 8
  br label %90

82:                                               ; preds = %50
  %83 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %6, align 8
  %84 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = load i64, i64* %12, align 8
  %87 = load i64, i64* @PAGE_SHIFT, align 8
  %88 = lshr i64 %86, %87
  %89 = call i64 @gfn_to_hva(i32 %85, i64 %88)
  store i64 %89, i64* %15, align 8
  br label %90

90:                                               ; preds = %82, %80
  %91 = load i64, i64* %15, align 8
  %92 = call i64 @kvm_is_error_hva(i64 %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %96

94:                                               ; preds = %90
  %95 = load i64, i64* %15, align 8
  store i64 %95, i64* %5, align 8
  br label %103

96:                                               ; preds = %90
  %97 = load i64, i64* %15, align 8
  %98 = load i64, i64* %12, align 8
  %99 = load i64, i64* @PAGE_MASK, align 8
  %100 = xor i64 %99, -1
  %101 = and i64 %98, %100
  %102 = or i64 %97, %101
  store i64 %102, i64* %5, align 8
  br label %103

103:                                              ; preds = %96, %94
  %104 = load i64, i64* %5, align 8
  ret i64 %104
}

declare dso_local %struct.kvmppc_vcpu_book3s* @to_book3s(%struct.kvm_vcpu*) #1

declare dso_local i64 @kvmppc_slb_calc_vpn(%struct.kvmppc_slb*, i32) #1

declare dso_local i64 @hpt_hash(i64, i32, i32) #1

declare dso_local i32 @kvmppc_mmu_book3s_64_get_pagesize(%struct.kvmppc_slb*) #1

declare dso_local i32 @dprintk(i8*, i32, i32, i64, i32) #1

declare dso_local i64 @gfn_to_hva(i32, i64) #1

declare dso_local i64 @kvm_is_error_hva(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
