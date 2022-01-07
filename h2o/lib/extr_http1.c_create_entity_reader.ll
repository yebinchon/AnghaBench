; ModuleID = '/home/carl/AnghaBench/h2o/lib/extr_http1.c_create_entity_reader.c'
source_filename = "/home/carl/AnghaBench/h2o/lib/extr_http1.c_create_entity_reader.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.st_h2o_http1_conn_t = type { %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64 }
%struct.phr_header = type { i32, i32, i32 }

@.str = private unnamed_addr constant [8 x i8] c"chunked\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"Invalid Request\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"unknown transfer-encoding\00", align 1
@SIZE_MAX = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [29 x i8] c"broken content-length header\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"Request Entity Too Large\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"request entity is too large\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.st_h2o_http1_conn_t*, %struct.phr_header*)* @create_entity_reader to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @create_entity_reader(%struct.st_h2o_http1_conn_t* %0, %struct.phr_header* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.st_h2o_http1_conn_t*, align 8
  %5 = alloca %struct.phr_header*, align 8
  %6 = alloca i64, align 8
  store %struct.st_h2o_http1_conn_t* %0, %struct.st_h2o_http1_conn_t** %4, align 8
  store %struct.phr_header* %1, %struct.phr_header** %5, align 8
  %7 = load %struct.phr_header*, %struct.phr_header** %5, align 8
  %8 = getelementptr inbounds %struct.phr_header, %struct.phr_header* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = sext i32 %9 to i64
  %11 = icmp eq i64 %10, 17
  br i1 %11, label %12, label %28

12:                                               ; preds = %2
  %13 = load %struct.phr_header*, %struct.phr_header** %5, align 8
  %14 = getelementptr inbounds %struct.phr_header, %struct.phr_header* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.phr_header*, %struct.phr_header** %5, align 8
  %17 = getelementptr inbounds %struct.phr_header, %struct.phr_header* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @H2O_STRLIT(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %20 = call i32 @h2o_lcstris(i32 %15, i32 %18, i32 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %12
  %23 = load %struct.st_h2o_http1_conn_t*, %struct.st_h2o_http1_conn_t** %4, align 8
  %24 = call i32 @entity_read_send_error_400(%struct.st_h2o_http1_conn_t* %23, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %64

25:                                               ; preds = %12
  %26 = load %struct.st_h2o_http1_conn_t*, %struct.st_h2o_http1_conn_t** %4, align 8
  %27 = call i32 @create_chunked_entity_reader(%struct.st_h2o_http1_conn_t* %26)
  store i32 %27, i32* %3, align 4
  br label %64

28:                                               ; preds = %2
  %29 = load %struct.phr_header*, %struct.phr_header** %5, align 8
  %30 = getelementptr inbounds %struct.phr_header, %struct.phr_header* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.phr_header*, %struct.phr_header** %5, align 8
  %33 = getelementptr inbounds %struct.phr_header, %struct.phr_header* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i64 @h2o_strtosize(i32 %31, i32 %34)
  store i64 %35, i64* %6, align 8
  %36 = load i64, i64* %6, align 8
  %37 = load i64, i64* @SIZE_MAX, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %28
  %40 = load %struct.st_h2o_http1_conn_t*, %struct.st_h2o_http1_conn_t** %4, align 8
  %41 = call i32 @entity_read_send_error_400(%struct.st_h2o_http1_conn_t* %40, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %64

42:                                               ; preds = %28
  %43 = load i64, i64* %6, align 8
  %44 = load %struct.st_h2o_http1_conn_t*, %struct.st_h2o_http1_conn_t** %4, align 8
  %45 = getelementptr inbounds %struct.st_h2o_http1_conn_t, %struct.st_h2o_http1_conn_t* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 0
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp ugt i64 %43, %51
  br i1 %52, label %53, label %56

53:                                               ; preds = %42
  %54 = load %struct.st_h2o_http1_conn_t*, %struct.st_h2o_http1_conn_t** %4, align 8
  %55 = call i32 @entity_read_send_error_413(%struct.st_h2o_http1_conn_t* %54, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %64

56:                                               ; preds = %42
  %57 = load i64, i64* %6, align 8
  %58 = load %struct.st_h2o_http1_conn_t*, %struct.st_h2o_http1_conn_t** %4, align 8
  %59 = getelementptr inbounds %struct.st_h2o_http1_conn_t, %struct.st_h2o_http1_conn_t* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 0
  store i64 %57, i64* %60, align 8
  %61 = load %struct.st_h2o_http1_conn_t*, %struct.st_h2o_http1_conn_t** %4, align 8
  %62 = load i64, i64* %6, align 8
  %63 = call i32 @create_content_length_entity_reader(%struct.st_h2o_http1_conn_t* %61, i64 %62)
  store i32 %63, i32* %3, align 4
  br label %64

64:                                               ; preds = %56, %53, %39, %25, %22
  %65 = load i32, i32* %3, align 4
  ret i32 %65
}

declare dso_local i32 @h2o_lcstris(i32, i32, i32) #1

declare dso_local i32 @H2O_STRLIT(i8*) #1

declare dso_local i32 @entity_read_send_error_400(%struct.st_h2o_http1_conn_t*, i8*, i8*) #1

declare dso_local i32 @create_chunked_entity_reader(%struct.st_h2o_http1_conn_t*) #1

declare dso_local i64 @h2o_strtosize(i32, i32) #1

declare dso_local i32 @entity_read_send_error_413(%struct.st_h2o_http1_conn_t*, i8*, i8*) #1

declare dso_local i32 @create_content_length_entity_reader(%struct.st_h2o_http1_conn_t*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
