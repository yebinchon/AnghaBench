; ModuleID = '/home/carl/AnghaBench/libevent/test/extr_regress_http.c_http_chunked_errorcb.c'
source_filename = "/home/carl/AnghaBench/libevent/test/extr_regress_http.c_http_chunked_errorcb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bufferevent = type { i32 }
%struct.evhttp_request = type { i32 }

@BEV_EVENT_CONNECTED = common dso_local global i16 0, align 2
@test_ok = common dso_local global i32 0, align 4
@BEV_EVENT_EOF = common dso_local global i16 0, align 2
@ALL_DATA_READ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"Transfer-Encoding\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"chunked\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"Connection\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"close\00", align 1
@EVBUFFER_EOL_CRLF = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [2 x i8] c"d\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"This is funny\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"12\00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c"but not hilarious.\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"8\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"bwv 1052.\00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bufferevent*, i16, i8*)* @http_chunked_errorcb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @http_chunked_errorcb(%struct.bufferevent* %0, i16 signext %1, i8* %2) #0 {
  %4 = alloca %struct.bufferevent*, align 8
  %5 = alloca i16, align 2
  %6 = alloca i8*, align 8
  %7 = alloca %struct.evhttp_request*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store %struct.bufferevent* %0, %struct.bufferevent** %4, align 8
  store i16 %1, i16* %5, align 2
  store i8* %2, i8** %6, align 8
  store %struct.evhttp_request* null, %struct.evhttp_request** %7, align 8
  %10 = load i16, i16* %5, align 2
  %11 = sext i16 %10 to i32
  %12 = load i16, i16* @BEV_EVENT_CONNECTED, align 2
  %13 = sext i16 %12 to i32
  %14 = and i32 %11, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  br label %179

17:                                               ; preds = %3
  %18 = load i32, i32* @test_ok, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %17
  br label %170

21:                                               ; preds = %17
  store i32 -1, i32* @test_ok, align 4
  %22 = load i16, i16* %5, align 2
  %23 = sext i16 %22 to i32
  %24 = load i16, i16* @BEV_EVENT_EOF, align 2
  %25 = sext i16 %24 to i32
  %26 = and i32 %23, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %169

28:                                               ; preds = %21
  %29 = call %struct.evhttp_request* @evhttp_request_new(i32* null, i32* null)
  store %struct.evhttp_request* %29, %struct.evhttp_request** %7, align 8
  %30 = load %struct.evhttp_request*, %struct.evhttp_request** %7, align 8
  %31 = load %struct.bufferevent*, %struct.bufferevent** %4, align 8
  %32 = call i32 @bufferevent_get_input(%struct.bufferevent* %31)
  %33 = call i32 @evhttp_parse_firstline_(%struct.evhttp_request* %30, i32 %32)
  store i32 %33, i32* %9, align 4
  %34 = load i32, i32* %9, align 4
  %35 = load i32, i32* @ALL_DATA_READ, align 4
  %36 = icmp ne i32 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %28
  br label %170

38:                                               ; preds = %28
  %39 = load %struct.evhttp_request*, %struct.evhttp_request** %7, align 8
  %40 = load %struct.bufferevent*, %struct.bufferevent** %4, align 8
  %41 = call i32 @bufferevent_get_input(%struct.bufferevent* %40)
  %42 = call i32 @evhttp_parse_headers_(%struct.evhttp_request* %39, i32 %41)
  store i32 %42, i32* %9, align 4
  %43 = load i32, i32* %9, align 4
  %44 = load i32, i32* @ALL_DATA_READ, align 4
  %45 = icmp ne i32 %43, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %38
  br label %170

