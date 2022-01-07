; ModuleID = '/home/carl/AnghaBench/h2o/src/extr_main.c_on_config_listen.c'
source_filename = "/home/carl/AnghaBench/h2o/src/extr_main.c_on_config_listen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_26__ = type { i32, %struct.TYPE_29__ }
%struct.TYPE_29__ = type { i32* }
%struct.TYPE_31__ = type { i32*, i32*, i32*, %struct.TYPE_25__, i32* }
%struct.TYPE_25__ = type { i32 }
%struct.TYPE_32__ = type { i32* }
%struct.TYPE_30__ = type { i32, %struct.TYPE_28__ }
%struct.TYPE_28__ = type { i8* }
%struct.sockaddr_un = type { i8*, i32 }
%struct.listener_config_t = type { i32, i32*, %struct.TYPE_27__ }
%struct.TYPE_27__ = type { i32, %struct.TYPE_31__* }
%struct.addrinfo = type { i8*, i32, i32, i32, i32, %struct.addrinfo* }
%struct.sockaddr = type opaque

@.str = private unnamed_addr constant [4 x i8] c"tcp\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"port:s\00", align 1
@.str.2 = private unnamed_addr constant [65 x i8] c"host:s,type:s,owner:s,permission:*,ssl:m,proxy-protocol:*,quic:m\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"quic\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"OFF,ON\00", align 1
@.str.5 = private unnamed_addr constant [78 x i8] c"value must be a string or a mapping (with keys: `port` and optionally `host`)\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"unix\00", align 1
@.str.7 = private unnamed_addr constant [42 x i8] c"path:%s is too long as a unix socket name\00", align 1
@AF_UNIX = common dso_local global i32 0, align 4
@conf = common dso_local global %struct.TYPE_26__ zeroinitializer, align 8
@SOCK_STREAM = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [49 x i8] c"unix socket:%s is not being bound to the server\0A\00", align 1
@IPPROTO_TCP = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [51 x i8] c"tcp socket:%s:%s is not being bound to the server\0A\00", align 1
@.str.10 = private unnamed_addr constant [58 x i8] c"QUIC endpoint must have an accompanying SSL configuration\00", align 1
@SOCK_DGRAM = common dso_local global i32 0, align 4
@IPPROTO_UDP = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [51 x i8] c"udp socket:%s:%s is not being bound to the server\0A\00", align 1
@quicly_spec_context = common dso_local global %struct.TYPE_31__ zeroinitializer, align 8
@quic_cid_encryptor = common dso_local global i32 0, align 4
@h2o_http3_server_stream_scheduler = common dso_local global i32 0, align 4
@h2o_http3_server_on_stream_open = common dso_local global i32 0, align 4
@quic_resumption_token_generator = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [8 x i8] c"retry:s\00", align 1
@.str.13 = private unnamed_addr constant [24 x i8] c"unknown listen type: %s\00", align 1
@.str.14 = private unnamed_addr constant [66 x i8] c"`proxy-protocol` cannot be turned %s, already defined as opposite\00", align 1
@.str.15 = private unnamed_addr constant [3 x i8] c"on\00", align 1
@.str.16 = private unnamed_addr constant [4 x i8] c"off\00", align 1
@IPPROTO_IP = common dso_local global i32 0, align 4
@IPPROTO_IPV6 = common dso_local global i32 0, align 4
@IPV6_RECVPKTINFO = common dso_local global i32 0, align 4
@IP_PKTINFO = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_32__*, %struct.TYPE_30__*)* @on_config_listen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @on_config_listen(i32* %0, %struct.TYPE_32__* %1, %struct.TYPE_30__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_32__*, align 8
  %7 = alloca %struct.TYPE_30__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.TYPE_30__**, align 8
  %12 = alloca %struct.TYPE_30__**, align 8
  %13 = alloca %struct.TYPE_30__**, align 8
  %14 = alloca %struct.TYPE_30__**, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_30__**, align 8
  %17 = alloca %struct.TYPE_30__**, align 8
  %18 = alloca %struct.TYPE_30__**, align 8
  %19 = alloca %struct.TYPE_30__**, align 8
  %20 = alloca %struct.sockaddr_un, align 8
  %21 = alloca i32, align 4
  %22 = alloca %struct.listener_config_t*, align 8
  %23 = alloca i32, align 4
  %24 = alloca %struct.addrinfo*, align 8
  %25 = alloca %struct.addrinfo*, align 8
  %26 = alloca %struct.listener_config_t*, align 8
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca %struct.addrinfo*, align 8
  %30 = alloca %struct.addrinfo*, align 8
  %31 = alloca %struct.listener_config_t*, align 8
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca %struct.TYPE_31__*, align 8
  %35 = alloca %struct.TYPE_30__**, align 8
  %36 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_32__* %1, %struct.TYPE_32__** %6, align 8
  store %struct.TYPE_30__* %2, %struct.TYPE_30__** %7, align 8
  store i8* null, i8** %8, align 8
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8** %10, align 8
  store %struct.TYPE_30__** null, %struct.TYPE_30__*** %11, align 8
  store %struct.TYPE_30__** null, %struct.TYPE_30__*** %12, align 8
  store %struct.TYPE_30__** null, %struct.TYPE_30__*** %13, align 8
  store %struct.TYPE_30__** null, %struct.TYPE_30__*** %14, align 8
  store i32 0, i32* %15, align 4
  %37 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  switch i32 %39, label %90 [
    i32 128, label %40
    i32 129, label %45
  ]

40:                                               ; preds = %3
  %41 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %42 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %42, i32 0, i32 0
  %44 = load i8*, i8** %43, align 8
  store i8* %44, i8** %9, align 8
  br label %94

45:                                               ; preds = %3
  %46 = load i32*, i32** %5, align 8
  %47 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %48 = call i64 (i32*, %struct.TYPE_30__*, i8*, i8*, %struct.TYPE_30__***, ...) @h2o_configurator_parse_mapping(i32* %46, %struct.TYPE_30__* %47, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.2, i64 0, i64 0), %struct.TYPE_30__*** %16, %struct.TYPE_30__*** %17, %struct.TYPE_30__*** %18, %struct.TYPE_30__*** %12, %struct.TYPE_30__*** %13, %struct.TYPE_30__*** %11, %struct.TYPE_30__*** %19, %struct.TYPE_30__*** %14)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %45
  store i32 -1, i32* %4, align 4
  br label %541

