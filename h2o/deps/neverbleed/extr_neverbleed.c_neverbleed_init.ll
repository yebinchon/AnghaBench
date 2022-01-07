; ModuleID = '/home/carl/AnghaBench/h2o/deps/neverbleed/extr_neverbleed.c_neverbleed_init.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/neverbleed/extr_neverbleed.c_neverbleed_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { i32, i32, i32 }
%struct.TYPE_24__ = type { %struct.TYPE_21__* }
%struct.TYPE_21__ = type { i32, i32*, i32, %struct.TYPE_23__, i32 }
%struct.TYPE_23__ = type { i8*, i32 }

@__const.neverbleed_init.pipe_fds = private unnamed_addr constant [2 x i32] [i32 -1, i32 -1], align 4
@static_rsa_method = common dso_local global %struct.TYPE_22__ zeroinitializer, align 4
@NEVERBLEED_ERRBUF_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"pipe(2) failed:%s\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"/tmp/openssl-privsep.XXXXXX\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"no memory\00", align 1
@.str.3 = private unnamed_addr constant [51 x i8] c"failed to create temporary directory under /tmp:%s\00", align 1
@AF_UNIX = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [5 x i8] c"%s/_\00", align 1
@PF_UNIX = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [20 x i8] c"socket(2) failed:%s\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"failed to bind to %s:%s\00", align 1
@SOMAXCONN = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [20 x i8] c"listen(2) failed:%s\00", align 1
@.str.8 = private unnamed_addr constant [18 x i8] c"fork(2) failed:%s\00", align 1
@PR_SET_DUMPABLE = common dso_local global i32 0, align 4
@daemon_vars = common dso_local global %struct.TYPE_24__ zeroinitializer, align 8
@.str.9 = private unnamed_addr constant [11 x i8] c"neverbleed\00", align 1
@.str.10 = private unnamed_addr constant [37 x i8] c"privilege separation software engine\00", align 1
@.str.11 = private unnamed_addr constant [40 x i8] c"failed to initialize the OpenSSL engine\00", align 1
@dispose_thread_data = common dso_local global i32 0, align 4
@ecdsa_sign_proxy = common dso_local global i32 0, align 4
@priv_dec_proxy = common dso_local global i32 0, align 4
@priv_ecdsa_finish = common dso_local global i32 0, align 4
@priv_enc_proxy = common dso_local global i32 0, align 4
@priv_rsa_finish = common dso_local global i32 0, align 4
@sign_proxy = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @neverbleed_init(%struct.TYPE_21__* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_21__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca [2 x i32], align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_22__*, align 8
  %10 = alloca %struct.TYPE_22__*, align 8
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %4, align 8
  store i8* %1, i8** %5, align 8
  %11 = bitcast [2 x i32]* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %11, i8* align 4 bitcast ([2 x i32]* @__const.neverbleed_init.pipe_fds to i8*), i64 8, i1 false)
  store i32 -1, i32* %7, align 4
  store i8* null, i8** %8, align 8
  %12 = call %struct.TYPE_22__* (...) @RSA_PKCS1_SSLeay()
  store %struct.TYPE_22__* %12, %struct.TYPE_22__** %9, align 8
  store %struct.TYPE_22__* @static_rsa_method, %struct.TYPE_22__** %10, align 8
  %13 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %14 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %17 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %16, i32 0, i32 2
  store i32 %15, i32* %17, align 4
  %18 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %19 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %22 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %21, i32 0, i32 1
  store i32 %20, i32* %22, align 4
  %23 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %24 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %27 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 4
  %28 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %29 = call i64 @pipe(i32* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %2
  %32 = load i8*, i8** %5, align 8
  %33 = load i32, i32* @NEVERBLEED_ERRBUF_SIZE, align 4
  %34 = load i32, i32* @errno, align 4
  %35 = call i8* @strerror(i32 %34)
  %36 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %32, i32 %33, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i8* %35)
  br label %184

37:                                               ; preds = %2
  %38 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 1
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @set_cloexec(i32 %39)
  %41 = call i8* @strdup(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  store i8* %41, i8** %8, align 8
  %42 = icmp eq i8* %41, null
  br i1 %42, label %43, label %47

43:                                               ; preds = %37
  %44 = load i8*, i8** %5, align 8
  %45 = load i32, i32* @NEVERBLEED_ERRBUF_SIZE, align 4
  %46 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %44, i32 %45, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  br label %184

47:                                               ; preds = %37
  %48 = load i8*, i8** %8, align 8
  %49 = call i32* @mkdtemp(i8* %48)
  %50 = icmp eq i32* %49, null
  br i1 %50, label %51, label %57

51:                                               ; preds = %47
  %52 = load i8*, i8** %5, align 8
  %53 = load i32, i32* @NEVERBLEED_ERRBUF_SIZE, align 4
  %54 = load i32, i32* @errno, align 4
  %55 = call i8* @strerror(i32 %54)
  %56 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %52, i32 %53, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.3, i64 0, i64 0), i8* %55)
  br label %184

