; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/mm/extr_numa.c_of_drconf_to_nid_single.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/mm/extr_numa.c_of_drconf_to_nid_single.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drmem_lmb = type { i32, i32 }
%struct.assoc_arrays = type { i32, i32, i32* }

@NUMA_NO_NODE = common dso_local global i32 0, align 4
@min_common_depth = common dso_local global i32 0, align 4
@numa_enabled = common dso_local global i32 0, align 4
@DRCONF_MEM_AI_INVALID = common dso_local global i32 0, align 4
@MAX_NUMNODES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drmem_lmb*)* @of_drconf_to_nid_single to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @of_drconf_to_nid_single(%struct.drmem_lmb* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drmem_lmb*, align 8
  %4 = alloca %struct.assoc_arrays, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.drmem_lmb* %0, %struct.drmem_lmb** %3, align 8
  %9 = bitcast %struct.assoc_arrays* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %9, i8 0, i64 16, i1 false)
  %10 = load i32, i32* @NUMA_NO_NODE, align 4
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* @min_common_depth, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @numa_enabled, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %14, %1
  %18 = load i32, i32* %5, align 4
  store i32 %18, i32* %2, align 4
  br label %88

19:                                               ; preds = %14
  %20 = call i32 @of_get_assoc_arrays(%struct.assoc_arrays* %4)
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %7, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %19
  %24 = load i32, i32* %5, align 4
  store i32 %24, i32* %2, align 4
  br label %88

25:                                               ; preds = %19
  %26 = load i32, i32* @min_common_depth, align 4
  %27 = getelementptr inbounds %struct.assoc_arrays, %struct.assoc_arrays* %4, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp sle i32 %26, %28
  br i1 %29, label %30, label %86

30:                                               ; preds = %25
  %31 = load %struct.drmem_lmb*, %struct.drmem_lmb** %3, align 8
  %32 = getelementptr inbounds %struct.drmem_lmb, %struct.drmem_lmb* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @DRCONF_MEM_AI_INVALID, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %86, label %37

37:                                               ; preds = %30
  %38 = load %struct.drmem_lmb*, %struct.drmem_lmb** %3, align 8
  %39 = getelementptr inbounds %struct.drmem_lmb, %struct.drmem_lmb* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = getelementptr inbounds %struct.assoc_arrays, %struct.assoc_arrays* %4, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = icmp slt i32 %40, %42
  br i1 %43, label %44, label %86

44:                                               ; preds = %37
  %45 = load %struct.drmem_lmb*, %struct.drmem_lmb** %3, align 8
  %46 = getelementptr inbounds %struct.drmem_lmb, %struct.drmem_lmb* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = getelementptr inbounds %struct.assoc_arrays, %struct.assoc_arrays* %4, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = mul nsw i32 %47, %49
  %51 = load i32, i32* @min_common_depth, align 4
  %52 = add nsw i32 %50, %51
  %53 = sub nsw i32 %52, 1
  store i32 %53, i32* %8, align 4
  %54 = getelementptr inbounds %struct.assoc_arrays, %struct.assoc_arrays* %4, i32 0, i32 2
  %55 = load i32*, i32** %54, align 8
  %56 = load i32, i32* %8, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  %59 = call i32 @of_read_number(i32* %58, i32 1)
  store i32 %59, i32* %6, align 4
  %60 = load i32, i32* %6, align 4
  %61 = icmp eq i32 %60, 65535
  br i1 %61, label %66, label %62

62:                                               ; preds = %44
  %63 = load i32, i32* %6, align 4
  %64 = load i32, i32* @MAX_NUMNODES, align 4
  %65 = icmp sge i32 %63, %64
  br i1 %65, label %66, label %68

66:                                               ; preds = %62, %44
  %67 = load i32, i32* %5, align 4
  store i32 %67, i32* %6, align 4
  br label %68

68:                                               ; preds = %66, %62
  %69 = load i32, i32* %6, align 4
  %70 = icmp sgt i32 %69, 0
  br i1 %70, label %71, label %85

71:                                               ; preds = %68
  %72 = load %struct.drmem_lmb*, %struct.drmem_lmb** %3, align 8
  %73 = getelementptr inbounds %struct.drmem_lmb, %struct.drmem_lmb* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = getelementptr inbounds %struct.assoc_arrays, %struct.assoc_arrays* %4, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = mul nsw i32 %74, %76
  store i32 %77, i32* %8, align 4
  %78 = load i32, i32* %6, align 4
  %79 = getelementptr inbounds %struct.assoc_arrays, %struct.assoc_arrays* %4, i32 0, i32 2
  %80 = load i32*, i32** %79, align 8
  %81 = load i32, i32* %8, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %80, i64 %82
  %84 = call i32 @initialize_distance_lookup_table(i32 %78, i32* %83)
  br label %85

85:                                               ; preds = %71, %68
  br label %86

86:                                               ; preds = %85, %37, %30, %25
  %87 = load i32, i32* %6, align 4
  store i32 %87, i32* %2, align 4
  br label %88

88:                                               ; preds = %86, %23, %17
  %89 = load i32, i32* %2, align 4
  ret i32 %89
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @of_get_assoc_arrays(%struct.assoc_arrays*) #2

declare dso_local i32 @of_read_number(i32*, i32) #2

declare dso_local i32 @initialize_distance_lookup_table(i32, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