47:                                               ; preds = %38
  %48 = load %struct.evhttp_request*, %struct.evhttp_request** %7, align 8
  %49 = call i32 @evhttp_request_get_input_headers(%struct.evhttp_request* %48)
  %50 = call i8* @evhttp_find_header(i32 %49, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  store i8* %50, i8** %8, align 8
  %51 = load i8*, i8** %8, align 8
  %52 = icmp eq i8* %51, null
  br i1 %52, label %57, label %53

53:                                               ; preds = %47
  %54 = load i8*, i8** %8, align 8
  %55 = call i64 @strcmp(i8* %54, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %53, %47
  br label %170

58:                                               ; preds = %53
  %59 = load %struct.evhttp_request*, %struct.evhttp_request** %7, align 8
  %60 = call i32 @evhttp_request_get_input_headers(%struct.evhttp_request* %59)
  %61 = call i8* @evhttp_find_header(i32 %60, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  store i8* %61, i8** %8, align 8
  %62 = load i8*, i8** %8, align 8
  %63 = icmp eq i8* %62, null
  br i1 %63, label %68, label %64

64:                                               ; preds = %58
  %65 = load i8*, i8** %8, align 8
  %66 = call i64 @strcmp(i8* %65, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %64, %58
  br label %170

69:                                               ; preds = %64
  %70 = load %struct.bufferevent*, %struct.bufferevent** %4, align 8
  %71 = call i32 @bufferevent_get_input(%struct.bufferevent* %70)
  %72 = load i32, i32* @EVBUFFER_EOL_CRLF, align 4
  %73 = call i8* @evbuffer_readln(i32 %71, i32* null, i32 %72)
  store i8* %73, i8** %8, align 8
  %74 = load i8*, i8** %8, align 8
  %75 = icmp eq i8* %74, null
  br i1 %75, label %76, label %77

76:                                               ; preds = %69
  br label %170

77:                                               ; preds = %69
  %78 = load i8*, i8** %8, align 8
  %79 = call i64 @strcmp(i8* %78, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %77
  %82 = load i8*, i8** %8, align 8
  %83 = call i32 @free(i8* %82)
  br label %170

84:                                               ; preds = %77
  %85 = load i8*, i8** %8, align 8
  %86 = call i32 @free(i8* %85)
  %87 = load %struct.bufferevent*, %struct.bufferevent** %4, align 8
  %88 = call i32 @bufferevent_get_input(%struct.bufferevent* %87)
  %89 = call i64 @evbuffer_pullup(i32 %88, i32 13)
  %90 = inttoptr i64 %89 to i8*
  %91 = call i64 @strncmp(i8* %90, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0), i32 13)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %84
  br label %170

94:                                               ; preds = %84
  %95 = load %struct.bufferevent*, %struct.bufferevent** %4, align 8
  %96 = call i32 @bufferevent_get_input(%struct.bufferevent* %95)
  %97 = call i32 @evbuffer_drain(i32 %96, i32 15)
  %98 = load %struct.bufferevent*, %struct.bufferevent** %4, align 8
  %99 = call i32 @bufferevent_get_input(%struct.bufferevent* %98)
  %100 = load i32, i32* @EVBUFFER_EOL_CRLF, align 4
  %101 = call i8* @evbuffer_readln(i32 %99, i32* null, i32 %100)
  store i8* %101, i8** %8, align 8
  %102 = load i8*, i8** %8, align 8
  %103 = icmp eq i8* %102, null
  br i1 %103, label %104, label %105

104:                                              ; preds = %94
  br label %170

105:                                              ; preds = %94
  %106 = load i8*, i8** %8, align 8
  %107 = call i64 @strcmp(i8* %106, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0))
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %105
  br label %170

110:                                              ; preds = %105
  %111 = load i8*, i8** %8, align 8
  %112 = call i32 @free(i8* %111)
  %113 = load %struct.bufferevent*, %struct.bufferevent** %4, align 8
  %114 = call i32 @bufferevent_get_input(%struct.bufferevent* %113)
  %115 = call i64 @evbuffer_pullup(i32 %114, i32 18)
  %116 = inttoptr i64 %115 to i8*
  %117 = call i64 @strncmp(i8* %116, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i64 0, i64 0), i32 18)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %120

119:                                              ; preds = %110
  br label %170

120:                                              ; preds = %110
  %121 = load %struct.bufferevent*, %struct.bufferevent** %4, align 8
  %122 = call i32 @bufferevent_get_input(%struct.bufferevent* %121)
  %123 = call i32 @evbuffer_drain(i32 %122, i32 20)
  %124 = load %struct.bufferevent*, %struct.bufferevent** %4, align 8
  %125 = call i32 @bufferevent_get_input(%struct.bufferevent* %124)
  %126 = load i32, i32* @EVBUFFER_EOL_CRLF, align 4
  %127 = call i8* @evbuffer_readln(i32 %125, i32* null, i32 %126)
  store i8* %127, i8** %8, align 8
  %128 = load i8*, i8** %8, align 8
  %129 = icmp eq i8* %128, null
  br i1 %129, label %130, label %131

130:                                              ; preds = %120
  br label %170

131:                                              ; preds = %120
  %132 = load i8*, i8** %8, align 8
  %133 = call i64 @strcmp(i8* %132, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0))
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %138

135:                                              ; preds = %131
  %136 = load i8*, i8** %8, align 8
  %137 = call i32 @free(i8* %136)
  br label %170

138:                                              ; preds = %131
  %139 = load i8*, i8** %8, align 8
  %140 = call i32 @free(i8* %139)
  %141 = load %struct.bufferevent*, %struct.bufferevent** %4, align 8
  %142 = call i32 @bufferevent_get_input(%struct.bufferevent* %141)
  %143 = call i64 @evbuffer_pullup(i32 %142, i32 8)
  %144 = inttoptr i64 %143 to i8*
  %145 = call i64 @strncmp(i8* %144, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0), i32 8)
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %148

