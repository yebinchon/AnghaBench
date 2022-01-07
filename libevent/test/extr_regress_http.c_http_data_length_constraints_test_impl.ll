; ModuleID = '/home/carl/AnghaBench/libevent/test/extr_regress_http.c_http_data_length_constraints_test_impl.c'
source_filename = "/home/carl/AnghaBench/libevent/test/extr_regress_http.c_http_data_length_constraints_test_impl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.basic_test_data = type { i32 }
%struct.evhttp_connection = type opaque
%struct.evhttp_request = type { i32 }
%struct.evhttp = type { i32 }

@test_ok = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Creating connection to :%i\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"127.0.0.1\00", align 1
@EVHTTP_CON_READ_ON_WRITE_ERROR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"Set max header size %zu\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"Host\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"somehost\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"Longheader\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"GET /?arg=val\00", align 1
@EVHTTP_REQ_GET = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [10 x i8] c"/?arg=val\00", align 1
@.str.8 = private unnamed_addr constant [22 x i8] c"Couldn't make request\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"GET %s\00", align 1
@.str.10 = private unnamed_addr constant [25 x i8] c"Set body header size %zu\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"POST /\00", align 1
@EVHTTP_REQ_POST = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"Expect\00", align 1
@.str.15 = private unnamed_addr constant [13 x i8] c"100-continue\00", align 1
@.str.16 = private unnamed_addr constant [59 x i8] c"POST / (Expect: 100-continue, http_large_entity_test_done)\00", align 1
@.str.17 = private unnamed_addr constant [57 x i8] c"POST / (Expect: 100-continue, http_dispatcher_test_done)\00", align 1
@.str.18 = private unnamed_addr constant [13 x i8] c"101-continue\00", align 1
@.str.19 = private unnamed_addr constant [30 x i8] c"POST / (Expect: 101-continue)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @http_data_length_constraints_test_impl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @http_data_length_constraints_test_impl(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.basic_test_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.evhttp_connection*, align 8
  %8 = alloca %struct.evhttp_request*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca void (%struct.evhttp_request*, i8*)*, align 8
  %13 = alloca %struct.evhttp*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %14 = load i8*, i8** %3, align 8
  %15 = bitcast i8* %14 to %struct.basic_test_data*
  store %struct.basic_test_data* %15, %struct.basic_test_data** %5, align 8
  store i32 0, i32* %6, align 4
  store %struct.evhttp_connection* null, %struct.evhttp_connection** %7, align 8
  store %struct.evhttp_request* null, %struct.evhttp_request** %8, align 8
  store i8* null, i8** %9, align 8
  store i64 1048576, i64* %10, align 8
  store i64 3145728, i64* %11, align 8
  %16 = load %struct.basic_test_data*, %struct.basic_test_data** %5, align 8
  %17 = getelementptr inbounds %struct.basic_test_data, %struct.basic_test_data* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call %struct.evhttp* @http_setup(i32* %6, i32 %18, i32 0)
  store %struct.evhttp* %19, %struct.evhttp** %13, align 8
  store i32 0, i32* @test_ok, align 4
  store void (%struct.evhttp_request*, i8*)* @http_failed_request_done, void (%struct.evhttp_request*, i8*)** %12, align 8
  %20 = load i32, i32* %4, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %2
  store void (%struct.evhttp_request*, i8*)* @http_data_length_constraints_test_done, void (%struct.evhttp_request*, i8*)** %12, align 8
  br label %23

