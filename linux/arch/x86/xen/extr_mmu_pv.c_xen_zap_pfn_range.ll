; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/xen/extr_mmu_pv.c_xen_zap_pfn_range.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/xen/extr_mmu_pv.c_xen_zap_pfn_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.multicall_space = type { i32 }

@VOID_PTE = common dso_local global i32 0, align 4
@INVALID_P2M_ENTRY = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i32, i64*, i64*)* @xen_zap_pfn_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xen_zap_pfn_range(i64 %0, i32 %1, i64* %2, i64* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.multicall_space, align 4
  %11 = alloca %struct.multicall_space, align 4
  store i64 %0, i64* %5, align 8
  store i32 %1, i32* %6, align 4
  store i64* %2, i64** %7, align 8
  store i64* %3, i64** %8, align 8
  %12 = call i32 (...) @xen_mc_batch()
  store i32 0, i32* %9, align 4
  br label %13

13:                                               ; preds = %54, %4
  %14 = load i32, i32* %9, align 4
  %15 = sext i32 %14 to i64
  %16 = load i32, i32* %6, align 4
  %17 = zext i32 %16 to i64
  %18 = shl i64 1, %17
  %19 = icmp ult i64 %15, %18
  br i1 %19, label %20, label %60

20:                                               ; preds = %13
  %21 = call i32 @__xen_mc_entry(i32 0)
  %22 = getelementptr inbounds %struct.multicall_space, %struct.multicall_space* %11, i32 0, i32 0
  store i32 %21, i32* %22, align 4
  %23 = bitcast %struct.multicall_space* %10 to i8*
  %24 = bitcast %struct.multicall_space* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %23, i8* align 4 %24, i64 4, i1 false)
  %25 = load i64*, i64** %7, align 8
  %26 = icmp ne i64* %25, null
  br i1 %26, label %27, label %34

27:                                               ; preds = %20
  %28 = load i64, i64* %5, align 8
  %29 = call i64 @virt_to_mfn(i64 %28)
  %30 = load i64*, i64** %7, align 8
  %31 = load i32, i32* %9, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i64, i64* %30, i64 %32
  store i64 %29, i64* %33, align 8
  br label %34

34:                                               ; preds = %27, %20
  %35 = getelementptr inbounds %struct.multicall_space, %struct.multicall_space* %10, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i64, i64* %5, align 8
  %38 = load i32, i32* @VOID_PTE, align 4
  %39 = call i32 @MULTI_update_va_mapping(i32 %36, i64 %37, i32 %38, i32 0)
  %40 = load i64, i64* %5, align 8
  %41 = call i64 @virt_to_pfn(i64 %40)
  %42 = load i32, i32* @INVALID_P2M_ENTRY, align 4
  %43 = call i32 @__set_phys_to_machine(i64 %41, i32 %42)
  %44 = load i64*, i64** %8, align 8
  %45 = icmp ne i64* %44, null
  br i1 %45, label %46, label %53

46:                                               ; preds = %34
  %47 = load i64, i64* %5, align 8
  %48 = call i64 @virt_to_pfn(i64 %47)
  %49 = load i64*, i64** %8, align 8
  %50 = load i32, i32* %9, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i64, i64* %49, i64 %51
  store i64 %48, i64* %52, align 8
  br label %53

53:                                               ; preds = %46, %34
  br label %54

54:                                               ; preds = %53
  %55 = load i32, i32* %9, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %9, align 4
  %57 = load i64, i64* @PAGE_SIZE, align 8
  %58 = load i64, i64* %5, align 8
  %59 = add i64 %58, %57
  store i64 %59, i64* %5, align 8
  br label %13

60:                                               ; preds = %13
  %61 = call i32 @xen_mc_issue(i32 0)
  ret void
}

declare dso_local i32 @xen_mc_batch(...) #1

declare dso_local i32 @__xen_mc_entry(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @virt_to_mfn(i64) #1

declare dso_local i32 @MULTI_update_va_mapping(i32, i64, i32, i32) #1

declare dso_local i32 @__set_phys_to_machine(i64, i32) #1

declare dso_local i64 @virt_to_pfn(i64) #1

declare dso_local i32 @xen_mc_issue(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
