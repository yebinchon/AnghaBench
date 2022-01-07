; ModuleID = '/home/carl/AnghaBench/libevent/test/extr_regress_http.c_http_connection_test_.c'
source_filename = "/home/carl/AnghaBench/libevent/test/extr_regress_http.c_http_connection_test_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.basic_test_data = type { i8* }
%struct.evdns_base = type { i32 }
%struct.evhttp_connection = type { i32 }
%struct.evhttp_request = type { i32 }
%struct.evhttp = type { i32 }

@HTTP_BIND_IPV6 = common dso_local global i32 0, align 4
@HTTP_BIND_SSL = common dso_local global i32 0, align 4
@test_ok = common dso_local global i32 0, align 4
@EVHTTP_REQ_GET = common dso_local global i32 0, align 4
@EVHTTP_REQ_CUSTOM = common dso_local global i32 0, align 4
@exit_base = common dso_local global i8* null, align 8
@ext_method_cb = common dso_local global i32 0, align 4
@http_request_done = common dso_local global i32 0, align 4
@BASIC_REQUEST_BODY = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [5 x i8] c"Host\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"somehost\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"/test\00", align 1
@stdout = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [8 x i8] c"FAILED\0A\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"Connection\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"close\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"couldn't make request\00", align 1
@http_request_empty_done = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [6 x i8] c"Empty\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"itis\00", align 1
@.str.9 = private unnamed_addr constant [22 x i8] c"Couldn't make request\00", align 1
@BEV_OPT_DEFER_CALLBACKS = common dso_local global i32 0, align 4
@BUFFEREVENT_SSL_CONNECTING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.basic_test_data*, i32, i8*, %struct.evdns_base*, i32, i32, i32)* @http_connection_test_ to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @http_connection_test_(%struct.basic_test_data* %0, i32 %1, i8* %2, %struct.evdns_base* %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca %struct.basic_test_data*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca %struct.evdns_base*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.evhttp_connection*, align 8
  %17 = alloca %struct.evhttp_request*, align 8
  %18 = alloca %struct.evhttp*, align 8
  %19 = alloca i32, align 4
  store %struct.basic_test_data* %0, %struct.basic_test_data** %8, align 8
  store i32 %1, i32* %9, align 4
  store i8* %2, i8** %10, align 8
  store %struct.evdns_base* %3, %struct.evdns_base** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store %struct.evhttp_connection* null, %struct.evhttp_connection** %16, align 8
  store %struct.evhttp_request* null, %struct.evhttp_request** %17, align 8
  store i32 0, i32* %19, align 4
  %20 = load i32, i32* %12, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %7
  %23 = load i32, i32* @HTTP_BIND_IPV6, align 4
  %24 = load i32, i32* %19, align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* %19, align 4
  br label %26

26:                                               ; preds = %22, %7
  %27 = load i32, i32* %14, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %26
  %30 = load i32, i32* @HTTP_BIND_SSL, align 4
  %31 = load i32, i32* %19, align 4
  %32 = or i32 %31, %30
  store i32 %32, i32* %19, align 4
  br label %33

33:                                               ; preds = %29, %26
  %34 = load %struct.basic_test_data*, %struct.basic_test_data** %8, align 8
  %35 = getelementptr inbounds %struct.basic_test_data, %struct.basic_test_data* %34, i32 0, i32 0
  %36 = load i8*, i8** %35, align 8
  %37 = load i32, i32* %19, align 4
  %38 = call %struct.evhttp* @http_setup(i32* %15, i8* %36, i32 %37)
  store %struct.evhttp* %38, %struct.evhttp** %18, align 8
  store i32 0, i32* @test_ok, align 4
  %39 = load %struct.evhttp*, %struct.evhttp** %18, align 8
  %40 = icmp ne %struct.evhttp* %39, null
  br i1 %40, label %46, label %41

41:                                               ; preds = %33
  %42 = load i32, i32* %12, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %41
  %45 = call i32 (...) @tt_skip()
  br label %46

46:                                               ; preds = %44, %41, %33
  %47 = load %struct.evhttp*, %struct.evhttp** %18, align 8
  %48 = ptrtoint %struct.evhttp* %47 to i32
  %49 = call i32 @tt_assert(i32 %48)
  %50 = load %struct.evhttp*, %struct.evhttp** %18, align 8
  %51 = load i32, i32* @EVHTTP_REQ_GET, align 4
  %52 = load i32, i32* @EVHTTP_REQ_CUSTOM, align 4
  %53 = or i32 %51, %52
  %54 = call i32 @evhttp_set_allowed_methods(%struct.evhttp* %50, i32 %53)
  %55 = load i32, i32* %14, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %46
  %58 = call i32 (...) @tt_skip()
  br label %67

59:                                               ; preds = %46
  %60 = load %struct.basic_test_data*, %struct.basic_test_data** %8, align 8
  %61 = getelementptr inbounds %struct.basic_test_data, %struct.basic_test_data* %60, i32 0, i32 0
  %62 = load i8*, i8** %61, align 8
  %63 = load %struct.evdns_base*, %struct.evdns_base** %11, align 8
  %64 = load i8*, i8** %10, align 8
  %65 = load i32, i32* %15, align 4
  %66 = call %struct.evhttp_connection* @evhttp_connection_base_new(i8* %62, %struct.evdns_base* %63, i8* %64, i32 %65)
  store %struct.evhttp_connection* %66, %struct.evhttp_connection** %16, align 8
  br label %67

67:                                               ; preds = %59, %57
  %68 = load %struct.evhttp_connection*, %struct.evhttp_connection** %16, align 8
  %69 = ptrtoint %struct.evhttp_connection* %68 to i32
  %70 = call i32 @tt_assert(i32 %69)
  %71 = load %struct.evhttp_connection*, %struct.evhttp_connection** %16, align 8
  %72 = load i32, i32* %13, align 4
  %73 = call i32 @evhttp_connection_set_family(%struct.evhttp_connection* %71, i32 %72)
  %74 = load %struct.evhttp_connection*, %struct.evhttp_connection** %16, align 8
  %75 = call i8* @evhttp_connection_get_base(%struct.evhttp_connection* %74)
  %76 = load %struct.basic_test_data*, %struct.basic_test_data** %8, align 8
  %77 = getelementptr inbounds %struct.basic_test_data, %struct.basic_test_data* %76, i32 0, i32 0
  %78 = load i8*, i8** %77, align 8
  %79 = icmp eq i8* %75, %78
  %80 = zext i1 %79 to i32
  %81 = call i32 @tt_assert(i32 %80)
  %82 = load %struct.basic_test_data*, %struct.basic_test_data** %8, align 8
  %83 = getelementptr inbounds %struct.basic_test_data, %struct.basic_test_data* %82, i32 0, i32 0
  %84 = load i8*, i8** %83, align 8
  store i8* %84, i8** @exit_base, align 8
  %85 = load %struct.evhttp_connection*, %struct.evhttp_connection** %16, align 8
  %86 = call i32* @evhttp_connection_get_server(%struct.evhttp_connection* %85)
  %87 = icmp eq i32* %86, null
  %88 = zext i1 %87 to i32
  %89 = call i32 @tt_assert(i32 %88)
  %90 = load %struct.evhttp_connection*, %struct.evhttp_connection** %16, align 8
  %91 = load i32, i32* @ext_method_cb, align 4
  %92 = call i32 @evhttp_connection_set_ext_method_cmp(%struct.evhttp_connection* %90, i32 %91)
  %93 = load i32, i32* @http_request_done, align 4
  %94 = load i64, i64* @BASIC_REQUEST_BODY, align 8
  %95 = inttoptr i64 %94 to i8*
  %96 = call %struct.evhttp_request* @evhttp_request_new(i32 %93, i8* %95)
  store %struct.evhttp_request* %96, %struct.evhttp_request** %17, align 8
  %97 = load %struct.evhttp_request*, %struct.evhttp_request** %17, align 8
  %98 = call i32 @evhttp_request_get_output_headers(%struct.evhttp_request* %97)
  %99 = call i32 @evhttp_add_header(i32 %98, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %100 = load %struct.evhttp_connection*, %struct.evhttp_connection** %16, align 8
  %101 = load %struct.evhttp_request*, %struct.evhttp_request** %17, align 8
  %102 = load i32, i32* @EVHTTP_REQ_GET, align 4
  %103 = call i32 @evhttp_make_request(%struct.evhttp_connection* %100, %struct.evhttp_request* %101, i32 %102, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %104 = icmp eq i32 %103, -1
  br i1 %104, label %105, label %109

105:                                              ; preds = %67
  %106 = load i32, i32* @stdout, align 4
  %107 = call i32 @fprintf(i32 %106, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %108 = call i32 @exit(i32 1) #3
  unreachable

109:                                              ; preds = %67
  %110 = load %struct.basic_test_data*, %struct.basic_test_data** %8, align 8
  %111 = getelementptr inbounds %struct.basic_test_data, %struct.basic_test_data* %110, i32 0, i32 0
  %112 = load i8*, i8** %111, align 8
  %113 = call i32 @event_base_dispatch(i8* %112)
  %114 = load i32, i32* @test_ok, align 4
  %115 = call i32 @tt_assert(i32 %114)
  store i32 0, i32* @test_ok, align 4
  %116 = load i32, i32* @http_request_done, align 4
  %117 = load i64, i64* @BASIC_REQUEST_BODY, align 8
  %118 = inttoptr i64 %117 to i8*
  %119 = call %struct.evhttp_request* @evhttp_request_new(i32 %116, i8* %118)
  store %struct.evhttp_request* %119, %struct.evhttp_request** %17, align 8
  %120 = load %struct.evhttp_request*, %struct.evhttp_request** %17, align 8
  %121 = call i32 @evhttp_request_get_output_headers(%struct.evhttp_request* %120)
  %122 = call i32 @evhttp_add_header(i32 %121, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %123 = load i32, i32* %9, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %129, label %125

125:                                              ; preds = %109
  %126 = load %struct.evhttp_request*, %struct.evhttp_request** %17, align 8
  %127 = call i32 @evhttp_request_get_output_headers(%struct.evhttp_request* %126)
  %128 = call i32 @evhttp_add_header(i32 %127, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  br label %129

129:                                              ; preds = %125, %109
  %130 = load %struct.evhttp_connection*, %struct.evhttp_connection** %16, align 8
  %131 = load %struct.evhttp_request*, %struct.evhttp_request** %17, align 8
  %132 = load i32, i32* @EVHTTP_REQ_GET, align 4
  %133 = call i32 @evhttp_make_request(%struct.evhttp_connection* %130, %struct.evhttp_request* %131, i32 %132, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %134 = icmp eq i32 %133, -1
  br i1 %134, label %135, label %137

135:                                              ; preds = %129
  %136 = call i32 @tt_abort_msg(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0))
  br label %137

137:                                              ; preds = %135, %129
  %138 = load %struct.basic_test_data*, %struct.basic_test_data** %8, align 8
  %139 = getelementptr inbounds %struct.basic_test_data, %struct.basic_test_data* %138, i32 0, i32 0
  %140 = load i8*, i8** %139, align 8
  %141 = call i32 @event_base_dispatch(i8* %140)
  store i32 0, i32* @test_ok, align 4
  %142 = load i32, i32* @http_request_empty_done, align 4
  %143 = load %struct.basic_test_data*, %struct.basic_test_data** %8, align 8
  %144 = getelementptr inbounds %struct.basic_test_data, %struct.basic_test_data* %143, i32 0, i32 0
  %145 = load i8*, i8** %144, align 8
  %146 = call %struct.evhttp_request* @evhttp_request_new(i32 %142, i8* %145)
  store %struct.evhttp_request* %146, %struct.evhttp_request** %17, align 8
  %147 = load %struct.evhttp_request*, %struct.evhttp_request** %17, align 8
  %148 = call i32 @evhttp_request_get_output_headers(%struct.evhttp_request* %147)
  %149 = call i32 @evhttp_add_header(i32 %148, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0))
  %150 = load %struct.evhttp_connection*, %struct.evhttp_connection** %16, align 8
  %151 = load %struct.evhttp_request*, %struct.evhttp_request** %17, align 8
  %152 = load i32, i32* @EVHTTP_REQ_GET, align 4
  %153 = call i32 @evhttp_make_request(%struct.evhttp_connection* %150, %struct.evhttp_request* %151, i32 %152, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %154 = icmp eq i32 %153, -1
  br i1 %154, label %155, label %157

155:                                              ; preds = %137
  %156 = call i32 @tt_abort_msg(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.9, i64 0, i64 0))
  br label %157

157:                                              ; preds = %155, %137
  %158 = load %struct.basic_test_data*, %struct.basic_test_data** %8, align 8
  %159 = getelementptr inbounds %struct.basic_test_data, %struct.basic_test_data* %158, i32 0, i32 0
  %160 = load i8*, i8** %159, align 8
  %161 = call i32 @event_base_dispatch(i8* %160)
  store i32 0, i32* @test_ok, align 4
  %162 = load i32, i32* @http_request_empty_done, align 4
  %163 = load %struct.basic_test_data*, %struct.basic_test_data** %8, align 8
  %164 = getelementptr inbounds %struct.basic_test_data, %struct.basic_test_data* %163, i32 0, i32 0
  %165 = load i8*, i8** %164, align 8
  %166 = call %struct.evhttp_request* @evhttp_request_new(i32 %162, i8* %165)
  store %struct.evhttp_request* %166, %struct.evhttp_request** %17, align 8
  %167 = load %struct.evhttp_request*, %struct.evhttp_request** %17, align 8
  %168 = call i32 @evhttp_request_get_output_headers(%struct.evhttp_request* %167)
  %169 = call i32 @evhttp_add_header(i32 %168, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0))
  %170 = load %struct.evhttp_connection*, %struct.evhttp_connection** %16, align 8
  %171 = load %struct.evhttp_request*, %struct.evhttp_request** %17, align 8
  %172 = load i32, i32* @EVHTTP_REQ_CUSTOM, align 4
  %173 = call i32 @evhttp_make_request(%struct.evhttp_connection* %170, %struct.evhttp_request* %171, i32 %172, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %174 = icmp eq i32 %173, -1
  br i1 %174, label %175, label %177

175:                                              ; preds = %157
  %176 = call i32 @tt_abort_msg(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.9, i64 0, i64 0))
  br label %177

177:                                              ; preds = %175, %157
  %178 = load %struct.basic_test_data*, %struct.basic_test_data** %8, align 8
  %179 = getelementptr inbounds %struct.basic_test_data, %struct.basic_test_data* %178, i32 0, i32 0
  %180 = load i8*, i8** %179, align 8
  %181 = call i32 @event_base_dispatch(i8* %180)
  br label %182

182:                                              ; preds = %177
  %183 = load %struct.evhttp_connection*, %struct.evhttp_connection** %16, align 8
  %184 = icmp ne %struct.evhttp_connection* %183, null
  br i1 %184, label %185, label %188

185:                                              ; preds = %182
  %186 = load %struct.evhttp_connection*, %struct.evhttp_connection** %16, align 8
  %187 = call i32 @evhttp_connection_free(%struct.evhttp_connection* %186)
  br label %188

188:                                              ; preds = %185, %182
  %189 = load %struct.evhttp*, %struct.evhttp** %18, align 8
  %190 = icmp ne %struct.evhttp* %189, null
  br i1 %190, label %191, label %194

191:                                              ; preds = %188
  %192 = load %struct.evhttp*, %struct.evhttp** %18, align 8
  %193 = call i32 @evhttp_free(%struct.evhttp* %192)
  br label %194

194:                                              ; preds = %191, %188
  ret void
}

declare dso_local %struct.evhttp* @http_setup(i32*, i8*, i32) #1

declare dso_local i32 @tt_skip(...) #1

declare dso_local i32 @tt_assert(i32) #1

declare dso_local i32 @evhttp_set_allowed_methods(%struct.evhttp*, i32) #1

declare dso_local %struct.evhttp_connection* @evhttp_connection_base_new(i8*, %struct.evdns_base*, i8*, i32) #1

declare dso_local i32 @evhttp_connection_set_family(%struct.evhttp_connection*, i32) #1

declare dso_local i8* @evhttp_connection_get_base(%struct.evhttp_connection*) #1

declare dso_local i32* @evhttp_connection_get_server(%struct.evhttp_connection*) #1

declare dso_local i32 @evhttp_connection_set_ext_method_cmp(%struct.evhttp_connection*, i32) #1

declare dso_local %struct.evhttp_request* @evhttp_request_new(i32, i8*) #1

declare dso_local i32 @evhttp_add_header(i32, i8*, i8*) #1

declare dso_local i32 @evhttp_request_get_output_headers(%struct.evhttp_request*) #1

declare dso_local i32 @evhttp_make_request(%struct.evhttp_connection*, %struct.evhttp_request*, i32, i8*) #1

declare dso_local i32 @fprintf(i32, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @event_base_dispatch(i8*) #1

declare dso_local i32 @tt_abort_msg(i8*) #1

declare dso_local i32 @evhttp_connection_free(%struct.evhttp_connection*) #1

declare dso_local i32 @evhttp_free(%struct.evhttp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
