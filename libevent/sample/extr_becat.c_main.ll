; ModuleID = '/home/carl/AnghaBench/libevent/sample/extr_becat.c_main.c'
source_filename = "/home/carl/AnghaBench/libevent/sample/extr_becat.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.event_base = type { i32 }
%struct.event = type { i32 }
%struct.evconnlistener = type { i32 }
%struct.bufferevent = type { i32 }
%struct.sockaddr_storage = type { i32 }
%struct.sockaddr = type { i32 }
%struct.context = type { i32, %struct.bufferevent*, %struct.bufferevent*, i32, %struct.options* }
%struct.options = type { i32, %struct.TYPE_6__, %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i8*, i32 }
%struct.TYPE_5__ = type { i8*, i32 }
%struct.TYPE_4__ = type { i64, i64 }

@EXIT_SUCCESS = common dso_local global i32 0, align 4
@SIGINT = common dso_local global i32 0, align 4
@do_term = common dso_local global i32 0, align 4
@SIGPIPE = common dso_local global i32 0, align 4
@SIG_IGN = common dso_local global i32 0, align 4
@SIG_ERR = common dso_local global i64 0, align 8
@LEV_OPT_CLOSE_ON_FREE = common dso_local global i32 0, align 4
@LEV_OPT_CLOSE_ON_EXEC = common dso_local global i32 0, align 4
@LEV_OPT_REUSEABLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Cannot make address from %s:%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"Listening on %s\0A\00", align 1
@accept_cb = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [15 x i8] c"Cannot listen\0A\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"Connecting to %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"Cannot make bufferevent\0A\00", align 1
@read_cb = common dso_local global i32 0, align 4
@write_cb = common dso_local global i32* null, align 8
@client_event_cb = common dso_local global i32 0, align 4
@EV_READ = common dso_local global i32 0, align 4
@EV_WRITE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [44 x i8] c"Cannot monitor EV_READ|EV_WRITE for client\0A\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"Connection failed\0A\00", align 1
@stdout = common dso_local global i32 0, align 4
@STDIN_FILENO = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [33 x i8] c"Cannot create input bufferevent\0A\00", align 1
@trigger_bev_write_cb = common dso_local global i32 0, align 4
@in_event_cb = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [33 x i8] c"Cannot monitor EV_READ on input\0A\00", align 1
@EXIT_FAILURE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.event_base*, align 8
  %7 = alloca %struct.event*, align 8
  %8 = alloca %struct.evconnlistener*, align 8
  %9 = alloca %struct.bufferevent*, align 8
  %10 = alloca %struct.sockaddr_storage, align 4
  %11 = alloca %struct.sockaddr*, align 8
  %12 = alloca i64, align 8
  %13 = alloca [128 x i8], align 16
  %14 = alloca %struct.context, align 8
  %15 = alloca %struct.options, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store %struct.event_base* null, %struct.event_base** %6, align 8
  store %struct.event* null, %struct.event** %7, align 8
  store %struct.evconnlistener* null, %struct.evconnlistener** %8, align 8
  store %struct.bufferevent* null, %struct.bufferevent** %9, align 8
  %18 = bitcast %struct.sockaddr_storage* %10 to %struct.sockaddr*
  store %struct.sockaddr* %18, %struct.sockaddr** %11, align 8
  %19 = load i32, i32* %4, align 4
  %20 = load i8**, i8*** %5, align 8
  call void @parse_opts(%struct.options* sret %15, i32 %19, i8** %20)
  %21 = load i32, i32* @EXIT_SUCCESS, align 4
  store i32 %21, i32* %16, align 4
  %22 = call i32 @memset(%struct.context* %14, i32 0, i32 40)
  %23 = getelementptr inbounds %struct.context, %struct.context* %14, i32 0, i32 4
  store %struct.options* %15, %struct.options** %23, align 8
  %24 = call %struct.event_base* (...) @event_base_new()
  store %struct.event_base* %24, %struct.event_base** %6, align 8
  %25 = load %struct.event_base*, %struct.event_base** %6, align 8
  %26 = icmp ne %struct.event_base* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %2
  br label %213

