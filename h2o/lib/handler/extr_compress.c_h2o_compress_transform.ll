; ModuleID = '/home/carl/AnghaBench/h2o/lib/handler/extr_compress.c_h2o_compress_transform.c'
source_filename = "/home/carl/AnghaBench/h2o/lib/handler/extr_compress.c_h2o_compress_transform.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32 (%struct.TYPE_15__*, %struct.TYPE_14__*, i64, i32, %struct.TYPE_14__**, i64*)*, i32* }
%struct.TYPE_14__ = type { i32, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32 (%struct.TYPE_14__*, i32*, i32, i32)* }

@H2O_PULL_SENDVEC_MAX_SIZE = common dso_local global i32 0, align 4
@H2O_SEND_STATE_ERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @h2o_compress_transform(%struct.TYPE_15__* %0, i32* %1, %struct.TYPE_14__* %2, i64 %3, i32 %4, %struct.TYPE_14__** %5, i64* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_15__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_14__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_14__**, align 8
  %15 = alloca i64*, align 8
  %16 = alloca %struct.TYPE_14__, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %9, align 8
  store i32* %1, i32** %10, align 8
  store %struct.TYPE_14__* %2, %struct.TYPE_14__** %11, align 8
  store i64 %3, i64* %12, align 8
  store i32 %4, i32* %13, align 4
  store %struct.TYPE_14__** %5, %struct.TYPE_14__*** %14, align 8
  store i64* %6, i64** %15, align 8
  %17 = load i64, i64* %12, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %86

19:                                               ; preds = %7
  %20 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %21 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %20, i32 0, i32 1
  %22 = load %struct.TYPE_13__*, %struct.TYPE_13__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %22, i32 0, i32 0
  %24 = load i32 (%struct.TYPE_14__*, i32*, i32, i32)*, i32 (%struct.TYPE_14__*, i32*, i32, i32)** %23, align 8
  %25 = icmp ne i32 (%struct.TYPE_14__*, i32*, i32, i32)* %24, @h2o_sendvec_flatten_raw
  br i1 %25, label %26, label %86

26:                                               ; preds = %19
  %27 = load i64, i64* %12, align 8
  %28 = icmp eq i64 %27, 1
  %29 = zext i1 %28 to i32
  %30 = call i32 @assert(i32 %29)
  %31 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %32 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @H2O_PULL_SENDVEC_MAX_SIZE, align 4
  %35 = icmp sle i32 %33, %34
  %36 = zext i1 %35 to i32
  %37 = call i32 @assert(i32 %36)
  %38 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %39 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %38, i32 0, i32 1
  %40 = load i32*, i32** %39, align 8
  %41 = icmp eq i32* %40, null
  br i1 %41, label %42, label %57

42:                                               ; preds = %26
  %43 = load i32, i32* %13, align 4
  %44 = call i64 @h2o_send_state_is_in_progress(i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %42
  %47 = load i32, i32* @H2O_PULL_SENDVEC_MAX_SIZE, align 4
  br label %52

48:                                               ; preds = %42
  %49 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %50 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  br label %52

52:                                               ; preds = %48, %46
  %53 = phi i32 [ %47, %46 ], [ %51, %48 ]
  %54 = call i32* @h2o_mem_alloc(i32 %53)
  %55 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %56 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %55, i32 0, i32 1
  store i32* %54, i32** %56, align 8
  br label %57

57:                                               ; preds = %52, %26
  %58 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %59 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %58, i32 0, i32 1
  %60 = load %struct.TYPE_13__*, %struct.TYPE_13__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %60, i32 0, i32 0
  %62 = load i32 (%struct.TYPE_14__*, i32*, i32, i32)*, i32 (%struct.TYPE_14__*, i32*, i32, i32)** %61, align 8
  %63 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %64 = load i32*, i32** %10, align 8
  %65 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %66 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %65, i32 0, i32 1
  %67 = load i32*, i32** %66, align 8
  %68 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %69 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @h2o_iovec_init(i32* %67, i32 %70)
  %72 = call i32 %62(%struct.TYPE_14__* %63, i32* %64, i32 %71, i32 0)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %78, label %74

74:                                               ; preds = %57
  %75 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %14, align 8
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %75, align 8
  %76 = load i64*, i64** %15, align 8
  store i64 0, i64* %76, align 8
  %77 = load i32, i32* @H2O_SEND_STATE_ERROR, align 4
  store i32 %77, i32* %8, align 4
  br label %97

78:                                               ; preds = %57
  %79 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %80 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %79, i32 0, i32 1
  %81 = load i32*, i32** %80, align 8
  %82 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %83 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = call i32 @h2o_sendvec_init_raw(%struct.TYPE_14__* %16, i32* %81, i32 %84)
  store %struct.TYPE_14__* %16, %struct.TYPE_14__** %11, align 8
  br label %86

86:                                               ; preds = %78, %19, %7
  %87 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %88 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %87, i32 0, i32 0
  %89 = load i32 (%struct.TYPE_15__*, %struct.TYPE_14__*, i64, i32, %struct.TYPE_14__**, i64*)*, i32 (%struct.TYPE_15__*, %struct.TYPE_14__*, i64, i32, %struct.TYPE_14__**, i64*)** %88, align 8
  %90 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %91 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %92 = load i64, i64* %12, align 8
  %93 = load i32, i32* %13, align 4
  %94 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %14, align 8
  %95 = load i64*, i64** %15, align 8
  %96 = call i32 %89(%struct.TYPE_15__* %90, %struct.TYPE_14__* %91, i64 %92, i32 %93, %struct.TYPE_14__** %94, i64* %95)
  store i32 %96, i32* %8, align 4
  br label %97

97:                                               ; preds = %86, %74
  %98 = load i32, i32* %8, align 4
  ret i32 %98
}

declare dso_local i32 @h2o_sendvec_flatten_raw(%struct.TYPE_14__*, i32*, i32, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32* @h2o_mem_alloc(i32) #1

declare dso_local i64 @h2o_send_state_is_in_progress(i32) #1

declare dso_local i32 @h2o_iovec_init(i32*, i32) #1

declare dso_local i32 @h2o_sendvec_init_raw(%struct.TYPE_14__*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