147:                                              ; preds = %138
  br label %170

148:                                              ; preds = %138
  %149 = load %struct.bufferevent*, %struct.bufferevent** %4, align 8
  %150 = call i32 @bufferevent_get_input(%struct.bufferevent* %149)
  %151 = call i32 @evbuffer_drain(i32 %150, i32 10)
  %152 = load %struct.bufferevent*, %struct.bufferevent** %4, align 8
  %153 = call i32 @bufferevent_get_input(%struct.bufferevent* %152)
  %154 = load i32, i32* @EVBUFFER_EOL_CRLF, align 4
  %155 = call i8* @evbuffer_readln(i32 %153, i32* null, i32 %154)
  store i8* %155, i8** %8, align 8
  %156 = load i8*, i8** %8, align 8
  %157 = icmp eq i8* %156, null
  br i1 %157, label %158, label %159

158:                                              ; preds = %148
  br label %170

159:                                              ; preds = %148
  %160 = load i8*, i8** %8, align 8
  %161 = call i64 @strcmp(i8* %160, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0))
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %166

163:                                              ; preds = %159
  %164 = load i8*, i8** %8, align 8
  %165 = call i32 @free(i8* %164)
  br label %170

166:                                              ; preds = %159
  %167 = load i8*, i8** %8, align 8
  %168 = call i32 @free(i8* %167)
  store i32 2, i32* @test_ok, align 4
  br label %169

169:                                              ; preds = %166, %21
  br label %170

170:                                              ; preds = %169, %163, %158, %147, %135, %130, %119, %109, %104, %93, %81, %76, %68, %57, %46, %37, %20
  %171 = load %struct.evhttp_request*, %struct.evhttp_request** %7, align 8
  %172 = icmp ne %struct.evhttp_request* %171, null
  br i1 %172, label %173, label %176

173:                                              ; preds = %170
  %174 = load %struct.evhttp_request*, %struct.evhttp_request** %7, align 8
  %175 = call i32 @evhttp_request_free(%struct.evhttp_request* %174)
  br label %176

176:                                              ; preds = %173, %170
  %177 = load i8*, i8** %6, align 8
  %178 = call i32 @event_base_loopexit(i8* %177, i32* null)
  br label %179

179:                                              ; preds = %176, %16
  ret void
}

declare dso_local %struct.evhttp_request* @evhttp_request_new(i32*, i32*) #1

declare dso_local i32 @evhttp_parse_firstline_(%struct.evhttp_request*, i32) #1

declare dso_local i32 @bufferevent_get_input(%struct.bufferevent*) #1

declare dso_local i32 @evhttp_parse_headers_(%struct.evhttp_request*, i32) #1

declare dso_local i8* @evhttp_find_header(i32, i8*) #1

declare dso_local i32 @evhttp_request_get_input_headers(%struct.evhttp_request*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i8* @evbuffer_readln(i32, i32*, i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i64 @evbuffer_pullup(i32, i32) #1

declare dso_local i32 @evbuffer_drain(i32, i32) #1

declare dso_local i32 @evhttp_request_free(%struct.evhttp_request*) #1

declare dso_local i32 @event_base_loopexit(i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