23:                                               ; preds = %22, %2
  %24 = call i32 @tt_assert(i32 1)
  %25 = call i8* @malloc(i64 3145728)
  store i8* %25, i8** %9, align 8
  %26 = load i8*, i8** %9, align 8
  %27 = call i32 @memset(i8* %26, i8 signext 97, i64 3145728)
  %28 = load i8*, i8** %9, align 8
  %29 = getelementptr inbounds i8, i8* %28, i64 3145727
  store i8 0, i8* %29, align 1
  %30 = load i32, i32* %6, align 4
  %31 = sext i32 %30 to i64
  %32 = inttoptr i64 %31 to i8*
  %33 = call i32 @TT_BLATHER(i8* %32)
  %34 = load %struct.basic_test_data*, %struct.basic_test_data** %5, align 8
  %35 = getelementptr inbounds %struct.basic_test_data, %struct.basic_test_data* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %6, align 4
  %38 = call %struct.evhttp_request* @evhttp_connection_base_new(i32 %36, i32* null, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %37)
  %39 = bitcast %struct.evhttp_request* %38 to %struct.evhttp_connection*
  store %struct.evhttp_connection* %39, %struct.evhttp_connection** %7, align 8
  %40 = load %struct.evhttp_connection*, %struct.evhttp_connection** %7, align 8
  %41 = ptrtoint %struct.evhttp_connection* %40 to i32
  %42 = call i32 @tt_assert(i32 %41)
  %43 = load i32, i32* %4, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %54

45:                                               ; preds = %23
  %46 = load %struct.evhttp_connection*, %struct.evhttp_connection** %7, align 8
  %47 = bitcast %struct.evhttp_connection* %46 to %struct.evhttp_request*
  %48 = load i32, i32* @EVHTTP_CON_READ_ON_WRITE_ERROR, align 4
  %49 = call i32 @evhttp_connection_set_flags(%struct.evhttp_request* %47, i32 %48)
  %50 = icmp ne i32 %49, 0
  %51 = xor i1 %50, true
  %52 = zext i1 %51 to i32
  %53 = call i32 @tt_assert(i32 %52)
  br label %54

54:                                               ; preds = %45, %23
  %55 = load %struct.evhttp_connection*, %struct.evhttp_connection** %7, align 8
  %56 = bitcast %struct.evhttp_connection* %55 to %struct.evhttp_request*
  %57 = call i32 @evhttp_connection_set_local_address(%struct.evhttp_request* %56, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %58 = load %struct.evhttp*, %struct.evhttp** %13, align 8
  %59 = call i32 @evhttp_set_max_headers_size(%struct.evhttp* %58, i64 3145727)
  %60 = call i32 @TT_BLATHER(i8* inttoptr (i64 3145727 to i8*))
  %61 = load %struct.basic_test_data*, %struct.basic_test_data** %5, align 8
  %62 = getelementptr inbounds %struct.basic_test_data, %struct.basic_test_data* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call %struct.evhttp_request* @evhttp_request_new(void (%struct.evhttp_request*, i8*)* @http_data_length_constraints_test_done, i32 %63)
  store %struct.evhttp_request* %64, %struct.evhttp_request** %8, align 8
  %65 = load %struct.evhttp_request*, %struct.evhttp_request** %8, align 8
  %66 = ptrtoint %struct.evhttp_request* %65 to i32
  %67 = call i32 @tt_assert(i32 %66)
  %68 = load %struct.evhttp_request*, %struct.evhttp_request** %8, align 8
  %69 = call i32 @evhttp_request_get_output_headers(%struct.evhttp_request* %68)
  %70 = call i32 @evhttp_add_header(i32 %69, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  %71 = load %struct.evhttp_request*, %struct.evhttp_request** %8, align 8
  %72 = call i32 @evhttp_request_get_output_headers(%struct.evhttp_request* %71)
  %73 = load i8*, i8** %9, align 8
  %74 = call i32 @evhttp_add_header(i32 %72, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i8* %73)
  %75 = call i32 @TT_BLATHER(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0))
  %76 = load %struct.evhttp_connection*, %struct.evhttp_connection** %7, align 8
  %77 = bitcast %struct.evhttp_connection* %76 to %struct.evhttp_request*
  %78 = load %struct.evhttp_request*, %struct.evhttp_request** %8, align 8
  %79 = load i32, i32* @EVHTTP_REQ_GET, align 4
  %80 = call i32 @evhttp_make_request(%struct.evhttp_request* %77, %struct.evhttp_request* %78, i32 %79, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0))
  %81 = icmp eq i32 %80, -1
  br i1 %81, label %82, label %84

82:                                               ; preds = %54
  %83 = call i32 @tt_abort_msg(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i64 0, i64 0))
  br label %84

