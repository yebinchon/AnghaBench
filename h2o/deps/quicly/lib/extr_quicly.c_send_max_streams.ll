; ModuleID = '/home/carl/AnghaBench/h2o/deps/quicly/lib/extr_quicly.c_send_max_streams.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/quicly/lib/extr_quicly.c_send_max_streams.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { %struct.TYPE_26__, %struct.TYPE_22__ }
%struct.TYPE_26__ = type { %struct.TYPE_25__*, %struct.TYPE_23__ }
%struct.TYPE_25__ = type { %struct.TYPE_24__ }
%struct.TYPE_24__ = type { i64, i64 }
%struct.TYPE_23__ = type { %struct.st_quicly_conn_streamgroup_state_t, %struct.st_quicly_conn_streamgroup_state_t }
%struct.st_quicly_conn_streamgroup_state_t = type { i32, i64 }
%struct.TYPE_22__ = type { %struct.TYPE_21__ }
%struct.TYPE_21__ = type { i32*, i32* }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_29__ = type { %struct.TYPE_28__ }
%struct.TYPE_28__ = type { %struct.TYPE_27__ }
%struct.TYPE_27__ = type { i32, i32 }

@QUICLY_MAX_STREAMS_FRAME_CAPACITY = common dso_local global i32 0, align 4
@on_ack_max_streams = common dso_local global i32 0, align 4
@MAX_STREAMS_SEND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_20__*, i32, %struct.TYPE_19__*)* @send_max_streams to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @send_max_streams(%struct.TYPE_20__* %0, i32 %1, %struct.TYPE_19__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_20__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_19__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.st_quicly_conn_streamgroup_state_t*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_29__*, align 8
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.TYPE_19__* %2, %struct.TYPE_19__** %7, align 8
  %13 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %14 = load i32, i32* %6, align 4
  %15 = call i32 @should_send_max_streams(%struct.TYPE_20__* %13, i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %114

18:                                               ; preds = %3
  %19 = load i32, i32* %6, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %18
  %22 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %24, i32 0, i32 1
  %26 = load i32*, i32** %25, align 8
  br label %33

27:                                               ; preds = %18
  %28 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  br label %33

33:                                               ; preds = %27, %21
  %34 = phi i32* [ %26, %21 ], [ %32, %27 ]
  store i32* %34, i32** %8, align 8
  %35 = load i32, i32* %6, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %33
  %38 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %40, i32 0, i32 1
  br label %47

42:                                               ; preds = %33
  %43 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %45, i32 0, i32 0
  br label %47

47:                                               ; preds = %42, %37
  %48 = phi %struct.st_quicly_conn_streamgroup_state_t* [ %41, %37 ], [ %46, %42 ]
  store %struct.st_quicly_conn_streamgroup_state_t* %48, %struct.st_quicly_conn_streamgroup_state_t** %9, align 8
  %49 = load %struct.st_quicly_conn_streamgroup_state_t*, %struct.st_quicly_conn_streamgroup_state_t** %9, align 8
  %50 = getelementptr inbounds %struct.st_quicly_conn_streamgroup_state_t, %struct.st_quicly_conn_streamgroup_state_t* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = sdiv i32 %51, 4
  %53 = sext i32 %52 to i64
  %54 = load i32, i32* %6, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %64

56:                                               ; preds = %47
  %57 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %58, i32 0, i32 0
  %60 = load %struct.TYPE_25__*, %struct.TYPE_25__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  br label %72

64:                                               ; preds = %47
  %65 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %66, i32 0, i32 0
  %68 = load %struct.TYPE_25__*, %struct.TYPE_25__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  br label %72

72:                                               ; preds = %64, %56
  %73 = phi i64 [ %63, %56 ], [ %71, %64 ]
  %74 = add nsw i64 %53, %73
  %75 = load %struct.st_quicly_conn_streamgroup_state_t*, %struct.st_quicly_conn_streamgroup_state_t** %9, align 8
  %76 = getelementptr inbounds %struct.st_quicly_conn_streamgroup_state_t, %struct.st_quicly_conn_streamgroup_state_t* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = sub nsw i64 %74, %77
  store i64 %78, i64* %11, align 8
  %79 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %80 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %81 = load i32, i32* @QUICLY_MAX_STREAMS_FRAME_CAPACITY, align 4
  %82 = load i32, i32* @on_ack_max_streams, align 4
  %83 = call i32 @allocate_ack_eliciting_frame(%struct.TYPE_20__* %79, %struct.TYPE_19__* %80, i32 %81, %struct.TYPE_29__** %12, i32 %82)
  store i32 %83, i32* %10, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %72
  %86 = load i32, i32* %10, align 4
  store i32 %86, i32* %4, align 4
  br label %114

87:                                               ; preds = %72
  %88 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %89 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* %6, align 4
  %92 = load i64, i64* %11, align 8
  %93 = call i32 @quicly_encode_max_streams_frame(i32 %90, i32 %91, i64 %92)
  %94 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %95 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %94, i32 0, i32 0
  store i32 %93, i32* %95, align 4
  %96 = load i32, i32* %6, align 4
  %97 = load %struct.TYPE_29__*, %struct.TYPE_29__** %12, align 8
  %98 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %99, i32 0, i32 0
  store i32 %96, i32* %100, align 4
  %101 = load i32*, i32** %8, align 8
  %102 = load i64, i64* %11, align 8
  %103 = load %struct.TYPE_29__*, %struct.TYPE_29__** %12, align 8
  %104 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %105, i32 0, i32 1
  %107 = call i32 @quicly_maxsender_record(i32* %101, i64 %102, i32* %106)
  %108 = load i32, i32* @MAX_STREAMS_SEND, align 4
  %109 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %110 = call i32 (...) @probe_now()
  %111 = load i64, i64* %11, align 8
  %112 = load i32, i32* %6, align 4
  %113 = call i32 @QUICLY_PROBE(i32 %108, %struct.TYPE_20__* %109, i32 %110, i64 %111, i32 %112)
  store i32 0, i32* %4, align 4
  br label %114

114:                                              ; preds = %87, %85, %17
  %115 = load i32, i32* %4, align 4
  ret i32 %115
}

declare dso_local i32 @should_send_max_streams(%struct.TYPE_20__*, i32) #1

declare dso_local i32 @allocate_ack_eliciting_frame(%struct.TYPE_20__*, %struct.TYPE_19__*, i32, %struct.TYPE_29__**, i32) #1

declare dso_local i32 @quicly_encode_max_streams_frame(i32, i32, i64) #1

declare dso_local i32 @quicly_maxsender_record(i32*, i64, i32*) #1

declare dso_local i32 @QUICLY_PROBE(i32, %struct.TYPE_20__*, i32, i64, i32) #1

declare dso_local i32 @probe_now(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
