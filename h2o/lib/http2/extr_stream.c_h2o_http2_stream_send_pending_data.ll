; ModuleID = '/home/carl/AnghaBench/h2o/lib/http2/extr_stream.c_h2o_http2_stream_send_pending_data.c'
source_filename = "/home/carl/AnghaBench/h2o/lib/http2/extr_stream.c_h2o_http2_stream_send_pending_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, i64, %struct.TYPE_8__, %struct.TYPE_7__, i32, i32 }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_7__ = type { i32, i32* }

@H2O_SEND_STATE_ERROR = common dso_local global i64 0, align 8
@H2O_HTTP2_STREAM_STATE_END_STREAM = common dso_local global i32 0, align 4
@H2O_HTTP2_STREAM_STATE_SEND_BODY_IS_FINAL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @h2o_http2_stream_send_pending_data(i32* %0, %struct.TYPE_9__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %4, align 8
  %8 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 5
  %10 = call i64 @h2o_http2_window_get_avail(i32* %9)
  %11 = icmp sle i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  br label %121

13:                                               ; preds = %2
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  store i64 %16, i64* %5, align 8
  %17 = load i32*, i32** %3, align 8
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 3
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 1
  %22 = load i32*, i32** %21, align 8
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 3
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 4
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = call i32* @send_data(i32* %17, %struct.TYPE_9__* %18, i32* %22, i32 %26, i32* %28, i64 %31)
  store i32* %32, i32** %6, align 8
  %33 = load i32*, i32** %6, align 8
  %34 = icmp eq i32* %33, null
  br i1 %34, label %35, label %46

35:                                               ; preds = %13
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 3
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 0
  store i32 0, i32* %38, align 8
  %39 = load i64, i64* @H2O_SEND_STATE_ERROR, align 8
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 0
  store i64 %39, i64* %41, align 8
  %42 = load i32*, i32** %3, align 8
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %44 = load i32, i32* @H2O_HTTP2_STREAM_STATE_END_STREAM, align 4
  %45 = call i32 @h2o_http2_stream_set_state(i32* %42, %struct.TYPE_9__* %43, i32 %44)
  br label %113

46:                                               ; preds = %13
  %47 = load i32*, i32** %6, align 8
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 3
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 1
  %51 = load i32*, i32** %50, align 8
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 3
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %51, i64 %56
  %58 = icmp eq i32* %47, %57
  br i1 %58, label %59, label %74

59:                                               ; preds = %46
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 3
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 0
  store i32 0, i32* %62, align 8
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @H2O_HTTP2_STREAM_STATE_SEND_BODY_IS_FINAL, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %73

68:                                               ; preds = %59
  %69 = load i32*, i32** %3, align 8
  %70 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %71 = load i32, i32* @H2O_HTTP2_STREAM_STATE_END_STREAM, align 4
  %72 = call i32 @h2o_http2_stream_set_state(i32* %69, %struct.TYPE_9__* %70, i32 %71)
  br label %73

73:                                               ; preds = %68, %59
  br label %112

74:                                               ; preds = %46
  %75 = load i32*, i32** %6, align 8
  %76 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i32 0, i32 3
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 1
  %79 = load i32*, i32** %78, align 8
  %80 = icmp ne i32* %75, %79
  br i1 %80, label %81, label %111

81:                                               ; preds = %74
  %82 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i32 0, i32 3
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = sext i32 %85 to i64
  %87 = load i32*, i32** %6, align 8
  %88 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i32 0, i32 3
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 1
  %91 = load i32*, i32** %90, align 8
  %92 = ptrtoint i32* %87 to i64
  %93 = ptrtoint i32* %91 to i64
  %94 = sub i64 %92, %93
  %95 = sdiv exact i64 %94, 4
  %96 = sub nsw i64 %86, %95
  store i64 %96, i64* %7, align 8
  %97 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %98 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %97, i32 0, i32 3
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i32 0, i32 1
  %100 = load i32*, i32** %99, align 8
  %101 = load i32*, i32** %6, align 8
  %102 = load i64, i64* %7, align 8
  %103 = mul i64 4, %102
  %104 = trunc i64 %103 to i32
  %105 = call i32 @memmove(i32* %100, i32* %101, i32 %104)
  %106 = load i64, i64* %7, align 8
  %107 = trunc i64 %106 to i32
  %108 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %109 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %108, i32 0, i32 3
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %109, i32 0, i32 0
  store i32 %107, i32* %110, align 8
  br label %111

111:                                              ; preds = %81, %74
  br label %112

112:                                              ; preds = %111, %73
  br label %113

113:                                              ; preds = %112, %35
  %114 = load i64, i64* %5, align 8
  %115 = load i64, i64* @H2O_SEND_STATE_ERROR, align 8
  %116 = icmp eq i64 %114, %115
  br i1 %116, label %117, label %121

117:                                              ; preds = %113
  %118 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %119 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %118, i32 0, i32 2
  %120 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %119, i32 0, i32 0
  store i64 0, i64* %120, align 8
  br label %121

121:                                              ; preds = %12, %117, %113
  ret void
}

declare dso_local i64 @h2o_http2_window_get_avail(i32*) #1

declare dso_local i32* @send_data(i32*, %struct.TYPE_9__*, i32*, i32, i32*, i64) #1

declare dso_local i32 @h2o_http2_stream_set_state(i32*, %struct.TYPE_9__*, i32) #1

declare dso_local i32 @memmove(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
