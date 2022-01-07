; ModuleID = '/home/carl/AnghaBench/h2o/deps/quicly/lib/extr_quicly.c_get_stream_or_open_if_new.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/quicly/lib/extr_quicly.c_get_stream_or_open_if_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_30__ = type { %struct.TYPE_28__ }
%struct.TYPE_28__ = type { %struct.TYPE_27__*, %struct.TYPE_26__ }
%struct.TYPE_27__ = type { %struct.TYPE_21__*, %struct.TYPE_23__ }
%struct.TYPE_21__ = type { i32 (%struct.TYPE_21__*, %struct.TYPE_29__*)* }
%struct.TYPE_29__ = type { i32 }
%struct.TYPE_23__ = type { %struct.TYPE_22__ }
%struct.TYPE_22__ = type { i32, i32 }
%struct.TYPE_26__ = type { %struct.TYPE_25__ }
%struct.TYPE_25__ = type { %struct.TYPE_24__ }
%struct.TYPE_24__ = type { i32 }
%struct.st_quicly_conn_streamgroup_state_t = type { i32, i32 }

@QUICLY_TRANSPORT_ERROR_STREAM_LIMIT = common dso_local global i32 0, align 4
@PTLS_ERROR_NO_MEMORY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_30__*, i32, %struct.TYPE_29__**)* @get_stream_or_open_if_new to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_stream_or_open_if_new(%struct.TYPE_30__* %0, i32 %1, %struct.TYPE_29__** %2) #0 {
  %4 = alloca %struct.TYPE_30__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_29__**, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.st_quicly_conn_streamgroup_state_t*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_30__* %0, %struct.TYPE_30__** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.TYPE_29__** %2, %struct.TYPE_29__*** %6, align 8
  store i32 0, i32* %7, align 4
  %11 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %12 = load i32, i32* %5, align 4
  %13 = call %struct.TYPE_29__* @quicly_get_stream(%struct.TYPE_30__* %11, i32 %12)
  %14 = load %struct.TYPE_29__**, %struct.TYPE_29__*** %6, align 8
  store %struct.TYPE_29__* %13, %struct.TYPE_29__** %14, align 8
  %15 = icmp ne %struct.TYPE_29__* %13, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  br label %124

17:                                               ; preds = %3
  %18 = load i32, i32* %5, align 4
  %19 = call i64 @quicly_stream_is_client_initiated(i32 %18)
  %20 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %21 = call i64 @quicly_is_client(%struct.TYPE_30__* %20)
  %22 = icmp ne i64 %19, %21
  br i1 %22, label %23, label %123

23:                                               ; preds = %17
  %24 = load i32, i32* %5, align 4
  %25 = sdiv i32 %24, 4
  %26 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %27 = load i32, i32* %5, align 4
  %28 = call i64 @quicly_stream_is_unidirectional(i32 %27)
  %29 = call i32 @quicly_get_ingress_max_streams(%struct.TYPE_30__* %26, i64 %28)
  %30 = icmp sge i32 %25, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %23
  %32 = load i32, i32* @QUICLY_TRANSPORT_ERROR_STREAM_LIMIT, align 4
  store i32 %32, i32* %7, align 4
  br label %124

33:                                               ; preds = %23
  %34 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %35 = load i32, i32* %5, align 4
  %36 = call %struct.st_quicly_conn_streamgroup_state_t* @get_streamgroup_state(%struct.TYPE_30__* %34, i32 %35)
  store %struct.st_quicly_conn_streamgroup_state_t* %36, %struct.st_quicly_conn_streamgroup_state_t** %8, align 8
  %37 = load %struct.st_quicly_conn_streamgroup_state_t*, %struct.st_quicly_conn_streamgroup_state_t** %8, align 8
  %38 = getelementptr inbounds %struct.st_quicly_conn_streamgroup_state_t, %struct.st_quicly_conn_streamgroup_state_t* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %5, align 4
  %41 = icmp sle i32 %39, %40
  br i1 %41, label %42, label %122

