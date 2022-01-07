; ModuleID = '/home/carl/AnghaBench/libevent/test/extr_regress_ssl.c_eventcb.c'
source_filename = "/home/carl/AnghaBench/libevent/test/extr_regress_ssl.c_eventcb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bufferevent = type { i32 }

@.str = private unnamed_addr constant [13 x i8] c"Got event %d\00", align 1
@BEV_EVENT_CONNECTED = common dso_local global i16 0, align 2
@n_connected = common dso_local global i32 0, align 4
@REGRESS_OPENSSL_SERVER = common dso_local global i32 0, align 4
@stop_when_connected = common dso_local global i64 0, align 8
@pending_connect_events = common dso_local global i64 0, align 8
@exit_base = common dso_local global i32 0, align 4
@REGRESS_OPENSSL_CLIENT_WRITE = common dso_local global i32 0, align 4
@REGRESS_OPENSSL_CLIENT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"1\0A\00", align 1
@BEV_EVENT_EOF = common dso_local global i16 0, align 2
@.str.2 = private unnamed_addr constant [15 x i8] c"Got a good EOF\00", align 1
@got_close = common dso_local global i32 0, align 4
@REGRESS_OPENSSL_FD = common dso_local global i32 0, align 4
@REGRESS_OPENSSL_FILTER = common dso_local global i32 0, align 4
@REGRESS_OPENSSL_FREED = common dso_local global i32 0, align 4
@BEV_EVENT_ERROR = common dso_local global i16 0, align 2
@.str.3 = private unnamed_addr constant [14 x i8] c"Got an error.\00", align 1
@got_error = common dso_local global i32 0, align 4
@BEV_EVENT_TIMEOUT = common dso_local global i16 0, align 2
@.str.4 = private unnamed_addr constant [13 x i8] c"Got timeout.\00", align 1
@got_timeout = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bufferevent*, i16, i8*)* @eventcb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @eventcb(%struct.bufferevent* %0, i16 signext %1, i8* %2) #0 {
  %4 = alloca %struct.bufferevent*, align 8
  %5 = alloca i16, align 2
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  store %struct.bufferevent* %0, %struct.bufferevent** %4, align 8
  store i16 %1, i16* %5, align 2
  store i8* %2, i8** %6, align 8
  store i32* null, i32** %7, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = ptrtoint i8* %10 to i32
  store i32 %11, i32* %8, align 4
  %12 = load i16, i16* %5, align 2
  %13 = sext i16 %12 to i32
  %14 = sext i32 %13 to i64
  %15 = inttoptr i64 %14 to i8*
  %16 = call i32 @TT_BLATHER(i8* %15)
  %17 = load i16, i16* %5, align 2
  %18 = sext i16 %17 to i32
  %19 = load i16, i16* @BEV_EVENT_CONNECTED, align 2
  %20 = sext i16 %19 to i32
  %21 = and i32 %18, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %76

23:                                               ; preds = %3
  %24 = load i32, i32* @n_connected, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* @n_connected, align 4
  %26 = load %struct.bufferevent*, %struct.bufferevent** %4, align 8
  %27 = call i32* @bufferevent_openssl_get_ssl(%struct.bufferevent* %26)
  store i32* %27, i32** %9, align 8
  %28 = load i32*, i32** %9, align 8
  %29 = call i32 @tt_assert(i32* %28)
  %30 = load i32*, i32** %9, align 8
  %31 = call i32* @SSL_get_peer_certificate(i32* %30)
  store i32* %31, i32** %7, align 8
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* @REGRESS_OPENSSL_SERVER, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %43

36:                                               ; preds = %23
  %37 = load i32*, i32** %7, align 8
  %38 = icmp eq i32* %37, null
  %39 = zext i1 %38 to i32
  %40 = sext i32 %39 to i64
  %41 = inttoptr i64 %40 to i32*
  %42 = call i32 @tt_assert(i32* %41)
  br label %50

