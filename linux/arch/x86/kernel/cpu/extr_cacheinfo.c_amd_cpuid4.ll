; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/extr_cacheinfo.c_amd_cpuid4.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/extr_cacheinfo.c_amd_cpuid4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32 }
%union._cpuid4_leaf_eax = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i8*, i64, i32, i32 }
%union._cpuid4_leaf_ebx = type { i64, [8 x i8] }
%union._cpuid4_leaf_ecx = type { i64 }
%union.l1_cache = type { i64 }
%union.l2_cache = type { i64 }
%union.l3_cache = type { i64 }
%struct.TYPE_7__ = type { i32, i32, i32 }
%struct.TYPE_6__ = type { i32 }

@assocs = common dso_local global i32* null, align 8
@cpu_info = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@X86_FEATURE_AMD_DCM = common dso_local global i32 0, align 4
@types = common dso_local global i32* null, align 8
@levels = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %union._cpuid4_leaf_eax*, %union._cpuid4_leaf_ebx*, %union._cpuid4_leaf_ecx*)* @amd_cpuid4 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @amd_cpuid4(i32 %0, %union._cpuid4_leaf_eax* %1, %union._cpuid4_leaf_ebx* %2, %union._cpuid4_leaf_ecx* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %union._cpuid4_leaf_eax*, align 8
  %7 = alloca %union._cpuid4_leaf_ebx*, align 8
  %8 = alloca %union._cpuid4_leaf_ecx*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %union.l1_cache, align 8
  %15 = alloca %union.l1_cache, align 8
  %16 = alloca %union.l2_cache, align 8
  %17 = alloca %union.l3_cache, align 8
  %18 = alloca %union.l1_cache*, align 8
  store i32 %0, i32* %5, align 4
  store %union._cpuid4_leaf_eax* %1, %union._cpuid4_leaf_eax** %6, align 8
  store %union._cpuid4_leaf_ebx* %2, %union._cpuid4_leaf_ebx** %7, align 8
  store %union._cpuid4_leaf_ecx* %3, %union._cpuid4_leaf_ecx** %8, align 8
  store %union.l1_cache* %15, %union.l1_cache** %18, align 8
  %19 = load %union._cpuid4_leaf_eax*, %union._cpuid4_leaf_eax** %6, align 8
  %20 = bitcast %union._cpuid4_leaf_eax* %19 to i64*
  store i64 0, i64* %20, align 8
  %21 = load %union._cpuid4_leaf_ebx*, %union._cpuid4_leaf_ebx** %7, align 8
  %22 = bitcast %union._cpuid4_leaf_ebx* %21 to i64*
  store i64 0, i64* %22, align 8
  %23 = load %union._cpuid4_leaf_ecx*, %union._cpuid4_leaf_ecx** %8, align 8
  %24 = bitcast %union._cpuid4_leaf_ecx* %23 to i64*
  store i64 0, i64* %24, align 8
  %25 = bitcast %union.l1_cache* %15 to i32*
  %26 = bitcast %union.l1_cache* %14 to i32*
  %27 = call i32 @cpuid(i32 -2147483643, i32* %9, i32* %9, i32* %25, i32* %26)
  %28 = bitcast %union.l2_cache* %16 to i32*
  %29 = bitcast %union.l3_cache* %17 to i32*
  %30 = call i32 @cpuid(i32 -2147483642, i32* %9, i32* %9, i32* %28, i32* %29)
  %31 = load i32, i32* %5, align 4
  switch i32 %31, label %100 [
    i32 1, label %32
    i32 0, label %33
    i32 2, label %55
    i32 3, label %73
  ]

32:                                               ; preds = %4
  store %union.l1_cache* %14, %union.l1_cache** %18, align 8
  br label %33

33:                                               ; preds = %4, %32
  %34 = load %union.l1_cache*, %union.l1_cache** %18, align 8
  %35 = bitcast %union.l1_cache* %34 to i32*
  %36 = load i32, i32* %35, align 8
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %33
  br label %166

39:                                               ; preds = %33
  %40 = load i32*, i32** @assocs, align 8
  %41 = load %union.l1_cache*, %union.l1_cache** %18, align 8
  %42 = bitcast %union.l1_cache* %41 to i64*
  %43 = load i64, i64* %42, align 8
  %44 = getelementptr inbounds i32, i32* %40, i64 %43
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* %12, align 4
  %46 = load %union.l1_cache*, %union.l1_cache** %18, align 8
  %47 = bitcast %union.l1_cache* %46 to i32*
  %48 = load i32, i32* %47, align 8
  store i32 %48, i32* %10, align 4
  %49 = load %union.l1_cache*, %union.l1_cache** %18, align 8
  %50 = bitcast %union.l1_cache* %49 to i32*
  %51 = load i32, i32* %50, align 8
  store i32 %51, i32* %11, align 4
  %52 = load %union.l1_cache*, %union.l1_cache** %18, align 8
  %53 = bitcast %union.l1_cache* %52 to i32*
  %54 = load i32, i32* %53, align 8
  store i32 %54, i32* %13, align 4
  br label %101

55:                                               ; preds = %4
  %56 = bitcast %union.l2_cache* %16 to i32*
  %57 = load i32, i32* %56, align 8
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %60, label %59

59:                                               ; preds = %55
  br label %166

60:                                               ; preds = %55
  %61 = load i32*, i32** @assocs, align 8
  %62 = bitcast %union.l2_cache* %16 to i64*
  %63 = load i64, i64* %62, align 8
  %64 = getelementptr inbounds i32, i32* %61, i64 %63
  %65 = load i32, i32* %64, align 4
  store i32 %65, i32* %12, align 4
  %66 = bitcast %union.l2_cache* %16 to i32*
  %67 = load i32, i32* %66, align 8
  store i32 %67, i32* %10, align 4
  %68 = bitcast %union.l2_cache* %16 to i32*
  %69 = load i32, i32* %68, align 8
  store i32 %69, i32* %11, align 4
  %70 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @cpu_info, i32 0, i32 1), align 4
  %71 = call i8* @__this_cpu_read(i32 %70)
  %72 = ptrtoint i8* %71 to i32
  store i32 %72, i32* %13, align 4
  br label %101

