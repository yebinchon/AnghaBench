; ModuleID = '/home/carl/AnghaBench/h2o/lib/core/extr_context.c_h2o_context_dispose.c'
source_filename = "/home/carl/AnghaBench/h2o/lib/core/extr_context.c_h2o_context_dispose.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { %struct.TYPE_20__, i32, %struct.TYPE_19__, %struct.TYPE_18__, i32*, %struct.TYPE_14__*, %struct.TYPE_17__, i32, %struct.TYPE_22__* }
%struct.TYPE_20__ = type { i32* }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_18__ = type { i64, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32, i32 (i32)* }
%struct.TYPE_17__ = type { %struct.TYPE_14__* }
%struct.TYPE_22__ = type { %struct.TYPE_21__**, %struct.TYPE_15__ }
%struct.TYPE_21__ = type { i32, %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i64, i32* }
%struct.TYPE_15__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @h2o_context_dispose(%struct.TYPE_23__* %0) #0 {
  %2 = alloca %struct.TYPE_23__*, align 8
  %3 = alloca %struct.TYPE_22__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_21__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_14__*, align 8
  store %struct.TYPE_23__* %0, %struct.TYPE_23__** %2, align 8
  %9 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %9, i32 0, i32 8
  %11 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  store %struct.TYPE_22__* %11, %struct.TYPE_22__** %3, align 8
  %12 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %12, i32 0, i32 8
  %14 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %17, i32 0, i32 7
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @h2o_socketpool_unregister_loop(i32* %16, i32 %19)
  store i64 0, i64* %4, align 8
  br label %21

21:                                               ; preds = %61, %1
  %22 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %23, align 8
  %25 = load i64, i64* %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_21__*, %struct.TYPE_21__** %24, i64 %25
  %27 = load %struct.TYPE_21__*, %struct.TYPE_21__** %26, align 8
  %28 = icmp ne %struct.TYPE_21__* %27, null
  br i1 %28, label %29, label %64

29:                                               ; preds = %21
  %30 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %31, align 8
  %33 = load i64, i64* %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_21__*, %struct.TYPE_21__** %32, i64 %33
  %35 = load %struct.TYPE_21__*, %struct.TYPE_21__** %34, align 8
  store %struct.TYPE_21__* %35, %struct.TYPE_21__** %6, align 8
  store i64 0, i64* %5, align 8
  br label %36

36:                                               ; preds = %53, %29
  %37 = load i64, i64* %5, align 8
  %38 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %37, %41
  br i1 %42, label %43, label %56

43:                                               ; preds = %36
  %44 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %45, i32 0, i32 1
  %47 = load i32*, i32** %46, align 8
  %48 = load i64, i64* %5, align 8
  %49 = getelementptr inbounds i32, i32* %47, i64 %48
  store i32* %49, i32** %7, align 8
  %50 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %51 = load i32*, i32** %7, align 8
  %52 = call i32 @h2o_context_dispose_pathconf_context(%struct.TYPE_23__* %50, i32* %51)
  br label %53

53:                                               ; preds = %43
  %54 = load i64, i64* %5, align 8
  %55 = add i64 %54, 1
  store i64 %55, i64* %5, align 8
  br label %36

56:                                               ; preds = %36
  %57 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %58 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %58, i32 0, i32 0
  %60 = call i32 @h2o_context_dispose_pathconf_context(%struct.TYPE_23__* %57, i32* %59)
  br label %61

61:                                               ; preds = %56
  %62 = load i64, i64* %4, align 8
  %63 = add i64 %62, 1
  store i64 %63, i64* %4, align 8
  br label %21

64:                                               ; preds = %21
  %65 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %66 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %65, i32 0, i32 6
  %67 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %66, i32 0, i32 0
  %68 = load %struct.TYPE_14__*, %struct.TYPE_14__** %67, align 8
  %69 = call i32 @free(%struct.TYPE_14__* %68)
  %70 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %71 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %70, i32 0, i32 5
  %72 = load %struct.TYPE_14__*, %struct.TYPE_14__** %71, align 8
  %73 = call i32 @free(%struct.TYPE_14__* %72)
  %74 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %75 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %74, i32 0, i32 4
  %76 = load i32*, i32** %75, align 8
  %77 = call i32 @h2o_filecache_destroy(i32* %76)
  %78 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %79 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %78, i32 0, i32 4
  store i32* null, i32** %79, align 8
  store i64 0, i64* %4, align 8
  br label %80

80:                                               ; preds = %107, %64
  %81 = load i64, i64* %4, align 8
  %82 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %83 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %82, i32 0, i32 3
  %84 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %81, %85
  br i1 %86, label %87, label %110

87:                                               ; preds = %80
  %88 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %89 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %88, i32 0, i32 3
  %90 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %89, i32 0, i32 1
  %91 = load %struct.TYPE_14__*, %struct.TYPE_14__** %90, align 8
  %92 = load i64, i64* %4, align 8
  %93 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %91, i64 %92
  store %struct.TYPE_14__* %93, %struct.TYPE_14__** %8, align 8
  %94 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %95 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %94, i32 0, i32 1
  %96 = load i32 (i32)*, i32 (i32)** %95, align 8
  %97 = icmp ne i32 (i32)* %96, null
  br i1 %97, label %98, label %106

98:                                               ; preds = %87
  %99 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %100 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %99, i32 0, i32 1
  %101 = load i32 (i32)*, i32 (i32)** %100, align 8
  %102 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %103 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = call i32 %101(i32 %104)
  br label %106

106:                                              ; preds = %98, %87
  br label %107

107:                                              ; preds = %106
  %108 = load i64, i64* %4, align 8
  %109 = add i64 %108, 1
  store i64 %109, i64* %4, align 8
  br label %80

110:                                              ; preds = %80
  %111 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %112 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %111, i32 0, i32 3
  %113 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %112, i32 0, i32 1
  %114 = load %struct.TYPE_14__*, %struct.TYPE_14__** %113, align 8
  %115 = call i32 @free(%struct.TYPE_14__* %114)
  %116 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %117 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 8
  %119 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %120 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %119, i32 0, i32 2
  %121 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %120, i32 0, i32 0
  %122 = call i32 @h2o_multithread_unregister_receiver(i32 %118, i32* %121)
  %123 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %124 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 8
  %126 = call i32 @h2o_multithread_destroy_queue(i32 %125)
  %127 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %128 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %128, i32 0, i32 0
  %130 = load i32*, i32** %129, align 8
  %131 = icmp ne i32* %130, null
  br i1 %131, label %132, label %138

132:                                              ; preds = %110
  %133 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %134 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %134, i32 0, i32 0
  %136 = load i32*, i32** %135, align 8
  %137 = call i32 @h2o_mem_release_shared(i32* %136)
  br label %138

138:                                              ; preds = %132, %110
  ret void
}

declare dso_local i32 @h2o_socketpool_unregister_loop(i32*, i32) #1

declare dso_local i32 @h2o_context_dispose_pathconf_context(%struct.TYPE_23__*, i32*) #1

declare dso_local i32 @free(%struct.TYPE_14__*) #1

declare dso_local i32 @h2o_filecache_destroy(i32*) #1

declare dso_local i32 @h2o_multithread_unregister_receiver(i32, i32*) #1

declare dso_local i32 @h2o_multithread_destroy_queue(i32) #1

declare dso_local i32 @h2o_mem_release_shared(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