57:                                               ; preds = %47
  %58 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %58, i32 0, i32 3
  %60 = call i32 @memset(%struct.TYPE_23__* %59, i32 0, i32 16)
  %61 = load i32, i32* @AF_UNIX, align 4
  %62 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %62, i32 0, i32 3
  %64 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %63, i32 0, i32 1
  store i32 %61, i32* %64, align 8
  %65 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %65, i32 0, i32 3
  %67 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %66, i32 0, i32 0
  %68 = load i8*, i8** %67, align 8
  %69 = load i8*, i8** %8, align 8
  %70 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %68, i32 8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* %69)
  %71 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %71, i32 0, i32 4
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @RAND_bytes(i32 %73, i32 4)
  %75 = load i32, i32* @PF_UNIX, align 4
  %76 = load i32, i32* @SOCK_STREAM, align 4
  %77 = call i32 @socket(i32 %75, i32 %76, i32 0)
  store i32 %77, i32* %7, align 4
  %78 = icmp eq i32 %77, -1
  br i1 %78, label %79, label %85

79:                                               ; preds = %57
  %80 = load i8*, i8** %5, align 8
  %81 = load i32, i32* @NEVERBLEED_ERRBUF_SIZE, align 4
  %82 = load i32, i32* @errno, align 4
  %83 = call i8* @strerror(i32 %82)
  %84 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %80, i32 %81, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0), i8* %83)
  br label %184

85:                                               ; preds = %57
  %86 = load i32, i32* %7, align 4
  %87 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %88 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %87, i32 0, i32 3
  %89 = bitcast %struct.TYPE_23__* %88 to i8*
  %90 = call i64 @bind(i32 %86, i8* %89, i32 16)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %102

92:                                               ; preds = %85
  %93 = load i8*, i8** %5, align 8
  %94 = load i32, i32* @NEVERBLEED_ERRBUF_SIZE, align 4
  %95 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %96 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %95, i32 0, i32 3
  %97 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %96, i32 0, i32 0
  %98 = load i8*, i8** %97, align 8
  %99 = load i32, i32* @errno, align 4
  %100 = call i8* @strerror(i32 %99)
  %101 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %93, i32 %94, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0), i8* %98, i8* %100)
  br label %184

102:                                              ; preds = %85
  %103 = load i32, i32* %7, align 4
  %104 = load i32, i32* @SOMAXCONN, align 4
  %105 = call i64 @listen(i32 %103, i32 %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %113

107:                                              ; preds = %102
  %108 = load i8*, i8** %5, align 8
  %109 = load i32, i32* @NEVERBLEED_ERRBUF_SIZE, align 4
  %110 = load i32, i32* @errno, align 4
  %111 = call i8* @strerror(i32 %110)
  %112 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %108, i32 %109, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0), i8* %111)
  br label %184

113:                                              ; preds = %102
  %114 = call i32 (...) @fork()
  %115 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %116 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %115, i32 0, i32 0
  store i32 %114, i32* %116, align 8
  %117 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %118 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  switch i32 %119, label %138 [
    i32 -1, label %120
    i32 0, label %126
  ]

120:                                              ; preds = %113
  %121 = load i8*, i8** %5, align 8
  %122 = load i32, i32* @NEVERBLEED_ERRBUF_SIZE, align 4
  %123 = load i32, i32* @errno, align 4
  %124 = call i8* @strerror(i32 %123)
  %125 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %121, i32 %122, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8, i64 0, i64 0), i8* %124)
  br label %184

126:                                              ; preds = %113
  %127 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 1
  %128 = load i32, i32* %127, align 4
  %129 = call i32 @close(i32 %128)
  %130 = load i32, i32* @PR_SET_DUMPABLE, align 4
  %131 = call i32 @prctl(i32 %130, i32 0, i32 0, i32 0, i32 0)
  %132 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  store %struct.TYPE_21__* %132, %struct.TYPE_21__** getelementptr inbounds (%struct.TYPE_24__, %struct.TYPE_24__* @daemon_vars, i32 0, i32 0), align 8
  %133 = load i32, i32* %7, align 4
  %134 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %135 = load i32, i32* %134, align 4
  %136 = load i8*, i8** %8, align 8
  %137 = call i32 @daemon_main(i32 %133, i32 %135, i8* %136)
  br label %139

138:                                              ; preds = %113
  br label %139

139:                                              ; preds = %138, %126
  %140 = load i32, i32* %7, align 4
  %141 = call i32 @close(i32 %140)
  store i32 -1, i32* %7, align 4
  %142 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %143 = load i32, i32* %142, align 4
  %144 = call i32 @close(i32 %143)
  %145 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  store i32 -1, i32* %145, align 4
  %146 = call i32* (...) @ENGINE_new()
  %147 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %148 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %147, i32 0, i32 1
  store i32* %146, i32** %148, align 8
  %149 = icmp eq i32* %146, null
  br i1 %149, label %169, label %150

150:                                              ; preds = %139
  %151 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %152 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %151, i32 0, i32 1
  %153 = load i32*, i32** %152, align 8
  %154 = call i32 @ENGINE_set_id(i32* %153, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i64 0, i64 0))
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %169

