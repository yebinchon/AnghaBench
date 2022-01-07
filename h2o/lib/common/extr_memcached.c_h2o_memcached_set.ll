; ModuleID = '/home/carl/AnghaBench/h2o/lib/common/extr_memcached.c_h2o_memcached_set.c'
source_filename = "/home/carl/AnghaBench/h2o/lib/common/extr_memcached.c_h2o_memcached_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, i32 }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32, %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32, i32 }

@REQ_TYPE_SET = common dso_local global i32 0, align 4
@H2O_MEMCACHED_ENCODE_KEY = common dso_local global i32 0, align 4
@H2O_MEMCACHED_ENCODE_VALUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @h2o_memcached_set(i32* %0, i64 %1, i64 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_14__, align 4
  %7 = alloca %struct.TYPE_14__, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_13__*, align 8
  %12 = alloca %struct.TYPE_15__, align 4
  %13 = bitcast %struct.TYPE_14__* %6 to i64*
  store i64 %1, i64* %13, align 4
  %14 = bitcast %struct.TYPE_14__* %7 to i64*
  store i64 %2, i64* %14, align 4
  store i32* %0, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %15 = load i32*, i32** %8, align 8
  %16 = load i32, i32* @REQ_TYPE_SET, align 4
  %17 = load i32, i32* %10, align 4
  %18 = load i32, i32* @H2O_MEMCACHED_ENCODE_KEY, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  %21 = zext i1 %20 to i32
  %22 = bitcast %struct.TYPE_14__* %6 to i64*
  %23 = load i64, i64* %22, align 4
  %24 = call %struct.TYPE_13__* @create_req(i32* %15, i32 %16, i64 %23, i32 %21)
  store %struct.TYPE_13__* %24, %struct.TYPE_13__** %11, align 8
  %25 = load i32, i32* %10, align 4
  %26 = load i32, i32* @H2O_MEMCACHED_ENCODE_VALUE, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %58

29:                                               ; preds = %5
  %30 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %7, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = add nsw i32 %31, 2
  %33 = sdiv i32 %32, 3
  %34 = mul nsw i32 %33, 4
  %35 = add nsw i32 %34, 1
  %36 = call i32 @h2o_mem_alloc(i32 %35)
  %37 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %38 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %40, i32 0, i32 0
  store i32 %36, i32* %41, align 4
  %42 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %43 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %7, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %7, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @h2o_base64_encode(i32 %47, i32 %49, i32 %51, i32 1)
  %53 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %54 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %56, i32 0, i32 1
  store i32 %52, i32* %57, align 4
  br label %83

58:                                               ; preds = %5
  %59 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %60 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %7, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @h2o_mem_alloc(i32 %64)
  %66 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %7, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i64 @h2o_iovec_init(i32 %65, i32 %67)
  %69 = bitcast %struct.TYPE_15__* %12 to i64*
  store i64 %68, i64* %69, align 4
  %70 = bitcast %struct.TYPE_15__* %62 to i8*
  %71 = bitcast %struct.TYPE_15__* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %70, i8* align 4 %71, i64 8, i1 false)
  %72 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %73 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %7, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %7, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @memcpy(i32 %77, i32 %79, i32 %81)
  br label %83

83:                                               ; preds = %58, %29
  %84 = load i32, i32* %9, align 4
  %85 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %86 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %87, i32 0, i32 0
  store i32 %84, i32* %88, align 4
  %89 = load i32*, i32** %8, align 8
  %90 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %91 = call i32 @dispatch(i32* %89, %struct.TYPE_13__* %90)
  ret void
}

declare dso_local %struct.TYPE_13__* @create_req(i32*, i32, i64, i32) #1

declare dso_local i32 @h2o_mem_alloc(i32) #1

declare dso_local i32 @h2o_base64_encode(i32, i32, i32, i32) #1

declare dso_local i64 @h2o_iovec_init(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @dispatch(i32*, %struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
