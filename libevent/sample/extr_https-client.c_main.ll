; ModuleID = '/home/carl/AnghaBench/libevent/sample/extr_https-client.c_main.c'
source_filename = "/home/carl/AnghaBench/libevent/sample/extr_https-client.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.event_base = type { i32 }
%struct.evhttp_uri = type { i32 }
%struct.bufferevent = type { i32 }
%struct.evhttp_connection = type { i32 }
%struct.evhttp_request = type { i32 }
%struct.evkeyvalq = type { i32 }
%struct.evbuffer = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"-url\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"-crt\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"-ignore-cert\00", align 1
@ignore_cert = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [6 x i8] c"-data\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"-retries\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"-timeout\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"-help\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"malformed url\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"https\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"http\00", align 1
@.str.10 = private unnamed_addr constant [26 x i8] c"url must be http or https\00", align 1
@.str.11 = private unnamed_addr constant [21 x i8] c"url must have a host\00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.13 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"%s?%s\00", align 1
@.str.15 = private unnamed_addr constant [10 x i8] c"RAND_poll\00", align 1
@.str.16 = private unnamed_addr constant [12 x i8] c"SSL_CTX_new\00", align 1
@.str.17 = private unnamed_addr constant [29 x i8] c"X509_STORE_set_default_paths\00", align 1
@.str.18 = private unnamed_addr constant [30 x i8] c"SSL_CTX_load_verify_locations\00", align 1
@SSL_VERIFY_PEER = common dso_local global i32 0, align 4
@cert_verify_callback = common dso_local global i32 0, align 4
@.str.19 = private unnamed_addr constant [17 x i8] c"event_base_new()\00", align 1
@.str.20 = private unnamed_addr constant [10 x i8] c"SSL_new()\00", align 1
@BEV_OPT_CLOSE_ON_FREE = common dso_local global i32 0, align 4
@BUFFEREVENT_SSL_CONNECTING = common dso_local global i32 0, align 4
@BEV_OPT_DEFER_CALLBACKS = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.21 = private unnamed_addr constant [41 x i8] c"bufferevent_openssl_socket_new() failed\0A\00", align 1
@.str.22 = private unnamed_addr constant [49 x i8] c"evhttp_connection_base_bufferevent_new() failed\0A\00", align 1
@http_request_done = common dso_local global i32 0, align 4
@.str.23 = private unnamed_addr constant [29 x i8] c"evhttp_request_new() failed\0A\00", align 1
@.str.24 = private unnamed_addr constant [5 x i8] c"Host\00", align 1
@.str.25 = private unnamed_addr constant [11 x i8] c"Connection\00", align 1
@.str.26 = private unnamed_addr constant [6 x i8] c"close\00", align 1
@.str.27 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.28 = private unnamed_addr constant [4 x i8] c"%lu\00", align 1
@.str.29 = private unnamed_addr constant [15 x i8] c"Content-Length\00", align 1
@EVHTTP_REQ_POST = common dso_local global i32 0, align 4
@EVHTTP_REQ_GET = common dso_local global i32 0, align 4
@.str.30 = private unnamed_addr constant [30 x i8] c"evhttp_make_request() failed\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.event_base*, align 8
  %8 = alloca %struct.evhttp_uri*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca [256 x i8], align 16
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca %struct.bufferevent*, align 8
  %23 = alloca %struct.evhttp_connection*, align 8
  %24 = alloca %struct.evhttp_request*, align 8
  %25 = alloca %struct.evkeyvalq*, align 8
  %26 = alloca %struct.evbuffer*, align 8
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32*, align 8
  %31 = alloca i32*, align 8
  %32 = alloca [1024 x i8], align 16
  %33 = alloca i64, align 8
  %34 = alloca i64, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store %struct.event_base* null, %struct.event_base** %7, align 8
  store %struct.evhttp_uri* null, %struct.evhttp_uri** %8, align 8
  store i8* null, i8** %9, align 8
  store i8* null, i8** %10, align 8
  store i8* null, i8** %11, align 8
  store i32 0, i32* %18, align 4
  store i32 -1, i32* %19, align 4
  store i32* null, i32** %20, align 8
  store i32* null, i32** %21, align 8
  store %struct.evhttp_connection* null, %struct.evhttp_connection** %23, align 8
  store i32 0, i32* %28, align 4
  store i32 0, i32* %29, align 4
  store i32 1, i32* %27, align 4
  br label %35

35:                                               ; preds = %182, %2
  %36 = load i32, i32* %27, align 4
  %37 = load i32, i32* %4, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %185