51:                                               ; preds = %45
  %52 = load %struct.TYPE_30__**, %struct.TYPE_30__*** %16, align 8
  %53 = load %struct.TYPE_30__*, %struct.TYPE_30__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %54, i32 0, i32 0
  %56 = load i8*, i8** %55, align 8
  store i8* %56, i8** %9, align 8
  %57 = load %struct.TYPE_30__**, %struct.TYPE_30__*** %17, align 8
  %58 = icmp ne %struct.TYPE_30__** %57, null
  br i1 %58, label %59, label %65

59:                                               ; preds = %51
  %60 = load %struct.TYPE_30__**, %struct.TYPE_30__*** %17, align 8
  %61 = load %struct.TYPE_30__*, %struct.TYPE_30__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %62, i32 0, i32 0
  %64 = load i8*, i8** %63, align 8
  store i8* %64, i8** %8, align 8
  br label %65

65:                                               ; preds = %59, %51
  %66 = load %struct.TYPE_30__**, %struct.TYPE_30__*** %18, align 8
  %67 = icmp ne %struct.TYPE_30__** %66, null
  br i1 %67, label %68, label %74

68:                                               ; preds = %65
  %69 = load %struct.TYPE_30__**, %struct.TYPE_30__*** %18, align 8
  %70 = load %struct.TYPE_30__*, %struct.TYPE_30__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %71, i32 0, i32 0
  %73 = load i8*, i8** %72, align 8
  store i8* %73, i8** %10, align 8
  br label %79

74:                                               ; preds = %65
  %75 = load %struct.TYPE_30__**, %struct.TYPE_30__*** %14, align 8
  %76 = icmp ne %struct.TYPE_30__** %75, null
  br i1 %76, label %77, label %78

77:                                               ; preds = %74
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8** %10, align 8
  br label %78

78:                                               ; preds = %77, %74
  br label %79

79:                                               ; preds = %78, %68
  %80 = load %struct.TYPE_30__**, %struct.TYPE_30__*** %19, align 8
  %81 = icmp ne %struct.TYPE_30__** %80, null
  br i1 %81, label %82, label %89