28:                                               ; preds = %2
  %29 = load %struct.event_base*, %struct.event_base** %6, align 8
  %30 = load i32, i32* @SIGINT, align 4
  %31 = load i32, i32* @do_term, align 4
  %32 = load %struct.event_base*, %struct.event_base** %6, align 8
  %33 = call %struct.event* @evsignal_new(%struct.event_base* %29, i32 %30, i32 %31, %struct.event_base* %32)
  store %struct.event* %33, %struct.event** %7, align 8
  %34 = load %struct.event*, %struct.event** %7, align 8
  %35 = icmp ne %struct.event* %34, null
  br i1 %35, label %37, label %36

36:                                               ; preds = %28
  br label %213

37:                                               ; preds = %28
  %38 = load %struct.event*, %struct.event** %7, align 8
  %39 = call i64 @event_add(%struct.event* %38, i32* null)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %37
  br label %213

42:                                               ; preds = %37
  %43 = load i32, i32* @SIGPIPE, align 4
  %44 = load i32, i32* @SIG_IGN, align 4
  %45 = call i64 @signal(i32 %43, i32 %44)
  %46 = load i64, i64* @SIG_ERR, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %42
  br label %213

49:                                               ; preds = %42
  %50 = getelementptr inbounds %struct.options, %struct.options* %15, i32 0, i32 3
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %49
  %55 = getelementptr inbounds %struct.context, %struct.context* %14, i32 0, i32 0
  %56 = call i64 @ssl_ctx_init(i32* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %54
  br label %213

59:                                               ; preds = %54, %49
  %60 = getelementptr inbounds %struct.options, %struct.options* %15, i32 0, i32 3
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %107

64:                                               ; preds = %59
  store i32 0, i32* %17, align 4
  %65 = load i32, i32* @LEV_OPT_CLOSE_ON_FREE, align 4
  %66 = load i32, i32* %17, align 4
  %67 = or i32 %66, %65
  store i32 %67, i32* %17, align 4
  %68 = load i32, i32* @LEV_OPT_CLOSE_ON_EXEC, align 4
  %69 = load i32, i32* %17, align 4
  %70 = or i32 %69, %68
  store i32 %70, i32* %17, align 4
  %71 = load i32, i32* @LEV_OPT_REUSEABLE, align 4
  %72 = load i32, i32* %17, align 4
  %73 = or i32 %72, %71
  store i32 %73, i32* %17, align 4
  %74 = getelementptr inbounds %struct.options, %struct.options* %15, i32 0, i32 2
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = getelementptr inbounds %struct.options, %struct.options* %15, i32 0, i32 2
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 0
  %79 = load i8*, i8** %78, align 8
  %80 = call i64 @make_address(%struct.sockaddr_storage* %10, i32 %76, i8* %79)
  store i64 %80, i64* %12, align 8
  %81 = load i64, i64* %12, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %91, label %83

83:                                               ; preds = %64
  %84 = getelementptr inbounds %struct.options, %struct.options* %15, i32 0, i32 2
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 8
  %87 = getelementptr inbounds %struct.options, %struct.options* %15, i32 0, i32 2
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 0
  %89 = load i8*, i8** %88, align 8
  %90 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %86, i8* %89)
  br label %213

91:                                               ; preds = %64
  %92 = load %struct.sockaddr*, %struct.sockaddr** %11, align 8
  %93 = getelementptr inbounds [128 x i8], [128 x i8]* %13, i64 0, i64 0
  %94 = call i32 @evutil_format_sockaddr_port_(%struct.sockaddr* %92, i8* %93, i32 127)
  %95 = call i32 (i8*, ...) @info(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %94)
  %96 = load %struct.event_base*, %struct.event_base** %6, align 8
  %97 = load i32, i32* @accept_cb, align 4
  %98 = load i32, i32* %17, align 4
  %99 = load %struct.sockaddr*, %struct.sockaddr** %11, align 8
  %100 = load i64, i64* %12, align 8
  %101 = call %struct.evconnlistener* @evconnlistener_new_bind(%struct.event_base* %96, i32 %97, %struct.context* %14, i32 %98, i32 -1, %struct.sockaddr* %99, i64 %100)
  store %struct.evconnlistener* %101, %struct.evconnlistener** %8, align 8
  %102 = load %struct.evconnlistener*, %struct.evconnlistener** %8, align 8
  %103 = icmp ne %struct.evconnlistener* %102, null
  br i1 %103, label %106, label %104