84:                                               ; preds = %82, %54
  %85 = load %struct.basic_test_data*, %struct.basic_test_data** %5, align 8
  %86 = getelementptr inbounds %struct.basic_test_data, %struct.basic_test_data* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @event_base_dispatch(i32 %87)
  %89 = load %struct.basic_test_data*, %struct.basic_test_data** %5, align 8
  %90 = getelementptr inbounds %struct.basic_test_data, %struct.basic_test_data* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = call %struct.evhttp_request* @evhttp_request_new(void (%struct.evhttp_request*, i8*)* @http_data_length_constraints_test_done, i32 %91)
  store %struct.evhttp_request* %92, %struct.evhttp_request** %8, align 8
  %93 = load %struct.evhttp_request*, %struct.evhttp_request** %8, align 8
  %94 = ptrtoint %struct.evhttp_request* %93 to i32
  %95 = call i32 @tt_assert(i32 %94)
  %96 = load %struct.evhttp_request*, %struct.evhttp_request** %8, align 8
  %97 = call i32 @evhttp_request_get_output_headers(%struct.evhttp_request* %96)
  %98 = call i32 @evhttp_add_header(i32 %97, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  %99 = load i8*, i8** %9, align 8
  %100 = call i32 @TT_BLATHER(i8* %99)
  %101 = load %struct.evhttp_connection*, %struct.evhttp_connection** %7, align 8
  %102 = bitcast %struct.evhttp_connection* %101 to %struct.evhttp_request*
  %103 = load %struct.evhttp_request*, %struct.evhttp_request** %8, align 8
  %104 = load i32, i32* @EVHTTP_REQ_GET, align 4
  %105 = load i8*, i8** %9, align 8
  %106 = call i32 @evhttp_make_request(%struct.evhttp_request* %102, %struct.evhttp_request* %103, i32 %104, i8* %105)
  %107 = icmp eq i32 %106, -1
  br i1 %107, label %108, label %110

108:                                              ; preds = %84
  %109 = call i32 @tt_abort_msg(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i64 0, i64 0))
  br label %110

110:                                              ; preds = %108, %84
  %111 = load %struct.basic_test_data*, %struct.basic_test_data** %5, align 8
  %112 = getelementptr inbounds %struct.basic_test_data, %struct.basic_test_data* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @event_base_dispatch(i32 %113)
  %115 = load %struct.evhttp*, %struct.evhttp** %13, align 8
  %116 = call i32 @evhttp_set_max_body_size(%struct.evhttp* %115, i64 3145726)
  %117 = call i32 @TT_BLATHER(i8* inttoptr (i64 3145726 to i8*))
  %118 = load i32, i32* %4, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %121

120:                                              ; preds = %110
  store void (%struct.evhttp_request*, i8*)* @http_large_entity_test_done, void (%struct.evhttp_request*, i8*)** %12, align 8
  br label %121

121:                                              ; preds = %120, %110
  %122 = load void (%struct.evhttp_request*, i8*)*, void (%struct.evhttp_request*, i8*)** %12, align 8
  %123 = load %struct.basic_test_data*, %struct.basic_test_data** %5, align 8
  %124 = getelementptr inbounds %struct.basic_test_data, %struct.basic_test_data* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = call %struct.evhttp_request* @evhttp_request_new(void (%struct.evhttp_request*, i8*)* %122, i32 %125)
  store %struct.evhttp_request* %126, %struct.evhttp_request** %8, align 8
  %127 = load %struct.evhttp_request*, %struct.evhttp_request** %8, align 8
  %128 = call i32 @evhttp_request_get_output_headers(%struct.evhttp_request* %127)
  %129 = call i32 @evhttp_add_header(i32 %128, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  %130 = load %struct.evhttp_request*, %struct.evhttp_request** %8, align 8
  %131 = call i32 @evhttp_request_get_output_buffer(%struct.evhttp_request* %130)
  %132 = load i8*, i8** %9, align 8
  %133 = call i32 @evbuffer_add_printf(i32 %131, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0), i8* %132)
  %134 = call i32 @TT_BLATHER(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i64 0, i64 0))
  %135 = load %struct.evhttp_connection*, %struct.evhttp_connection** %7, align 8
  %136 = bitcast %struct.evhttp_connection* %135 to %struct.evhttp_request*
  %137 = load %struct.evhttp_request*, %struct.evhttp_request** %8, align 8
  %138 = load i32, i32* @EVHTTP_REQ_POST, align 4
  %139 = call i32 @evhttp_make_request(%struct.evhttp_request* %136, %struct.evhttp_request* %137, i32 %138, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i64 0, i64 0))
  %140 = icmp eq i32 %139, -1
  br i1 %140, label %141, label %143