42:                                               ; preds = %33
  %43 = load i32, i32* %5, align 4
  %44 = call i64 @quicly_stream_is_unidirectional(i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %55

46:                                               ; preds = %42
  %47 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %48, i32 0, i32 0
  %50 = load %struct.TYPE_27__*, %struct.TYPE_27__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  store i32 %54, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %71

55:                                               ; preds = %42
  %56 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %57, i32 0, i32 0
  %59 = load %struct.TYPE_27__*, %struct.TYPE_27__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  store i32 %63, i32* %9, align 4
  %64 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  store i32 %70, i32* %10, align 4
  br label %71

71:                                               ; preds = %55, %46
  br label %72

72:                                               ; preds = %114, %71
  %73 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %74 = load %struct.st_quicly_conn_streamgroup_state_t*, %struct.st_quicly_conn_streamgroup_state_t** %8, align 8
  %75 = getelementptr inbounds %struct.st_quicly_conn_streamgroup_state_t, %struct.st_quicly_conn_streamgroup_state_t* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* %9, align 4
  %78 = load i32, i32* %10, align 4
  %79 = call %struct.TYPE_29__* @open_stream(%struct.TYPE_30__* %73, i32 %76, i32 %77, i32 %78)
  %80 = load %struct.TYPE_29__**, %struct.TYPE_29__*** %6, align 8
  store %struct.TYPE_29__* %79, %struct.TYPE_29__** %80, align 8
  %81 = icmp eq %struct.TYPE_29__* %79, null
  br i1 %81, label %82, label %84

82:                                               ; preds = %72
  %83 = load i32, i32* @PTLS_ERROR_NO_MEMORY, align 4
  store i32 %83, i32* %7, align 4
  br label %124

84:                                               ; preds = %72
  %85 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %86 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %86, i32 0, i32 0
  %88 = load %struct.TYPE_27__*, %struct.TYPE_27__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %88, i32 0, i32 0
  %90 = load %struct.TYPE_21__*, %struct.TYPE_21__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %90, i32 0, i32 0
  %92 = load i32 (%struct.TYPE_21__*, %struct.TYPE_29__*)*, i32 (%struct.TYPE_21__*, %struct.TYPE_29__*)** %91, align 8
  %93 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %94 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %94, i32 0, i32 0
  %96 = load %struct.TYPE_27__*, %struct.TYPE_27__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %96, i32 0, i32 0
  %98 = load %struct.TYPE_21__*, %struct.TYPE_21__** %97, align 8
  %99 = load %struct.TYPE_29__**, %struct.TYPE_29__*** %6, align 8
  %100 = load %struct.TYPE_29__*, %struct.TYPE_29__** %99, align 8
  %101 = call i32 %92(%struct.TYPE_21__* %98, %struct.TYPE_29__* %100)
  store i32 %101, i32* %7, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %105

103:                                              ; preds = %84
  %104 = load %struct.TYPE_29__**, %struct.TYPE_29__*** %6, align 8
  store %struct.TYPE_29__* null, %struct.TYPE_29__** %104, align 8
  br label %124

105:                                              ; preds = %84
  %106 = load %struct.st_quicly_conn_streamgroup_state_t*, %struct.st_quicly_conn_streamgroup_state_t** %8, align 8
  %107 = getelementptr inbounds %struct.st_quicly_conn_streamgroup_state_t, %struct.st_quicly_conn_streamgroup_state_t* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %107, align 4
  %110 = load %struct.st_quicly_conn_streamgroup_state_t*, %struct.st_quicly_conn_streamgroup_state_t** %8, align 8
  %111 = getelementptr inbounds %struct.st_quicly_conn_streamgroup_state_t, %struct.st_quicly_conn_streamgroup_state_t* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = add nsw i32 %112, 4
  store i32 %113, i32* %111, align 4
  br label %114

114:                                              ; preds = %105
  %115 = load i32, i32* %5, align 4
  %116 = load %struct.TYPE_29__**, %struct.TYPE_29__*** %6, align 8
  %117 = load %struct.TYPE_29__*, %struct.TYPE_29__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = icmp ne i32 %115, %119
  br i1 %120, label %72, label %121

121:                                              ; preds = %114
  br label %122

122:                                              ; preds = %121, %33
  br label %123

123:                                              ; preds = %122, %17
  br label %124

124:                                              ; preds = %123, %103, %82, %31, %16
  %125 = load i32, i32* %7, align 4
  ret i32 %125
}

declare dso_local %struct.TYPE_29__* @quicly_get_stream(%struct.TYPE_30__*, i32) #1

declare dso_local i64 @quicly_stream_is_client_initiated(i32) #1

declare dso_local i64 @quicly_is_client(%struct.TYPE_30__*) #1

declare dso_local i32 @quicly_get_ingress_max_streams(%struct.TYPE_30__*, i64) #1

declare dso_local i64 @quicly_stream_is_unidirectional(i32) #1

declare dso_local %struct.st_quicly_conn_streamgroup_state_t* @get_streamgroup_state(%struct.TYPE_30__*, i32) #1

declare dso_local %struct.TYPE_29__* @open_stream(%struct.TYPE_30__*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