104:                                              ; preds = %91
  %105 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  br label %213

106:                                              ; preds = %91
  br label %159

107:                                              ; preds = %59
  %108 = getelementptr inbounds %struct.options, %struct.options* %15, i32 0, i32 1
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 8
  %111 = getelementptr inbounds %struct.options, %struct.options* %15, i32 0, i32 1
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 0
  %113 = load i8*, i8** %112, align 8
  %114 = call i64 @make_address(%struct.sockaddr_storage* %10, i32 %110, i8* %113)
  store i64 %114, i64* %12, align 8
  %115 = load i64, i64* %12, align 8
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %125, label %117

117:                                              ; preds = %107
  %118 = getelementptr inbounds %struct.options, %struct.options* %15, i32 0, i32 2
  %119 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 8
  %121 = getelementptr inbounds %struct.options, %struct.options* %15, i32 0, i32 2
  %122 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %121, i32 0, i32 0
  %123 = load i8*, i8** %122, align 8
  %124 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %120, i8* %123)
  br label %213

125:                                              ; preds = %107
  %126 = load %struct.sockaddr*, %struct.sockaddr** %11, align 8
  %127 = getelementptr inbounds [128 x i8], [128 x i8]* %13, i64 0, i64 0
  %128 = call i32 @evutil_format_sockaddr_port_(%struct.sockaddr* %126, i8* %127, i32 127)
  %129 = call i32 (i8*, ...) @info(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i32 %128)
  %130 = load %struct.event_base*, %struct.event_base** %6, align 8
  %131 = call %struct.bufferevent* @be_new(%struct.context* %14, %struct.event_base* %130, i32 -1)
  store %struct.bufferevent* %131, %struct.bufferevent** %9, align 8
  %132 = load %struct.bufferevent*, %struct.bufferevent** %9, align 8
  %133 = icmp ne %struct.bufferevent* %132, null
  br i1 %133, label %136, label %134

134:                                              ; preds = %125
  %135 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0))
  br label %213

136:                                              ; preds = %125
  %137 = load %struct.bufferevent*, %struct.bufferevent** %9, align 8
  %138 = load i32, i32* @read_cb, align 4
  %139 = load i32*, i32** @write_cb, align 8
  %140 = load i32, i32* @client_event_cb, align 4
  %141 = call i32 @bufferevent_setcb(%struct.bufferevent* %137, i32 %138, i32* %139, i32 %140, %struct.context* %14)
  %142 = load %struct.bufferevent*, %struct.bufferevent** %9, align 8
  %143 = load i32, i32* @EV_READ, align 4
  %144 = load i32, i32* @EV_WRITE, align 4
  %145 = or i32 %143, %144
  %146 = call i64 @bufferevent_enable(%struct.bufferevent* %142, i32 %145)
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %150

148:                                              ; preds = %136
  %149 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.5, i64 0, i64 0))
  br label %213

150:                                              ; preds = %136
  %151 = load %struct.bufferevent*, %struct.bufferevent** %9, align 8
  %152 = load %struct.sockaddr*, %struct.sockaddr** %11, align 8
  %153 = load i64, i64* %12, align 8
  %154 = call i64 @bufferevent_socket_connect(%struct.bufferevent* %151, %struct.sockaddr* %152, i64 %153)
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %158

156:                                              ; preds = %150
  %157 = call i32 (i8*, ...) @info(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0))
  br label %213

158:                                              ; preds = %150
  br label %159

159:                                              ; preds = %158, %106
  %160 = load %struct.bufferevent*, %struct.bufferevent** %9, align 8
  %161 = getelementptr inbounds %struct.context, %struct.context* %14, i32 0, i32 1
  store %struct.bufferevent* %160, %struct.bufferevent** %161, align 8
  %162 = load i32, i32* @stdout, align 4
  %163 = getelementptr inbounds %struct.context, %struct.context* %14, i32 0, i32 3
  store i32 %162, i32* %163, align 8
  %164 = load %struct.event_base*, %struct.event_base** %6, align 8
  %165 = load i32, i32* @STDIN_FILENO, align 4
  %166 = call %struct.bufferevent* @bufferevent_socket_new(%struct.event_base* %164, i32 %165, i32 0)
  %167 = getelementptr inbounds %struct.context, %struct.context* %14, i32 0, i32 2
  store %struct.bufferevent* %166, %struct.bufferevent** %167, align 8
  %168 = getelementptr inbounds %struct.options, %struct.options* %15, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  %170 = icmp ne i32 %169, -1
  br i1 %170, label %171, label %180