39:                                               ; preds = %35
  %40 = load i8**, i8*** %5, align 8
  %41 = load i32, i32* %27, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i8*, i8** %40, i64 %42
  %44 = load i8*, i8** %43, align 8
  %45 = call i32 @strcmp(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %62, label %47

47:                                               ; preds = %39
  %48 = load i32, i32* %27, align 4
  %49 = load i32, i32* %4, align 4
  %50 = sub nsw i32 %49, 1
  %51 = icmp slt i32 %48, %50
  br i1 %51, label %52, label %59

52:                                               ; preds = %47
  %53 = load i8**, i8*** %5, align 8
  %54 = load i32, i32* %27, align 4
  %55 = add nsw i32 %54, 1
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i8*, i8** %53, i64 %56
  %58 = load i8*, i8** %57, align 8
  store i8* %58, i8** %9, align 8
  br label %61

59:                                               ; preds = %47
  %60 = call i32 (...) @syntax()
  br label %430

61:                                               ; preds = %52
  br label %181

62:                                               ; preds = %39
  %63 = load i8**, i8*** %5, align 8
  %64 = load i32, i32* %27, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i8*, i8** %63, i64 %65
  %67 = load i8*, i8** %66, align 8
  %68 = call i32 @strcmp(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* %67)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %85, label %70

70:                                               ; preds = %62
  %71 = load i32, i32* %27, align 4
  %72 = load i32, i32* %4, align 4
  %73 = sub nsw i32 %72, 1
  %74 = icmp slt i32 %71, %73
  br i1 %74, label %75, label %82

75:                                               ; preds = %70
  %76 = load i8**, i8*** %5, align 8
  %77 = load i32, i32* %27, align 4
  %78 = add nsw i32 %77, 1
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i8*, i8** %76, i64 %79
  %81 = load i8*, i8** %80, align 8
  store i8* %81, i8** %11, align 8
  br label %84

82:                                               ; preds = %70
  %83 = call i32 (...) @syntax()
  br label %430

84:                                               ; preds = %75
  br label %180

85:                                               ; preds = %62
  %86 = load i8**, i8*** %5, align 8
  %87 = load i32, i32* %27, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i8*, i8** %86, i64 %88
  %90 = load i8*, i8** %89, align 8
  %91 = call i32 @strcmp(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i8* %90)
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %94, label %93

93:                                               ; preds = %85
  store i32 1, i32* @ignore_cert, align 4
  br label %179

94:                                               ; preds = %85
  %95 = load i8**, i8*** %5, align 8
  %96 = load i32, i32* %27, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i8*, i8** %95, i64 %97
  %99 = load i8*, i8** %98, align 8
  %100 = call i32 @strcmp(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* %99)
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %117, label %102

102:                                              ; preds = %94
  %103 = load i32, i32* %27, align 4
  %104 = load i32, i32* %4, align 4
  %105 = sub nsw i32 %104, 1
  %106 = icmp slt i32 %103, %105
  br i1 %106, label %107, label %114

107:                                              ; preds = %102
  %108 = load i8**, i8*** %5, align 8
  %109 = load i32, i32* %27, align 4
  %110 = add nsw i32 %109, 1
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i8*, i8** %108, i64 %111
  %113 = load i8*, i8** %112, align 8
  store i8* %113, i8** %10, align 8
  br label %116

114:                                              ; preds = %102
  %115 = call i32 (...) @syntax()
  br label %430

116:                                              ; preds = %107
  br label %178

117:                                              ; preds = %94
  %118 = load i8**, i8*** %5, align 8
  %119 = load i32, i32* %27, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i8*, i8** %118, i64 %120
  %122 = load i8*, i8** %121, align 8
  %123 = call i32 @strcmp(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i8* %122)
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %141, label %125

125:                                              ; preds = %117
  %126 = load i32, i32* %27, align 4
  %127 = load i32, i32* %4, align 4
  %128 = sub nsw i32 %127, 1
  %129 = icmp slt i32 %126, %128
  br i1 %129, label %130, label %138

130:                                              ; preds = %125
  %131 = load i8**, i8*** %5, align 8
  %132 = load i32, i32* %27, align 4
  %133 = add nsw i32 %132, 1
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i8*, i8** %131, i64 %134
  %136 = load i8*, i8** %135, align 8
  %137 = call i32 @atoi(i8* %136)
  store i32 %137, i32* %18, align 4
  br label %140

138:                                              ; preds = %125
  %139 = call i32 (...) @syntax()
  br label %430

140:                                              ; preds = %130
  br label %177

141:                                              ; preds = %117
  %142 = load i8**, i8*** %5, align 8
  %143 = load i32, i32* %27, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i8*, i8** %142, i64 %144
  %146 = load i8*, i8** %145, align 8
  %147 = call i32 @strcmp(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i8* %146)
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %165, label %149

149:                                              ; preds = %141
  %150 = load i32, i32* %27, align 4
  %151 = load i32, i32* %4, align 4
  %152 = sub nsw i32 %151, 1
  %153 = icmp slt i32 %150, %152
  br i1 %153, label %154, label %162

154:                                              ; preds = %149
  %155 = load i8**, i8*** %5, align 8
  %156 = load i32, i32* %27, align 4
  %157 = add nsw i32 %156, 1
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds i8*, i8** %155, i64 %158
  %160 = load i8*, i8** %159, align 8
  %161 = call i32 @atoi(i8* %160)
  store i32 %161, i32* %19, align 4
  br label %164

162:                                              ; preds = %149
  %163 = call i32 (...) @syntax()
  br label %430

164:                                              ; preds = %154
  br label %176

165:                                              ; preds = %141
  %166 = load i8**, i8*** %5, align 8
  %167 = load i32, i32* %27, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds i8*, i8** %166, i64 %168
  %170 = load i8*, i8** %169, align 8
  %171 = call i32 @strcmp(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i8* %170)
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %175, label %173

173:                                              ; preds = %165
  %174 = call i32 (...) @syntax()
  br label %430

175:                                              ; preds = %165
  br label %176

176:                                              ; preds = %175, %164
  br label %177

177:                                              ; preds = %176, %140
  br label %178

178:                                              ; preds = %177, %116
  br label %179

179:                                              ; preds = %178, %93
  br label %180

180:                                              ; preds = %179, %84
  br label %181

181:                                              ; preds = %180, %61
  br label %182

182:                                              ; preds = %181
  %183 = load i32, i32* %27, align 4
  %184 = add nsw i32 %183, 1
  store i32 %184, i32* %27, align 4
  br label %35

185:                                              ; preds = %35
  %186 = load i8*, i8** %9, align 8
  %187 = icmp ne i8* %186, null
  br i1 %187, label %190, label %188

188:                                              ; preds = %185
  %189 = call i32 (...) @syntax()
  br label %430

190:                                              ; preds = %185
  %191 = load i8*, i8** %9, align 8
  %192 = call %struct.evhttp_uri* @evhttp_uri_parse(i8* %191)
  store %struct.evhttp_uri* %192, %struct.evhttp_uri** %8, align 8
  %193 = load %struct.evhttp_uri*, %struct.evhttp_uri** %8, align 8
  %194 = icmp eq %struct.evhttp_uri* %193, null
  br i1 %194, label %195, label %197

195:                                              ; preds = %190
  %196 = call i32 @err(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0))
  br label %430

