; ModuleID = '/home/carl/AnghaBench/h2o/lib/core/extr_request.c_h2o_req_setup.c'
source_filename = "/home/carl/AnghaBench/h2o/lib/core/extr_request.c_h2o_req_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32* }
%struct.TYPE_19__ = type { i32, %struct.TYPE_18__, i32, i32, i32, %struct.TYPE_17__, %struct.TYPE_13__, i32, %struct.TYPE_16__*, %struct.TYPE_14__*, i32 }
%struct.TYPE_18__ = type { i32, %struct.TYPE_17__, %struct.TYPE_13__, i32, %struct.TYPE_16__* }
%struct.TYPE_17__ = type { i32, i32 }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_14__ = type { %struct.TYPE_20__**, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_20__* @h2o_req_setup(%struct.TYPE_19__* %0) #0 {
  %2 = alloca %struct.TYPE_19__*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_20__*, align 8
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %2, align 8
  %5 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %5, i32 0, i32 9
  %7 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %7, i32 0, i32 1
  %9 = load i32*, i32** %8, align 8
  store i32* %9, i32** %3, align 8
  %10 = load i32*, i32** %3, align 8
  %11 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %11, i32 0, i32 3
  %13 = call i32 @h2o_get_timestamp(i32* %10, i32* %12)
  %14 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %14, i32 0, i32 10
  store i32 %13, i32* %15, align 8
  %16 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %22, label %58

22:                                               ; preds = %1
  %23 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %23, i32 0, i32 9
  %25 = load %struct.TYPE_14__*, %struct.TYPE_14__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_20__*, %struct.TYPE_20__** %27, i64 1
  %29 = load %struct.TYPE_20__*, %struct.TYPE_20__** %28, align 8
  %30 = icmp eq %struct.TYPE_20__* %29, null
  br i1 %30, label %50, label %31

31:                                               ; preds = %22
  %32 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %33 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %32, i32 0, i32 9
  %34 = load %struct.TYPE_14__*, %struct.TYPE_14__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %35, align 8
  %37 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %38 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %38, i32 0, i32 2
  %40 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %41 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %41, i32 0, i32 4
  %43 = load %struct.TYPE_16__*, %struct.TYPE_16__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %39, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = call %struct.TYPE_20__* @find_hostconf(%struct.TYPE_20__** %36, i32* %47, i32 %45)
  store %struct.TYPE_20__* %48, %struct.TYPE_20__** %4, align 8
  %49 = icmp eq %struct.TYPE_20__* %48, null
  br i1 %49, label %50, label %57

50:                                               ; preds = %31, %22
  %51 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %52 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %51, i32 0, i32 9
  %53 = load %struct.TYPE_14__*, %struct.TYPE_14__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %53, i32 0, i32 0
  %55 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %54, align 8
  %56 = load %struct.TYPE_20__*, %struct.TYPE_20__** %55, align 8
  store %struct.TYPE_20__* %56, %struct.TYPE_20__** %4, align 8
  br label %57

57:                                               ; preds = %50, %31
  br label %73

58:                                               ; preds = %1
  %59 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %60 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %59, i32 0, i32 9
  %61 = load %struct.TYPE_14__*, %struct.TYPE_14__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %61, i32 0, i32 0
  %63 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %62, align 8
  %64 = load %struct.TYPE_20__*, %struct.TYPE_20__** %63, align 8
  store %struct.TYPE_20__* %64, %struct.TYPE_20__** %4, align 8
  %65 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %66 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %66, i32 0, i32 2
  %68 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %69, i32 0, i32 0
  %71 = bitcast %struct.TYPE_13__* %67 to i8*
  %72 = bitcast %struct.TYPE_13__* %70 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %71, i8* align 8 %72, i64 8, i1 false)
  br label %73

73:                                               ; preds = %58, %57
  %74 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %75 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %75, i32 0, i32 4
  %77 = load %struct.TYPE_16__*, %struct.TYPE_16__** %76, align 8
  %78 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %79 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %78, i32 0, i32 8
  store %struct.TYPE_16__* %77, %struct.TYPE_16__** %79, align 8
  %80 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %81 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 8
  %84 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %85 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %84, i32 0, i32 7
  store i32 %83, i32* %85, align 8
  %86 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %87 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %86, i32 0, i32 6
  %88 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %89 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %89, i32 0, i32 2
  %91 = bitcast %struct.TYPE_13__* %87 to i8*
  %92 = bitcast %struct.TYPE_13__* %90 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %91, i8* align 8 %92, i64 8, i1 false)
  %93 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %94 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %93, i32 0, i32 5
  %95 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %96 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %96, i32 0, i32 1
  %98 = bitcast %struct.TYPE_17__* %94 to i8*
  %99 = bitcast %struct.TYPE_17__* %97 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %98, i8* align 4 %99, i64 8, i1 false)
  %100 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %101 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %100, i32 0, i32 3
  %102 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %103 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %103, i32 0, i32 1
  %105 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %108 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %107, i32 0, i32 1
  %109 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %108, i32 0, i32 1
  %110 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %113 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %112, i32 0, i32 0
  %114 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %115 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %114, i32 0, i32 2
  %116 = call i32 @h2o_url_normalize_path(i32* %101, i32 %106, i32 %111, i32* %113, i32* %115)
  %117 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %118 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %117, i32 0, i32 4
  store i32 %116, i32* %118, align 8
  %119 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %120 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %123 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %122, i32 0, i32 1
  %124 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %123, i32 0, i32 0
  store i32 %121, i32* %124, align 8
  %125 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  ret %struct.TYPE_20__* %125
}

declare dso_local i32 @h2o_get_timestamp(i32*, i32*) #1

declare dso_local %struct.TYPE_20__* @find_hostconf(%struct.TYPE_20__**, i32*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @h2o_url_normalize_path(i32*, i32, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