171:                                              ; preds = %159
  %172 = getelementptr inbounds %struct.context, %struct.context* %14, i32 0, i32 2
  %173 = load %struct.bufferevent*, %struct.bufferevent** %172, align 8
  %174 = getelementptr inbounds %struct.options, %struct.options* %15, i32 0, i32 0
  %175 = load i32, i32* %174, align 8
  %176 = call i64 @bufferevent_set_max_single_read(%struct.bufferevent* %173, i32 %175)
  %177 = icmp ne i64 %176, 0
  br i1 %177, label %178, label %179

178:                                              ; preds = %171
  br label %213

179:                                              ; preds = %171
  br label %180

180:                                              ; preds = %179, %159
  %181 = getelementptr inbounds %struct.context, %struct.context* %14, i32 0, i32 2
  %182 = load %struct.bufferevent*, %struct.bufferevent** %181, align 8
  %183 = icmp ne %struct.bufferevent* %182, null
  br i1 %183, label %186, label %184

184:                                              ; preds = %180
  %185 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.7, i64 0, i64 0))
  br label %213

186:                                              ; preds = %180
  %187 = getelementptr inbounds %struct.context, %struct.context* %14, i32 0, i32 2
  %188 = load %struct.bufferevent*, %struct.bufferevent** %187, align 8
  %189 = load i32, i32* @trigger_bev_write_cb, align 4
  %190 = load i32, i32* @in_event_cb, align 4
  %191 = call i32 @bufferevent_setcb(%struct.bufferevent* %188, i32 %189, i32* null, i32 %190, %struct.context* %14)
  %192 = getelementptr inbounds %struct.context, %struct.context* %14, i32 0, i32 1
  %193 = load %struct.bufferevent*, %struct.bufferevent** %192, align 8
  %194 = icmp ne %struct.bufferevent* %193, null
  br i1 %194, label %195, label %203

195:                                              ; preds = %186
  %196 = getelementptr inbounds %struct.context, %struct.context* %14, i32 0, i32 2
  %197 = load %struct.bufferevent*, %struct.bufferevent** %196, align 8
  %198 = load i32, i32* @EV_READ, align 4
  %199 = call i64 @bufferevent_enable(%struct.bufferevent* %197, i32 %198)
  %200 = icmp ne i64 %199, 0
  br i1 %200, label %201, label %203

201:                                              ; preds = %195
  %202 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.8, i64 0, i64 0))
  br label %213

203:                                              ; preds = %195, %186
  %204 = getelementptr inbounds %struct.context, %struct.context* %14, i32 0, i32 2
  %205 = load %struct.bufferevent*, %struct.bufferevent** %204, align 8
  %206 = load i32, i32* @EV_WRITE, align 4
  %207 = call i32 @bufferevent_disable(%struct.bufferevent* %205, i32 %206)
  %208 = load %struct.event_base*, %struct.event_base** %6, align 8
  %209 = call i32 @event_base_dispatch(%struct.event_base* %208)
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %212, label %211

211:                                              ; preds = %203
  br label %219

212:                                              ; preds = %203
  br label %213

213:                                              ; preds = %212, %201, %184, %178, %156, %148, %134, %117, %104, %83, %58, %48, %41, %36, %27
  %214 = load i32, i32* %16, align 4
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %218, label %216

216:                                              ; preds = %213
  %217 = load i32, i32* @EXIT_FAILURE, align 4
  store i32 %217, i32* %16, align 4
  br label %218

218:                                              ; preds = %216, %213
  br label %219

219:                                              ; preds = %218, %211
  %220 = load %struct.event*, %struct.event** %7, align 8
  %221 = icmp ne %struct.event* %220, null
  br i1 %221, label %222, label %225

222:                                              ; preds = %219
  %223 = load %struct.event*, %struct.event** %7, align 8
  %224 = call i32 @event_free(%struct.event* %223)
  br label %225

