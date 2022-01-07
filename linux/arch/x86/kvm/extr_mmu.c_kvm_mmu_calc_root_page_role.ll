; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_mmu.c_kvm_mmu_calc_root_page_role.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_mmu.c_kvm_mmu_calc_root_page_role.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i32 }
%union.kvm_mmu_page_role = type { i32 }
%union.kvm_mmu_role = type { %union.kvm_mmu_page_role }

@tdp_enabled = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm_vcpu*)* @kvm_mmu_calc_root_page_role to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kvm_mmu_calc_root_page_role(%struct.kvm_vcpu* %0) #0 {
  %2 = alloca %union.kvm_mmu_page_role, align 4
  %3 = alloca %struct.kvm_vcpu*, align 8
  %4 = alloca %union.kvm_mmu_role, align 4
  %5 = alloca %union.kvm_mmu_role, align 4
  %6 = alloca %union.kvm_mmu_role, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %3, align 8
  %7 = load i64, i64* @tdp_enabled, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %16

9:                                                ; preds = %1
  %10 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %11 = call i32 @kvm_calc_tdp_mmu_root_page_role(%struct.kvm_vcpu* %10, i32 1)
  %12 = getelementptr inbounds %union.kvm_mmu_role, %union.kvm_mmu_role* %5, i32 0, i32 0
  %13 = getelementptr inbounds %union.kvm_mmu_page_role, %union.kvm_mmu_page_role* %12, i32 0, i32 0
  store i32 %11, i32* %13, align 4
  %14 = bitcast %union.kvm_mmu_role* %4 to i8*
  %15 = bitcast %union.kvm_mmu_role* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %14, i8* align 4 %15, i64 4, i1 false)
  br label %23

16:                                               ; preds = %1
  %17 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %18 = call i32 @kvm_calc_shadow_mmu_root_page_role(%struct.kvm_vcpu* %17, i32 1)
  %19 = getelementptr inbounds %union.kvm_mmu_role, %union.kvm_mmu_role* %6, i32 0, i32 0
  %20 = getelementptr inbounds %union.kvm_mmu_page_role, %union.kvm_mmu_page_role* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 4
  %21 = bitcast %union.kvm_mmu_role* %4 to i8*
  %22 = bitcast %union.kvm_mmu_role* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %21, i8* align 4 %22, i64 4, i1 false)
  br label %23

23:                                               ; preds = %16, %9
  %24 = bitcast %union.kvm_mmu_role* %4 to %union.kvm_mmu_page_role*
  %25 = bitcast %union.kvm_mmu_page_role* %2 to i8*
  %26 = bitcast %union.kvm_mmu_page_role* %24 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %25, i8* align 4 %26, i64 4, i1 false)
  %27 = getelementptr inbounds %union.kvm_mmu_page_role, %union.kvm_mmu_page_role* %2, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  ret i32 %28
}

declare dso_local i32 @kvm_calc_tdp_mmu_root_page_role(%struct.kvm_vcpu*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @kvm_calc_shadow_mmu_root_page_role(%struct.kvm_vcpu*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