197:                                              ; preds = %190
  %198 = load %struct.evhttp_uri*, %struct.evhttp_uri** %8, align 8
  %199 = call i8* @evhttp_uri_get_scheme(%struct.evhttp_uri* %198)
  store i8* %199, i8** %12, align 8
  %200 = load i8*, i8** %12, align 8
  %201 = icmp eq i8* %200, null
  br i1 %201, label %210, label %202

202:                                              ; preds = %197
  %203 = load i8*, i8** %12, align 8
  %204 = call i64 @strcasecmp(i8* %203, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0))
  %205 = icmp ne i64 %204, 0
  br i1 %205, label %206, label %212

206:                                              ; preds = %202
  %207 = load i8*, i8** %12, align 8
  %208 = call i64 @strcasecmp(i8* %207, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0))
  %209 = icmp ne i64 %208, 0
  br i1 %209, label %210, label %212

210:                                              ; preds = %206, %197
  %211 = call i32 @err(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0))
  br label %430

212:                                              ; preds = %206, %202
  %213 = load %struct.evhttp_uri*, %struct.evhttp_uri** %8, align 8
  %214 = call i8* @evhttp_uri_get_host(%struct.evhttp_uri* %213)
  store i8* %214, i8** %13, align 8
  %215 = load i8*, i8** %13, align 8
  %216 = icmp eq i8* %215, null
  br i1 %216, label %217, label %219

217:                                              ; preds = %212
  %218 = call i32 @err(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i64 0, i64 0))
  br label %430

219:                                              ; preds = %212
  %220 = load %struct.evhttp_uri*, %struct.evhttp_uri** %8, align 8
  %221 = call i32 @evhttp_uri_get_port(%struct.evhttp_uri* %220)
  store i32 %221, i32* %17, align 4
  %222 = load i32, i32* %17, align 4
  %223 = icmp eq i32 %222, -1
  br i1 %223, label %224, label %230

