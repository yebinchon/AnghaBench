; ModuleID = '/home/carl/AnghaBench/h2o/lib/http2/extr_connection.c_handle_priority_frame.c'
source_filename = "/home/carl/AnghaBench/h2o/lib/http2/extr_connection.c_handle_priority_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_25__ = type { %struct.TYPE_32__, %struct.TYPE_28__, %struct.TYPE_26__ }
%struct.TYPE_32__ = type { %struct.TYPE_31__* }
%struct.TYPE_31__ = type { %struct.TYPE_30__* }
%struct.TYPE_30__ = type { %struct.TYPE_29__ }
%struct.TYPE_29__ = type { i64 }
%struct.TYPE_28__ = type { %struct.TYPE_27__ }
%struct.TYPE_27__ = type { i64 }
%struct.TYPE_26__ = type { i64 }
%struct.TYPE_24__ = type { i64 }
%struct.TYPE_34__ = type { i64 }
%struct.TYPE_33__ = type { i32, %struct.TYPE_34__ }

@.str = private unnamed_addr constant [31 x i8] c"stream cannot depend on itself\00", align 1
@H2O_HTTP2_ERROR_PROTOCOL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"too many streams in idle/closed state\00", align 1
@H2O_HTTP2_ERROR_ENHANCE_YOUR_CALM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_25__*, %struct.TYPE_24__*, i8**)* @handle_priority_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_priority_frame(%struct.TYPE_25__* %0, %struct.TYPE_24__* %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_25__*, align 8
  %6 = alloca %struct.TYPE_24__*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca %struct.TYPE_34__, align 8
  %9 = alloca %struct.TYPE_33__*, align 8
  %10 = alloca i32, align 4
  store %struct.TYPE_25__* %0, %struct.TYPE_25__** %5, align 8
  store %struct.TYPE_24__* %1, %struct.TYPE_24__** %6, align 8
  store i8** %2, i8*** %7, align 8
  %11 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %12 = load i8**, i8*** %7, align 8
  %13 = call i32 @h2o_http2_decode_priority_payload(%struct.TYPE_34__* %8, %struct.TYPE_24__* %11, i8** %12)
  store i32 %13, i32* %10, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %3
  %16 = load i32, i32* %10, align 4
  store i32 %16, i32* %4, align 4
  br label %95

17:                                               ; preds = %3
  %18 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %8, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp eq i64 %20, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %17
  %25 = load i8**, i8*** %7, align 8
  store i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i8** %25, align 8
  %26 = load i32, i32* @H2O_HTTP2_ERROR_PROTOCOL, align 4
  store i32 %26, i32* %4, align 4
  br label %95

27:                                               ; preds = %17
  %28 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %29 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = call %struct.TYPE_33__* @h2o_http2_conn_get_stream(%struct.TYPE_25__* %28, i64 %31)
  store %struct.TYPE_33__* %32, %struct.TYPE_33__** %9, align 8
  %33 = icmp ne %struct.TYPE_33__* %32, null
  br i1 %33, label %34, label %48

34:                                               ; preds = %27
  %35 = load %struct.TYPE_33__*, %struct.TYPE_33__** %9, align 8
  %36 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %35, i32 0, i32 1
  %37 = bitcast %struct.TYPE_34__* %36 to i8*
  %38 = bitcast %struct.TYPE_34__* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %37, i8* align 8 %38, i64 8, i1 false)
  %39 = load %struct.TYPE_33__*, %struct.TYPE_33__** %9, align 8
  %40 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %39, i32 0, i32 0
  %41 = call i32 @h2o_http2_scheduler_get_weight(i32* %40)
  %42 = icmp ne i32 %41, 257
  br i1 %42, label %43, label %47

43:                                               ; preds = %34
  %44 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %45 = load %struct.TYPE_33__*, %struct.TYPE_33__** %9, align 8
  %46 = call i32 @set_priority(%struct.TYPE_25__* %44, %struct.TYPE_33__* %45, %struct.TYPE_34__* %8, i32 1)
  br label %47

47:                                               ; preds = %43, %34
  br label %94

48:                                               ; preds = %27
  %49 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = call i64 @h2o_http2_stream_is_push(i64 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %48
  store i32 0, i32* %4, align 4
  br label %95

55:                                               ; preds = %48
  %56 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %59, i32 0, i32 2
  %61 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = icmp sle i64 %58, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %55
  store i32 0, i32* %4, align 4
  br label %95

65:                                               ; preds = %55
  br label %66

66:                                               ; preds = %65
  %67 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %73, i32 0, i32 0
  %75 = load %struct.TYPE_31__*, %struct.TYPE_31__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %75, i32 0, i32 0
  %77 = load %struct.TYPE_30__*, %struct.TYPE_30__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = icmp sge i64 %71, %80
  br i1 %81, label %82, label %85

82:                                               ; preds = %66
  %83 = load i8**, i8*** %7, align 8
  store i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i8** %83, align 8
  %84 = load i32, i32* @H2O_HTTP2_ERROR_ENHANCE_YOUR_CALM, align 4
  store i32 %84, i32* %4, align 4
  br label %95

85:                                               ; preds = %66
  %86 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %87 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %88 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = call %struct.TYPE_33__* @h2o_http2_stream_open(%struct.TYPE_25__* %86, i64 %89, i32* null, %struct.TYPE_34__* %8)
  store %struct.TYPE_33__* %90, %struct.TYPE_33__** %9, align 8
  %91 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %92 = load %struct.TYPE_33__*, %struct.TYPE_33__** %9, align 8
  %93 = call i32 @set_priority(%struct.TYPE_25__* %91, %struct.TYPE_33__* %92, %struct.TYPE_34__* %8, i32 0)
  br label %94

94:                                               ; preds = %85, %47
  store i32 0, i32* %4, align 4
  br label %95

95:                                               ; preds = %94, %82, %64, %54, %24, %15
  %96 = load i32, i32* %4, align 4
  ret i32 %96
}

declare dso_local i32 @h2o_http2_decode_priority_payload(%struct.TYPE_34__*, %struct.TYPE_24__*, i8**) #1

declare dso_local %struct.TYPE_33__* @h2o_http2_conn_get_stream(%struct.TYPE_25__*, i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @h2o_http2_scheduler_get_weight(i32*) #1

declare dso_local i32 @set_priority(%struct.TYPE_25__*, %struct.TYPE_33__*, %struct.TYPE_34__*, i32) #1

declare dso_local i64 @h2o_http2_stream_is_push(i64) #1

declare dso_local %struct.TYPE_33__* @h2o_http2_stream_open(%struct.TYPE_25__*, i64, i32*, %struct.TYPE_34__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