73:                                               ; preds = %4
  %74 = bitcast %union.l3_cache* %17 to i32*
  %75 = load i32, i32* %74, align 8
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %78, label %77

77:                                               ; preds = %73
  br label %166

78:                                               ; preds = %73
  %79 = load i32*, i32** @assocs, align 8
  %80 = bitcast %union.l3_cache* %17 to i64*
  %81 = load i64, i64* %80, align 8
  %82 = getelementptr inbounds i32, i32* %79, i64 %81
  %83 = load i32, i32* %82, align 4
  store i32 %83, i32* %12, align 4
  %84 = bitcast %union.l3_cache* %17 to i32*
  %85 = load i32, i32* %84, align 8
  store i32 %85, i32* %10, align 4
  %86 = bitcast %union.l3_cache* %17 to i32*
  %87 = load i32, i32* %86, align 8
  store i32 %87, i32* %11, align 4
  %88 = bitcast %union.l3_cache* %17 to i32*
  %89 = load i32, i32* %88, align 8
  %90 = mul nsw i32 %89, 512
  store i32 %90, i32* %13, align 4
  %91 = load i32, i32* @X86_FEATURE_AMD_DCM, align 4
  %92 = call i32 @boot_cpu_has(i32 %91)
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %99

94:                                               ; preds = %78
  %95 = load i32, i32* %13, align 4
  %96 = lshr i32 %95, 1
  store i32 %96, i32* %13, align 4
  %97 = load i32, i32* %12, align 4
  %98 = lshr i32 %97, 1
  store i32 %98, i32* %12, align 4
  br label %99

99:                                               ; preds = %94, %78
  br label %101

100:                                              ; preds = %4
  br label %166