224:                                              ; preds = %219
  %225 = load i8*, i8** %12, align 8
  %226 = call i64 @strcasecmp(i8* %225, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0))
  %227 = icmp eq i64 %226, 0
  %228 = zext i1 %227 to i64
  %229 = select i1 %227, i32 80, i32 443
  store i32 %229, i32* %17, align 4
  br label %230

230:                                              ; preds = %224, %219
  %231 = load %struct.evhttp_uri*, %struct.evhttp_uri** %8, align 8
  %232 = call i8* @evhttp_uri_get_path(%struct.evhttp_uri* %231)
  store i8* %232, i8** %14, align 8
  %233 = load i8*, i8** %14, align 8
  %234 = call i64 @strlen(i8* %233)
  %235 = icmp eq i64 %234, 0
  br i1 %235, label %236, label %237

236:                                              ; preds = %230
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0), i8** %14, align 8
  br label %237

237:                                              ; preds = %236, %230
  %238 = load %struct.evhttp_uri*, %struct.evhttp_uri** %8, align 8
  %239 = call i8* @evhttp_uri_get_query(%struct.evhttp_uri* %238)
  store i8* %239, i8** %15, align 8
  %240 = load i8*, i8** %15, align 8
  %241 = icmp eq i8* %240, null
  br i1 %241, label %242, label %246

242:                                              ; preds = %237
  %243 = getelementptr inbounds [256 x i8], [256 x i8]* %16, i64 0, i64 0
  %244 = load i8*, i8** %14, align 8
  %245 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %243, i32 255, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i64 0, i64 0), i8* %244)
  br label %251

246:                                              ; preds = %237
  %247 = getelementptr inbounds [256 x i8], [256 x i8]* %16, i64 0, i64 0
  %248 = load i8*, i8** %14, align 8
  %249 = load i8*, i8** %15, align 8
  %250 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %247, i32 255, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i64 0, i64 0), i8* %248, i8* %249)
  br label %251

251:                                              ; preds = %246, %242
  %252 = getelementptr inbounds [256 x i8], [256 x i8]* %16, i64 0, i64 255
  store i8 0, i8* %252, align 1
  %253 = call i32 (...) @SSL_library_init()
  %254 = call i32 (...) @ERR_load_crypto_strings()
  %255 = call i32 (...) @SSL_load_error_strings()
  %256 = call i32 (...) @OpenSSL_add_all_algorithms()
  %257 = call i32 (...) @RAND_poll()
  store i32 %257, i32* %6, align 4
  %258 = load i32, i32* %6, align 4
  %259 = icmp eq i32 %258, 0
  br i1 %259, label %260, label %262

260:                                              ; preds = %251
  %261 = call i32 @err_openssl(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i64 0, i64 0))
  br label %430

262:                                              ; preds = %251
  %263 = call i32 (...) @SSLv23_method()
  %264 = call i32* @SSL_CTX_new(i32 %263)
  store i32* %264, i32** %20, align 8
  %265 = load i32*, i32** %20, align 8
  %266 = icmp ne i32* %265, null
  br i1 %266, label %269, label %267

267:                                              ; preds = %262
  %268 = call i32 @err_openssl(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.16, i64 0, i64 0))
  br label %430

269:                                              ; preds = %262
  %270 = load i8*, i8** %11, align 8
  %271 = icmp eq i8* %270, null
  br i1 %271, label %272, label %281

272:                                              ; preds = %269
  %273 = load i32*, i32** %20, align 8
  %274 = call i32* @SSL_CTX_get_cert_store(i32* %273)
  store i32* %274, i32** %30, align 8
  %275 = load i32*, i32** %30, align 8
  %276 = call i32 @X509_STORE_set_default_paths(i32* %275)
  %277 = icmp ne i32 %276, 1
  br i1 %277, label %278, label %280

278:                                              ; preds = %272
  %279 = call i32 @err_openssl(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.17, i64 0, i64 0))
  br label %430

280:                                              ; preds = %272
  br label %289

281:                                              ; preds = %269
  %282 = load i32*, i32** %20, align 8
  %283 = load i8*, i8** %11, align 8
  %284 = call i32 @SSL_CTX_load_verify_locations(i32* %282, i8* %283, i32* null)
  %285 = icmp ne i32 %284, 1
  br i1 %285, label %286, label %288

286:                                              ; preds = %281
  %287 = call i32 @err_openssl(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.18, i64 0, i64 0))
  br label %430

288:                                              ; preds = %281
  br label %289

