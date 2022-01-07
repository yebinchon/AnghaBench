; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_mmu.c_kvm_calc_mmu_role_common.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_mmu.c_kvm_calc_mmu_role_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.kvm_mmu_role = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32 }
%struct.kvm_vcpu = type { i32 }

@__const.kvm_calc_mmu_role_common.role = private unnamed_addr constant { i32, [16 x i8] } { i32 0, [16 x i8] undef }, align 4
@ACC_ALL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%union.kvm_mmu_role*, %struct.kvm_vcpu*, i32)* @kvm_calc_mmu_role_common to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kvm_calc_mmu_role_common(%union.kvm_mmu_role* noalias sret %0, %struct.kvm_vcpu* %1, i32 %2) #0 {
  %4 = alloca %struct.kvm_vcpu*, align 8
  %5 = alloca i32, align 4
  store %struct.kvm_vcpu* %1, %struct.kvm_vcpu** %4, align 8
  store i32 %2, i32* %5, align 4
  %6 = bitcast %union.kvm_mmu_role* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %6, i8* align 4 bitcast ({ i32, [16 x i8] }* @__const.kvm_calc_mmu_role_common.role to i8*), i64 20, i1 false)
  %7 = load i32, i32* @ACC_ALL, align 4
  %8 = bitcast %union.kvm_mmu_role* %0 to %struct.TYPE_2__*
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 4
  store i32 %7, i32* %9, align 4
  %10 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %11 = call i32 @is_nx(%struct.kvm_vcpu* %10)
  %12 = icmp ne i32 %11, 0
  %13 = xor i1 %12, true
  %14 = xor i1 %13, true
  %15 = zext i1 %14 to i32
  %16 = bitcast %union.kvm_mmu_role* %0 to %struct.TYPE_2__*
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 4
  %18 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %19 = call i32 @is_write_protection(%struct.kvm_vcpu* %18)
  %20 = bitcast %union.kvm_mmu_role* %0 to %struct.TYPE_2__*
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 3
  store i32 %19, i32* %21, align 4
  %22 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %23 = call i32 @is_smm(%struct.kvm_vcpu* %22)
  %24 = bitcast %union.kvm_mmu_role* %0 to %struct.TYPE_2__*
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 2
  store i32 %23, i32* %25, align 4
  %26 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %27 = call i32 @is_guest_mode(%struct.kvm_vcpu* %26)
  %28 = bitcast %union.kvm_mmu_role* %0 to %struct.TYPE_2__*
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 1
  store i32 %27, i32* %29, align 4
  %30 = load i32, i32* %5, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %3
  br label %37

33:                                               ; preds = %3
  %34 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %35 = call i32 @kvm_calc_mmu_role_ext(%struct.kvm_vcpu* %34)
  %36 = bitcast %union.kvm_mmu_role* %0 to i32*
  store i32 %35, i32* %36, align 4
  br label %37

37:                                               ; preds = %33, %32
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @is_nx(%struct.kvm_vcpu*) #2

declare dso_local i32 @is_write_protection(%struct.kvm_vcpu*) #2

declare dso_local i32 @is_smm(%struct.kvm_vcpu*) #2

declare dso_local i32 @is_guest_mode(%struct.kvm_vcpu*) #2

declare dso_local i32 @kvm_calc_mmu_role_ext(%struct.kvm_vcpu*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
