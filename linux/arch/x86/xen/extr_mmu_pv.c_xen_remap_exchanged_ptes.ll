; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/xen/extr_mmu_pv.c_xen_remap_exchanged_ptes.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/xen/extr_mmu_pv.c_xen_remap_exchanged_ptes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.multicall_space = type { i32 }

@UVMF_INVLPG = common dso_local global i32 0, align 4
@UVMF_ALL = common dso_local global i32 0, align 4
@UVMF_TLB_FLUSH = common dso_local global i32 0, align 4
@PAGE_KERNEL = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i32, i64*, i64)* @xen_remap_exchanged_ptes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xen_remap_exchanged_ptes(i64 %0, i32 %1, i64* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.multicall_space, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.multicall_space, align 4
  store i64 %0, i64* %5, align 8
  store i32 %1, i32* %6, align 4
  store i64* %2, i64** %7, align 8
  store i64 %3, i64* %8, align 8
  %15 = call i32 (...) @xen_mc_batch()
  %16 = load i32, i32* %6, align 4
  %17 = shl i32 1, %16
  store i32 %17, i32* %10, align 4
  store i32 0, i32* %9, align 4
  br label %18

18:                                               ; preds = %71, %4
  %19 = load i32, i32* %9, align 4
  %20 = load i32, i32* %10, align 4
  %21 = icmp ult i32 %19, %20
  br i1 %21, label %22, label %77

22:                                               ; preds = %18
  %23 = call i32 @__xen_mc_entry(i32 0)
  %24 = getelementptr inbounds %struct.multicall_space, %struct.multicall_space* %14, i32 0, i32 0
  store i32 %23, i32* %24, align 4
  %25 = bitcast %struct.multicall_space* %12 to i8*
  %26 = bitcast %struct.multicall_space* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %25, i8* align 4 %26, i64 4, i1 false)
  %27 = load i64*, i64** %7, align 8
  %28 = icmp ne i64* %27, null
  br i1 %28, label %29, label %35

29:                                               ; preds = %22
  %30 = load i64*, i64** %7, align 8
  %31 = load i32, i32* %9, align 4
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds i64, i64* %30, i64 %32
  %34 = load i64, i64* %33, align 8
  store i64 %34, i64* %11, align 8
  br label %40

35:                                               ; preds = %22
  %36 = load i64, i64* %8, align 8
  %37 = load i32, i32* %9, align 4
  %38 = zext i32 %37 to i64
  %39 = add i64 %36, %38
  store i64 %39, i64* %11, align 8
  br label %40

40:                                               ; preds = %35, %29
  %41 = load i32, i32* %9, align 4
  %42 = load i32, i32* %10, align 4
  %43 = sub i32 %42, 1
  %44 = icmp ult i32 %41, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %40
  store i32 0, i32* %13, align 4
  br label %58

46:                                               ; preds = %40
  %47 = load i32, i32* %6, align 4
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %46
  %50 = load i32, i32* @UVMF_INVLPG, align 4
  %51 = load i32, i32* @UVMF_ALL, align 4
  %52 = or i32 %50, %51
  store i32 %52, i32* %13, align 4
  br label %57

53:                                               ; preds = %46
  %54 = load i32, i32* @UVMF_TLB_FLUSH, align 4
  %55 = load i32, i32* @UVMF_ALL, align 4
  %56 = or i32 %54, %55
  store i32 %56, i32* %13, align 4
  br label %57

57:                                               ; preds = %53, %49
  br label %58

58:                                               ; preds = %57, %45
  %59 = getelementptr inbounds %struct.multicall_space, %struct.multicall_space* %12, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i64, i64* %5, align 8
  %62 = load i64, i64* %11, align 8
  %63 = load i32, i32* @PAGE_KERNEL, align 4
  %64 = call i32 @mfn_pte(i64 %62, i32 %63)
  %65 = load i32, i32* %13, align 4
  %66 = call i32 @MULTI_update_va_mapping(i32 %60, i64 %61, i32 %64, i32 %65)
  %67 = load i64, i64* %5, align 8
  %68 = call i32 @virt_to_pfn(i64 %67)
  %69 = load i64, i64* %11, align 8
  %70 = call i32 @set_phys_to_machine(i32 %68, i64 %69)
  br label %71

71:                                               ; preds = %58
  %72 = load i32, i32* %9, align 4
  %73 = add i32 %72, 1
  store i32 %73, i32* %9, align 4
  %74 = load i64, i64* @PAGE_SIZE, align 8
  %75 = load i64, i64* %5, align 8
  %76 = add i64 %75, %74
  store i64 %76, i64* %5, align 8
  br label %18

77:                                               ; preds = %18
  %78 = call i32 @xen_mc_issue(i32 0)
  ret void
}

declare dso_local i32 @xen_mc_batch(...) #1

declare dso_local i32 @__xen_mc_entry(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @MULTI_update_va_mapping(i32, i64, i32, i32) #1

declare dso_local i32 @mfn_pte(i64, i32) #1

declare dso_local i32 @set_phys_to_machine(i32, i64) #1

declare dso_local i32 @virt_to_pfn(i64) #1

declare dso_local i32 @xen_mc_issue(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