289:                                              ; preds = %288, %280
  %290 = load i32*, i32** %20, align 8
  %291 = load i32, i32* @SSL_VERIFY_PEER, align 4
  %292 = call i32 @SSL_CTX_set_verify(i32* %290, i32 %291, i32* null)
  %293 = load i32*, i32** %20, align 8
  %294 = load i32, i32* @cert_verify_callback, align 4
  %295 = load i8*, i8** %13, align 8
  %296 = call i32 @SSL_CTX_set_cert_verify_callback(i32* %293, i32 %294, i8* %295)
  %297 = call %struct.event_base* (...) @event_base_new()
  store %struct.event_base* %297, %struct.event_base** %7, align 8
  %298 = load %struct.event_base*, %struct.event_base** %7, align 8
  %299 = icmp ne %struct.event_base* %298, null
  br i1 %299, label %302, label %300

300:                                              ; preds = %289
  %301 = call i32 @perror(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.19, i64 0, i64 0))
  br label %430

302:                                              ; preds = %289
  %303 = load i32*, i32** %20, align 8
  %304 = call i32* @SSL_new(i32* %303)
  store i32* %304, i32** %21, align 8
  %305 = load i32*, i32** %21, align 8
  %306 = icmp eq i32* %305, null
  br i1 %306, label %307, label %309

307:                                              ; preds = %302
  %308 = call i32 @err_openssl(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.20, i64 0, i64 0))
  br label %430

309:                                              ; preds = %302
  %310 = load i8*, i8** %12, align 8
  %311 = call i64 @strcasecmp(i8* %310, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0))
  %312 = icmp eq i64 %311, 0
  br i1 %312, label %313, label %317

313:                                              ; preds = %309
  %314 = load %struct.event_base*, %struct.event_base** %7, align 8
  %315 = load i32, i32* @BEV_OPT_CLOSE_ON_FREE, align 4
  %316 = call %struct.bufferevent* @bufferevent_socket_new(%struct.event_base* %314, i32 -1, i32 %315)
  store %struct.bufferevent* %316, %struct.bufferevent** %22, align 8
  br label %325

317:                                              ; preds = %309
  store i32 1, i32* %29, align 4
  %318 = load %struct.event_base*, %struct.event_base** %7, align 8
  %319 = load i32*, i32** %21, align 8
  %320 = load i32, i32* @BUFFEREVENT_SSL_CONNECTING, align 4
  %321 = load i32, i32* @BEV_OPT_CLOSE_ON_FREE, align 4
  %322 = load i32, i32* @BEV_OPT_DEFER_CALLBACKS, align 4
  %323 = or i32 %321, %322
  %324 = call %struct.bufferevent* @bufferevent_openssl_socket_new(%struct.event_base* %318, i32 -1, i32* %319, i32 %320, i32 %323)
  store %struct.bufferevent* %324, %struct.bufferevent** %22, align 8
  br label %325

325:                                              ; preds = %317, %313
  %326 = load %struct.bufferevent*, %struct.bufferevent** %22, align 8
  %327 = icmp eq %struct.bufferevent* %326, null
  br i1 %327, label %328, label %331

328:                                              ; preds = %325
  %329 = load i32, i32* @stderr, align 4
  %330 = call i32 @fprintf(i32 %329, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.21, i64 0, i64 0))
  br label %430

331:                                              ; preds = %325
  %332 = load %struct.bufferevent*, %struct.bufferevent** %22, align 8
  %333 = call i32 @bufferevent_openssl_set_allow_dirty_shutdown(%struct.bufferevent* %332, i32 1)
  %334 = load %struct.event_base*, %struct.event_base** %7, align 8
  %335 = load %struct.bufferevent*, %struct.bufferevent** %22, align 8
  %336 = load i8*, i8** %13, align 8
  %337 = load i32, i32* %17, align 4
  %338 = call %struct.evhttp_connection* @evhttp_connection_base_bufferevent_new(%struct.event_base* %334, i32* null, %struct.bufferevent* %335, i8* %336, i32 %337)
  store %struct.evhttp_connection* %338, %struct.evhttp_connection** %23, align 8
  %339 = load %struct.evhttp_connection*, %struct.evhttp_connection** %23, align 8
  %340 = icmp eq %struct.evhttp_connection* %339, null
  br i1 %340, label %341, label %344

341:                                              ; preds = %331
  %342 = load i32, i32* @stderr, align 4
  %343 = call i32 @fprintf(i32 %342, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.22, i64 0, i64 0))
  br label %430

344:                                              ; preds = %331
  %345 = load i32, i32* %18, align 4
  %346 = icmp sgt i32 %345, 0
  br i1 %346, label %347, label %351