82:                                               ; preds = %79
  %83 = load i32*, i32** %5, align 8
  %84 = load %struct.TYPE_30__**, %struct.TYPE_30__*** %19, align 8
  %85 = load %struct.TYPE_30__*, %struct.TYPE_30__** %84, align 8
  %86 = call i32 @h2o_configurator_get_one_of(i32* %83, %struct.TYPE_30__* %85, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  store i32 %86, i32* %15, align 4
  %87 = icmp eq i32 %86, -1
  br i1 %87, label %88, label %89

88:                                               ; preds = %82
  store i32 -1, i32* %4, align 4
  br label %541

89:                                               ; preds = %82, %79
  br label %94

90:                                               ; preds = %3
  %91 = load i32*, i32** %5, align 8
  %92 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %93 = call i32 (i32*, %struct.TYPE_30__*, i8*, ...) @h2o_configurator_errprintf(i32* %91, %struct.TYPE_30__* %92, i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.5, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %541

94:                                               ; preds = %89, %40
  %95 = load i8*, i8** %10, align 8
  %96 = call i64 @strcmp(i8* %95, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  %97 = icmp eq i64 %96, 0
  br i1 %97, label %98, label %195

98:                                               ; preds = %94
  %99 = call i32 @memset(%struct.sockaddr_un* %20, i32 0, i32 16)
  %100 = load i8*, i8** %9, align 8
  %101 = call i32 @strlen(i8* %100)
  %102 = sext i32 %101 to i64
  %103 = icmp uge i64 %102, 8
  br i1 %103, label %104, label %109

104:                                              ; preds = %98
  %105 = load i32*, i32** %5, align 8
  %106 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %107 = load i8*, i8** %9, align 8
  %108 = call i32 (i32*, %struct.TYPE_30__*, i8*, ...) @h2o_configurator_errprintf(i32* %105, %struct.TYPE_30__* %106, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.7, i64 0, i64 0), i8* %107)
  store i32 -1, i32* %4, align 4
  br label %541

109:                                              ; preds = %98
  %110 = load i32, i32* @AF_UNIX, align 4
  %111 = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %20, i32 0, i32 1
  store i32 %110, i32* %111, align 8
  %112 = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %20, i32 0, i32 0
  %113 = load i8*, i8** %112, align 8
  %114 = load i8*, i8** %9, align 8
  %115 = call i32 @strcpy(i8* %113, i8* %114)
  store i32 0, i32* %21, align 4
  %116 = bitcast %struct.sockaddr_un* %20 to i8*
  %117 = call %struct.listener_config_t* @find_listener(i8* %116, i32 16, i32 0)
  store %struct.listener_config_t* %117, %struct.listener_config_t** %22, align 8
  %118 = icmp eq %struct.listener_config_t* %117, null
  br i1 %118, label %119, label %158

119:                                              ; preds = %109
  store i32 -1, i32* %23, align 4
  %120 = load i32, i32* getelementptr inbounds (%struct.TYPE_26__, %struct.TYPE_26__* @conf, i32 0, i32 0), align 8
  switch i32 %120, label %146 [
    i32 130, label %121
  ]

121:                                              ; preds = %119
  %122 = load i32*, i32** getelementptr inbounds (%struct.TYPE_26__, %struct.TYPE_26__* @conf, i32 0, i32 1, i32 0), align 8
  %123 = icmp ne i32* %122, null
  br i1 %123, label %124, label %136

124:                                              ; preds = %121
  %125 = bitcast %struct.sockaddr_un* %20 to i8*
  %126 = load i32, i32* @SOCK_STREAM, align 4
  %127 = call i32 @find_listener_from_server_starter(i8* %125, i32 %126)
  store i32 %127, i32* %23, align 4
  %128 = icmp eq i32 %127, -1
  br i1 %128, label %129, label %135

129:                                              ; preds = %124
  %130 = load i32*, i32** %5, align 8
  %131 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %132 = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %20, i32 0, i32 0
  %133 = load i8*, i8** %132, align 8
  %134 = call i32 (i32*, %struct.TYPE_30__*, i8*, ...) @h2o_configurator_errprintf(i32* %130, %struct.TYPE_30__* %131, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.8, i64 0, i64 0), i8* %133)
  store i32 -1, i32* %4, align 4
  br label %541

135:                                              ; preds = %124
  br label %145

136:                                              ; preds = %121
  %137 = load i32*, i32** %5, align 8
  %138 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %139 = load %struct.TYPE_30__**, %struct.TYPE_30__*** %12, align 8
  %140 = load %struct.TYPE_30__**, %struct.TYPE_30__*** %13, align 8
  %141 = call i32 @open_unix_listener(i32* %137, %struct.TYPE_30__* %138, %struct.sockaddr_un* %20, %struct.TYPE_30__** %139, %struct.TYPE_30__** %140)
  store i32 %141, i32* %23, align 4
  %142 = icmp eq i32 %141, -1
  br i1 %142, label %143, label %144

143:                                              ; preds = %136
  store i32 -1, i32* %4, align 4
  br label %541

144:                                              ; preds = %136
  br label %145

145:                                              ; preds = %144, %135
  br label %147

146:                                              ; preds = %119
  br label %147

147:                                              ; preds = %146, %145
  %148 = load i32, i32* %23, align 4
  %149 = bitcast %struct.sockaddr_un* %20 to %struct.sockaddr*
  %150 = bitcast %struct.sockaddr* %149 to i8*
  %151 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %152 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %151, i32 0, i32 0
  %153 = load i32*, i32** %152, align 8
  %154 = icmp eq i32* %153, null
  %155 = zext i1 %154 to i32
  %156 = load i32, i32* %15, align 4
  %157 = call %struct.listener_config_t* @add_listener(i32 %148, i8* %150, i32 16, i32 %155, i32 %156)
  store %struct.listener_config_t* %157, %struct.listener_config_t** %22, align 8
  store i32 1, i32* %21, align 4
  br label %166

158:                                              ; preds = %109
  %159 = load %struct.listener_config_t*, %struct.listener_config_t** %22, align 8
  %160 = getelementptr inbounds %struct.listener_config_t, %struct.listener_config_t* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = load i32, i32* %15, align 4
  %163 = icmp ne i32 %161, %162
  br i1 %163, label %164, label %165

164:                                              ; preds = %158
  br label %533

165:                                              ; preds = %158
  br label %166

166:                                              ; preds = %165, %147
  %167 = load i32*, i32** %5, align 8
  %168 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %169 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %170 = load %struct.TYPE_30__**, %struct.TYPE_30__*** %11, align 8
  %171 = load %struct.listener_config_t*, %struct.listener_config_t** %22, align 8
  %172 = load i32, i32* %21, align 4
  %173 = call i64 @listener_setup_ssl(i32* %167, %struct.TYPE_32__* %168, %struct.TYPE_30__* %169, %struct.TYPE_30__** %170, %struct.listener_config_t* %171, i32 %172)
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %175, label %176

175:                                              ; preds = %166
  store i32 -1, i32* %4, align 4
  br label %541

176:                                              ; preds = %166
  %177 = load %struct.listener_config_t*, %struct.listener_config_t** %22, align 8
  %178 = getelementptr inbounds %struct.listener_config_t, %struct.listener_config_t* %177, i32 0, i32 1
  %179 = load i32*, i32** %178, align 8
  %180 = icmp ne i32* %179, null
  br i1 %180, label %181, label %194

181:                                              ; preds = %176
  %182 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %183 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %182, i32 0, i32 0
  %184 = load i32*, i32** %183, align 8
  %185 = icmp ne i32* %184, null
  br i1 %185, label %186, label %194

186:                                              ; preds = %181
  %187 = load %struct.listener_config_t*, %struct.listener_config_t** %22, align 8
  %188 = getelementptr inbounds %struct.listener_config_t, %struct.listener_config_t* %187, i32 0, i32 1
  %189 = bitcast i32** %188 to i8*
  %190 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %191 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %190, i32 0, i32 0
  %192 = load i32*, i32** %191, align 8
  %193 = call i32 @h2o_append_to_null_terminated_list(i8* %189, i32* %192)
  br label %194

194:                                              ; preds = %186, %181, %176
  br label %532

195:                                              ; preds = %94
  %196 = load i8*, i8** %10, align 8
  %197 = call i64 @strcmp(i8* %196, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %198 = icmp eq i64 %197, 0
  br i1 %198, label %199, label %336

199:                                              ; preds = %195
  %200 = load i32*, i32** %5, align 8
  %201 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %202 = load i32, i32* @SOCK_STREAM, align 4
  %203 = load i32, i32* @IPPROTO_TCP, align 4
  %204 = load i8*, i8** %8, align 8
  %205 = load i8*, i8** %9, align 8
  %206 = call %struct.addrinfo* @resolve_address(i32* %200, %struct.TYPE_30__* %201, i32 %202, i32 %203, i8* %204, i8* %205)
  store %struct.addrinfo* %206, %struct.addrinfo** %24, align 8
  %207 = icmp eq %struct.addrinfo* %206, null
  br i1 %207, label %208, label %209

208:                                              ; preds = %199
  store i32 -1, i32* %4, align 4
  br label %541

209:                                              ; preds = %199
  %210 = load %struct.addrinfo*, %struct.addrinfo** %24, align 8
  store %struct.addrinfo* %210, %struct.addrinfo** %25, align 8
  br label %211

211:                                              ; preds = %329, %209
  %212 = load %struct.addrinfo*, %struct.addrinfo** %25, align 8
  %213 = icmp ne %struct.addrinfo* %212, null
  br i1 %213, label %214, label %333

214:                                              ; preds = %211
  %215 = load %struct.addrinfo*, %struct.addrinfo** %25, align 8
  %216 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %215, i32 0, i32 0
  %217 = load i8*, i8** %216, align 8
  %218 = load %struct.addrinfo*, %struct.addrinfo** %25, align 8
  %219 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %218, i32 0, i32 1
  %220 = load i32, i32* %219, align 8
  %221 = call %struct.listener_config_t* @find_listener(i8* %217, i32 %220, i32 0)
  store %struct.listener_config_t* %221, %struct.listener_config_t** %26, align 8
  store i32 0, i32* %27, align 4
  %222 = load %struct.listener_config_t*, %struct.listener_config_t** %26, align 8
  %223 = icmp eq %struct.listener_config_t* %222, null
  br i1 %223, label %224, label %288

224:                                              ; preds = %214
  store i32 -1, i32* %28, align 4
  %225 = load i32, i32* getelementptr inbounds (%struct.TYPE_26__, %struct.TYPE_26__* @conf, i32 0, i32 0), align 8
  switch i32 %225, label %272 [
    i32 130, label %226
  ]

226:                                              ; preds = %224
  %227 = load i32*, i32** getelementptr inbounds (%struct.TYPE_26__, %struct.TYPE_26__* @conf, i32 0, i32 1, i32 0), align 8
  %228 = icmp ne i32* %227, null
  br i1 %228, label %229, label %245

229:                                              ; preds = %226
  %230 = load %struct.addrinfo*, %struct.addrinfo** %25, align 8
  %231 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %230, i32 0, i32 0
  %232 = load i8*, i8** %231, align 8
  %233 = load i32, i32* @SOCK_STREAM, align 4
  %234 = call i32 @find_listener_from_server_starter(i8* %232, i32 %233)
  store i32 %234, i32* %28, align 4
  %235 = icmp eq i32 %234, -1
  br i1 %235, label %236, label %244

236:                                              ; preds = %229
  %237 = load i32*, i32** %5, align 8
  %238 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %239 = load i8*, i8** %8, align 8
  %240 = load i8*, i8** %9, align 8
  %241 = call i32 (i32*, %struct.TYPE_30__*, i8*, ...) @h2o_configurator_errprintf(i32* %237, %struct.TYPE_30__* %238, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.9, i64 0, i64 0), i8* %239, i8* %240)
  %242 = load %struct.addrinfo*, %struct.addrinfo** %24, align 8
  %243 = call i32 @freeaddrinfo(%struct.addrinfo* %242)
  store i32 -1, i32* %4, align 4
  br label %541

244:                                              ; preds = %229
  br label %271

245:                                              ; preds = %226
  %246 = load i32*, i32** %5, align 8
  %247 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %248 = load i8*, i8** %8, align 8
  %249 = load i8*, i8** %9, align 8
  %250 = load %struct.addrinfo*, %struct.addrinfo** %25, align 8
  %251 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %250, i32 0, i32 2
  %252 = load i32, i32* %251, align 4
  %253 = load %struct.addrinfo*, %struct.addrinfo** %25, align 8
  %254 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %253, i32 0, i32 4
  %255 = load i32, i32* %254, align 4
  %256 = load %struct.addrinfo*, %struct.addrinfo** %25, align 8
  %257 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %256, i32 0, i32 3
  %258 = load i32, i32* %257, align 8
  %259 = load %struct.addrinfo*, %struct.addrinfo** %25, align 8
  %260 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %259, i32 0, i32 0
  %261 = load i8*, i8** %260, align 8
  %262 = load %struct.addrinfo*, %struct.addrinfo** %25, align 8
  %263 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %262, i32 0, i32 1
  %264 = load i32, i32* %263, align 8
  %265 = call i32 @open_inet_listener(i32* %246, %struct.TYPE_30__* %247, i8* %248, i8* %249, i32 %252, i32 %255, i32 %258, i8* %261, i32 %264)
  store i32 %265, i32* %28, align 4
  %266 = icmp eq i32 %265, -1
  br i1 %266, label %267, label %270

267:                                              ; preds = %245
  %268 = load %struct.addrinfo*, %struct.addrinfo** %24, align 8
  %269 = call i32 @freeaddrinfo(%struct.addrinfo* %268)
  store i32 -1, i32* %4, align 4
  br label %541

270:                                              ; preds = %245
  br label %271

271:                                              ; preds = %270, %244
  br label %273

272:                                              ; preds = %224
  br label %273

273:                                              ; preds = %272, %271
  %274 = load i32, i32* %28, align 4
  %275 = load %struct.addrinfo*, %struct.addrinfo** %25, align 8
  %276 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %275, i32 0, i32 0
  %277 = load i8*, i8** %276, align 8
  %278 = load %struct.addrinfo*, %struct.addrinfo** %25, align 8
  %279 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %278, i32 0, i32 1
  %280 = load i32, i32* %279, align 8
  %281 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %282 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %281, i32 0, i32 0
  %283 = load i32*, i32** %282, align 8
  %284 = icmp eq i32* %283, null
  %285 = zext i1 %284 to i32
  %286 = load i32, i32* %15, align 4
  %287 = call %struct.listener_config_t* @add_listener(i32 %274, i8* %277, i32 %280, i32 %285, i32 %286)
  store %struct.listener_config_t* %287, %struct.listener_config_t** %26, align 8
  store i32 1, i32* %27, align 4
  br label %298

288:                                              ; preds = %214
  %289 = load %struct.listener_config_t*, %struct.listener_config_t** %26, align 8
  %290 = getelementptr inbounds %struct.listener_config_t, %struct.listener_config_t* %289, i32 0, i32 0
  %291 = load i32, i32* %290, align 8
  %292 = load i32, i32* %15, align 4
  %293 = icmp ne i32 %291, %292
  br i1 %293, label %294, label %297

294:                                              ; preds = %288
  %295 = load %struct.addrinfo*, %struct.addrinfo** %24, align 8
  %296 = call i32 @freeaddrinfo(%struct.addrinfo* %295)
  br label %533

297:                                              ; preds = %288
  br label %298

298:                                              ; preds = %297, %273
  %299 = load i32*, i32** %5, align 8
  %300 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %301 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %302 = load %struct.TYPE_30__**, %struct.TYPE_30__*** %11, align 8
  %303 = load %struct.listener_config_t*, %struct.listener_config_t** %26, align 8
  %304 = load i32, i32* %27, align 4
  %305 = call i64 @listener_setup_ssl(i32* %299, %struct.TYPE_32__* %300, %struct.TYPE_30__* %301, %struct.TYPE_30__** %302, %struct.listener_config_t* %303, i32 %304)
  %306 = icmp ne i64 %305, 0
  br i1 %306, label %307, label %310

307:                                              ; preds = %298
  %308 = load %struct.addrinfo*, %struct.addrinfo** %24, align 8
  %309 = call i32 @freeaddrinfo(%struct.addrinfo* %308)
  store i32 -1, i32* %4, align 4
  br label %541

310:                                              ; preds = %298
  %311 = load %struct.listener_config_t*, %struct.listener_config_t** %26, align 8
  %312 = getelementptr inbounds %struct.listener_config_t, %struct.listener_config_t* %311, i32 0, i32 1
  %313 = load i32*, i32** %312, align 8
  %314 = icmp ne i32* %313, null
  br i1 %314, label %315, label %328

315:                                              ; preds = %310
  %316 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %317 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %316, i32 0, i32 0
  %318 = load i32*, i32** %317, align 8
  %319 = icmp ne i32* %318, null
  br i1 %319, label %320, label %328

320:                                              ; preds = %315
  %321 = load %struct.listener_config_t*, %struct.listener_config_t** %26, align 8
  %322 = getelementptr inbounds %struct.listener_config_t, %struct.listener_config_t* %321, i32 0, i32 1
  %323 = bitcast i32** %322 to i8*
  %324 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %325 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %324, i32 0, i32 0
  %326 = load i32*, i32** %325, align 8
  %327 = call i32 @h2o_append_to_null_terminated_list(i8* %323, i32* %326)
  br label %328

328:                                              ; preds = %320, %315, %310
  br label %329

329:                                              ; preds = %328
  %330 = load %struct.addrinfo*, %struct.addrinfo** %25, align 8
  %331 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %330, i32 0, i32 5
  %332 = load %struct.addrinfo*, %struct.addrinfo** %331, align 8
  store %struct.addrinfo* %332, %struct.addrinfo** %25, align 8
  br label %211

333:                                              ; preds = %211
  %334 = load %struct.addrinfo*, %struct.addrinfo** %24, align 8
  %335 = call i32 @freeaddrinfo(%struct.addrinfo* %334)
  br label %531

336:                                              ; preds = %195
  %337 = load i8*, i8** %10, align 8
  %338 = call i64 @strcmp(i8* %337, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %339 = icmp eq i64 %338, 0
  br i1 %339, label %340, label %525

340:                                              ; preds = %336
  %341 = load %struct.TYPE_30__**, %struct.TYPE_30__*** %11, align 8
  %342 = icmp eq %struct.TYPE_30__** %341, null
  br i1 %342, label %343, label %347

343:                                              ; preds = %340
  %344 = load i32*, i32** %5, align 8
  %345 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %346 = call i32 (i32*, %struct.TYPE_30__*, i8*, ...) @h2o_configurator_errprintf(i32* %344, %struct.TYPE_30__* %345, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.10, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %541

347:                                              ; preds = %340
  %348 = load i32*, i32** %5, align 8
  %349 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %350 = load i32, i32* @SOCK_DGRAM, align 4
  %351 = load i32, i32* @IPPROTO_UDP, align 4
  %352 = load i8*, i8** %8, align 8
  %353 = load i8*, i8** %9, align 8
  %354 = call %struct.addrinfo* @resolve_address(i32* %348, %struct.TYPE_30__* %349, i32 %350, i32 %351, i8* %352, i8* %353)
  store %struct.addrinfo* %354, %struct.addrinfo** %29, align 8
  %355 = icmp eq %struct.addrinfo* %354, null
  br i1 %355, label %356, label %357

356:                                              ; preds = %347
  store i32 -1, i32* %4, align 4
  br label %541

357:                                              ; preds = %347
  %358 = load %struct.addrinfo*, %struct.addrinfo** %29, align 8
  store %struct.addrinfo* %358, %struct.addrinfo** %30, align 8
  br label %359

359:                                              ; preds = %518, %357
  %360 = load %struct.addrinfo*, %struct.addrinfo** %30, align 8
  %361 = icmp ne %struct.addrinfo* %360, null
  br i1 %361, label %362, label %522

362:                                              ; preds = %359
  %363 = load %struct.addrinfo*, %struct.addrinfo** %30, align 8
  %364 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %363, i32 0, i32 0
  %365 = load i8*, i8** %364, align 8
  %366 = load %struct.addrinfo*, %struct.addrinfo** %30, align 8
  %367 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %366, i32 0, i32 1
  %368 = load i32, i32* %367, align 8
  %369 = call %struct.listener_config_t* @find_listener(i8* %365, i32 %368, i32 1)
  store %struct.listener_config_t* %369, %struct.listener_config_t** %31, align 8
  store i32 0, i32* %32, align 4
  %370 = load %struct.listener_config_t*, %struct.listener_config_t** %31, align 8
  %371 = icmp eq %struct.listener_config_t* %370, null
  br i1 %371, label %372, label %487

372:                                              ; preds = %362
  store i32 -1, i32* %33, align 4
  %373 = load i32, i32* getelementptr inbounds (%struct.TYPE_26__, %struct.TYPE_26__* @conf, i32 0, i32 0), align 8
  switch i32 %373, label %427 [
    i32 130, label %374
  ]

374:                                              ; preds = %372
  %375 = load i32*, i32** getelementptr inbounds (%struct.TYPE_26__, %struct.TYPE_26__* @conf, i32 0, i32 1, i32 0), align 8
  %376 = icmp ne i32* %375, null
  br i1 %376, label %377, label %395

377:                                              ; preds = %374
  %378 = load %struct.addrinfo*, %struct.addrinfo** %30, align 8
  %379 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %378, i32 0, i32 0
  %380 = load i8*, i8** %379, align 8
  %381 = load %struct.addrinfo*, %struct.addrinfo** %30, align 8
  %382 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %381, i32 0, i32 4
  %383 = load i32, i32* %382, align 4
  %384 = call i32 @find_listener_from_server_starter(i8* %380, i32 %383)
  store i32 %384, i32* %33, align 4
  %385 = icmp eq i32 %384, -1
  br i1 %385, label %386, label %394

386:                                              ; preds = %377
  %387 = load i32*, i32** %5, align 8
  %388 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %389 = load i8*, i8** %8, align 8
  %390 = load i8*, i8** %9, align 8
  %391 = call i32 (i32*, %struct.TYPE_30__*, i8*, ...) @h2o_configurator_errprintf(i32* %387, %struct.TYPE_30__* %388, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.11, i64 0, i64 0), i8* %389, i8* %390)
  %392 = load %struct.addrinfo*, %struct.addrinfo** %29, align 8
  %393 = call i32 @freeaddrinfo(%struct.addrinfo* %392)
  store i32 -1, i32* %4, align 4
  br label %541

394:                                              ; preds = %377
  br label %421

395:                                              ; preds = %374
  %396 = load i32*, i32** %5, align 8
  %397 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %398 = load i8*, i8** %8, align 8
  %399 = load i8*, i8** %9, align 8
  %400 = load %struct.addrinfo*, %struct.addrinfo** %30, align 8
  %401 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %400, i32 0, i32 2
  %402 = load i32, i32* %401, align 4
  %403 = load %struct.addrinfo*, %struct.addrinfo** %30, align 8
  %404 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %403, i32 0, i32 4
  %405 = load i32, i32* %404, align 4
  %406 = load %struct.addrinfo*, %struct.addrinfo** %30, align 8
  %407 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %406, i32 0, i32 3
  %408 = load i32, i32* %407, align 8
  %409 = load %struct.addrinfo*, %struct.addrinfo** %30, align 8
  %410 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %409, i32 0, i32 0
  %411 = load i8*, i8** %410, align 8
  %412 = load %struct.addrinfo*, %struct.addrinfo** %30, align 8
  %413 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %412, i32 0, i32 1
  %414 = load i32, i32* %413, align 8
  %415 = call i32 @open_inet_listener(i32* %396, %struct.TYPE_30__* %397, i8* %398, i8* %399, i32 %402, i32 %405, i32 %408, i8* %411, i32 %414)
  store i32 %415, i32* %33, align 4
  %416 = icmp eq i32 %415, -1
  br i1 %416, label %417, label %420

417:                                              ; preds = %395
  %418 = load %struct.addrinfo*, %struct.addrinfo** %29, align 8
  %419 = call i32 @freeaddrinfo(%struct.addrinfo* %418)
  store i32 -1, i32* %4, align 4
  br label %541

420:                                              ; preds = %395
  br label %421

421:                                              ; preds = %420, %394
  %422 = load %struct.addrinfo*, %struct.addrinfo** %30, align 8
  %423 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %422, i32 0, i32 2
  %424 = load i32, i32* %423, align 4
  switch i32 %424, label %425 [
  ]

425:                                              ; preds = %421
  br label %426

426:                                              ; preds = %425
  br label %428

427:                                              ; preds = %372
  br label %428

428:                                              ; preds = %427, %426
  %429 = call %struct.TYPE_31__* @h2o_mem_alloc(i32 40)
  store %struct.TYPE_31__* %429, %struct.TYPE_31__** %34, align 8
  %430 = load %struct.TYPE_31__*, %struct.TYPE_31__** %34, align 8
  %431 = bitcast %struct.TYPE_31__* %430 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %431, i8* align 8 bitcast (%struct.TYPE_31__* @quicly_spec_context to i8*), i64 40, i1 false)
  %432 = load %struct.TYPE_31__*, %struct.TYPE_31__** %34, align 8
  %433 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %432, i32 0, i32 4
  store i32* @quic_cid_encryptor, i32** %433, align 8
  %434 = load %struct.TYPE_31__*, %struct.TYPE_31__** %34, align 8
  %435 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %434, i32 0, i32 3
  %436 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %435, i32 0, i32 0
  store i32 10, i32* %436, align 8
  %437 = load %struct.TYPE_31__*, %struct.TYPE_31__** %34, align 8
  %438 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %437, i32 0, i32 2
  store i32* @h2o_http3_server_stream_scheduler, i32** %438, align 8
  %439 = load %struct.TYPE_31__*, %struct.TYPE_31__** %34, align 8
  %440 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %439, i32 0, i32 1
  store i32* @h2o_http3_server_on_stream_open, i32** %440, align 8
  %441 = load %struct.TYPE_31__*, %struct.TYPE_31__** %34, align 8
  %442 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %441, i32 0, i32 0
  store i32* @quic_resumption_token_generator, i32** %442, align 8
  %443 = load i32, i32* %33, align 4
  %444 = load %struct.addrinfo*, %struct.addrinfo** %30, align 8
  %445 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %444, i32 0, i32 0
  %446 = load i8*, i8** %445, align 8
  %447 = load %struct.addrinfo*, %struct.addrinfo** %30, align 8
  %448 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %447, i32 0, i32 1
  %449 = load i32, i32* %448, align 8
  %450 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %451 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %450, i32 0, i32 0
  %452 = load i32*, i32** %451, align 8
  %453 = icmp eq i32* %452, null
  %454 = zext i1 %453 to i32
  %455 = call %struct.listener_config_t* @add_listener(i32 %443, i8* %446, i32 %449, i32 %454, i32 0)
  store %struct.listener_config_t* %455, %struct.listener_config_t** %31, align 8
  %456 = load %struct.TYPE_31__*, %struct.TYPE_31__** %34, align 8
  %457 = load %struct.listener_config_t*, %struct.listener_config_t** %31, align 8
  %458 = getelementptr inbounds %struct.listener_config_t, %struct.listener_config_t* %457, i32 0, i32 2
  %459 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %458, i32 0, i32 1
  store %struct.TYPE_31__* %456, %struct.TYPE_31__** %459, align 8
  %460 = load %struct.TYPE_30__**, %struct.TYPE_30__*** %14, align 8
  %461 = icmp ne %struct.TYPE_30__** %460, null
  br i1 %461, label %462, label %486

462:                                              ; preds = %428
  %463 = load i32*, i32** %5, align 8
  %464 = load %struct.TYPE_30__**, %struct.TYPE_30__*** %14, align 8
  %465 = load %struct.TYPE_30__*, %struct.TYPE_30__** %464, align 8
  %466 = call i64 (i32*, %struct.TYPE_30__*, i8*, i8*, %struct.TYPE_30__***, ...) @h2o_configurator_parse_mapping(i32* %463, %struct.TYPE_30__* %465, i8* null, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i64 0, i64 0), %struct.TYPE_30__*** %35)
  %467 = icmp ne i64 %466, 0
  br i1 %467, label %468, label %469