43:                                               ; preds = %23
  %44 = load i32*, i32** %7, align 8
  %45 = icmp ne i32* %44, null
  %46 = zext i1 %45 to i32
  %47 = sext i32 %46 to i64
  %48 = inttoptr i64 %47 to i32*
  %49 = call i32 @tt_assert(i32* %48)
  br label %50

50:                                               ; preds = %43, %36
  %51 = load i64, i64* @stop_when_connected, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %61

53:                                               ; preds = %50
  %54 = load i64, i64* @pending_connect_events, align 8
  %55 = add nsw i64 %54, -1
  store i64 %55, i64* @pending_connect_events, align 8
  %56 = icmp eq i64 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %53
  %58 = load i32, i32* @exit_base, align 4
  %59 = call i32 @event_base_loopexit(i32 %58, i32* null)
  br label %60

60:                                               ; preds = %57, %53
  br label %61

61:                                               ; preds = %60, %50
  %62 = load i32, i32* %8, align 4
  %63 = load i32, i32* @REGRESS_OPENSSL_CLIENT_WRITE, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %75

66:                                               ; preds = %61
  %67 = load i32, i32* %8, align 4
  %68 = load i32, i32* @REGRESS_OPENSSL_CLIENT, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %66
  %72 = load %struct.bufferevent*, %struct.bufferevent** %4, align 8
  %73 = call i32 @bufferevent_get_output(%struct.bufferevent* %72)
  %74 = call i32 @evbuffer_add_printf(i32 %73, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  br label %75

75:                                               ; preds = %71, %66, %61
  br label %175

76:                                               ; preds = %3
  %77 = load i16, i16* %5, align 2
  %78 = sext i16 %77 to i32
  %79 = load i16, i16* @BEV_EVENT_EOF, align 2
  %80 = sext i16 %79 to i32
  %81 = and i32 %78, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %108

83:                                               ; preds = %76
  %84 = call i32 @TT_BLATHER(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  %85 = load i32, i32* @got_close, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* @got_close, align 4
  %87 = load i32, i32* %8, align 4
  %88 = load i32, i32* @REGRESS_OPENSSL_FD, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %97

91:                                               ; preds = %83
  %92 = load %struct.bufferevent*, %struct.bufferevent** %4, align 8
  %93 = load i32, i32* %8, align 4
  %94 = load i32, i32* @REGRESS_OPENSSL_FILTER, align 4
  %95 = and i32 %93, %94
  %96 = call i32 @bufferevent_openssl_check_fd(%struct.bufferevent* %92, i32 %95)
  br label %97

97:                                               ; preds = %91, %83
  %98 = load i32, i32* %8, align 4
  %99 = load i32, i32* @REGRESS_OPENSSL_FREED, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %105

102:                                              ; preds = %97
  %103 = load %struct.bufferevent*, %struct.bufferevent** %4, align 8
  %104 = call i32 @bufferevent_openssl_check_freed(%struct.bufferevent* %103)
  br label %105

105:                                              ; preds = %102, %97
  %106 = load %struct.bufferevent*, %struct.bufferevent** %4, align 8
  %107 = call i32 @bufferevent_free(%struct.bufferevent* %106)
  br label %174

108:                                              ; preds = %76
  %109 = load i16, i16* %5, align 2
  %110 = sext i16 %109 to i32
  %111 = load i16, i16* @BEV_EVENT_ERROR, align 2
  %112 = sext i16 %111 to i32
  %113 = and i32 %110, %112
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %140

115:                                              ; preds = %108
  %116 = call i32 @TT_BLATHER(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  %117 = load i32, i32* @got_error, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* @got_error, align 4
  %119 = load i32, i32* %8, align 4
  %120 = load i32, i32* @REGRESS_OPENSSL_FD, align 4
  %121 = and i32 %119, %120
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %129

123:                                              ; preds = %115
  %124 = load %struct.bufferevent*, %struct.bufferevent** %4, align 8
  %125 = load i32, i32* %8, align 4
  %126 = load i32, i32* @REGRESS_OPENSSL_FILTER, align 4
  %127 = and i32 %125, %126
  %128 = call i32 @bufferevent_openssl_check_fd(%struct.bufferevent* %124, i32 %127)
  br label %129

129:                                              ; preds = %123, %115
  %130 = load i32, i32* %8, align 4
  %131 = load i32, i32* @REGRESS_OPENSSL_FREED, align 4
  %132 = and i32 %130, %131
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %137

134:                                              ; preds = %129
  %135 = load %struct.bufferevent*, %struct.bufferevent** %4, align 8
  %136 = call i32 @bufferevent_openssl_check_freed(%struct.bufferevent* %135)
  br label %137

137:                                              ; preds = %134, %129
  %138 = load %struct.bufferevent*, %struct.bufferevent** %4, align 8
  %139 = call i32 @bufferevent_free(%struct.bufferevent* %138)
  br label %173

140:                                              ; preds = %108
  %141 = load i16, i16* %5, align 2
  %142 = sext i16 %141 to i32
  %143 = load i16, i16* @BEV_EVENT_TIMEOUT, align 2
  %144 = sext i16 %143 to i32
  %145 = and i32 %142, %144
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %172

147:                                              ; preds = %140
  %148 = call i32 @TT_BLATHER(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0))
  %149 = load i32, i32* @got_timeout, align 4
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* @got_timeout, align 4
  %151 = load i32, i32* %8, align 4
  %152 = load i32, i32* @REGRESS_OPENSSL_FD, align 4
  %153 = and i32 %151, %152
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %161

155:                                              ; preds = %147
  %156 = load %struct.bufferevent*, %struct.bufferevent** %4, align 8
  %157 = load i32, i32* %8, align 4
  %158 = load i32, i32* @REGRESS_OPENSSL_FILTER, align 4
  %159 = and i32 %157, %158
  %160 = call i32 @bufferevent_openssl_check_fd(%struct.bufferevent* %156, i32 %159)
  br label %161

161:                                              ; preds = %155, %147
  %162 = load i32, i32* %8, align 4
  %163 = load i32, i32* @REGRESS_OPENSSL_FREED, align 4
  %164 = and i32 %162, %163
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %169

166:                                              ; preds = %161
  %167 = load %struct.bufferevent*, %struct.bufferevent** %4, align 8
  %168 = call i32 @bufferevent_openssl_check_freed(%struct.bufferevent* %167)
  br label %169

169:                                              ; preds = %166, %161
  %170 = load %struct.bufferevent*, %struct.bufferevent** %4, align 8
  %171 = call i32 @bufferevent_free(%struct.bufferevent* %170)
  br label %172

172:                                              ; preds = %169, %140
  br label %173

173:                                              ; preds = %172, %137
  br label %174

174:                                              ; preds = %173, %105
  br label %175

175:                                              ; preds = %174, %75
  br label %176

176:                                              ; preds = %175
  %177 = load i32*, i32** %7, align 8
  %178 = icmp ne i32* %177, null
  br i1 %178, label %179, label %182

179:                                              ; preds = %176
  %180 = load i32*, i32** %7, align 8
  %181 = call i32 @X509_free(i32* %180)
  br label %182

182:                                              ; preds = %179, %176
  ret void
}

declare dso_local i32 @TT_BLATHER(i8*) #1

declare dso_local i32* @bufferevent_openssl_get_ssl(%struct.bufferevent*) #1

declare dso_local i32 @tt_assert(i32*) #1

declare dso_local i32* @SSL_get_peer_certificate(i32*) #1

declare dso_local i32 @event_base_loopexit(i32, i32*) #1

declare dso_local i32 @evbuffer_add_printf(i32, i8*) #1

declare dso_local i32 @bufferevent_get_output(%struct.bufferevent*) #1

declare dso_local i32 @bufferevent_openssl_check_fd(%struct.bufferevent*, i32) #1

declare dso_local i32 @bufferevent_openssl_check_freed(%struct.bufferevent*) #1

declare dso_local i32 @bufferevent_free(%struct.bufferevent*) #1

declare dso_local i32 @X509_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