347:                                              ; preds = %344
  %348 = load %struct.evhttp_connection*, %struct.evhttp_connection** %23, align 8
  %349 = load i32, i32* %18, align 4
  %350 = call i32 @evhttp_connection_set_retries(%struct.evhttp_connection* %348, i32 %349)
  br label %351

351:                                              ; preds = %347, %344
  %352 = load i32, i32* %19, align 4
  %353 = icmp sge i32 %352, 0
  br i1 %353, label %354, label %358

354:                                              ; preds = %351
  %355 = load %struct.evhttp_connection*, %struct.evhttp_connection** %23, align 8
  %356 = load i32, i32* %19, align 4
  %357 = call i32 @evhttp_connection_set_timeout(%struct.evhttp_connection* %355, i32 %356)
  br label %358

358:                                              ; preds = %354, %351
  %359 = load i32, i32* @http_request_done, align 4
  %360 = load %struct.bufferevent*, %struct.bufferevent** %22, align 8
  %361 = call %struct.evhttp_request* @evhttp_request_new(i32 %359, %struct.bufferevent* %360)
  store %struct.evhttp_request* %361, %struct.evhttp_request** %24, align 8
  %362 = load %struct.evhttp_request*, %struct.evhttp_request** %24, align 8
  %363 = icmp eq %struct.evhttp_request* %362, null
  br i1 %363, label %364, label %367

364:                                              ; preds = %358
  %365 = load i32, i32* @stderr, align 4
  %366 = call i32 @fprintf(i32 %365, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.23, i64 0, i64 0))
  br label %430

367:                                              ; preds = %358
  %368 = load %struct.evhttp_request*, %struct.evhttp_request** %24, align 8
  %369 = call %struct.evkeyvalq* @evhttp_request_get_output_headers(%struct.evhttp_request* %368)
  store %struct.evkeyvalq* %369, %struct.evkeyvalq** %25, align 8
  %370 = load %struct.evkeyvalq*, %struct.evkeyvalq** %25, align 8
  %371 = load i8*, i8** %13, align 8
  %372 = call i32 @evhttp_add_header(%struct.evkeyvalq* %370, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i64 0, i64 0), i8* %371)
  %373 = load %struct.evkeyvalq*, %struct.evkeyvalq** %25, align 8
  %374 = call i32 @evhttp_add_header(%struct.evkeyvalq* %373, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.25, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.26, i64 0, i64 0))
  %375 = load i8*, i8** %10, align 8
  %376 = icmp ne i8* %375, null
  br i1 %376, label %377, label %409

377:                                              ; preds = %367
  %378 = load i8*, i8** %10, align 8
  %379 = call i32* @fopen(i8* %378, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.27, i64 0, i64 0))
  store i32* %379, i32** %31, align 8
  store i64 0, i64* %34, align 8
  %380 = load i32*, i32** %31, align 8
  %381 = icmp ne i32* %380, null
  br i1 %381, label %384, label %382

382:                                              ; preds = %377
  %383 = call i32 (...) @syntax()
  br label %430

384:                                              ; preds = %377
  %385 = load %struct.evhttp_request*, %struct.evhttp_request** %24, align 8
  %386 = call %struct.evbuffer* @evhttp_request_get_output_buffer(%struct.evhttp_request* %385)
  store %struct.evbuffer* %386, %struct.evbuffer** %26, align 8
  br label %387

387:                                              ; preds = %392, %384
  %388 = getelementptr inbounds [1024 x i8], [1024 x i8]* %32, i64 0, i64 0
  %389 = load i32*, i32** %31, align 8
  %390 = call i64 @fread(i8* %388, i32 1, i32 1024, i32* %389)
  store i64 %390, i64* %33, align 8
  %391 = icmp ugt i64 %390, 0
  br i1 %391, label %392, label %400

392:                                              ; preds = %387
  %393 = load %struct.evbuffer*, %struct.evbuffer** %26, align 8
  %394 = getelementptr inbounds [1024 x i8], [1024 x i8]* %32, i64 0, i64 0
  %395 = load i64, i64* %33, align 8
  %396 = call i32 @evbuffer_add(%struct.evbuffer* %393, i8* %394, i64 %395)
  %397 = load i64, i64* %33, align 8
  %398 = load i64, i64* %34, align 8
  %399 = add i64 %398, %397
  store i64 %399, i64* %34, align 8
  br label %387