468:                                              ; preds = %462
  store i32 -1, i32* %4, align 4
  br label %541

469:                                              ; preds = %462
  %470 = load %struct.TYPE_30__**, %struct.TYPE_30__*** %35, align 8
  %471 = icmp ne %struct.TYPE_30__** %470, null
  br i1 %471, label %472, label %485

472:                                              ; preds = %469
  %473 = load i32*, i32** %5, align 8
  %474 = load %struct.TYPE_30__**, %struct.TYPE_30__*** %35, align 8
  %475 = load %struct.TYPE_30__*, %struct.TYPE_30__** %474, align 8
  %476 = call i32 @h2o_configurator_get_one_of(i32* %473, %struct.TYPE_30__* %475, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  store i32 %476, i32* %36, align 4
  %477 = load i32, i32* %36, align 4
  %478 = icmp eq i32 %477, -1
  br i1 %478, label %479, label %480

479:                                              ; preds = %472
  store i32 -1, i32* %4, align 4
  br label %541

480:                                              ; preds = %472
  %481 = load i32, i32* %36, align 4
  %482 = load %struct.listener_config_t*, %struct.listener_config_t** %31, align 8
  %483 = getelementptr inbounds %struct.listener_config_t, %struct.listener_config_t* %482, i32 0, i32 2
  %484 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %483, i32 0, i32 0
  store i32 %481, i32* %484, align 8
  br label %485

485:                                              ; preds = %480, %469
  br label %486

486:                                              ; preds = %485, %428
  store i32 1, i32* %32, align 4
  br label %487

487:                                              ; preds = %486, %362
  %488 = load i32*, i32** %5, align 8
  %489 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %490 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %491 = load %struct.TYPE_30__**, %struct.TYPE_30__*** %11, align 8
  %492 = load %struct.listener_config_t*, %struct.listener_config_t** %31, align 8
  %493 = load i32, i32* %32, align 4
  %494 = call i64 @listener_setup_ssl(i32* %488, %struct.TYPE_32__* %489, %struct.TYPE_30__* %490, %struct.TYPE_30__** %491, %struct.listener_config_t* %492, i32 %493)
  %495 = icmp ne i64 %494, 0
  br i1 %495, label %496, label %499

496:                                              ; preds = %487
  %497 = load %struct.addrinfo*, %struct.addrinfo** %29, align 8
  %498 = call i32 @freeaddrinfo(%struct.addrinfo* %497)
  store i32 -1, i32* %4, align 4
  br label %541

499:                                              ; preds = %487
  %500 = load %struct.listener_config_t*, %struct.listener_config_t** %31, align 8
  %501 = getelementptr inbounds %struct.listener_config_t, %struct.listener_config_t* %500, i32 0, i32 1
  %502 = load i32*, i32** %501, align 8
  %503 = icmp ne i32* %502, null
  br i1 %503, label %504, label %517

504:                                              ; preds = %499
  %505 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %506 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %505, i32 0, i32 0
  %507 = load i32*, i32** %506, align 8
  %508 = icmp ne i32* %507, null
  br i1 %508, label %509, label %517

509:                                              ; preds = %504
  %510 = load %struct.listener_config_t*, %struct.listener_config_t** %31, align 8
  %511 = getelementptr inbounds %struct.listener_config_t, %struct.listener_config_t* %510, i32 0, i32 1
  %512 = bitcast i32** %511 to i8*
  %513 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %514 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %513, i32 0, i32 0
  %515 = load i32*, i32** %514, align 8
  %516 = call i32 @h2o_append_to_null_terminated_list(i8* %512, i32* %515)
  br label %517

517:                                              ; preds = %509, %504, %499
  br label %518

518:                                              ; preds = %517
  %519 = load %struct.addrinfo*, %struct.addrinfo** %30, align 8
  %520 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %519, i32 0, i32 5
  %521 = load %struct.addrinfo*, %struct.addrinfo** %520, align 8
  store %struct.addrinfo* %521, %struct.addrinfo** %30, align 8
  br label %359

522:                                              ; preds = %359
  %523 = load %struct.addrinfo*, %struct.addrinfo** %29, align 8
  %524 = call i32 @freeaddrinfo(%struct.addrinfo* %523)
  br label %530

525:                                              ; preds = %336
  %526 = load i32*, i32** %5, align 8
  %527 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %528 = load i8*, i8** %10, align 8
  %529 = call i32 (i32*, %struct.TYPE_30__*, i8*, ...) @h2o_configurator_errprintf(i32* %526, %struct.TYPE_30__* %527, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.13, i64 0, i64 0), i8* %528)
  store i32 -1, i32* %4, align 4
  br label %541

