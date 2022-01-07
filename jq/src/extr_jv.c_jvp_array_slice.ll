; ModuleID = '/home/carl/AnghaBench/jq/src/extr_jv.c_jvp_array_slice.c'
source_filename = "/home/carl/AnghaBench/jq/src/extr_jv.c_jvp_array_slice.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32 }

@JV_KIND_ARRAY = common dso_local global i32 0, align 4
@CHAR_BIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, i32, i32)* @jvp_array_slice to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @jvp_array_slice(i64 %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_12__, align 4
  %5 = alloca %struct.TYPE_12__, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_12__, align 4
  %11 = bitcast %struct.TYPE_12__* %5 to i64*
  store i64 %0, i64* %11, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = load i32, i32* @JV_KIND_ARRAY, align 4
  %13 = bitcast %struct.TYPE_12__* %5 to i64*
  %14 = load i64, i64* %13, align 4
  %15 = call i32 @JVP_HAS_KIND(i64 %14, i32 %12)
  %16 = call i32 @assert(i32 %15)
  %17 = bitcast %struct.TYPE_12__* %5 to i64*
  %18 = load i64, i64* %17, align 4
  %19 = call i32 @jvp_array_length(i64 %18)
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %8, align 4
  %21 = call i32 @jvp_clamp_slice_params(i32 %20, i32* %6, i32* %7)
  %22 = load i32, i32* %6, align 4
  %23 = icmp sle i32 0, %22
  br i1 %23, label %24, label %32

24:                                               ; preds = %3
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* %7, align 4
  %27 = icmp sle i32 %25, %26
  br i1 %27, label %28, label %32

28:                                               ; preds = %24
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* %8, align 4
  %31 = icmp sle i32 %29, %30
  br label %32

32:                                               ; preds = %28, %24, %3
  %33 = phi i1 [ false, %24 ], [ false, %3 ], [ %31, %28 ]
  %34 = zext i1 %33 to i32
  %35 = call i32 @assert(i32 %34)
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* %7, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %45

39:                                               ; preds = %32
  %40 = bitcast %struct.TYPE_12__* %5 to i64*
  %41 = load i64, i64* %40, align 4
  %42 = call i32 @jv_free(i64 %41)
  %43 = call i64 (...) @jv_array()
  %44 = bitcast %struct.TYPE_12__* %4 to i64*
  store i64 %43, i64* %44, align 4
  br label %97

45:                                               ; preds = %32
  %46 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %5, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %6, align 4
  %49 = add nsw i32 %47, %48
  %50 = load i32, i32* @CHAR_BIT, align 4
  %51 = sext i32 %50 to i64
  %52 = mul i64 4, %51
  %53 = trunc i64 %52 to i32
  %54 = shl i32 1, %53
  %55 = icmp sge i32 %49, %54
  br i1 %55, label %56, label %86

56:                                               ; preds = %45
  %57 = load i32, i32* %7, align 4
  %58 = load i32, i32* %6, align 4
  %59 = sub nsw i32 %57, %58
  %60 = call i64 @jv_array_sized(i32 %59)
  %61 = bitcast %struct.TYPE_12__* %4 to i64*
  store i64 %60, i64* %61, align 4
  %62 = load i32, i32* %6, align 4
  store i32 %62, i32* %9, align 4
  br label %63

63:                                               ; preds = %79, %56
  %64 = load i32, i32* %9, align 4
  %65 = load i32, i32* %7, align 4
  %66 = icmp slt i32 %64, %65
  br i1 %66, label %67, label %82

67:                                               ; preds = %63
  %68 = bitcast %struct.TYPE_12__* %5 to i64*
  %69 = load i64, i64* %68, align 4
  %70 = call i32 @jv_copy(i64 %69)
  %71 = load i32, i32* %9, align 4
  %72 = call i32 @jv_array_get(i32 %70, i32 %71)
  %73 = bitcast %struct.TYPE_12__* %4 to i64*
  %74 = load i64, i64* %73, align 4
  %75 = call i64 @jv_array_append(i64 %74, i32 %72)
  %76 = bitcast %struct.TYPE_12__* %10 to i64*
  store i64 %75, i64* %76, align 4
  %77 = bitcast %struct.TYPE_12__* %4 to i8*
  %78 = bitcast %struct.TYPE_12__* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %77, i8* align 4 %78, i64 8, i1 false)
  br label %79

79:                                               ; preds = %67
  %80 = load i32, i32* %9, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %9, align 4
  br label %63

82:                                               ; preds = %63
  %83 = bitcast %struct.TYPE_12__* %5 to i64*
  %84 = load i64, i64* %83, align 4
  %85 = call i32 @jv_free(i64 %84)
  br label %97

86:                                               ; preds = %45
  %87 = load i32, i32* %6, align 4
  %88 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %5, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = add nsw i32 %89, %87
  store i32 %90, i32* %88, align 4
  %91 = load i32, i32* %7, align 4
  %92 = load i32, i32* %6, align 4
  %93 = sub nsw i32 %91, %92
  %94 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %5, i32 0, i32 1
  store i32 %93, i32* %94, align 4
  %95 = bitcast %struct.TYPE_12__* %4 to i8*
  %96 = bitcast %struct.TYPE_12__* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %95, i8* align 4 %96, i64 8, i1 false)
  br label %97

97:                                               ; preds = %86, %82, %39
  %98 = bitcast %struct.TYPE_12__* %4 to i64*
  %99 = load i64, i64* %98, align 4
  ret i64 %99
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @JVP_HAS_KIND(i64, i32) #1

declare dso_local i32 @jvp_array_length(i64) #1

declare dso_local i32 @jvp_clamp_slice_params(i32, i32*, i32*) #1

declare dso_local i32 @jv_free(i64) #1

declare dso_local i64 @jv_array(...) #1

declare dso_local i64 @jv_array_sized(i32) #1

declare dso_local i64 @jv_array_append(i64, i32) #1

declare dso_local i32 @jv_array_get(i32, i32) #1

declare dso_local i32 @jv_copy(i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
