; ModuleID = '/home/carl/AnghaBench/h2o/lib/http2/extr_connection.c_handle_window_update_frame.c'
source_filename = "/home/carl/AnghaBench/h2o/lib/http2/extr_connection.c_handle_window_update_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_15__ = type { i32 }

@.str = private unnamed_addr constant [29 x i8] c"flow control window overflow\00", align 1
@H2O_HTTP2_ERROR_FLOW_CONTROL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"invalid stream id in WINDOW_UPDATE frame\00", align 1
@H2O_HTTP2_ERROR_PROTOCOL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_17__*, %struct.TYPE_16__*, i8**)* @handle_window_update_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_window_update_frame(%struct.TYPE_17__* %0, %struct.TYPE_16__* %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca %struct.TYPE_15__, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %5, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %6, align 8
  store i8** %2, i8*** %7, align 8
  %13 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %14 = load i8**, i8*** %7, align 8
  %15 = call i32 @h2o_http2_decode_window_update_payload(%struct.TYPE_15__* %8, %struct.TYPE_16__* %13, i8** %14, i32* %10)
  store i32 %15, i32* %9, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %41

17:                                               ; preds = %3
  %18 = load i32, i32* %10, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %39

20:                                               ; preds = %17
  %21 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %22 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32* @h2o_http2_conn_get_stream(%struct.TYPE_17__* %21, i32 %24)
  store i32* %25, i32** %11, align 8
  %26 = load i32*, i32** %11, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %28, label %32

28:                                               ; preds = %20
  %29 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %30 = load i32*, i32** %11, align 8
  %31 = call i32 @h2o_http2_stream_reset(%struct.TYPE_17__* %29, i32* %30)
  br label %32

32:                                               ; preds = %28, %20
  %33 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %34 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %9, align 4
  %38 = call i32 @stream_send_error(%struct.TYPE_17__* %33, i32 %36, i32 %37)
  store i32 0, i32* %4, align 4
  br label %98

39:                                               ; preds = %17
  %40 = load i32, i32* %9, align 4
  store i32 %40, i32* %4, align 4
  br label %98

41:                                               ; preds = %3
  %42 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %58

46:                                               ; preds = %41
  %47 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %8, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i64 @h2o_http2_window_update(i32* %49, i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %46
  %55 = load i8**, i8*** %7, align 8
  store i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i8** %55, align 8
  %56 = load i32, i32* @H2O_HTTP2_ERROR_FLOW_CONTROL, align 4
  store i32 %56, i32* %4, align 4
  br label %98

57:                                               ; preds = %46
  br label %95

58:                                               ; preds = %41
  %59 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %60 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @is_idle_stream_id(%struct.TYPE_17__* %59, i32 %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %91, label %65

65:                                               ; preds = %58
  %66 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %67 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %68 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32* @h2o_http2_conn_get_stream(%struct.TYPE_17__* %66, i32 %69)
  store i32* %70, i32** %12, align 8
  %71 = load i32*, i32** %12, align 8
  %72 = icmp ne i32* %71, null
  br i1 %72, label %73, label %90

73:                                               ; preds = %65
  %74 = load i32*, i32** %12, align 8
  %75 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %8, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i64 @update_stream_output_window(i32* %74, i32 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %89

79:                                               ; preds = %73
  %80 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %81 = load i32*, i32** %12, align 8
  %82 = call i32 @h2o_http2_stream_reset(%struct.TYPE_17__* %80, i32* %81)
  %83 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %84 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %85 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* @H2O_HTTP2_ERROR_FLOW_CONTROL, align 4
  %88 = call i32 @stream_send_error(%struct.TYPE_17__* %83, i32 %86, i32 %87)
  store i32 0, i32* %4, align 4
  br label %98

89:                                               ; preds = %73
  br label %90

90:                                               ; preds = %89, %65
  br label %94

91:                                               ; preds = %58
  %92 = load i8**, i8*** %7, align 8
  store i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i8** %92, align 8
  %93 = load i32, i32* @H2O_HTTP2_ERROR_PROTOCOL, align 4
  store i32 %93, i32* %4, align 4
  br label %98

94:                                               ; preds = %90
  br label %95

95:                                               ; preds = %94, %57
  %96 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %97 = call i32 @resume_send(%struct.TYPE_17__* %96)
  store i32 0, i32* %4, align 4
  br label %98

98:                                               ; preds = %95, %91, %79, %54, %39, %32
  %99 = load i32, i32* %4, align 4
  ret i32 %99
}

declare dso_local i32 @h2o_http2_decode_window_update_payload(%struct.TYPE_15__*, %struct.TYPE_16__*, i8**, i32*) #1

declare dso_local i32* @h2o_http2_conn_get_stream(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @h2o_http2_stream_reset(%struct.TYPE_17__*, i32*) #1

declare dso_local i32 @stream_send_error(%struct.TYPE_17__*, i32, i32) #1

declare dso_local i64 @h2o_http2_window_update(i32*, i32) #1

declare dso_local i32 @is_idle_stream_id(%struct.TYPE_17__*, i32) #1

declare dso_local i64 @update_stream_output_window(i32*, i32) #1

declare dso_local i32 @resume_send(%struct.TYPE_17__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