530:                                              ; preds = %522
  br label %531

531:                                              ; preds = %530, %333
  br label %532

532:                                              ; preds = %531, %194
  store i32 0, i32* %4, align 4
  br label %541

533:                                              ; preds = %294, %164
  %534 = load i32*, i32** %5, align 8
  %535 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %536 = load i32, i32* %15, align 4
  %537 = icmp ne i32 %536, 0
  %538 = zext i1 %537 to i64
  %539 = select i1 %537, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.16, i64 0, i64 0)
  %540 = call i32 (i32*, %struct.TYPE_30__*, i8*, ...) @h2o_configurator_errprintf(i32* %534, %struct.TYPE_30__* %535, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.14, i64 0, i64 0), i8* %539)
  store i32 -1, i32* %4, align 4
  br label %541

541:                                              ; preds = %533, %532, %525, %496, %479, %468, %417, %386, %356, %343, %307, %267, %236, %208, %175, %143, %129, %104, %90, %88, %50
  %542 = load i32, i32* %4, align 4
  ret i32 %542
}

declare dso_local i64 @h2o_configurator_parse_mapping(i32*, %struct.TYPE_30__*, i8*, i8*, %struct.TYPE_30__***, ...) #1

declare dso_local i32 @h2o_configurator_get_one_of(i32*, %struct.TYPE_30__*, i8*) #1

