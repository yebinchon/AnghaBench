; ModuleID = '/home/carl/AnghaBench/h2o/lib/http2/extr_connection.c_set_priority.c'
source_filename = "/home/carl/AnghaBench/h2o/lib/http2/extr_connection.c_set_priority.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i64, i32, i32 }
%struct.TYPE_21__ = type { i32, %struct.TYPE_18__ }
%struct.TYPE_18__ = type { %struct.TYPE_17__** }
%struct.TYPE_17__ = type { i64, %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_19__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32 }

@HTTP2_CLOSED_STREAM_PRIORITIES = common dso_local global i64 0, align 8
@h2o_http2_default_priority = common dso_local global %struct.TYPE_20__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_21__*, %struct.TYPE_19__*, %struct.TYPE_20__*, i32)* @set_priority to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_priority(%struct.TYPE_21__* %0, %struct.TYPE_19__* %1, %struct.TYPE_20__* %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_21__*, align 8
  %6 = alloca %struct.TYPE_19__*, align 8
  %7 = alloca %struct.TYPE_20__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_19__*, align 8
  %11 = alloca i64, align 8
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %5, align 8
  store %struct.TYPE_19__* %1, %struct.TYPE_19__** %6, align 8
  store %struct.TYPE_20__* %2, %struct.TYPE_20__** %7, align 8
  store i32 %3, i32* %8, align 4
  store i32* null, i32** %9, align 8
  %12 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %13 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %78

16:                                               ; preds = %4
  %17 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %18 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %19 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = call %struct.TYPE_19__* @h2o_http2_conn_get_stream(%struct.TYPE_21__* %17, i64 %20)
  store %struct.TYPE_19__* %21, %struct.TYPE_19__** %10, align 8
  %22 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %23 = icmp ne %struct.TYPE_19__* %22, null
  br i1 %23, label %24, label %28

24:                                               ; preds = %16
  %25 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %26 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %26, i32 0, i32 0
  store i32* %27, i32** %9, align 8
  br label %77

28:                                               ; preds = %16
  store i64 0, i64* %11, align 8
  br label %29

29:                                               ; preds = %67, %28
  %30 = load i64, i64* %11, align 8
  %31 = load i64, i64* @HTTP2_CLOSED_STREAM_PRIORITIES, align 8
  %32 = icmp ult i64 %30, %31
  br i1 %32, label %33, label %70

33:                                               ; preds = %29
  %34 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %36, align 8
  %38 = load i64, i64* %11, align 8
  %39 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %37, i64 %38
  %40 = load %struct.TYPE_17__*, %struct.TYPE_17__** %39, align 8
  %41 = icmp ne %struct.TYPE_17__* %40, null
  br i1 %41, label %42, label %66

42:                                               ; preds = %33
  %43 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %45, align 8
  %47 = load i64, i64* %11, align 8
  %48 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %46, i64 %47
  %49 = load %struct.TYPE_17__*, %struct.TYPE_17__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %53 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp eq i64 %51, %54
  br i1 %55, label %56, label %66

56:                                               ; preds = %42
  %57 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %58, i32 0, i32 0
  %60 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %59, align 8
  %61 = load i64, i64* %11, align 8
  %62 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %60, i64 %61
  %63 = load %struct.TYPE_17__*, %struct.TYPE_17__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %64, i32 0, i32 0
  store i32* %65, i32** %9, align 8
  br label %70

66:                                               ; preds = %42, %33
  br label %67

67:                                               ; preds = %66
  %68 = load i64, i64* %11, align 8
  %69 = add i64 %68, 1
  store i64 %69, i64* %11, align 8
  br label %29

70:                                               ; preds = %56, %29
  %71 = load i32*, i32** %9, align 8
  %72 = icmp eq i32* %71, null
  br i1 %72, label %73, label %76

73:                                               ; preds = %70
  %74 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %74, i32 0, i32 0
  store i32* %75, i32** %9, align 8
  store %struct.TYPE_20__* @h2o_http2_default_priority, %struct.TYPE_20__** %7, align 8
  br label %76

76:                                               ; preds = %73, %70
  br label %77

77:                                               ; preds = %76, %24
  br label %81

78:                                               ; preds = %4
  %79 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %80 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %79, i32 0, i32 0
  store i32* %80, i32** %9, align 8
  br label %81

81:                                               ; preds = %78, %77
  %82 = load i32, i32* %8, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %95, label %84

84:                                               ; preds = %81
  %85 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %86 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %85, i32 0, i32 0
  %87 = load i32*, i32** %9, align 8
  %88 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %89 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %92 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 8
  %94 = call i32 @h2o_http2_scheduler_open(%struct.TYPE_15__* %86, i32* %87, i32 %90, i32 %93)
  br label %106

95:                                               ; preds = %81
  %96 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %97 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %96, i32 0, i32 0
  %98 = load i32*, i32** %9, align 8
  %99 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %100 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %103 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 8
  %105 = call i32 @h2o_http2_scheduler_rebind(%struct.TYPE_15__* %97, i32* %98, i32 %101, i32 %104)
  br label %106

106:                                              ; preds = %95, %84
  ret void
}

declare dso_local %struct.TYPE_19__* @h2o_http2_conn_get_stream(%struct.TYPE_21__*, i64) #1

declare dso_local i32 @h2o_http2_scheduler_open(%struct.TYPE_15__*, i32*, i32, i32) #1

declare dso_local i32 @h2o_http2_scheduler_rebind(%struct.TYPE_15__*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