156:                                              ; preds = %150
  %157 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %158 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %157, i32 0, i32 1
  %159 = load i32*, i32** %158, align 8
  %160 = call i32 @ENGINE_set_name(i32* %159, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.10, i64 0, i64 0))
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %169

162:                                              ; preds = %156
  %163 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %164 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %163, i32 0, i32 1
  %165 = load i32*, i32** %164, align 8
  %166 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %167 = call i32 @ENGINE_set_RSA(i32* %165, %struct.TYPE_22__* %166)
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %173, label %169

169:                                              ; preds = %162, %156, %150, %139
  %170 = load i8*, i8** %5, align 8
  %171 = load i32, i32* @NEVERBLEED_ERRBUF_SIZE, align 4
  %172 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %170, i32 %171, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.11, i64 0, i64 0))
  br label %184

173:                                              ; preds = %162
  %174 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %175 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %174, i32 0, i32 1
  %176 = load i32*, i32** %175, align 8
  %177 = call i32 @ENGINE_add(i32* %176)
  %178 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %179 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %178, i32 0, i32 2
  %180 = load i32, i32* @dispose_thread_data, align 4
  %181 = call i32 @pthread_key_create(i32* %179, i32 %180)
  %182 = load i8*, i8** %8, align 8
  %183 = call i32 @free(i8* %182)
  store i32 0, i32* %3, align 4
  br label %227

184:                                              ; preds = %169, %120, %107, %92, %79, %51, %43, %31
  %185 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %186 = load i32, i32* %185, align 4
  %187 = icmp ne i32 %186, -1
  br i1 %187, label %188, label %192

188:                                              ; preds = %184
  %189 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %190 = load i32, i32* %189, align 4
  %191 = call i32 @close(i32 %190)
  br label %192

192:                                              ; preds = %188, %184
  %193 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 1
  %194 = load i32, i32* %193, align 4
  %195 = icmp ne i32 %194, -1
  br i1 %195, label %196, label %200

196:                                              ; preds = %192
  %197 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 1
  %198 = load i32, i32* %197, align 4
  %199 = call i32 @close(i32 %198)
  br label %200

200:                                              ; preds = %196, %192
  %201 = load i8*, i8** %8, align 8
  %202 = icmp ne i8* %201, null
  br i1 %202, label %203, label %208

203:                                              ; preds = %200
  %204 = load i8*, i8** %8, align 8
  %205 = call i32 @unlink_dir(i8* %204)
  %206 = load i8*, i8** %8, align 8
  %207 = call i32 @free(i8* %206)
  br label %208

208:                                              ; preds = %203, %200
  %209 = load i32, i32* %7, align 4
  %210 = icmp ne i32 %209, -1
  br i1 %210, label %211, label %214

211:                                              ; preds = %208
  %212 = load i32, i32* %7, align 4
  %213 = call i32 @close(i32 %212)
  br label %214

214:                                              ; preds = %211, %208
  %215 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %216 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %215, i32 0, i32 1
  %217 = load i32*, i32** %216, align 8
  %218 = icmp ne i32* %217, null
  br i1 %218, label %219, label %226

219:                                              ; preds = %214
  %220 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %221 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %220, i32 0, i32 1
  %222 = load i32*, i32** %221, align 8
  %223 = call i32 @ENGINE_free(i32* %222)
  %224 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %225 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %224, i32 0, i32 1
  store i32* null, i32** %225, align 8
  br label %226

226:                                              ; preds = %219, %214
  store i32 -1, i32* %3, align 4
  br label %227

227:                                              ; preds = %226, %173
  %228 = load i32, i32* %3, align 4
  ret i32 %228
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local %struct.TYPE_22__* @RSA_PKCS1_SSLeay(...) #2

declare dso_local i64 @pipe(i32*) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, ...) #2

declare dso_local i8* @strerror(i32) #2

declare dso_local i32 @set_cloexec(i32) #2

declare dso_local i8* @strdup(i8*) #2

declare dso_local i32* @mkdtemp(i8*) #2

declare dso_local i32 @memset(%struct.TYPE_23__*, i32, i32) #2

declare dso_local i32 @RAND_bytes(i32, i32) #2

declare dso_local i32 @socket(i32, i32, i32) #2

declare dso_local i64 @bind(i32, i8*, i32) #2

declare dso_local i64 @listen(i32, i32) #2

declare dso_local i32 @fork(...) #2

declare dso_local i32 @close(i32) #2

declare dso_local i32 @prctl(i32, i32, i32, i32, i32) #2

declare dso_local i32 @daemon_main(i32, i32, i8*) #2

declare dso_local i32* @ENGINE_new(...) #2

declare dso_local i32 @ENGINE_set_id(i32*, i8*) #2

declare dso_local i32 @ENGINE_set_name(i32*, i8*) #2

declare dso_local i32 @ENGINE_set_RSA(i32*, %struct.TYPE_22__*) #2

declare dso_local i32 @ENGINE_add(i32*) #2

declare dso_local i32 @pthread_key_create(i32*, i32) #2

declare dso_local i32 @free(i8*) #2

declare dso_local i32 @unlink_dir(i8*) #2

declare dso_local i32 @ENGINE_free(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
