; ModuleID = '/home/carl/AnghaBench/h2o/lib/common/extr_http3client.c_handle_input_expect_data_frame.c'
source_filename = "/home/carl/AnghaBench/h2o/lib/common/extr_http3client.c_handle_input_expect_data_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.st_h2o_http3client_req_t = type { {}*, i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 (%struct.TYPE_7__*, i8*)* }
%struct.TYPE_6__ = type { i32, i32 }

@H2O_HTTP3_STREAM_TYPE_REQUEST = common dso_local global i32 0, align 4
@H2O_HTTP3_ERROR_INCOMPLETE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"malformed frame\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @handle_input_expect_data_frame(%struct.st_h2o_http3client_req_t* %0, i32** %1, i32* %2, i32 %3, i8** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.st_h2o_http3client_req_t*, align 8
  %8 = alloca i32**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8**, align 8
  %12 = alloca %struct.TYPE_6__, align 4
  %13 = alloca i32, align 4
  store %struct.st_h2o_http3client_req_t* %0, %struct.st_h2o_http3client_req_t** %7, align 8
  store i32** %1, i32*** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i8** %4, i8*** %11, align 8
  %14 = load i32, i32* @H2O_HTTP3_STREAM_TYPE_REQUEST, align 4
  %15 = load i32**, i32*** %8, align 8
  %16 = load i32*, i32** %9, align 8
  %17 = load i8**, i8*** %11, align 8
  %18 = call i32 @h2o_http3_read_frame(%struct.TYPE_6__* %12, i32 1, i32 %14, i32** %15, i32* %16, i8** %17)
  store i32 %18, i32* %13, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %39

20:                                               ; preds = %5
  %21 = load i32, i32* %13, align 4
  %22 = load i32, i32* @H2O_HTTP3_ERROR_INCOMPLETE, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %29

24:                                               ; preds = %20
  %25 = load i32, i32* %10, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %24
  %28 = load i32, i32* %13, align 4
  store i32 %28, i32* %6, align 4
  br label %58

29:                                               ; preds = %24, %20
  %30 = load %struct.st_h2o_http3client_req_t*, %struct.st_h2o_http3client_req_t** %7, align 8
  %31 = getelementptr inbounds %struct.st_h2o_http3client_req_t, %struct.st_h2o_http3client_req_t* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load i32 (%struct.TYPE_7__*, i8*)*, i32 (%struct.TYPE_7__*, i8*)** %33, align 8
  %35 = load %struct.st_h2o_http3client_req_t*, %struct.st_h2o_http3client_req_t** %7, align 8
  %36 = getelementptr inbounds %struct.st_h2o_http3client_req_t, %struct.st_h2o_http3client_req_t* %35, i32 0, i32 2
  %37 = call i32 %34(%struct.TYPE_7__* %36, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %38 = load i32, i32* %13, align 4
  store i32 %38, i32* %6, align 4
  br label %58

39:                                               ; preds = %5
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  switch i32 %41, label %43 [
    i32 128, label %42
  ]

42:                                               ; preds = %39
  br label %44

43:                                               ; preds = %39
  store i32 0, i32* %6, align 4
  br label %58

44:                                               ; preds = %42
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.st_h2o_http3client_req_t*, %struct.st_h2o_http3client_req_t** %7, align 8
  %48 = getelementptr inbounds %struct.st_h2o_http3client_req_t, %struct.st_h2o_http3client_req_t* %47, i32 0, i32 1
  store i32 %46, i32* %48, align 8
  %49 = load %struct.st_h2o_http3client_req_t*, %struct.st_h2o_http3client_req_t** %7, align 8
  %50 = getelementptr inbounds %struct.st_h2o_http3client_req_t, %struct.st_h2o_http3client_req_t* %49, i32 0, i32 0
  %51 = bitcast {}** %50 to i32 (%struct.st_h2o_http3client_req_t*, i32**, i32*, i32, i8**)**
  store i32 (%struct.st_h2o_http3client_req_t*, i32**, i32*, i32, i8**)* @handle_input_data_payload, i32 (%struct.st_h2o_http3client_req_t*, i32**, i32*, i32, i8**)** %51, align 8
  %52 = load %struct.st_h2o_http3client_req_t*, %struct.st_h2o_http3client_req_t** %7, align 8
  %53 = load i32**, i32*** %8, align 8
  %54 = load i32*, i32** %9, align 8
  %55 = load i32, i32* %10, align 4
  %56 = load i8**, i8*** %11, align 8
  %57 = call i32 @handle_input_data_payload(%struct.st_h2o_http3client_req_t* %52, i32** %53, i32* %54, i32 %55, i8** %56)
  store i32 %57, i32* %6, align 4
  br label %58

58:                                               ; preds = %44, %43, %29, %27
  %59 = load i32, i32* %6, align 4
  ret i32 %59
}

declare dso_local i32 @h2o_http3_read_frame(%struct.TYPE_6__*, i32, i32, i32**, i32*, i8**) #1

declare dso_local i32 @handle_input_data_payload(%struct.st_h2o_http3client_req_t*, i32**, i32*, i32, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
