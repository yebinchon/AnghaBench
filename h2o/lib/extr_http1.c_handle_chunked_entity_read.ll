; ModuleID = '/home/carl/AnghaBench/h2o/lib/extr_http1.c_handle_chunked_entity_read.c'
source_filename = "/home/carl/AnghaBench/h2o/lib/extr_http1.c_handle_chunked_entity_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.st_h2o_http1_conn_t = type { %struct.TYPE_11__*, %struct.TYPE_10__, %struct.TYPE_7__, i64 }
%struct.TYPE_11__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i64, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_7__ = type { i64 }
%struct.st_h2o_http1_chunked_entity_reader = type { i32 }

@.str = private unnamed_addr constant [25 x i8] c"Request Entity Too Large\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"request entity is too large\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"Invalid Request\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"broken chunked-encoding\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.st_h2o_http1_conn_t*)* @handle_chunked_entity_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_chunked_entity_read(%struct.st_h2o_http1_conn_t* %0) #0 {
  %2 = alloca %struct.st_h2o_http1_conn_t*, align 8
  %3 = alloca %struct.st_h2o_http1_chunked_entity_reader*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.st_h2o_http1_conn_t* %0, %struct.st_h2o_http1_conn_t** %2, align 8
  %8 = load %struct.st_h2o_http1_conn_t*, %struct.st_h2o_http1_conn_t** %2, align 8
  %9 = getelementptr inbounds %struct.st_h2o_http1_conn_t, %struct.st_h2o_http1_conn_t* %8, i32 0, i32 3
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to i8*
  %12 = bitcast i8* %11 to %struct.st_h2o_http1_chunked_entity_reader*
  store %struct.st_h2o_http1_chunked_entity_reader* %12, %struct.st_h2o_http1_chunked_entity_reader** %3, align 8
  store i32 1, i32* %7, align 4
  %13 = load %struct.st_h2o_http1_conn_t*, %struct.st_h2o_http1_conn_t** %2, align 8
  %14 = getelementptr inbounds %struct.st_h2o_http1_conn_t, %struct.st_h2o_http1_conn_t* %13, i32 0, i32 0
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  store i64 %19, i64* %4, align 8
  store i64 %19, i64* %5, align 8
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %1
  br label %82

22:                                               ; preds = %1
  %23 = load %struct.st_h2o_http1_chunked_entity_reader*, %struct.st_h2o_http1_chunked_entity_reader** %3, align 8
  %24 = getelementptr inbounds %struct.st_h2o_http1_chunked_entity_reader, %struct.st_h2o_http1_chunked_entity_reader* %23, i32 0, i32 0
  %25 = load %struct.st_h2o_http1_conn_t*, %struct.st_h2o_http1_conn_t** %2, align 8
  %26 = getelementptr inbounds %struct.st_h2o_http1_conn_t, %struct.st_h2o_http1_conn_t* %25, i32 0, i32 0
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @phr_decode_chunked(i32* %24, i32 %31, i64* %4)
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* %6, align 4
  %34 = icmp ne i32 %33, -1
  br i1 %34, label %35, label %54

35:                                               ; preds = %22
  %36 = load i64, i64* %4, align 8
  %37 = load %struct.st_h2o_http1_conn_t*, %struct.st_h2o_http1_conn_t** %2, align 8
  %38 = getelementptr inbounds %struct.st_h2o_http1_conn_t, %struct.st_h2o_http1_conn_t* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = add i64 %36, %40
  %42 = load %struct.st_h2o_http1_conn_t*, %struct.st_h2o_http1_conn_t** %2, align 8
  %43 = getelementptr inbounds %struct.st_h2o_http1_conn_t, %struct.st_h2o_http1_conn_t* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 0
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp uge i64 %41, %49
  br i1 %50, label %51, label %54

51:                                               ; preds = %35
  %52 = load %struct.st_h2o_http1_conn_t*, %struct.st_h2o_http1_conn_t** %2, align 8
  %53 = call i32 @entity_read_send_error_413(%struct.st_h2o_http1_conn_t* %52, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  br label %82

54:                                               ; preds = %35, %22
  %55 = load i32, i32* %6, align 4
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %64

57:                                               ; preds = %54
  %58 = load i32, i32* %6, align 4
  %59 = icmp eq i32 %58, -2
  br i1 %59, label %60, label %61

60:                                               ; preds = %57
  store i32 0, i32* %7, align 4
  br label %69

61:                                               ; preds = %57
  %62 = load %struct.st_h2o_http1_conn_t*, %struct.st_h2o_http1_conn_t** %2, align 8
  %63 = call i32 @entity_read_send_error_400(%struct.st_h2o_http1_conn_t* %62, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  br label %82

64:                                               ; preds = %54
  %65 = load i32, i32* %6, align 4
  %66 = sext i32 %65 to i64
  %67 = load i64, i64* %5, align 8
  %68 = sub i64 %67, %66
  store i64 %68, i64* %5, align 8
  br label %69

69:                                               ; preds = %64, %60
  %70 = load %struct.st_h2o_http1_conn_t*, %struct.st_h2o_http1_conn_t** %2, align 8
  %71 = load i64, i64* %4, align 8
  %72 = load i32, i32* %7, align 4
  %73 = call i32 @handle_one_body_fragment(%struct.st_h2o_http1_conn_t* %70, i64 %71, i32 %72)
  %74 = load %struct.st_h2o_http1_conn_t*, %struct.st_h2o_http1_conn_t** %2, align 8
  %75 = getelementptr inbounds %struct.st_h2o_http1_conn_t, %struct.st_h2o_http1_conn_t* %74, i32 0, i32 0
  %76 = load %struct.TYPE_11__*, %struct.TYPE_11__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %76, i32 0, i32 0
  %78 = load i64, i64* %5, align 8
  %79 = load i64, i64* %4, align 8
  %80 = sub i64 %78, %79
  %81 = call i32 @h2o_buffer_consume(%struct.TYPE_12__** %77, i64 %80)
  br label %82

82:                                               ; preds = %69, %61, %51, %21
  ret void
}

declare dso_local i32 @phr_decode_chunked(i32*, i32, i64*) #1

declare dso_local i32 @entity_read_send_error_413(%struct.st_h2o_http1_conn_t*, i8*, i8*) #1

declare dso_local i32 @entity_read_send_error_400(%struct.st_h2o_http1_conn_t*, i8*, i8*) #1

declare dso_local i32 @handle_one_body_fragment(%struct.st_h2o_http1_conn_t*, i64, i32) #1

declare dso_local i32 @h2o_buffer_consume(%struct.TYPE_12__**, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
