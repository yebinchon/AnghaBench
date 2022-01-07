; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/extr_cacheinfo.c_cpuid4_cache_lookup_regs.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/extr_cacheinfo.c_cpuid4_cache_lookup_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64 }
%struct._cpuid4_info_regs = type { i32, %union._cpuid4_leaf_ecx, %union._cpuid4_leaf_ebx, %union._cpuid4_leaf_eax }
%union._cpuid4_leaf_ecx = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%union._cpuid4_leaf_ebx = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32, i32 }
%union._cpuid4_leaf_eax = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }

@boot_cpu_data = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@X86_VENDOR_AMD = common dso_local global i64 0, align 8
@X86_FEATURE_TOPOEXT = common dso_local global i32 0, align 4
@X86_VENDOR_HYGON = common dso_local global i64 0, align 8
@CTYPE_NULL = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct._cpuid4_info_regs*)* @cpuid4_cache_lookup_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cpuid4_cache_lookup_regs(i32 %0, %struct._cpuid4_info_regs* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct._cpuid4_info_regs*, align 8
  %6 = alloca %union._cpuid4_leaf_eax, align 8
  %7 = alloca %union._cpuid4_leaf_ebx, align 4
  %8 = alloca %union._cpuid4_leaf_ecx, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct._cpuid4_info_regs* %1, %struct._cpuid4_info_regs** %5, align 8
  %10 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @boot_cpu_data, i32 0, i32 0), align 8
  %11 = load i64, i64* @X86_VENDOR_AMD, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %30

13:                                               ; preds = %2
  %14 = load i32, i32* @X86_FEATURE_TOPOEXT, align 4
  %15 = call i64 @boot_cpu_has(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %13
  %18 = load i32, i32* %4, align 4
  %19 = bitcast %union._cpuid4_leaf_eax* %6 to i32*
  %20 = bitcast %union._cpuid4_leaf_ebx* %7 to i32*
  %21 = bitcast %union._cpuid4_leaf_ecx* %8 to i32*
  %22 = call i32 @cpuid_count(i32 -2147483619, i32 %18, i32* %19, i32* %20, i32* %21, i32* %9)
  br label %26

23:                                               ; preds = %13
  %24 = load i32, i32* %4, align 4
  %25 = call i32 @amd_cpuid4(i32 %24, %union._cpuid4_leaf_eax* %6, %union._cpuid4_leaf_ebx* %7, %union._cpuid4_leaf_ecx* %8)
  br label %26

26:                                               ; preds = %23, %17
  %27 = load %struct._cpuid4_info_regs*, %struct._cpuid4_info_regs** %5, align 8
  %28 = load i32, i32* %4, align 4
  %29 = call i32 @amd_init_l3_cache(%struct._cpuid4_info_regs* %27, i32 %28)
  br label %50

30:                                               ; preds = %2
  %31 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @boot_cpu_data, i32 0, i32 0), align 8
  %32 = load i64, i64* @X86_VENDOR_HYGON, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %43

34:                                               ; preds = %30
  %35 = load i32, i32* %4, align 4
  %36 = bitcast %union._cpuid4_leaf_eax* %6 to i32*
  %37 = bitcast %union._cpuid4_leaf_ebx* %7 to i32*
  %38 = bitcast %union._cpuid4_leaf_ecx* %8 to i32*
  %39 = call i32 @cpuid_count(i32 -2147483619, i32 %35, i32* %36, i32* %37, i32* %38, i32* %9)
  %40 = load %struct._cpuid4_info_regs*, %struct._cpuid4_info_regs** %5, align 8
  %41 = load i32, i32* %4, align 4
  %42 = call i32 @amd_init_l3_cache(%struct._cpuid4_info_regs* %40, i32 %41)
  br label %49

43:                                               ; preds = %30
  %44 = load i32, i32* %4, align 4
  %45 = bitcast %union._cpuid4_leaf_eax* %6 to i32*
  %46 = bitcast %union._cpuid4_leaf_ebx* %7 to i32*
  %47 = bitcast %union._cpuid4_leaf_ecx* %8 to i32*
  %48 = call i32 @cpuid_count(i32 4, i32 %44, i32* %45, i32* %46, i32* %47, i32* %9)
  br label %49

49:                                               ; preds = %43, %34
  br label %50

50:                                               ; preds = %49, %26
  %51 = bitcast %union._cpuid4_leaf_eax* %6 to %struct.TYPE_5__*
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @CTYPE_NULL, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %59

56:                                               ; preds = %50
  %57 = load i32, i32* @EIO, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %3, align 4
  br label %93

59:                                               ; preds = %50
  %60 = load %struct._cpuid4_info_regs*, %struct._cpuid4_info_regs** %5, align 8
  %61 = getelementptr inbounds %struct._cpuid4_info_regs, %struct._cpuid4_info_regs* %60, i32 0, i32 3
  %62 = bitcast %union._cpuid4_leaf_eax* %61 to i8*
  %63 = bitcast %union._cpuid4_leaf_eax* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %62, i8* align 8 %63, i64 8, i1 false)
  %64 = load %struct._cpuid4_info_regs*, %struct._cpuid4_info_regs** %5, align 8
  %65 = getelementptr inbounds %struct._cpuid4_info_regs, %struct._cpuid4_info_regs* %64, i32 0, i32 2
  %66 = bitcast %union._cpuid4_leaf_ebx* %65 to i8*
  %67 = bitcast %union._cpuid4_leaf_ebx* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %66, i8* align 4 %67, i64 12, i1 false)
  %68 = load %struct._cpuid4_info_regs*, %struct._cpuid4_info_regs** %5, align 8
  %69 = getelementptr inbounds %struct._cpuid4_info_regs, %struct._cpuid4_info_regs* %68, i32 0, i32 1
  %70 = bitcast %union._cpuid4_leaf_ecx* %69 to i8*
  %71 = bitcast %union._cpuid4_leaf_ecx* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %70, i8* align 4 %71, i64 4, i1 false)
  %72 = bitcast %union._cpuid4_leaf_ecx* %8 to %struct.TYPE_6__*
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = add nsw i32 %74, 1
  %76 = bitcast %union._cpuid4_leaf_ebx* %7 to %struct.TYPE_7__*
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = add nsw i32 %78, 1
  %80 = mul nsw i32 %75, %79
  %81 = bitcast %union._cpuid4_leaf_ebx* %7 to %struct.TYPE_7__*
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = add nsw i32 %83, 1
  %85 = mul nsw i32 %80, %84
  %86 = bitcast %union._cpuid4_leaf_ebx* %7 to %struct.TYPE_7__*
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 4
  %89 = add nsw i32 %88, 1
  %90 = mul nsw i32 %85, %89
  %91 = load %struct._cpuid4_info_regs*, %struct._cpuid4_info_regs** %5, align 8
  %92 = getelementptr inbounds %struct._cpuid4_info_regs, %struct._cpuid4_info_regs* %91, i32 0, i32 0
  store i32 %90, i32* %92, align 8
  store i32 0, i32* %3, align 4
  br label %93

93:                                               ; preds = %59, %56
  %94 = load i32, i32* %3, align 4
  ret i32 %94
}

declare dso_local i64 @boot_cpu_has(i32) #1

declare dso_local i32 @cpuid_count(i32, i32, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @amd_cpuid4(i32, %union._cpuid4_leaf_eax*, %union._cpuid4_leaf_ebx*, %union._cpuid4_leaf_ecx*) #1

declare dso_local i32 @amd_init_l3_cache(%struct._cpuid4_info_regs*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