101:                                              ; preds = %99, %60, %39
  %102 = load %union._cpuid4_leaf_eax*, %union._cpuid4_leaf_eax** %6, align 8
  %103 = bitcast %union._cpuid4_leaf_eax* %102 to %struct.TYPE_5__*
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i32 0, i32 0
  store i32 1, i32* %104, align 8
  %105 = load i32*, i32** @types, align 8
  %106 = load i32, i32* %5, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i32, i32* %105, i64 %107
  %109 = load i32, i32* %108, align 4
  %110 = load %union._cpuid4_leaf_eax*, %union._cpuid4_leaf_eax** %6, align 8
  %111 = bitcast %union._cpuid4_leaf_eax* %110 to %struct.TYPE_5__*
  %112 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %111, i32 0, i32 5
  store i32 %109, i32* %112, align 4
  %113 = load i32*, i32** @levels, align 8
  %114 = load i32, i32* %5, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i32, i32* %113, i64 %115
  %117 = load i32, i32* %116, align 4
  %118 = load %union._cpuid4_leaf_eax*, %union._cpuid4_leaf_eax** %6, align 8
  %119 = bitcast %union._cpuid4_leaf_eax* %118 to %struct.TYPE_5__*
  %120 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %119, i32 0, i32 4
  store i32 %117, i32* %120, align 8
  %121 = load %union._cpuid4_leaf_eax*, %union._cpuid4_leaf_eax** %6, align 8
  %122 = bitcast %union._cpuid4_leaf_eax* %121 to %struct.TYPE_5__*
  %123 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %122, i32 0, i32 3
  store i64 0, i64* %123, align 8
  %124 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @cpu_info, i32 0, i32 0), align 4
  %125 = call i8* @__this_cpu_read(i32 %124)
  %126 = getelementptr i8, i8* %125, i64 -1
  %127 = load %union._cpuid4_leaf_eax*, %union._cpuid4_leaf_eax** %6, align 8
  %128 = bitcast %union._cpuid4_leaf_eax* %127 to %struct.TYPE_5__*
  %129 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %128, i32 0, i32 2
  store i8* %126, i8** %129, align 8
  %130 = load i32, i32* %12, align 4
  %131 = icmp eq i32 %130, 65535
  br i1 %131, label %132, label %136

132:                                              ; preds = %101
  %133 = load %union._cpuid4_leaf_eax*, %union._cpuid4_leaf_eax** %6, align 8
  %134 = bitcast %union._cpuid4_leaf_eax* %133 to %struct.TYPE_5__*
  %135 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %134, i32 0, i32 1
  store i32 1, i32* %135, align 4
  br label %136

136:                                              ; preds = %132, %101
  %137 = load i32, i32* %10, align 4
  %138 = sub i32 %137, 1
  %139 = load %union._cpuid4_leaf_ebx*, %union._cpuid4_leaf_ebx** %7, align 8
  %140 = bitcast %union._cpuid4_leaf_ebx* %139 to %struct.TYPE_7__*
  %141 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %140, i32 0, i32 0
  store i32 %138, i32* %141, align 8
  %142 = load i32, i32* %12, align 4
  %143 = sub i32 %142, 1
  %144 = load %union._cpuid4_leaf_ebx*, %union._cpuid4_leaf_ebx** %7, align 8
  %145 = bitcast %union._cpuid4_leaf_ebx* %144 to %struct.TYPE_7__*
  %146 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %145, i32 0, i32 1
  store i32 %143, i32* %146, align 4
  %147 = load i32, i32* %11, align 4
  %148 = sub i32 %147, 1
  %149 = load %union._cpuid4_leaf_ebx*, %union._cpuid4_leaf_ebx** %7, align 8
  %150 = bitcast %union._cpuid4_leaf_ebx* %149 to %struct.TYPE_7__*
  %151 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %150, i32 0, i32 2
  store i32 %148, i32* %151, align 8
  %152 = load i32, i32* %13, align 4
  %153 = mul i32 %152, 1024
  %154 = load i32, i32* %10, align 4
  %155 = udiv i32 %153, %154
  %156 = load %union._cpuid4_leaf_ebx*, %union._cpuid4_leaf_ebx** %7, align 8
  %157 = bitcast %union._cpuid4_leaf_ebx* %156 to %struct.TYPE_7__*
  %158 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 4
  %160 = add i32 %159, 1
  %161 = udiv i32 %155, %160
  %162 = sub i32 %161, 1
  %163 = load %union._cpuid4_leaf_ecx*, %union._cpuid4_leaf_ecx** %8, align 8
  %164 = bitcast %union._cpuid4_leaf_ecx* %163 to %struct.TYPE_6__*
  %165 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %164, i32 0, i32 0
  store i32 %162, i32* %165, align 8
  br label %166

166:                                              ; preds = %136, %100, %77, %59, %38
  ret void
}

declare dso_local i32 @cpuid(i32, i32*, i32*, i32*, i32*) #1

declare dso_local i8* @__this_cpu_read(i32) #1

declare dso_local i32 @boot_cpu_has(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