400:                                              ; preds = %387
  %401 = getelementptr inbounds [1024 x i8], [1024 x i8]* %32, i64 0, i64 0
  %402 = load i64, i64* %34, align 8
  %403 = call i32 @evutil_snprintf(i8* %401, i32 1023, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.28, i64 0, i64 0), i64 %402)
  %404 = load %struct.evkeyvalq*, %struct.evkeyvalq** %25, align 8
  %405 = getelementptr inbounds [1024 x i8], [1024 x i8]* %32, i64 0, i64 0
  %406 = call i32 @evhttp_add_header(%struct.evkeyvalq* %404, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.29, i64 0, i64 0), i8* %405)
  %407 = load i32*, i32** %31, align 8
  %408 = call i32 @fclose(i32* %407)
  br label %409

409:                                              ; preds = %400, %367
  %410 = load %struct.evhttp_connection*, %struct.evhttp_connection** %23, align 8
  %411 = load %struct.evhttp_request*, %struct.evhttp_request** %24, align 8
  %412 = load i8*, i8** %10, align 8
  %413 = icmp ne i8* %412, null
  br i1 %413, label %414, label %416

414:                                              ; preds = %409
  %415 = load i32, i32* @EVHTTP_REQ_POST, align 4
  br label %418

416:                                              ; preds = %409
  %417 = load i32, i32* @EVHTTP_REQ_GET, align 4
  br label %418

418:                                              ; preds = %416, %414
  %419 = phi i32 [ %415, %414 ], [ %417, %416 ]
  %420 = getelementptr inbounds [256 x i8], [256 x i8]* %16, i64 0, i64 0
  %421 = call i32 @evhttp_make_request(%struct.evhttp_connection* %410, %struct.evhttp_request* %411, i32 %419, i8* %420)
  store i32 %421, i32* %6, align 4
  %422 = load i32, i32* %6, align 4
  %423 = icmp ne i32 %422, 0
  br i1 %423, label %424, label %427

424:                                              ; preds = %418
  %425 = load i32, i32* @stderr, align 4
  %426 = call i32 @fprintf(i32 %425, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.30, i64 0, i64 0))
  br label %430

427:                                              ; preds = %418
  %428 = load %struct.event_base*, %struct.event_base** %7, align 8
  %429 = call i32 @event_base_dispatch(%struct.event_base* %428)
  br label %431

430:                                              ; preds = %424, %382, %364, %341, %328, %307, %300, %286, %278, %267, %260, %217, %210, %195, %188, %173, %162, %138, %114, %82, %59
  store i32 1, i32* %28, align 4
  br label %431

431:                                              ; preds = %430, %427
  %432 = load %struct.evhttp_connection*, %struct.evhttp_connection** %23, align 8
  %433 = icmp ne %struct.evhttp_connection* %432, null
  br i1 %433, label %434, label %437

434:                                              ; preds = %431
  %435 = load %struct.evhttp_connection*, %struct.evhttp_connection** %23, align 8
  %436 = call i32 @evhttp_connection_free(%struct.evhttp_connection* %435)
  br label %437

437:                                              ; preds = %434, %431
  %438 = load %struct.evhttp_uri*, %struct.evhttp_uri** %8, align 8
  %439 = icmp ne %struct.evhttp_uri* %438, null
  br i1 %439, label %440, label %443

440:                                              ; preds = %437
  %441 = load %struct.evhttp_uri*, %struct.evhttp_uri** %8, align 8
  %442 = call i32 @evhttp_uri_free(%struct.evhttp_uri* %441)
  br label %443

443:                                              ; preds = %440, %437
  %444 = load %struct.event_base*, %struct.event_base** %7, align 8
  %445 = icmp ne %struct.event_base* %444, null
  br i1 %445, label %446, label %449

446:                                              ; preds = %443
  %447 = load %struct.event_base*, %struct.event_base** %7, align 8
  %448 = call i32 @event_base_free(%struct.event_base* %447)
  br label %449

449:                                              ; preds = %446, %443
  %450 = load i32*, i32** %20, align 8
  %451 = icmp ne i32* %450, null
  br i1 %451, label %452, label %455

452:                                              ; preds = %449
  %453 = load i32*, i32** %20, align 8
  %454 = call i32 @SSL_CTX_free(i32* %453)
  br label %455

455:                                              ; preds = %452, %449
  %456 = load i32, i32* %29, align 4
  %457 = icmp eq i32 %456, 0
  br i1 %457, label %458, label %464

458:                                              ; preds = %455
  %459 = load i32*, i32** %21, align 8
  %460 = icmp ne i32* %459, null
  br i1 %460, label %461, label %464

461:                                              ; preds = %458
  %462 = load i32*, i32** %21, align 8
  %463 = call i32 @SSL_free(i32* %462)
  br label %464