declare dso_local i32 @h2o_configurator_errprintf(i32*, %struct.TYPE_30__*, i8*, ...) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @memset(%struct.sockaddr_un*, i32, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local %struct.listener_config_t* @find_listener(i8*, i32, i32) #1

declare dso_local i32 @find_listener_from_server_starter(i8*, i32) #1

declare dso_local i32 @open_unix_listener(i32*, %struct.TYPE_30__*, %struct.sockaddr_un*, %struct.TYPE_30__**, %struct.TYPE_30__**) #1

declare dso_local %struct.listener_config_t* @add_listener(i32, i8*, i32, i32, i32) #1

declare dso_local i64 @listener_setup_ssl(i32*, %struct.TYPE_32__*, %struct.TYPE_30__*, %struct.TYPE_30__**, %struct.listener_config_t*, i32) #1

declare dso_local i32 @h2o_append_to_null_terminated_list(i8*, i32*) #1

declare dso_local %struct.addrinfo* @resolve_address(i32*, %struct.TYPE_30__*, i32, i32, i8*, i8*) #1

declare dso_local i32 @freeaddrinfo(%struct.addrinfo*) #1

declare dso_local i32 @open_inet_listener(i32*, %struct.TYPE_30__*, i8*, i8*, i32, i32, i32, i8*, i32) #1

declare dso_local %struct.TYPE_31__* @h2o_mem_alloc(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