225:                                              ; preds = %222, %219
  %226 = getelementptr inbounds %struct.context, %struct.context* %14, i32 0, i32 2
  %227 = call i32 @be_free(%struct.bufferevent** %226)
  %228 = getelementptr inbounds %struct.context, %struct.context* %14, i32 0, i32 1
  %229 = call i32 @be_free(%struct.bufferevent** %228)
  %230 = load %struct.evconnlistener*, %struct.evconnlistener** %8, align 8
  %231 = icmp ne %struct.evconnlistener* %230, null
  br i1 %231, label %232, label %235

232:                                              ; preds = %225
  %233 = load %struct.evconnlistener*, %struct.evconnlistener** %8, align 8
  %234 = call i32 @evconnlistener_free(%struct.evconnlistener* %233)
  br label %235

235:                                              ; preds = %232, %225
  %236 = load %struct.event_base*, %struct.event_base** %6, align 8
  %237 = icmp ne %struct.event_base* %236, null
  br i1 %237, label %238, label %241

238:                                              ; preds = %235
  %239 = load %struct.event_base*, %struct.event_base** %6, align 8
  %240 = call i32 @event_base_free(%struct.event_base* %239)
  br label %241

241:                                              ; preds = %238, %235
  %242 = getelementptr inbounds %struct.options, %struct.options* %15, i32 0, i32 2
  %243 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %242, i32 0, i32 1
  %244 = load i32, i32* %243, align 8
  %245 = call i32 @free(i32 %244)
  %246 = getelementptr inbounds %struct.options, %struct.options* %15, i32 0, i32 1
  %247 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %246, i32 0, i32 1
  %248 = load i32, i32* %247, align 8
  %249 = call i32 @free(i32 %248)
  %250 = getelementptr inbounds %struct.context, %struct.context* %14, i32 0, i32 0
  %251 = call i32 @ssl_ctx_free(i32* %250)
  %252 = load i32, i32* %16, align 4
  ret i32 %252
}

declare dso_local void @parse_opts(%struct.options* sret, i32, i8**) #1

declare dso_local i32 @memset(%struct.context*, i32, i32) #1

declare dso_local %struct.event_base* @event_base_new(...) #1

declare dso_local %struct.event* @evsignal_new(%struct.event_base*, i32, i32, %struct.event_base*) #1

declare dso_local i64 @event_add(%struct.event*, i32*) #1

declare dso_local i64 @signal(i32, i32) #1

declare dso_local i64 @ssl_ctx_init(i32*) #1

declare dso_local i64 @make_address(%struct.sockaddr_storage*, i32, i8*) #1

declare dso_local i32 @error(i8*, ...) #1

declare dso_local i32 @info(i8*, ...) #1

declare dso_local i32 @evutil_format_sockaddr_port_(%struct.sockaddr*, i8*, i32) #1

declare dso_local %struct.evconnlistener* @evconnlistener_new_bind(%struct.event_base*, i32, %struct.context*, i32, i32, %struct.sockaddr*, i64) #1

declare dso_local %struct.bufferevent* @be_new(%struct.context*, %struct.event_base*, i32) #1

declare dso_local i32 @bufferevent_setcb(%struct.bufferevent*, i32, i32*, i32, %struct.context*) #1

declare dso_local i64 @bufferevent_enable(%struct.bufferevent*, i32) #1

declare dso_local i64 @bufferevent_socket_connect(%struct.bufferevent*, %struct.sockaddr*, i64) #1

declare dso_local %struct.bufferevent* @bufferevent_socket_new(%struct.event_base*, i32, i32) #1

declare dso_local i64 @bufferevent_set_max_single_read(%struct.bufferevent*, i32) #1

declare dso_local i32 @bufferevent_disable(%struct.bufferevent*, i32) #1

declare dso_local i32 @event_base_dispatch(%struct.event_base*) #1

declare dso_local i32 @event_free(%struct.event*) #1

declare dso_local i32 @be_free(%struct.bufferevent**) #1

declare dso_local i32 @evconnlistener_free(%struct.evconnlistener*) #1

declare dso_local i32 @event_base_free(%struct.event_base*) #1

declare dso_local i32 @free(i32) #1

declare dso_local i32 @ssl_ctx_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