464:                                              ; preds = %461, %458, %455
  %465 = call i32 (...) @EVP_cleanup()
  %466 = call i32 (...) @ERR_free_strings()
  %467 = call i32 @ERR_remove_state(i32 0)
  %468 = call i32 (...) @CRYPTO_cleanup_all_ex_data()
  %469 = call i32 (...) @SSL_COMP_get_compression_methods()
  %470 = call i32 @sk_SSL_COMP_free(i32 %469)
  %471 = load i32, i32* %28, align 4
  ret i32 %471
}

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @syntax(...) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local %struct.evhttp_uri* @evhttp_uri_parse(i8*) #1

declare dso_local i32 @err(i8*) #1

declare dso_local i8* @evhttp_uri_get_scheme(%struct.evhttp_uri*) #1

declare dso_local i64 @strcasecmp(i8*, i8*) #1

declare dso_local i8* @evhttp_uri_get_host(%struct.evhttp_uri*) #1

declare dso_local i32 @evhttp_uri_get_port(%struct.evhttp_uri*) #1

declare dso_local i8* @evhttp_uri_get_path(%struct.evhttp_uri*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i8* @evhttp_uri_get_query(%struct.evhttp_uri*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, ...) #1

declare dso_local i32 @SSL_library_init(...) #1

declare dso_local i32 @ERR_load_crypto_strings(...) #1

declare dso_local i32 @SSL_load_error_strings(...) #1

declare dso_local i32 @OpenSSL_add_all_algorithms(...) #1

declare dso_local i32 @RAND_poll(...) #1

declare dso_local i32 @err_openssl(i8*) #1

declare dso_local i32* @SSL_CTX_new(i32) #1

declare dso_local i32 @SSLv23_method(...) #1

declare dso_local i32* @SSL_CTX_get_cert_store(i32*) #1

declare dso_local i32 @X509_STORE_set_default_paths(i32*) #1

declare dso_local i32 @SSL_CTX_load_verify_locations(i32*, i8*, i32*) #1

declare dso_local i32 @SSL_CTX_set_verify(i32*, i32, i32*) #1

declare dso_local i32 @SSL_CTX_set_cert_verify_callback(i32*, i32, i8*) #1

declare dso_local %struct.event_base* @event_base_new(...) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32* @SSL_new(i32*) #1

declare dso_local %struct.bufferevent* @bufferevent_socket_new(%struct.event_base*, i32, i32) #1

declare dso_local %struct.bufferevent* @bufferevent_openssl_socket_new(%struct.event_base*, i32, i32*, i32, i32) #1

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i32 @bufferevent_openssl_set_allow_dirty_shutdown(%struct.bufferevent*, i32) #1

declare dso_local %struct.evhttp_connection* @evhttp_connection_base_bufferevent_new(%struct.event_base*, i32*, %struct.bufferevent*, i8*, i32) #1

declare dso_local i32 @evhttp_connection_set_retries(%struct.evhttp_connection*, i32) #1

declare dso_local i32 @evhttp_connection_set_timeout(%struct.evhttp_connection*, i32) #1

declare dso_local %struct.evhttp_request* @evhttp_request_new(i32, %struct.bufferevent*) #1

declare dso_local %struct.evkeyvalq* @evhttp_request_get_output_headers(%struct.evhttp_request*) #1

declare dso_local i32 @evhttp_add_header(%struct.evkeyvalq*, i8*, i8*) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local %struct.evbuffer* @evhttp_request_get_output_buffer(%struct.evhttp_request*) #1

declare dso_local i64 @fread(i8*, i32, i32, i32*) #1

declare dso_local i32 @evbuffer_add(%struct.evbuffer*, i8*, i64) #1

declare dso_local i32 @evutil_snprintf(i8*, i32, i8*, i64) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @evhttp_make_request(%struct.evhttp_connection*, %struct.evhttp_request*, i32, i8*) #1

declare dso_local i32 @event_base_dispatch(%struct.event_base*) #1

declare dso_local i32 @evhttp_connection_free(%struct.evhttp_connection*) #1

declare dso_local i32 @evhttp_uri_free(%struct.evhttp_uri*) #1

declare dso_local i32 @event_base_free(%struct.event_base*) #1

declare dso_local i32 @SSL_CTX_free(i32*) #1

declare dso_local i32 @SSL_free(i32*) #1

declare dso_local i32 @EVP_cleanup(...) #1

declare dso_local i32 @ERR_free_strings(...) #1

declare dso_local i32 @ERR_remove_state(i32) #1

declare dso_local i32 @CRYPTO_cleanup_all_ex_data(...) #1

declare dso_local i32 @sk_SSL_COMP_free(i32) #1

declare dso_local i32 @SSL_COMP_get_compression_methods(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
