; ModuleID = '/home/carl/AnghaBench/h2o/deps/quicly/lib/extr_quicly.c_on_ack_stream.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/quicly/lib/extr_quicly.c_on_ack_stream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_26__ = type { i64 }
%struct.TYPE_25__ = type { %struct.TYPE_21__ }
%struct.TYPE_21__ = type { %struct.TYPE_20__ }
%struct.TYPE_20__ = type { %struct.TYPE_18__, i32 }
%struct.TYPE_18__ = type { i64, i64 }
%struct.TYPE_24__ = type { %struct.TYPE_23__, i32, %struct.TYPE_19__* }
%struct.TYPE_23__ = type { %struct.TYPE_22__ }
%struct.TYPE_22__ = type { i64 }
%struct.TYPE_19__ = type { i32 (%struct.TYPE_24__*, i64)* }

@QUICLY_SENTMAP_EVENT_EXPIRED = common dso_local global i64 0, align 8
@QUICLY_SENTMAP_EVENT_ACKED = common dso_local global i64 0, align 8
@STREAM_ACKED = common dso_local global i32 0, align 4
@STREAM_LOST = common dso_local global i32 0, align 4
@QUICLY_SENDER_STATE_NONE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_26__*, %struct.TYPE_25__*, i64)* @on_ack_stream to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @on_ack_stream(i32* %0, %struct.TYPE_26__* %1, %struct.TYPE_25__* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_26__*, align 8
  %8 = alloca %struct.TYPE_25__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_24__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store i32* %0, i32** %6, align 8
  store %struct.TYPE_26__* %1, %struct.TYPE_26__** %7, align 8
  store %struct.TYPE_25__* %2, %struct.TYPE_25__** %8, align 8
  store i64 %3, i64* %9, align 8
  %13 = load i64, i64* %9, align 8
  %14 = load i64, i64* @QUICLY_SENTMAP_EVENT_EXPIRED, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %154

17:                                               ; preds = %4
  %18 = load i64, i64* %9, align 8
  %19 = load i64, i64* @QUICLY_SENTMAP_EVENT_ACKED, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %50

21:                                               ; preds = %17
  %22 = load i32, i32* @STREAM_ACKED, align 4
  %23 = load i32*, i32** %6, align 8
  %24 = call i32 (...) @probe_now()
  %25 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %26 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %31 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %37 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %43 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = sub nsw i64 %41, %47
  %49 = call i32 @QUICLY_PROBE(i32 %22, i32* %23, i32 %24, i32 %29, i64 %35, i64 %48)
  br label %79

50:                                               ; preds = %17
  %51 = load i32, i32* @STREAM_LOST, align 4
  %52 = load i32*, i32** %6, align 8
  %53 = call i32 (...) @probe_now()
  %54 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %55 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %60 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %66 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %72 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = sub nsw i64 %70, %76
  %78 = call i32 @QUICLY_PROBE(i32 %51, i32* %52, i32 %53, i32 %58, i64 %64, i64 %77)
  br label %79

79:                                               ; preds = %50, %21
  %80 = load i32*, i32** %6, align 8
  %81 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %82 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 8
  %86 = call %struct.TYPE_24__* @quicly_get_stream(i32* %80, i32 %85)
  store %struct.TYPE_24__* %86, %struct.TYPE_24__** %10, align 8
  %87 = icmp eq %struct.TYPE_24__* %86, null
  br i1 %87, label %88, label %89

88:                                               ; preds = %79
  store i32 0, i32* %5, align 4
  br label %154

89:                                               ; preds = %79
  %90 = load i64, i64* %9, align 8
  %91 = load i64, i64* @QUICLY_SENTMAP_EVENT_ACKED, align 8
  %92 = icmp eq i64 %90, %91
  br i1 %92, label %93, label %130

93:                                               ; preds = %89
  %94 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %95 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %94, i32 0, i32 1
  %96 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %97 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %98, i32 0, i32 0
  %100 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %101 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = icmp ne i64 %102, 0
  %104 = zext i1 %103 to i32
  %105 = call i32 @quicly_sendstate_acked(i32* %95, %struct.TYPE_18__* %99, i32 %104, i64* %12)
  store i32 %105, i32* %11, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %109

107:                                              ; preds = %93
  %108 = load i32, i32* %11, align 4
  store i32 %108, i32* %5, align 4
  br label %154

109:                                              ; preds = %93
  %110 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %111 = call i64 @stream_is_destroyable(%struct.TYPE_24__* %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %116

113:                                              ; preds = %109
  %114 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %115 = call i32 @destroy_stream(%struct.TYPE_24__* %114, i32 0)
  br label %129

116:                                              ; preds = %109
  %117 = load i64, i64* %12, align 8
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %128

119:                                              ; preds = %116
  %120 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %121 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %120, i32 0, i32 2
  %122 = load %struct.TYPE_19__*, %struct.TYPE_19__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %122, i32 0, i32 0
  %124 = load i32 (%struct.TYPE_24__*, i64)*, i32 (%struct.TYPE_24__*, i64)** %123, align 8
  %125 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %126 = load i64, i64* %12, align 8
  %127 = call i32 %124(%struct.TYPE_24__* %125, i64 %126)
  br label %128

128:                                              ; preds = %119, %116
  br label %129

129:                                              ; preds = %128, %113
  br label %153

130:                                              ; preds = %89
  %131 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %132 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %131, i32 0, i32 1
  %133 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %134 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %135, i32 0, i32 0
  %137 = call i32 @quicly_sendstate_lost(i32* %132, %struct.TYPE_18__* %136)
  store i32 %137, i32* %11, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %141

139:                                              ; preds = %130
  %140 = load i32, i32* %11, align 4
  store i32 %140, i32* %5, align 4
  br label %154

141:                                              ; preds = %130
  %142 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %143 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %144, i32 0, i32 0
  %146 = load i64, i64* %145, align 8
  %147 = load i64, i64* @QUICLY_SENDER_STATE_NONE, align 8
  %148 = icmp eq i64 %146, %147
  br i1 %148, label %149, label %152

149:                                              ; preds = %141
  %150 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %151 = call i32 @resched_stream_data(%struct.TYPE_24__* %150)
  br label %152

152:                                              ; preds = %149, %141
  br label %153

153:                                              ; preds = %152, %129
  store i32 0, i32* %5, align 4
  br label %154

154:                                              ; preds = %153, %139, %107, %88, %16
  %155 = load i32, i32* %5, align 4
  ret i32 %155
}

declare dso_local i32 @QUICLY_PROBE(i32, i32*, i32, i32, i64, i64) #1

declare dso_local i32 @probe_now(...) #1

declare dso_local %struct.TYPE_24__* @quicly_get_stream(i32*, i32) #1

declare dso_local i32 @quicly_sendstate_acked(i32*, %struct.TYPE_18__*, i32, i64*) #1

declare dso_local i64 @stream_is_destroyable(%struct.TYPE_24__*) #1

declare dso_local i32 @destroy_stream(%struct.TYPE_24__*, i32) #1

declare dso_local i32 @quicly_sendstate_lost(i32*, %struct.TYPE_18__*) #1

declare dso_local i32 @resched_stream_data(%struct.TYPE_24__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