141:                                              ; preds = %121
  %142 = call i32 @tt_abort_msg(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i64 0, i64 0))
  br label %143

143:                                              ; preds = %141, %121
  %144 = load %struct.basic_test_data*, %struct.basic_test_data** %5, align 8
  %145 = getelementptr inbounds %struct.basic_test_data, %struct.basic_test_data* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = call i32 @event_base_dispatch(i32 %146)
  %148 = load %struct.basic_test_data*, %struct.basic_test_data** %5, align 8
  %149 = getelementptr inbounds %struct.basic_test_data, %struct.basic_test_data* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = call %struct.evhttp_request* @evhttp_request_new(void (%struct.evhttp_request*, i8*)* @http_large_entity_test_done, i32 %150)
  store %struct.evhttp_request* %151, %struct.evhttp_request** %8, align 8
  %152 = load %struct.evhttp_request*, %struct.evhttp_request** %8, align 8
  %153 = call i32 @evhttp_request_get_output_headers(%struct.evhttp_request* %152)
  %154 = call i32 @evhttp_add_header(i32 %153, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  %155 = load %struct.evhttp_request*, %struct.evhttp_request** %8, align 8
  %156 = call i32 @evhttp_request_get_output_headers(%struct.evhttp_request* %155)
  %157 = call i32 @evhttp_add_header(i32 %156, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.15, i64 0, i64 0))
  %158 = load %struct.evhttp_request*, %struct.evhttp_request** %8, align 8
  %159 = call i32 @evhttp_request_get_output_buffer(%struct.evhttp_request* %158)
  %160 = load i8*, i8** %9, align 8
  %161 = call i32 @evbuffer_add_printf(i32 %159, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0), i8* %160)
  %162 = call i32 @TT_BLATHER(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.16, i64 0, i64 0))
  %163 = load %struct.evhttp_connection*, %struct.evhttp_connection** %7, align 8
  %164 = bitcast %struct.evhttp_connection* %163 to %struct.evhttp_request*
  %165 = load %struct.evhttp_request*, %struct.evhttp_request** %8, align 8
  %166 = load i32, i32* @EVHTTP_REQ_POST, align 4
  %167 = call i32 @evhttp_make_request(%struct.evhttp_request* %164, %struct.evhttp_request* %165, i32 %166, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i64 0, i64 0))
  %168 = icmp eq i32 %167, -1
  br i1 %168, label %169, label %171

169:                                              ; preds = %143
  %170 = call i32 @tt_abort_msg(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i64 0, i64 0))
  br label %171

