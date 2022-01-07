; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/xen/extr_mmu_pv.c_xen_extend_mmu_update.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/xen/extr_mmu_pv.c_xen_extend_mmu_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmu_update = type { i32 }
%struct.multicall_space = type { %struct.mmu_update*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32* }

@__HYPERVISOR_mmu_update = common dso_local global i32 0, align 4
@DOMID_SELF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mmu_update*)* @xen_extend_mmu_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xen_extend_mmu_update(%struct.mmu_update* %0) #0 {
  %2 = alloca %struct.mmu_update*, align 8
  %3 = alloca %struct.multicall_space, align 8
  %4 = alloca %struct.mmu_update*, align 8
  %5 = alloca %struct.multicall_space, align 8
  %6 = alloca %struct.multicall_space, align 8
  store %struct.mmu_update* %0, %struct.mmu_update** %2, align 8
  %7 = load i32, i32* @__HYPERVISOR_mmu_update, align 4
  %8 = call { %struct.mmu_update*, %struct.TYPE_2__* } @xen_mc_extend_args(i32 %7, i32 4)
  %9 = bitcast %struct.multicall_space* %5 to { %struct.mmu_update*, %struct.TYPE_2__* }*
  %10 = getelementptr inbounds { %struct.mmu_update*, %struct.TYPE_2__* }, { %struct.mmu_update*, %struct.TYPE_2__* }* %9, i32 0, i32 0
  %11 = extractvalue { %struct.mmu_update*, %struct.TYPE_2__* } %8, 0
  store %struct.mmu_update* %11, %struct.mmu_update** %10, align 8
  %12 = getelementptr inbounds { %struct.mmu_update*, %struct.TYPE_2__* }, { %struct.mmu_update*, %struct.TYPE_2__* }* %9, i32 0, i32 1
  %13 = extractvalue { %struct.mmu_update*, %struct.TYPE_2__* } %8, 1
  store %struct.TYPE_2__* %13, %struct.TYPE_2__** %12, align 8
  %14 = bitcast %struct.multicall_space* %3 to i8*
  %15 = bitcast %struct.multicall_space* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %14, i8* align 8 %15, i64 16, i1 false)
  %16 = getelementptr inbounds %struct.multicall_space, %struct.multicall_space* %3, i32 0, i32 1
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = icmp ne %struct.TYPE_2__* %17, null
  br i1 %18, label %19, label %27

19:                                               ; preds = %1
  %20 = getelementptr inbounds %struct.multicall_space, %struct.multicall_space* %3, i32 0, i32 1
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 1
  %25 = load i32, i32* %24, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %24, align 4
  br label %42

27:                                               ; preds = %1
  %28 = call { %struct.mmu_update*, %struct.TYPE_2__* } @__xen_mc_entry(i32 4)
  %29 = bitcast %struct.multicall_space* %6 to { %struct.mmu_update*, %struct.TYPE_2__* }*
  %30 = getelementptr inbounds { %struct.mmu_update*, %struct.TYPE_2__* }, { %struct.mmu_update*, %struct.TYPE_2__* }* %29, i32 0, i32 0
  %31 = extractvalue { %struct.mmu_update*, %struct.TYPE_2__* } %28, 0
  store %struct.mmu_update* %31, %struct.mmu_update** %30, align 8
  %32 = getelementptr inbounds { %struct.mmu_update*, %struct.TYPE_2__* }, { %struct.mmu_update*, %struct.TYPE_2__* }* %29, i32 0, i32 1
  %33 = extractvalue { %struct.mmu_update*, %struct.TYPE_2__* } %28, 1
  store %struct.TYPE_2__* %33, %struct.TYPE_2__** %32, align 8
  %34 = bitcast %struct.multicall_space* %3 to i8*
  %35 = bitcast %struct.multicall_space* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %34, i8* align 8 %35, i64 16, i1 false)
  %36 = getelementptr inbounds %struct.multicall_space, %struct.multicall_space* %3, i32 0, i32 1
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.multicall_space, %struct.multicall_space* %3, i32 0, i32 0
  %39 = load %struct.mmu_update*, %struct.mmu_update** %38, align 8
  %40 = load i32, i32* @DOMID_SELF, align 4
  %41 = call i32 @MULTI_mmu_update(%struct.TYPE_2__* %37, %struct.mmu_update* %39, i32 1, i32* null, i32 %40)
  br label %42

42:                                               ; preds = %27, %19
  %43 = getelementptr inbounds %struct.multicall_space, %struct.multicall_space* %3, i32 0, i32 0
  %44 = load %struct.mmu_update*, %struct.mmu_update** %43, align 8
  store %struct.mmu_update* %44, %struct.mmu_update** %4, align 8
  %45 = load %struct.mmu_update*, %struct.mmu_update** %4, align 8
  %46 = load %struct.mmu_update*, %struct.mmu_update** %2, align 8
  %47 = bitcast %struct.mmu_update* %45 to i8*
  %48 = bitcast %struct.mmu_update* %46 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %47, i8* align 4 %48, i64 4, i1 false)
  ret void
}

declare dso_local { %struct.mmu_update*, %struct.TYPE_2__* } @xen_mc_extend_args(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local { %struct.mmu_update*, %struct.TYPE_2__* } @__xen_mc_entry(i32) #1

declare dso_local i32 @MULTI_mmu_update(%struct.TYPE_2__*, %struct.mmu_update*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
