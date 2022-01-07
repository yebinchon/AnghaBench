; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/xen/extr_mmu_pv.c_xen_extend_mmuext_op.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/xen/extr_mmu_pv.c_xen_extend_mmuext_op.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmuext_op = type { i32 }
%struct.multicall_space = type { %struct.mmuext_op*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32* }

@__HYPERVISOR_mmuext_op = common dso_local global i32 0, align 4
@DOMID_SELF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mmuext_op*)* @xen_extend_mmuext_op to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xen_extend_mmuext_op(%struct.mmuext_op* %0) #0 {
  %2 = alloca %struct.mmuext_op*, align 8
  %3 = alloca %struct.multicall_space, align 8
  %4 = alloca %struct.mmuext_op*, align 8
  %5 = alloca %struct.multicall_space, align 8
  %6 = alloca %struct.multicall_space, align 8
  store %struct.mmuext_op* %0, %struct.mmuext_op** %2, align 8
  %7 = load i32, i32* @__HYPERVISOR_mmuext_op, align 4
  %8 = call { %struct.mmuext_op*, %struct.TYPE_2__* } @xen_mc_extend_args(i32 %7, i32 4)
  %9 = bitcast %struct.multicall_space* %5 to { %struct.mmuext_op*, %struct.TYPE_2__* }*
  %10 = getelementptr inbounds { %struct.mmuext_op*, %struct.TYPE_2__* }, { %struct.mmuext_op*, %struct.TYPE_2__* }* %9, i32 0, i32 0
  %11 = extractvalue { %struct.mmuext_op*, %struct.TYPE_2__* } %8, 0
  store %struct.mmuext_op* %11, %struct.mmuext_op** %10, align 8
  %12 = getelementptr inbounds { %struct.mmuext_op*, %struct.TYPE_2__* }, { %struct.mmuext_op*, %struct.TYPE_2__* }* %9, i32 0, i32 1
  %13 = extractvalue { %struct.mmuext_op*, %struct.TYPE_2__* } %8, 1
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
  %28 = call { %struct.mmuext_op*, %struct.TYPE_2__* } @__xen_mc_entry(i32 4)
  %29 = bitcast %struct.multicall_space* %6 to { %struct.mmuext_op*, %struct.TYPE_2__* }*
  %30 = getelementptr inbounds { %struct.mmuext_op*, %struct.TYPE_2__* }, { %struct.mmuext_op*, %struct.TYPE_2__* }* %29, i32 0, i32 0
  %31 = extractvalue { %struct.mmuext_op*, %struct.TYPE_2__* } %28, 0
  store %struct.mmuext_op* %31, %struct.mmuext_op** %30, align 8
  %32 = getelementptr inbounds { %struct.mmuext_op*, %struct.TYPE_2__* }, { %struct.mmuext_op*, %struct.TYPE_2__* }* %29, i32 0, i32 1
  %33 = extractvalue { %struct.mmuext_op*, %struct.TYPE_2__* } %28, 1
  store %struct.TYPE_2__* %33, %struct.TYPE_2__** %32, align 8
  %34 = bitcast %struct.multicall_space* %3 to i8*
  %35 = bitcast %struct.multicall_space* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %34, i8* align 8 %35, i64 16, i1 false)
  %36 = getelementptr inbounds %struct.multicall_space, %struct.multicall_space* %3, i32 0, i32 1
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.multicall_space, %struct.multicall_space* %3, i32 0, i32 0
  %39 = load %struct.mmuext_op*, %struct.mmuext_op** %38, align 8
  %40 = load i32, i32* @DOMID_SELF, align 4
  %41 = call i32 @MULTI_mmuext_op(%struct.TYPE_2__* %37, %struct.mmuext_op* %39, i32 1, i32* null, i32 %40)
  br label %42

42:                                               ; preds = %27, %19
  %43 = getelementptr inbounds %struct.multicall_space, %struct.multicall_space* %3, i32 0, i32 0
  %44 = load %struct.mmuext_op*, %struct.mmuext_op** %43, align 8
  store %struct.mmuext_op* %44, %struct.mmuext_op** %4, align 8
  %45 = load %struct.mmuext_op*, %struct.mmuext_op** %4, align 8
  %46 = load %struct.mmuext_op*, %struct.mmuext_op** %2, align 8
  %47 = bitcast %struct.mmuext_op* %45 to i8*
  %48 = bitcast %struct.mmuext_op* %46 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %47, i8* align 4 %48, i64 4, i1 false)
  ret void
}

declare dso_local { %struct.mmuext_op*, %struct.TYPE_2__* } @xen_mc_extend_args(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local { %struct.mmuext_op*, %struct.TYPE_2__* } @__xen_mc_entry(i32) #1

declare dso_local i32 @MULTI_mmuext_op(%struct.TYPE_2__*, %struct.mmuext_op*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
