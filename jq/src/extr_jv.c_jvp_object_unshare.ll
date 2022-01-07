; ModuleID = '/home/carl/AnghaBench/jq/src/extr_jv.c_jvp_object_unshare.c'
source_filename = "/home/carl/AnghaBench/jq/src/extr_jv.c_jvp_object_unshare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32 }
%struct.object_slot = type { i8*, i8* }
%struct.TYPE_15__ = type { i32 }

@JV_KIND_OBJECT = common dso_local global i32 0, align 4
@JV_KIND_NULL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @jvp_object_unshare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jvp_object_unshare(i32 %0) #0 {
  %2 = alloca %struct.TYPE_14__, align 4
  %3 = alloca %struct.TYPE_14__, align 4
  %4 = alloca %struct.TYPE_14__, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.object_slot*, align 8
  %7 = alloca %struct.object_slot*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %3, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %10, i32 0, i32 0
  store i32 %0, i32* %11, align 4
  %12 = load i32, i32* @JV_KIND_OBJECT, align 4
  %13 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %3, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i64 @JVP_HAS_KIND(i32 %15, i32 %12)
  %17 = call i32 @assert(i64 %16)
  %18 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %3, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i64 @jvp_refcnt_unshared(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %1
  %24 = bitcast %struct.TYPE_14__* %2 to i8*
  %25 = bitcast %struct.TYPE_14__* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %24, i8* align 4 %25, i64 4, i1 false)
  br label %121

26:                                               ; preds = %1
  %27 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %3, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @jvp_object_size(i32 %29)
  %31 = call i32 @jvp_object_new(i32 %30)
  %32 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %4, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 4
  %34 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %3, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call %struct.TYPE_15__* @jvp_object_ptr(i32 %36)
  %38 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %4, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call %struct.TYPE_15__* @jvp_object_ptr(i32 %42)
  %44 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %43, i32 0, i32 0
  store i32 %39, i32* %44, align 4
  store i32 0, i32* %5, align 4
  br label %45

45:                                               ; preds = %87, %26
  %46 = load i32, i32* %5, align 4
  %47 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %4, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @jvp_object_size(i32 %49)
  %51 = icmp slt i32 %46, %50
  br i1 %51, label %52, label %90

52:                                               ; preds = %45
  %53 = load i32, i32* %5, align 4
  %54 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %3, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call %struct.object_slot* @jvp_object_get_slot(i32 %56, i32 %53)
  store %struct.object_slot* %57, %struct.object_slot** %6, align 8
  %58 = load i32, i32* %5, align 4
  %59 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %4, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call %struct.object_slot* @jvp_object_get_slot(i32 %61, i32 %58)
  store %struct.object_slot* %62, %struct.object_slot** %7, align 8
  %63 = load %struct.object_slot*, %struct.object_slot** %7, align 8
  %64 = load %struct.object_slot*, %struct.object_slot** %6, align 8
  %65 = bitcast %struct.object_slot* %63 to i8*
  %66 = bitcast %struct.object_slot* %64 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %65, i8* align 8 %66, i64 16, i1 false)
  %67 = load %struct.object_slot*, %struct.object_slot** %6, align 8
  %68 = getelementptr inbounds %struct.object_slot, %struct.object_slot* %67, i32 0, i32 1
  %69 = load i8*, i8** %68, align 8
  %70 = call i64 @jv_get_kind(i8* %69)
  %71 = load i64, i64* @JV_KIND_NULL, align 8
  %72 = icmp ne i64 %70, %71
  br i1 %72, label %73, label %86

73:                                               ; preds = %52
  %74 = load %struct.object_slot*, %struct.object_slot** %6, align 8
  %75 = getelementptr inbounds %struct.object_slot, %struct.object_slot* %74, i32 0, i32 1
  %76 = load i8*, i8** %75, align 8
  %77 = call i8* @jv_copy(i8* %76)
  %78 = load %struct.object_slot*, %struct.object_slot** %7, align 8
  %79 = getelementptr inbounds %struct.object_slot, %struct.object_slot* %78, i32 0, i32 1
  store i8* %77, i8** %79, align 8
  %80 = load %struct.object_slot*, %struct.object_slot** %6, align 8
  %81 = getelementptr inbounds %struct.object_slot, %struct.object_slot* %80, i32 0, i32 0
  %82 = load i8*, i8** %81, align 8
  %83 = call i8* @jv_copy(i8* %82)
  %84 = load %struct.object_slot*, %struct.object_slot** %7, align 8
  %85 = getelementptr inbounds %struct.object_slot, %struct.object_slot* %84, i32 0, i32 0
  store i8* %83, i8** %85, align 8
  br label %86

86:                                               ; preds = %73, %52
  br label %87

87:                                               ; preds = %86
  %88 = load i32, i32* %5, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %5, align 4
  br label %45

90:                                               ; preds = %45
  %91 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %3, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = call i32* @jvp_object_buckets(i32 %93)
  store i32* %94, i32** %8, align 8
  %95 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %4, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = call i32* @jvp_object_buckets(i32 %97)
  store i32* %98, i32** %9, align 8
  %99 = load i32*, i32** %9, align 8
  %100 = load i32*, i32** %8, align 8
  %101 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %4, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @jvp_object_size(i32 %103)
  %105 = sext i32 %104 to i64
  %106 = mul i64 4, %105
  %107 = mul i64 %106, 2
  %108 = trunc i64 %107 to i32
  %109 = call i32 @memcpy(i32* %99, i32* %100, i32 %108)
  %110 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %3, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @jvp_object_free(i32 %112)
  %114 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %4, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = call i64 @jvp_refcnt_unshared(i32 %116)
  %118 = call i32 @assert(i64 %117)
  %119 = bitcast %struct.TYPE_14__* %2 to i8*
  %120 = bitcast %struct.TYPE_14__* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %119, i8* align 4 %120, i64 4, i1 false)
  br label %121

121:                                              ; preds = %90, %23
  %122 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %2, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  ret i32 %124
}

declare dso_local i32 @assert(i64) #1

declare dso_local i64 @JVP_HAS_KIND(i32, i32) #1

declare dso_local i64 @jvp_refcnt_unshared(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @jvp_object_new(i32) #1

declare dso_local i32 @jvp_object_size(i32) #1

declare dso_local %struct.TYPE_15__* @jvp_object_ptr(i32) #1

declare dso_local %struct.object_slot* @jvp_object_get_slot(i32, i32) #1

declare dso_local i64 @jv_get_kind(i8*) #1

declare dso_local i8* @jv_copy(i8*) #1

declare dso_local i32* @jvp_object_buckets(i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @jvp_object_free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
