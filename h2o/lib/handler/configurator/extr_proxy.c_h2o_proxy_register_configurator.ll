; ModuleID = '/home/carl/AnghaBench/h2o/lib/handler/configurator/extr_proxy.c_h2o_proxy_register_configurator.c'
source_filename = "/home/carl/AnghaBench/h2o/lib/handler/configurator/extr_proxy.c_h2o_proxy_register_configurator.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i32 }
%struct.proxy_configurator_t = type { %struct.TYPE_18__, %struct.TYPE_15__*, %struct.TYPE_15__* }
%struct.TYPE_18__ = type { i32, i32 }
%struct.TYPE_15__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32, %struct.TYPE_13__, i32, %struct.TYPE_12__, i8*, i8*, i8* }
%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_12__ = type { i32, i64 }

@H2O_DEFAULT_PROXY_IO_TIMEOUT = common dso_local global i8* null, align 8
@H2O_DEFAULT_PROXY_WEBSOCKET_TIMEOUT = common dso_local global i32 0, align 4
@SIZE_MAX = common dso_local global i32 0, align 4
@H2O_DEFAULT_PROXY_HTTP2_MAX_CONCURRENT_STREAMS = common dso_local global i32 0, align 4
@on_config_enter = common dso_local global i32 0, align 4
@on_config_exit = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"proxy.reverse.url\00", align 1
@H2O_CONFIGURATOR_FLAG_PATH = common dso_local global i32 0, align 4
@H2O_CONFIGURATOR_FLAG_EXPECT_SCALAR = common dso_local global i32 0, align 4
@H2O_CONFIGURATOR_FLAG_EXPECT_SEQUENCE = common dso_local global i32 0, align 4
@H2O_CONFIGURATOR_FLAG_EXPECT_MAPPING = common dso_local global i32 0, align 4
@H2O_CONFIGURATOR_FLAG_DEFERRED = common dso_local global i32 0, align 4
@on_config_reverse_url = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"proxy.preserve-host\00", align 1
@H2O_CONFIGURATOR_FLAG_ALL_LEVELS = common dso_local global i32 0, align 4
@on_config_preserve_host = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"proxy.proxy-protocol\00", align 1
@on_config_proxy_protocol = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [17 x i8] c"proxy.timeout.io\00", align 1
@on_config_timeout_io = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [22 x i8] c"proxy.timeout.connect\00", align 1
@on_config_timeout_connect = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [25 x i8] c"proxy.timeout.first_byte\00", align 1
@on_config_timeout_first_byte = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [24 x i8] c"proxy.timeout.keepalive\00", align 1
@on_config_timeout_keepalive = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [16 x i8] c"proxy.websocket\00", align 1
@on_config_websocket = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [24 x i8] c"proxy.websocket.timeout\00", align 1
@on_config_websocket_timeout = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [22 x i8] c"proxy.ssl.verify-peer\00", align 1
@on_config_ssl_verify_peer = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [17 x i8] c"proxy.ssl.cafile\00", align 1
@on_config_ssl_cafile = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [24 x i8] c"proxy.ssl.session-cache\00", align 1
@on_config_ssl_session_cache = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [33 x i8] c"proxy.preserve-x-forwarded-proto\00", align 1
@H2O_CONFIGURATOR_FLAG_GLOBAL = common dso_local global i32 0, align 4
@on_config_preserve_x_forwarded_proto = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [31 x i8] c"proxy.emit-x-forwarded-headers\00", align 1
@on_config_emit_x_forwarded_headers = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [22 x i8] c"proxy.emit-via-header\00", align 1
@on_config_emit_via_header = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [31 x i8] c"proxy.emit-missing-date-header\00", align 1
@on_config_emit_missing_date_header = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [13 x i8] c"proxy.header\00", align 1
@get_headers_commands = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [22 x i8] c"proxy.max-buffer-size\00", align 1
@on_config_max_buffer_size = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [35 x i8] c"proxy.http2.max-concurrent_streams\00", align 1
@on_config_http2_max_concurrent_streams = common dso_local global i32 0, align 4
@.str.19 = private unnamed_addr constant [18 x i8] c"proxy.http2.ratio\00", align 1
@on_config_http2_ratio = common dso_local global i32 0, align 4
@.str.20 = private unnamed_addr constant [31 x i8] c"proxy.forward.close-connection\00", align 1
@on_config_forward_close_connection = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @h2o_proxy_register_configurator(%struct.TYPE_17__* %0) #0 {
  %2 = alloca %struct.TYPE_17__*, align 8
  %3 = alloca %struct.proxy_configurator_t*, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %2, align 8
  %4 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %5 = call i64 @h2o_configurator_create(%struct.TYPE_17__* %4, i32 24)
  %6 = inttoptr i64 %5 to i8*
  %7 = bitcast i8* %6 to %struct.proxy_configurator_t*
  store %struct.proxy_configurator_t* %7, %struct.proxy_configurator_t** %3, align 8
  %8 = load %struct.proxy_configurator_t*, %struct.proxy_configurator_t** %3, align 8
  %9 = getelementptr inbounds %struct.proxy_configurator_t, %struct.proxy_configurator_t* %8, i32 0, i32 2
  %10 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %11 = load %struct.proxy_configurator_t*, %struct.proxy_configurator_t** %3, align 8
  %12 = getelementptr inbounds %struct.proxy_configurator_t, %struct.proxy_configurator_t* %11, i32 0, i32 1
  store %struct.TYPE_15__* %10, %struct.TYPE_15__** %12, align 8
  %13 = load i8*, i8** @H2O_DEFAULT_PROXY_IO_TIMEOUT, align 8
  %14 = load %struct.proxy_configurator_t*, %struct.proxy_configurator_t** %3, align 8
  %15 = getelementptr inbounds %struct.proxy_configurator_t, %struct.proxy_configurator_t* %14, i32 0, i32 1
  %16 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %17, i32 0, i32 6
  store i8* %13, i8** %18, align 8
  %19 = load i8*, i8** @H2O_DEFAULT_PROXY_IO_TIMEOUT, align 8
  %20 = load %struct.proxy_configurator_t*, %struct.proxy_configurator_t** %3, align 8
  %21 = getelementptr inbounds %struct.proxy_configurator_t, %struct.proxy_configurator_t* %20, i32 0, i32 1
  %22 = load %struct.TYPE_15__*, %struct.TYPE_15__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %23, i32 0, i32 5
  store i8* %19, i8** %24, align 8
  %25 = load i8*, i8** @H2O_DEFAULT_PROXY_IO_TIMEOUT, align 8
  %26 = load %struct.proxy_configurator_t*, %struct.proxy_configurator_t** %3, align 8
  %27 = getelementptr inbounds %struct.proxy_configurator_t, %struct.proxy_configurator_t* %26, i32 0, i32 1
  %28 = load %struct.TYPE_15__*, %struct.TYPE_15__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %29, i32 0, i32 4
  store i8* %25, i8** %30, align 8
  %31 = load %struct.proxy_configurator_t*, %struct.proxy_configurator_t** %3, align 8
  %32 = getelementptr inbounds %struct.proxy_configurator_t, %struct.proxy_configurator_t* %31, i32 0, i32 1
  %33 = load %struct.TYPE_15__*, %struct.TYPE_15__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %34, i32 0, i32 3
  %36 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %35, i32 0, i32 1
  store i64 0, i64* %36, align 8
  %37 = load i32, i32* @H2O_DEFAULT_PROXY_WEBSOCKET_TIMEOUT, align 4
  %38 = load %struct.proxy_configurator_t*, %struct.proxy_configurator_t** %3, align 8
  %39 = getelementptr inbounds %struct.proxy_configurator_t, %struct.proxy_configurator_t* %38, i32 0, i32 1
  %40 = load %struct.TYPE_15__*, %struct.TYPE_15__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %41, i32 0, i32 3
  %43 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %42, i32 0, i32 0
  store i32 %37, i32* %43, align 8
  %44 = load i32, i32* @SIZE_MAX, align 4
  %45 = load %struct.proxy_configurator_t*, %struct.proxy_configurator_t** %3, align 8
  %46 = getelementptr inbounds %struct.proxy_configurator_t, %struct.proxy_configurator_t* %45, i32 0, i32 1
  %47 = load %struct.TYPE_15__*, %struct.TYPE_15__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %48, i32 0, i32 2
  store i32 %44, i32* %49, align 4
  %50 = load i32, i32* @H2O_DEFAULT_PROXY_HTTP2_MAX_CONCURRENT_STREAMS, align 4
  %51 = load %struct.proxy_configurator_t*, %struct.proxy_configurator_t** %3, align 8
  %52 = getelementptr inbounds %struct.proxy_configurator_t, %struct.proxy_configurator_t* %51, i32 0, i32 1
  %53 = load %struct.TYPE_15__*, %struct.TYPE_15__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %55, i32 0, i32 1
  store i32 %50, i32* %56, align 4
  %57 = load %struct.proxy_configurator_t*, %struct.proxy_configurator_t** %3, align 8
  %58 = getelementptr inbounds %struct.proxy_configurator_t, %struct.proxy_configurator_t* %57, i32 0, i32 1
  %59 = load %struct.TYPE_15__*, %struct.TYPE_15__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %61, i32 0, i32 0
  store i32 -1, i32* %62, align 4
  %63 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %64 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %64, i32 0, i32 0
  %66 = call i32 @h2o_socketpool_get_timeout(i32* %65)
  %67 = load %struct.proxy_configurator_t*, %struct.proxy_configurator_t** %3, align 8
  %68 = getelementptr inbounds %struct.proxy_configurator_t, %struct.proxy_configurator_t* %67, i32 0, i32 1
  %69 = load %struct.TYPE_15__*, %struct.TYPE_15__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %70, i32 0, i32 0
  store i32 %66, i32* %71, align 8
  %72 = load i32, i32* @on_config_enter, align 4
  %73 = load %struct.proxy_configurator_t*, %struct.proxy_configurator_t** %3, align 8
  %74 = getelementptr inbounds %struct.proxy_configurator_t, %struct.proxy_configurator_t* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %74, i32 0, i32 1
  store i32 %72, i32* %75, align 4
  %76 = load i32, i32* @on_config_exit, align 4
  %77 = load %struct.proxy_configurator_t*, %struct.proxy_configurator_t** %3, align 8
  %78 = getelementptr inbounds %struct.proxy_configurator_t, %struct.proxy_configurator_t* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %78, i32 0, i32 0
  store i32 %76, i32* %79, align 8
  %80 = load %struct.proxy_configurator_t*, %struct.proxy_configurator_t** %3, align 8
  %81 = getelementptr inbounds %struct.proxy_configurator_t, %struct.proxy_configurator_t* %80, i32 0, i32 0
  %82 = load i32, i32* @H2O_CONFIGURATOR_FLAG_PATH, align 4
  %83 = load i32, i32* @H2O_CONFIGURATOR_FLAG_EXPECT_SCALAR, align 4
  %84 = or i32 %82, %83
  %85 = load i32, i32* @H2O_CONFIGURATOR_FLAG_EXPECT_SEQUENCE, align 4
  %86 = or i32 %84, %85
  %87 = load i32, i32* @H2O_CONFIGURATOR_FLAG_EXPECT_MAPPING, align 4
  %88 = or i32 %86, %87
  %89 = load i32, i32* @H2O_CONFIGURATOR_FLAG_DEFERRED, align 4
  %90 = or i32 %88, %89
  %91 = load i32, i32* @on_config_reverse_url, align 4
  %92 = call i32 @h2o_configurator_define_command(%struct.TYPE_18__* %81, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %90, i32 %91)
  %93 = load %struct.proxy_configurator_t*, %struct.proxy_configurator_t** %3, align 8
  %94 = getelementptr inbounds %struct.proxy_configurator_t, %struct.proxy_configurator_t* %93, i32 0, i32 0
  %95 = load i32, i32* @H2O_CONFIGURATOR_FLAG_ALL_LEVELS, align 4
  %96 = load i32, i32* @H2O_CONFIGURATOR_FLAG_EXPECT_SCALAR, align 4
  %97 = or i32 %95, %96
  %98 = load i32, i32* @on_config_preserve_host, align 4
  %99 = call i32 @h2o_configurator_define_command(%struct.TYPE_18__* %94, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %97, i32 %98)
  %100 = load %struct.proxy_configurator_t*, %struct.proxy_configurator_t** %3, align 8
  %101 = getelementptr inbounds %struct.proxy_configurator_t, %struct.proxy_configurator_t* %100, i32 0, i32 0
  %102 = load i32, i32* @H2O_CONFIGURATOR_FLAG_ALL_LEVELS, align 4
  %103 = load i32, i32* @H2O_CONFIGURATOR_FLAG_EXPECT_SCALAR, align 4
  %104 = or i32 %102, %103
  %105 = load i32, i32* @on_config_proxy_protocol, align 4
  %106 = call i32 @h2o_configurator_define_command(%struct.TYPE_18__* %101, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 %104, i32 %105)
  %107 = load %struct.proxy_configurator_t*, %struct.proxy_configurator_t** %3, align 8
  %108 = getelementptr inbounds %struct.proxy_configurator_t, %struct.proxy_configurator_t* %107, i32 0, i32 0
  %109 = load i32, i32* @H2O_CONFIGURATOR_FLAG_ALL_LEVELS, align 4
  %110 = load i32, i32* @H2O_CONFIGURATOR_FLAG_EXPECT_SCALAR, align 4
  %111 = or i32 %109, %110
  %112 = load i32, i32* @on_config_timeout_io, align 4
  %113 = call i32 @h2o_configurator_define_command(%struct.TYPE_18__* %108, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i32 %111, i32 %112)
  %114 = load %struct.proxy_configurator_t*, %struct.proxy_configurator_t** %3, align 8
  %115 = getelementptr inbounds %struct.proxy_configurator_t, %struct.proxy_configurator_t* %114, i32 0, i32 0
  %116 = load i32, i32* @H2O_CONFIGURATOR_FLAG_ALL_LEVELS, align 4
  %117 = load i32, i32* @H2O_CONFIGURATOR_FLAG_EXPECT_SCALAR, align 4
  %118 = or i32 %116, %117
  %119 = load i32, i32* @on_config_timeout_connect, align 4
  %120 = call i32 @h2o_configurator_define_command(%struct.TYPE_18__* %115, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i32 %118, i32 %119)
  %121 = load %struct.proxy_configurator_t*, %struct.proxy_configurator_t** %3, align 8
  %122 = getelementptr inbounds %struct.proxy_configurator_t, %struct.proxy_configurator_t* %121, i32 0, i32 0
  %123 = load i32, i32* @H2O_CONFIGURATOR_FLAG_ALL_LEVELS, align 4
  %124 = load i32, i32* @H2O_CONFIGURATOR_FLAG_EXPECT_SCALAR, align 4
  %125 = or i32 %123, %124
  %126 = load i32, i32* @on_config_timeout_first_byte, align 4
  %127 = call i32 @h2o_configurator_define_command(%struct.TYPE_18__* %122, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0), i32 %125, i32 %126)
  %128 = load %struct.proxy_configurator_t*, %struct.proxy_configurator_t** %3, align 8
  %129 = getelementptr inbounds %struct.proxy_configurator_t, %struct.proxy_configurator_t* %128, i32 0, i32 0
  %130 = load i32, i32* @H2O_CONFIGURATOR_FLAG_ALL_LEVELS, align 4
  %131 = load i32, i32* @H2O_CONFIGURATOR_FLAG_EXPECT_SCALAR, align 4
  %132 = or i32 %130, %131
  %133 = load i32, i32* @on_config_timeout_keepalive, align 4
  %134 = call i32 @h2o_configurator_define_command(%struct.TYPE_18__* %129, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0), i32 %132, i32 %133)
  %135 = load %struct.proxy_configurator_t*, %struct.proxy_configurator_t** %3, align 8
  %136 = getelementptr inbounds %struct.proxy_configurator_t, %struct.proxy_configurator_t* %135, i32 0, i32 0
  %137 = load i32, i32* @H2O_CONFIGURATOR_FLAG_ALL_LEVELS, align 4
  %138 = load i32, i32* @H2O_CONFIGURATOR_FLAG_EXPECT_SCALAR, align 4
  %139 = or i32 %137, %138
  %140 = load i32, i32* @on_config_websocket, align 4
  %141 = call i32 @h2o_configurator_define_command(%struct.TYPE_18__* %136, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0), i32 %139, i32 %140)
  %142 = load %struct.proxy_configurator_t*, %struct.proxy_configurator_t** %3, align 8
  %143 = getelementptr inbounds %struct.proxy_configurator_t, %struct.proxy_configurator_t* %142, i32 0, i32 0
  %144 = load i32, i32* @H2O_CONFIGURATOR_FLAG_ALL_LEVELS, align 4
  %145 = load i32, i32* @H2O_CONFIGURATOR_FLAG_EXPECT_SCALAR, align 4
  %146 = or i32 %144, %145
  %147 = load i32, i32* @on_config_websocket_timeout, align 4
  %148 = call i32 @h2o_configurator_define_command(%struct.TYPE_18__* %143, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0), i32 %146, i32 %147)
  %149 = load %struct.proxy_configurator_t*, %struct.proxy_configurator_t** %3, align 8
  %150 = getelementptr inbounds %struct.proxy_configurator_t, %struct.proxy_configurator_t* %149, i32 0, i32 0
  %151 = load i32, i32* @H2O_CONFIGURATOR_FLAG_ALL_LEVELS, align 4
  %152 = load i32, i32* @H2O_CONFIGURATOR_FLAG_EXPECT_SCALAR, align 4
  %153 = or i32 %151, %152
  %154 = load i32, i32* @on_config_ssl_verify_peer, align 4
  %155 = call i32 @h2o_configurator_define_command(%struct.TYPE_18__* %150, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.9, i64 0, i64 0), i32 %153, i32 %154)
  %156 = load %struct.proxy_configurator_t*, %struct.proxy_configurator_t** %3, align 8
  %157 = getelementptr inbounds %struct.proxy_configurator_t, %struct.proxy_configurator_t* %156, i32 0, i32 0
  %158 = load i32, i32* @H2O_CONFIGURATOR_FLAG_ALL_LEVELS, align 4
  %159 = load i32, i32* @H2O_CONFIGURATOR_FLAG_EXPECT_SCALAR, align 4
  %160 = or i32 %158, %159
  %161 = load i32, i32* @on_config_ssl_cafile, align 4
  %162 = call i32 @h2o_configurator_define_command(%struct.TYPE_18__* %157, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i64 0, i64 0), i32 %160, i32 %161)
  %163 = load %struct.proxy_configurator_t*, %struct.proxy_configurator_t** %3, align 8
  %164 = getelementptr inbounds %struct.proxy_configurator_t, %struct.proxy_configurator_t* %163, i32 0, i32 0
  %165 = load i32, i32* @H2O_CONFIGURATOR_FLAG_ALL_LEVELS, align 4
  %166 = load i32, i32* @on_config_ssl_session_cache, align 4
  %167 = call i32 @h2o_configurator_define_command(%struct.TYPE_18__* %164, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.11, i64 0, i64 0), i32 %165, i32 %166)
  %168 = load %struct.proxy_configurator_t*, %struct.proxy_configurator_t** %3, align 8
  %169 = getelementptr inbounds %struct.proxy_configurator_t, %struct.proxy_configurator_t* %168, i32 0, i32 0
  %170 = load i32, i32* @H2O_CONFIGURATOR_FLAG_GLOBAL, align 4
  %171 = load i32, i32* @H2O_CONFIGURATOR_FLAG_EXPECT_SCALAR, align 4
  %172 = or i32 %170, %171
  %173 = load i32, i32* @on_config_preserve_x_forwarded_proto, align 4
  %174 = call i32 @h2o_configurator_define_command(%struct.TYPE_18__* %169, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.12, i64 0, i64 0), i32 %172, i32 %173)
  %175 = load %struct.proxy_configurator_t*, %struct.proxy_configurator_t** %3, align 8
  %176 = getelementptr inbounds %struct.proxy_configurator_t, %struct.proxy_configurator_t* %175, i32 0, i32 0
  %177 = load i32, i32* @H2O_CONFIGURATOR_FLAG_GLOBAL, align 4
  %178 = load i32, i32* @H2O_CONFIGURATOR_FLAG_EXPECT_SCALAR, align 4
  %179 = or i32 %177, %178
  %180 = load i32, i32* @on_config_emit_x_forwarded_headers, align 4
  %181 = call i32 @h2o_configurator_define_command(%struct.TYPE_18__* %176, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.13, i64 0, i64 0), i32 %179, i32 %180)
  %182 = load %struct.proxy_configurator_t*, %struct.proxy_configurator_t** %3, align 8
  %183 = getelementptr inbounds %struct.proxy_configurator_t, %struct.proxy_configurator_t* %182, i32 0, i32 0
  %184 = load i32, i32* @H2O_CONFIGURATOR_FLAG_GLOBAL, align 4
  %185 = load i32, i32* @H2O_CONFIGURATOR_FLAG_EXPECT_SCALAR, align 4
  %186 = or i32 %184, %185
  %187 = load i32, i32* @on_config_emit_via_header, align 4
  %188 = call i32 @h2o_configurator_define_command(%struct.TYPE_18__* %183, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.14, i64 0, i64 0), i32 %186, i32 %187)
  %189 = load %struct.proxy_configurator_t*, %struct.proxy_configurator_t** %3, align 8
  %190 = getelementptr inbounds %struct.proxy_configurator_t, %struct.proxy_configurator_t* %189, i32 0, i32 0
  %191 = load i32, i32* @H2O_CONFIGURATOR_FLAG_GLOBAL, align 4
  %192 = load i32, i32* @H2O_CONFIGURATOR_FLAG_EXPECT_SCALAR, align 4
  %193 = or i32 %191, %192
  %194 = load i32, i32* @on_config_emit_missing_date_header, align 4
  %195 = call i32 @h2o_configurator_define_command(%struct.TYPE_18__* %190, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.15, i64 0, i64 0), i32 %193, i32 %194)
  %196 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %197 = load %struct.proxy_configurator_t*, %struct.proxy_configurator_t** %3, align 8
  %198 = getelementptr inbounds %struct.proxy_configurator_t, %struct.proxy_configurator_t* %197, i32 0, i32 0
  %199 = load i32, i32* @get_headers_commands, align 4
  %200 = call i32 @h2o_configurator_define_headers_commands(%struct.TYPE_17__* %196, %struct.TYPE_18__* %198, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.16, i64 0, i64 0), i32 %199)
  %201 = load %struct.proxy_configurator_t*, %struct.proxy_configurator_t** %3, align 8
  %202 = getelementptr inbounds %struct.proxy_configurator_t, %struct.proxy_configurator_t* %201, i32 0, i32 0
  %203 = load i32, i32* @H2O_CONFIGURATOR_FLAG_ALL_LEVELS, align 4
  %204 = load i32, i32* @H2O_CONFIGURATOR_FLAG_EXPECT_SCALAR, align 4
  %205 = or i32 %203, %204
  %206 = load i32, i32* @on_config_max_buffer_size, align 4
  %207 = call i32 @h2o_configurator_define_command(%struct.TYPE_18__* %202, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.17, i64 0, i64 0), i32 %205, i32 %206)
  %208 = load %struct.proxy_configurator_t*, %struct.proxy_configurator_t** %3, align 8
  %209 = getelementptr inbounds %struct.proxy_configurator_t, %struct.proxy_configurator_t* %208, i32 0, i32 0
  %210 = load i32, i32* @H2O_CONFIGURATOR_FLAG_ALL_LEVELS, align 4
  %211 = load i32, i32* @H2O_CONFIGURATOR_FLAG_EXPECT_SCALAR, align 4
  %212 = or i32 %210, %211
  %213 = load i32, i32* @on_config_http2_max_concurrent_streams, align 4
  %214 = call i32 @h2o_configurator_define_command(%struct.TYPE_18__* %209, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.18, i64 0, i64 0), i32 %212, i32 %213)
  %215 = load %struct.proxy_configurator_t*, %struct.proxy_configurator_t** %3, align 8
  %216 = getelementptr inbounds %struct.proxy_configurator_t, %struct.proxy_configurator_t* %215, i32 0, i32 0
  %217 = load i32, i32* @H2O_CONFIGURATOR_FLAG_ALL_LEVELS, align 4
  %218 = load i32, i32* @H2O_CONFIGURATOR_FLAG_EXPECT_SCALAR, align 4
  %219 = or i32 %217, %218
  %220 = load i32, i32* @on_config_http2_ratio, align 4
  %221 = call i32 @h2o_configurator_define_command(%struct.TYPE_18__* %216, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.19, i64 0, i64 0), i32 %219, i32 %220)
  %222 = load %struct.proxy_configurator_t*, %struct.proxy_configurator_t** %3, align 8
  %223 = getelementptr inbounds %struct.proxy_configurator_t, %struct.proxy_configurator_t* %222, i32 0, i32 0
  %224 = load i32, i32* @H2O_CONFIGURATOR_FLAG_GLOBAL, align 4
  %225 = load i32, i32* @H2O_CONFIGURATOR_FLAG_EXPECT_SCALAR, align 4
  %226 = or i32 %224, %225
  %227 = load i32, i32* @on_config_forward_close_connection, align 4
  %228 = call i32 @h2o_configurator_define_command(%struct.TYPE_18__* %223, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.20, i64 0, i64 0), i32 %226, i32 %227)
  ret void
}

declare dso_local i64 @h2o_configurator_create(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @h2o_socketpool_get_timeout(i32*) #1

declare dso_local i32 @h2o_configurator_define_command(%struct.TYPE_18__*, i8*, i32, i32) #1

declare dso_local i32 @h2o_configurator_define_headers_commands(%struct.TYPE_17__*, %struct.TYPE_18__*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