171:                                              ; preds = %169, %143
  %172 = load %struct.basic_test_data*, %struct.basic_test_data** %5, align 8
  %173 = getelementptr inbounds %struct.basic_test_data, %struct.basic_test_data* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 4
  %175 = call i32 @event_base_dispatch(i32 %174)
  %176 = load i8*, i8** %9, align 8
  %177 = getelementptr inbounds i8, i8* %176, i64 1048576
  store i8 0, i8* %177, align 1
  %178 = load %struct.basic_test_data*, %struct.basic_test_data** %5, align 8
  %179 = getelementptr inbounds %struct.basic_test_data, %struct.basic_test_data* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 4
  %181 = call %struct.evhttp_request* @evhttp_request_new(void (%struct.evhttp_request*, i8*)* @http_dispatcher_test_done, i32 %180)
  store %struct.evhttp_request* %181, %struct.evhttp_request** %8, align 8
  %182 = load %struct.evhttp_request*, %struct.evhttp_request** %8, align 8
  %183 = call i32 @evhttp_request_get_output_headers(%struct.evhttp_request* %182)
  %184 = call i32 @evhttp_add_header(i32 %183, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  %185 = load %struct.evhttp_request*, %struct.evhttp_request** %8, align 8
  %186 = call i32 @evhttp_request_get_output_headers(%struct.evhttp_request* %185)
  %187 = call i32 @evhttp_add_header(i32 %186, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.15, i64 0, i64 0))
  %188 = load %struct.evhttp_request*, %struct.evhttp_request** %8, align 8
  %189 = call i32 @evhttp_request_get_output_buffer(%struct.evhttp_request* %188)
  %190 = load i8*, i8** %9, align 8
  %191 = call i32 @evbuffer_add_printf(i32 %189, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0), i8* %190)
  %192 = call i32 @TT_BLATHER(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.17, i64 0, i64 0))
  %193 = load %struct.evhttp_connection*, %struct.evhttp_connection** %7, align 8
  %194 = bitcast %struct.evhttp_connection* %193 to %struct.evhttp_request*
  %195 = load %struct.evhttp_request*, %struct.evhttp_request** %8, align 8
  %196 = load i32, i32* @EVHTTP_REQ_POST, align 4
  %197 = call i32 @evhttp_make_request(%struct.evhttp_request* %194, %struct.evhttp_request* %195, i32 %196, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i64 0, i64 0))
  %198 = icmp eq i32 %197, -1
  br i1 %198, label %199, label %201

199:                                              ; preds = %171
  %200 = call i32 @tt_abort_msg(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i64 0, i64 0))
  br label %201

201:                                              ; preds = %199, %171
  %202 = load %struct.basic_test_data*, %struct.basic_test_data** %5, align 8
  %203 = getelementptr inbounds %struct.basic_test_data, %struct.basic_test_data* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 4
  %205 = call i32 @event_base_dispatch(i32 %204)
  %206 = load i32, i32* %4, align 4
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %208, label %209

208:                                              ; preds = %201
  store void (%struct.evhttp_request*, i8*)* @http_expectation_failed_done, void (%struct.evhttp_request*, i8*)** %12, align 8
  br label %209

209:                                              ; preds = %208, %201
  %210 = load void (%struct.evhttp_request*, i8*)*, void (%struct.evhttp_request*, i8*)** %12, align 8
  %211 = load %struct.basic_test_data*, %struct.basic_test_data** %5, align 8
  %212 = getelementptr inbounds %struct.basic_test_data, %struct.basic_test_data* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 4
  %214 = call %struct.evhttp_request* @evhttp_request_new(void (%struct.evhttp_request*, i8*)* %210, i32 %213)
  store %struct.evhttp_request* %214, %struct.evhttp_request** %8, align 8
  %215 = load %struct.evhttp_request*, %struct.evhttp_request** %8, align 8
  %216 = call i32 @evhttp_request_get_output_headers(%struct.evhttp_request* %215)
  %217 = call i32 @evhttp_add_header(i32 %216, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  %218 = load %struct.evhttp_request*, %struct.evhttp_request** %8, align 8
  %219 = call i32 @evhttp_request_get_output_headers(%struct.evhttp_request* %218)
  %220 = call i32 @evhttp_add_header(i32 %219, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.18, i64 0, i64 0))
  %221 = load %struct.evhttp_request*, %struct.evhttp_request** %8, align 8
  %222 = call i32 @evhttp_request_get_output_buffer(%struct.evhttp_request* %221)
  %223 = load i8*, i8** %9, align 8
  %224 = call i32 @evbuffer_add_printf(i32 %222, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0), i8* %223)
  %225 = call i32 @TT_BLATHER(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.19, i64 0, i64 0))
  %226 = load %struct.evhttp_connection*, %struct.evhttp_connection** %7, align 8
  %227 = bitcast %struct.evhttp_connection* %226 to %struct.evhttp_request*
  %228 = load %struct.evhttp_request*, %struct.evhttp_request** %8, align 8
  %229 = load i32, i32* @EVHTTP_REQ_POST, align 4
  %230 = call i32 @evhttp_make_request(%struct.evhttp_request* %227, %struct.evhttp_request* %228, i32 %229, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i64 0, i64 0))
  %231 = icmp eq i32 %230, -1
  br i1 %231, label %232, label %234

