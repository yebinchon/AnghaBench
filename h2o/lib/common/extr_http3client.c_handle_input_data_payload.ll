; ModuleID = '/home/carl/AnghaBench/h2o/lib/common/extr_http3client.c_handle_input_data_payload.c'
source_filename = "/home/carl/AnghaBench/h2o/lib/common/extr_http3client.c_handle_input_data_payload.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.st_h2o_http3client_req_t = type { i64, %struct.TYPE_6__, i32, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 (%struct.TYPE_6__*, i8*)* }
%struct.TYPE_4__ = type { i32 }

@handle_input_expect_data_frame = common dso_local global i32 0, align 4
@H2O_HTTP3_ERROR_EOS = common dso_local global i32 0, align 4
@h2o_httpclient_error_is_eos = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [14 x i8] c"reset by peer\00", align 1
@H2O_HTTP3_ERROR_INTERNAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.st_h2o_http3client_req_t*, i32**, i32*, i32, i8**)* @handle_input_data_payload to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_input_data_payload(%struct.st_h2o_http3client_req_t* %0, i32** %1, i32* %2, i32 %3, i8** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.st_h2o_http3client_req_t*, align 8
  %8 = alloca i32**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8**, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  store %struct.st_h2o_http3client_req_t* %0, %struct.st_h2o_http3client_req_t** %7, align 8
  store i32** %1, i32*** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i8** %4, i8*** %11, align 8
  %14 = load %struct.st_h2o_http3client_req_t*, %struct.st_h2o_http3client_req_t** %7, align 8
  %15 = getelementptr inbounds %struct.st_h2o_http3client_req_t, %struct.st_h2o_http3client_req_t* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  store i64 %16, i64* %12, align 8
  %17 = load i32*, i32** %9, align 8
  %18 = load i32**, i32*** %8, align 8
  %19 = load i32*, i32** %18, align 8
  %20 = ptrtoint i32* %17 to i64
  %21 = ptrtoint i32* %19 to i64
  %22 = sub i64 %20, %21
  %23 = sdiv exact i64 %22, 4
  %24 = load i64, i64* %12, align 8
  %25 = icmp ult i64 %23, %24
  br i1 %25, label %26, label %34

26:                                               ; preds = %5
  %27 = load i32*, i32** %9, align 8
  %28 = load i32**, i32*** %8, align 8
  %29 = load i32*, i32** %28, align 8
  %30 = ptrtoint i32* %27 to i64
  %31 = ptrtoint i32* %29 to i64
  %32 = sub i64 %30, %31
  %33 = sdiv exact i64 %32, 4
  store i64 %33, i64* %12, align 8
  br label %34

34:                                               ; preds = %26, %5
  %35 = load %struct.st_h2o_http3client_req_t*, %struct.st_h2o_http3client_req_t** %7, align 8
  %36 = getelementptr inbounds %struct.st_h2o_http3client_req_t, %struct.st_h2o_http3client_req_t* %35, i32 0, i32 3
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i32**, i32*** %8, align 8
  %39 = load i32*, i32** %38, align 8
  %40 = load i64, i64* %12, align 8
  %41 = call i32 @h2o_buffer_append(i32* %37, i32* %39, i64 %40)
  %42 = load i64, i64* %12, align 8
  %43 = load i32**, i32*** %8, align 8
  %44 = load i32*, i32** %43, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 %42
  store i32* %45, i32** %43, align 8
  %46 = load i64, i64* %12, align 8
  %47 = load %struct.st_h2o_http3client_req_t*, %struct.st_h2o_http3client_req_t** %7, align 8
  %48 = getelementptr inbounds %struct.st_h2o_http3client_req_t, %struct.st_h2o_http3client_req_t* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = sub i64 %49, %46
  store i64 %50, i64* %48, align 8
  %51 = load %struct.st_h2o_http3client_req_t*, %struct.st_h2o_http3client_req_t** %7, align 8
  %52 = getelementptr inbounds %struct.st_h2o_http3client_req_t, %struct.st_h2o_http3client_req_t* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %34
  %56 = load i32, i32* @handle_input_expect_data_frame, align 4
  %57 = load %struct.st_h2o_http3client_req_t*, %struct.st_h2o_http3client_req_t** %7, align 8
  %58 = getelementptr inbounds %struct.st_h2o_http3client_req_t, %struct.st_h2o_http3client_req_t* %57, i32 0, i32 2
  store i32 %56, i32* %58, align 8
  br label %59

59:                                               ; preds = %55, %34
  store i8* null, i8** %13, align 8
  %60 = load i32**, i32*** %8, align 8
  %61 = load i32*, i32** %60, align 8
  %62 = load i32*, i32** %9, align 8
  %63 = icmp eq i32* %61, %62
  br i1 %63, label %64, label %81

64:                                               ; preds = %59
  %65 = load i32, i32* %10, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %81

67:                                               ; preds = %64
  %68 = load i32, i32* %10, align 4
  %69 = load i32, i32* @H2O_HTTP3_ERROR_EOS, align 4
  %70 = icmp eq i32 %68, %69
  br i1 %70, label %71, label %78

71:                                               ; preds = %67
  %72 = load %struct.st_h2o_http3client_req_t*, %struct.st_h2o_http3client_req_t** %7, align 8
  %73 = getelementptr inbounds %struct.st_h2o_http3client_req_t, %struct.st_h2o_http3client_req_t* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = icmp eq i64 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %71
  %77 = load i8*, i8** @h2o_httpclient_error_is_eos, align 8
  br label %79

78:                                               ; preds = %71, %67
  br label %79

79:                                               ; preds = %78, %76
  %80 = phi i8* [ %77, %76 ], [ getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), %78 ]
  store i8* %80, i8** %13, align 8
  br label %82

81:                                               ; preds = %64, %59
  store i8* null, i8** %13, align 8
  br label %82

82:                                               ; preds = %81, %79
  %83 = load %struct.st_h2o_http3client_req_t*, %struct.st_h2o_http3client_req_t** %7, align 8
  %84 = getelementptr inbounds %struct.st_h2o_http3client_req_t, %struct.st_h2o_http3client_req_t* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 0
  %87 = load i64 (%struct.TYPE_6__*, i8*)*, i64 (%struct.TYPE_6__*, i8*)** %86, align 8
  %88 = load %struct.st_h2o_http3client_req_t*, %struct.st_h2o_http3client_req_t** %7, align 8
  %89 = getelementptr inbounds %struct.st_h2o_http3client_req_t, %struct.st_h2o_http3client_req_t* %88, i32 0, i32 1
  %90 = load i8*, i8** %13, align 8
  %91 = call i64 %87(%struct.TYPE_6__* %89, i8* %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %95

93:                                               ; preds = %82
  %94 = load i32, i32* @H2O_HTTP3_ERROR_INTERNAL, align 4
  store i32 %94, i32* %6, align 4
  br label %96

95:                                               ; preds = %82
  store i32 0, i32* %6, align 4
  br label %96

96:                                               ; preds = %95, %93
  %97 = load i32, i32* %6, align 4
  ret i32 %97
}

declare dso_local i32 @h2o_buffer_append(i32*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
