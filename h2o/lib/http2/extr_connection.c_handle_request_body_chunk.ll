; ModuleID = '/home/carl/AnghaBench/h2o/lib/http2/extr_connection.c_handle_request_body_chunk.c'
source_filename = "/home/carl/AnghaBench/h2o/lib/http2/extr_connection.c_handle_request_body_chunk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_30__ = type { %struct.TYPE_25__ }
%struct.TYPE_25__ = type { %struct.TYPE_24__* }
%struct.TYPE_24__ = type { %struct.TYPE_23__* }
%struct.TYPE_23__ = type { i64 }
%struct.TYPE_29__ = type { i64, i64, i32, %struct.TYPE_27__, i32 }
%struct.TYPE_27__ = type { i64, i64, %struct.TYPE_26__, i32* }
%struct.TYPE_26__ = type { i64 (i32, i64, i32)*, i32 }
%struct.TYPE_28__ = type { i64 }

@H2O_HTTP2_ERROR_REFUSED_STREAM = common dso_local global i32 0, align 4
@SIZE_MAX = common dso_local global i64 0, align 8
@H2O_HTTP2_ERROR_PROTOCOL = common dso_local global i32 0, align 4
@H2O_HTTP2_STREAM_STATE_REQ_PENDING = common dso_local global i64 0, align 8
@H2O_HTTP2_STREAM_STATE_SEND_HEADERS = common dso_local global i64 0, align 8
@H2O_HTTP2_ERROR_STREAM_CLOSED = common dso_local global i32 0, align 4
@H2O_HTTP2_STREAM_STATE_END_STREAM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_30__*, %struct.TYPE_29__*, i64, i32)* @handle_request_body_chunk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_request_body_chunk(%struct.TYPE_30__* %0, %struct.TYPE_29__* %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_28__, align 8
  %6 = alloca %struct.TYPE_30__*, align 8
  %7 = alloca %struct.TYPE_29__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %5, i32 0, i32 0
  store i64 %2, i64* %11, align 8
  store %struct.TYPE_30__* %0, %struct.TYPE_30__** %6, align 8
  store %struct.TYPE_29__* %1, %struct.TYPE_29__** %7, align 8
  store i32 %3, i32* %8, align 4
  %12 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %5, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %15 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %14, i32 0, i32 3
  %16 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = add i64 %17, %13
  store i64 %18, i64* %16, align 8
  %19 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %20 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %19, i32 0, i32 3
  %21 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_24__*, %struct.TYPE_24__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_23__*, %struct.TYPE_23__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ugt i64 %22, %30
  br i1 %31, label %32, label %42

32:                                               ; preds = %4
  %33 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %34 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @H2O_HTTP2_ERROR_REFUSED_STREAM, align 4
  %38 = call i32 @stream_send_error(%struct.TYPE_30__* %33, i32 %36, i32 %37)
  %39 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %40 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %41 = call i32 @h2o_http2_stream_reset(%struct.TYPE_30__* %39, %struct.TYPE_29__* %40)
  br label %161

42:                                               ; preds = %4
  %43 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %43, i32 0, i32 3
  %45 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @SIZE_MAX, align 8
  %48 = icmp ne i64 %46, %47
  br i1 %48, label %49, label %79

49:                                               ; preds = %42
  %50 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %50, i32 0, i32 3
  %52 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  store i64 %53, i64* %9, align 8
  %54 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %55 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %54, i32 0, i32 3
  %56 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  store i64 %57, i64* %10, align 8
  %58 = load i32, i32* %8, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %49
  %61 = load i64, i64* %9, align 8
  %62 = load i64, i64* %10, align 8
  %63 = icmp ne i64 %61, %62
  br i1 %63, label %68, label %78

64:                                               ; preds = %49
  %65 = load i64, i64* %9, align 8
  %66 = load i64, i64* %10, align 8
  %67 = icmp ugt i64 %65, %66
  br i1 %67, label %68, label %78

68:                                               ; preds = %64, %60
  %69 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %70 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %71 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* @H2O_HTTP2_ERROR_PROTOCOL, align 4
  %74 = call i32 @stream_send_error(%struct.TYPE_30__* %69, i32 %72, i32 %73)
  %75 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %76 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %77 = call i32 @h2o_http2_stream_reset(%struct.TYPE_30__* %75, %struct.TYPE_29__* %76)
  br label %161

78:                                               ; preds = %64, %60
  br label %79

79:                                               ; preds = %78, %42
  %80 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %81 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %80, i32 0, i32 4
  %82 = load i32, i32* %81, align 8
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %88, label %84

84:                                               ; preds = %79
  %85 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %86 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %87 = call i32 @h2o_http2_stream_set_blocked_by_server(%struct.TYPE_30__* %85, %struct.TYPE_29__* %86, i32 1)
  br label %88

88:                                               ; preds = %84, %79
  %89 = load i32, i32* %8, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %113

91:                                               ; preds = %88
  %92 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %93 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* @H2O_HTTP2_STREAM_STATE_REQ_PENDING, align 8
  %96 = icmp slt i64 %94, %95
  br i1 %96, label %97, label %113

97:                                               ; preds = %91
  %98 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %99 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %100 = load i64, i64* @H2O_HTTP2_STREAM_STATE_REQ_PENDING, align 8
  %101 = call i32 @h2o_http2_stream_set_state(%struct.TYPE_30__* %98, %struct.TYPE_29__* %99, i64 %100)
  %102 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %103 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %102, i32 0, i32 3
  %104 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %103, i32 0, i32 3
  %105 = load i32*, i32** %104, align 8
  %106 = icmp ne i32* %105, null
  br i1 %106, label %107, label %112

107:                                              ; preds = %97
  %108 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %109 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %110 = load i64, i64* @H2O_HTTP2_STREAM_STATE_SEND_HEADERS, align 8
  %111 = call i32 @h2o_http2_stream_set_state(%struct.TYPE_30__* %108, %struct.TYPE_29__* %109, i64 %110)
  br label %112

112:                                              ; preds = %107, %97
  br label %113

113:                                              ; preds = %112, %91, %88
  %114 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %115 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %114, i32 0, i32 3
  %116 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %115, i32 0, i32 2
  %117 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %116, i32 0, i32 0
  %118 = load i64 (i32, i64, i32)*, i64 (i32, i64, i32)** %117, align 8
  %119 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %120 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %119, i32 0, i32 3
  %121 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %120, i32 0, i32 2
  %122 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 8
  %124 = load i32, i32* %8, align 4
  %125 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %5, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = call i64 %118(i32 %123, i64 %126, i32 %124)
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %139

129:                                              ; preds = %113
  %130 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %131 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %132 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %131, i32 0, i32 2
  %133 = load i32, i32* %132, align 8
  %134 = load i32, i32* @H2O_HTTP2_ERROR_STREAM_CLOSED, align 4
  %135 = call i32 @stream_send_error(%struct.TYPE_30__* %130, i32 %133, i32 %134)
  %136 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %137 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %138 = call i32 @h2o_http2_stream_reset(%struct.TYPE_30__* %136, %struct.TYPE_29__* %137)
  br label %161

139:                                              ; preds = %113
  %140 = load i32, i32* %8, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %161

142:                                              ; preds = %139
  %143 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %144 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %143, i32 0, i32 1
  %145 = load i64, i64* %144, align 8
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %150

147:                                              ; preds = %142
  %148 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %149 = call i32 @finish_body_streaming(%struct.TYPE_29__* %148)
  br label %150

150:                                              ; preds = %147, %142
  %151 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %152 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %151, i32 0, i32 0
  %153 = load i64, i64* %152, align 8
  %154 = load i64, i64* @H2O_HTTP2_STREAM_STATE_END_STREAM, align 8
  %155 = icmp eq i64 %153, %154
  br i1 %155, label %156, label %160

156:                                              ; preds = %150
  %157 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %158 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %159 = call i32 @h2o_http2_stream_close(%struct.TYPE_30__* %157, %struct.TYPE_29__* %158)
  br label %160

160:                                              ; preds = %156, %150
  br label %161

161:                                              ; preds = %32, %68, %129, %160, %139
  ret void
}

declare dso_local i32 @stream_send_error(%struct.TYPE_30__*, i32, i32) #1

declare dso_local i32 @h2o_http2_stream_reset(%struct.TYPE_30__*, %struct.TYPE_29__*) #1

declare dso_local i32 @h2o_http2_stream_set_blocked_by_server(%struct.TYPE_30__*, %struct.TYPE_29__*, i32) #1

declare dso_local i32 @h2o_http2_stream_set_state(%struct.TYPE_30__*, %struct.TYPE_29__*, i64) #1

declare dso_local i32 @finish_body_streaming(%struct.TYPE_29__*) #1

declare dso_local i32 @h2o_http2_stream_close(%struct.TYPE_30__*, %struct.TYPE_29__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