232:                                              ; preds = %209
  %233 = call i32 @tt_abort_msg(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i64 0, i64 0))
  br label %234

234:                                              ; preds = %232, %209
  %235 = load %struct.basic_test_data*, %struct.basic_test_data** %5, align 8
  %236 = getelementptr inbounds %struct.basic_test_data, %struct.basic_test_data* %235, i32 0, i32 0
  %237 = load i32, i32* %236, align 4
  %238 = call i32 @event_base_dispatch(i32 %237)
  store i32 1, i32* @test_ok, align 4
  br label %239

239:                                              ; preds = %234
  %240 = load %struct.evhttp_connection*, %struct.evhttp_connection** %7, align 8
  %241 = icmp ne %struct.evhttp_connection* %240, null
  br i1 %241, label %242, label %246

242:                                              ; preds = %239
  %243 = load %struct.evhttp_connection*, %struct.evhttp_connection** %7, align 8
  %244 = bitcast %struct.evhttp_connection* %243 to %struct.evhttp_request*
  %245 = call i32 @evhttp_connection_free(%struct.evhttp_request* %244)
  br label %246

246:                                              ; preds = %242, %239
  %247 = load %struct.evhttp*, %struct.evhttp** %13, align 8
  %248 = icmp ne %struct.evhttp* %247, null
  br i1 %248, label %249, label %252

249:                                              ; preds = %246
  %250 = load %struct.evhttp*, %struct.evhttp** %13, align 8
  %251 = call i32 @evhttp_free(%struct.evhttp* %250)
  br label %252

252:                                              ; preds = %249, %246
  %253 = load i8*, i8** %9, align 8
  %254 = icmp ne i8* %253, null
  br i1 %254, label %255, label %258

255:                                              ; preds = %252
  %256 = load i8*, i8** %9, align 8
  %257 = call i32 @free(i8* %256)
  br label %258

258:                                              ; preds = %255, %252
  ret void
}

declare dso_local %struct.evhttp* @http_setup(i32*, i32, i32) #1

declare dso_local void @http_failed_request_done(%struct.evhttp_request*, i8*) #1

declare dso_local void @http_data_length_constraints_test_done(%struct.evhttp_request*, i8*) #1

declare dso_local i32 @tt_assert(i32) #1

declare dso_local i8* @malloc(i64) #1

declare dso_local i32 @memset(i8*, i8 signext, i64) #1

declare dso_local i32 @TT_BLATHER(i8*) #1

declare dso_local %struct.evhttp_request* @evhttp_connection_base_new(i32, i32*, i8*, i32) #1

declare dso_local i32 @evhttp_connection_set_flags(%struct.evhttp_request*, i32) #1

declare dso_local i32 @evhttp_connection_set_local_address(%struct.evhttp_request*, i8*) #1

declare dso_local i32 @evhttp_set_max_headers_size(%struct.evhttp*, i64) #1

declare dso_local %struct.evhttp_request* @evhttp_request_new(void (%struct.evhttp_request*, i8*)*, i32) #1

declare dso_local i32 @evhttp_add_header(i32, i8*, i8*) #1

declare dso_local i32 @evhttp_request_get_output_headers(%struct.evhttp_request*) #1

declare dso_local i32 @evhttp_make_request(%struct.evhttp_request*, %struct.evhttp_request*, i32, i8*) #1

declare dso_local i32 @tt_abort_msg(i8*) #1

declare dso_local i32 @event_base_dispatch(i32) #1

declare dso_local i32 @evhttp_set_max_body_size(%struct.evhttp*, i64) #1

declare dso_local void @http_large_entity_test_done(%struct.evhttp_request*, i8*) #1

declare dso_local i32 @evbuffer_add_printf(i32, i8*, i8*) #1

declare dso_local i32 @evhttp_request_get_output_buffer(%struct.evhttp_request*) #1

declare dso_local void @http_dispatcher_test_done(%struct.evhttp_request*, i8*) #1

declare dso_local void @http_expectation_failed_done(%struct.evhttp_request*, i8*) #1

declare dso_local i32 @evhttp_connection_free(%struct.evhttp_request*) #1

declare dso_local i32 @evhttp_free(%struct.evhttp*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
