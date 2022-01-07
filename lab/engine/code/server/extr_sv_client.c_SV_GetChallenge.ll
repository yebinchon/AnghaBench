; ModuleID = '/home/carl/AnghaBench/lab/engine/code/server/extr_sv_client.c_SV_GetChallenge.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/server/extr_sv_client.c_SV_GetChallenge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_24__ = type { i32 }
%struct.TYPE_19__ = type { i32, %struct.TYPE_16__, %struct.TYPE_18__* }
%struct.TYPE_16__ = type { i64, i32, i32* }
%struct.TYPE_18__ = type { i32, i32, i32, i32, i32, %struct.TYPE_17__, i8*, i8* }
%struct.TYPE_17__ = type { i64, i32* }
%struct.TYPE_21__ = type { i32 }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_22__ = type { i32 }
%struct.TYPE_23__ = type { i64 }

@qfalse = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [11 x i8] c"g_gametype\00", align 1
@GT_SINGLE_PLAYER = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [22 x i8] c"ui_singlePlayerActive\00", align 1
@.str.2 = private unnamed_addr constant [64 x i8] c"SV_GetChallenge: rate limit from %s exceeded, dropping request\0A\00", align 1
@outboundLeakyBucket = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [56 x i8] c"SV_GetChallenge: rate limit exceeded, dropping request\0A\00", align 1
@com_gamename = common dso_local global %struct.TYPE_24__* null, align 8
@NS_SERVER = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [42 x i8] c"print\0AGame mismatch: This is a %s server\0A\00", align 1
@svs = common dso_local global %struct.TYPE_19__ zeroinitializer, align 8
@MAX_CHALLENGES = common dso_local global i32 0, align 4
@qtrue = common dso_local global i32 0, align 4
@MAX_CHALLENGES_MULTI = common dso_local global i32 0, align 4
@NA_IP = common dso_local global i64 0, align 8
@com_standalone = common dso_local global %struct.TYPE_21__* null, align 8
@NA_BAD = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [14 x i8] c"Resolving %s\0A\00", align 1
@AUTHORIZE_SERVER_NAME = common dso_local global i32 0, align 4
@PORT_AUTHORIZE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [31 x i8] c"%s resolved to %i.%i.%i.%i:%i\0A\00", align 1
@.str.7 = private unnamed_addr constant [38 x i8] c"Couldn't resolve auth server address\0A\00", align 1
@AUTHORIZE_TIMEOUT = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [28 x i8] c"authorize server timed out\0A\00", align 1
@.str.9 = private unnamed_addr constant [31 x i8] c"sending getIpAuthorize for %s\0A\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"fs_game\00", align 1
@BASEGAME = common dso_local global i8* null, align 8
@.str.11 = private unnamed_addr constant [38 x i8] c"getIpAuthorize %i %i.%i.%i.%i %s 0 %s\00", align 1
@sv_strictAuth = common dso_local global %struct.TYPE_20__* null, align 8
@.str.12 = private unnamed_addr constant [27 x i8] c"challengeResponse %d %d %d\00", align 1
@com_protocol = common dso_local global %struct.TYPE_22__* null, align 8
@com_legacyprotocol = common dso_local global %struct.TYPE_23__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SV_GetChallenge(i64 %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_17__, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_18__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = bitcast %struct.TYPE_17__* %3 to { i64, i32* }*
  %15 = getelementptr inbounds { i64, i32* }, { i64, i32* }* %14, i32 0, i32 0
  store i64 %0, i64* %15, align 8
  %16 = getelementptr inbounds { i64, i32* }, { i64, i32* }* %14, i32 0, i32 1
  store i32* %1, i32** %16, align 8
  %17 = load i8*, i8** @qfalse, align 8
  %18 = ptrtoint i8* %17 to i32
  store i32 %18, i32* %10, align 4
  %19 = call i64 @Cvar_VariableValue(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %20 = load i64, i64* @GT_SINGLE_PLAYER, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %25, label %22

22:                                               ; preds = %2
  %23 = call i64 @Cvar_VariableValue(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %22, %2
  br label %309

26:                                               ; preds = %22
  %27 = bitcast %struct.TYPE_17__* %3 to { i64, i32* }*
  %28 = getelementptr inbounds { i64, i32* }, { i64, i32* }* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = getelementptr inbounds { i64, i32* }, { i64, i32* }* %27, i32 0, i32 1
  %31 = load i32*, i32** %30, align 8
  %32 = call i64 @SVC_RateLimitAddress(i64 %29, i32* %31, i32 10, i32 1000)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %42

34:                                               ; preds = %26
  %35 = bitcast %struct.TYPE_17__* %3 to { i64, i32* }*
  %36 = getelementptr inbounds { i64, i32* }, { i64, i32* }* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = getelementptr inbounds { i64, i32* }, { i64, i32* }* %35, i32 0, i32 1
  %39 = load i32*, i32** %38, align 8
  %40 = call i32 @NET_AdrToString(i64 %37, i32* %39)
  %41 = call i32 (i8*, ...) @Com_DPrintf(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.2, i64 0, i64 0), i32 %40)
  br label %309

42:                                               ; preds = %26
  %43 = call i64 @SVC_RateLimit(i32* @outboundLeakyBucket, i32 10, i32 100)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %42
  %46 = call i32 (i8*, ...) @Com_DPrintf(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.3, i64 0, i64 0))
  br label %309

47:                                               ; preds = %42
  %48 = call i8* @Cmd_Argv(i32 2)
  store i8* %48, i8** %11, align 8
  %49 = load i8*, i8** %11, align 8
  %50 = load i8, i8* %49, align 1
  %51 = icmp ne i8 %50, 0
  br i1 %51, label %52, label %59

52:                                               ; preds = %47
  %53 = load i8*, i8** %11, align 8
  %54 = load %struct.TYPE_24__*, %struct.TYPE_24__** @com_gamename, align 8
  %55 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i64 @strcmp(i8* %53, i32 %56)
  %58 = icmp ne i64 %57, 0
  br label %59

59:                                               ; preds = %52, %47
  %60 = phi i1 [ true, %47 ], [ %58, %52 ]
  %61 = zext i1 %60 to i32
  store i32 %61, i32* %12, align 4
  %62 = load i32, i32* %12, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %75

64:                                               ; preds = %59
  %65 = load i32, i32* @NS_SERVER, align 4
  %66 = load %struct.TYPE_24__*, %struct.TYPE_24__** @com_gamename, align 8
  %67 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = bitcast %struct.TYPE_17__* %3 to { i64, i32* }*
  %70 = getelementptr inbounds { i64, i32* }, { i64, i32* }* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = getelementptr inbounds { i64, i32* }, { i64, i32* }* %69, i32 0, i32 1
  %73 = load i32*, i32** %72, align 8
  %74 = call i32 (i32, ...) @NET_OutOfBandPrint(i32 %65, i64 %71, i32* %73, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i64 0, i64 0), i32 %68)
  br label %309

75:                                               ; preds = %59
  store i32 0, i32* %5, align 4
  store i32 2147483647, i32* %6, align 4
  store i32 2147483647, i32* %7, align 4
  %76 = load %struct.TYPE_18__*, %struct.TYPE_18__** getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @svs, i32 0, i32 2), align 8
  %77 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %76, i64 0
  store %struct.TYPE_18__* %77, %struct.TYPE_18__** %9, align 8
  %78 = call i8* @Cmd_Argv(i32 1)
  %79 = call i32 @atoi(i8* %78)
  store i32 %79, i32* %8, align 4
  store i32 0, i32* %4, align 4
  br label %80

80:                                               ; preds = %137, %75
  %81 = load i32, i32* %4, align 4
  %82 = load i32, i32* @MAX_CHALLENGES, align 4
  %83 = icmp slt i32 %81, %82
  br i1 %83, label %84, label %142

84:                                               ; preds = %80
  %85 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %86 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %85, i32 0, i32 7
  %87 = load i8*, i8** %86, align 8
  %88 = icmp ne i8* %87, null
  br i1 %88, label %116, label %89

89:                                               ; preds = %84
  %90 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %91 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %90, i32 0, i32 5
  %92 = bitcast %struct.TYPE_17__* %3 to { i64, i32* }*
  %93 = getelementptr inbounds { i64, i32* }, { i64, i32* }* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = getelementptr inbounds { i64, i32* }, { i64, i32* }* %92, i32 0, i32 1
  %96 = load i32*, i32** %95, align 8
  %97 = bitcast %struct.TYPE_17__* %91 to { i64, i32* }*
  %98 = getelementptr inbounds { i64, i32* }, { i64, i32* }* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = getelementptr inbounds { i64, i32* }, { i64, i32* }* %97, i32 0, i32 1
  %101 = load i32*, i32** %100, align 8
  %102 = call i64 @NET_CompareAdr(i64 %94, i32* %96, i64 %99, i32* %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %116

104:                                              ; preds = %89
  %105 = load i32, i32* @qtrue, align 4
  store i32 %105, i32* %10, align 4
  %106 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %107 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = load i32, i32* %7, align 4
  %110 = icmp slt i32 %108, %109
  br i1 %110, label %111, label %115

111:                                              ; preds = %104
  %112 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %113 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  store i32 %114, i32* %7, align 4
  br label %115

115:                                              ; preds = %111, %104
  br label %116

116:                                              ; preds = %115, %89, %84
  %117 = load i32, i32* %10, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %125

119:                                              ; preds = %116
  %120 = load i32, i32* %4, align 4
  %121 = load i32, i32* @MAX_CHALLENGES_MULTI, align 4
  %122 = icmp sge i32 %120, %121
  br i1 %122, label %123, label %125

123:                                              ; preds = %119
  %124 = load i32, i32* @MAX_CHALLENGES, align 4
  store i32 %124, i32* %4, align 4
  br label %142

125:                                              ; preds = %119, %116
  %126 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %127 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = load i32, i32* %6, align 4
  %130 = icmp slt i32 %128, %129
  br i1 %130, label %131, label %136

131:                                              ; preds = %125
  %132 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %133 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  store i32 %134, i32* %6, align 4
  %135 = load i32, i32* %4, align 4
  store i32 %135, i32* %5, align 4
  br label %136

136:                                              ; preds = %131, %125
  br label %137

137:                                              ; preds = %136
  %138 = load i32, i32* %4, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %4, align 4
  %140 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %141 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %140, i32 1
  store %struct.TYPE_18__* %141, %struct.TYPE_18__** %9, align 8
  br label %80

142:                                              ; preds = %123, %80
  %143 = load i32, i32* %4, align 4
  %144 = load i32, i32* @MAX_CHALLENGES, align 4
  %145 = icmp eq i32 %143, %144
  br i1 %145, label %146, label %164

146:                                              ; preds = %142
  %147 = load %struct.TYPE_18__*, %struct.TYPE_18__** getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @svs, i32 0, i32 2), align 8
  %148 = load i32, i32* %5, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %147, i64 %149
  store %struct.TYPE_18__* %150, %struct.TYPE_18__** %9, align 8
  %151 = load i32, i32* %8, align 4
  %152 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %153 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %152, i32 0, i32 1
  store i32 %151, i32* %153, align 4
  %154 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %155 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %154, i32 0, i32 5
  %156 = bitcast %struct.TYPE_17__* %155 to i8*
  %157 = bitcast %struct.TYPE_17__* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %156, i8* align 8 %157, i64 16, i1 false)
  %158 = load i32, i32* getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @svs, i32 0, i32 0), align 8
  %159 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %160 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %159, i32 0, i32 2
  store i32 %158, i32* %160, align 8
  %161 = load i8*, i8** @qfalse, align 8
  %162 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %163 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %162, i32 0, i32 7
  store i8* %161, i8** %163, align 8
  br label %164

164:                                              ; preds = %146, %142
  %165 = call i64 (...) @rand()
  %166 = trunc i64 %165 to i32
  %167 = shl i32 %166, 16
  %168 = call i64 (...) @rand()
  %169 = trunc i64 %168 to i32
  %170 = xor i32 %167, %169
  %171 = load i32, i32* getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @svs, i32 0, i32 0), align 8
  %172 = xor i32 %170, %171
  %173 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %174 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %173, i32 0, i32 3
  store i32 %172, i32* %174, align 4
  %175 = load i8*, i8** @qfalse, align 8
  %176 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %177 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %176, i32 0, i32 6
  store i8* %175, i8** %177, align 8
  %178 = load i32, i32* getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @svs, i32 0, i32 0), align 8
  %179 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %180 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %179, i32 0, i32 0
  store i32 %178, i32* %180, align 8
  %181 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %182 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %181, i32 0, i32 5
  %183 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %182, i32 0, i32 0
  %184 = load i64, i64* %183, align 8
  %185 = load i64, i64* @NA_IP, align 8
  %186 = icmp eq i64 %184, %185
  br i1 %186, label %187, label %289

187:                                              ; preds = %164
  %188 = load %struct.TYPE_21__*, %struct.TYPE_21__** @com_standalone, align 8
  %189 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 4
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %289, label %192

192:                                              ; preds = %187
  %193 = bitcast %struct.TYPE_17__* %3 to { i64, i32* }*
  %194 = getelementptr inbounds { i64, i32* }, { i64, i32* }* %193, i32 0, i32 0
  %195 = load i64, i64* %194, align 8
  %196 = getelementptr inbounds { i64, i32* }, { i64, i32* }* %193, i32 0, i32 1
  %197 = load i32*, i32** %196, align 8
  %198 = call i32 @Sys_IsLANAddress(i64 %195, i32* %197)
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %289, label %200

200:                                              ; preds = %192
  %201 = load i64, i64* getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @svs, i32 0, i32 1, i32 0), align 8
  %202 = load i64, i64* @NA_BAD, align 8
  %203 = icmp eq i64 %201, %202
  br i1 %203, label %204, label %231

204:                                              ; preds = %200
  %205 = load i32, i32* @AUTHORIZE_SERVER_NAME, align 4
  %206 = call i32 (i8*, ...) @Com_Printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0), i32 %205)
  %207 = load i32, i32* @AUTHORIZE_SERVER_NAME, align 4
  %208 = load i64, i64* @NA_IP, align 8
  %209 = call i64 @NET_StringToAdr(i32 %207, %struct.TYPE_16__* getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @svs, i32 0, i32 1), i64 %208)
  %210 = icmp ne i64 %209, 0
  br i1 %210, label %211, label %230

211:                                              ; preds = %204
  %212 = load i32, i32* @PORT_AUTHORIZE, align 4
  %213 = call i32 @BigShort(i32 %212)
  store i32 %213, i32* getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @svs, i32 0, i32 1, i32 1), align 8
  %214 = load i32, i32* @AUTHORIZE_SERVER_NAME, align 4
  %215 = load i32*, i32** getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @svs, i32 0, i32 1, i32 2), align 8
  %216 = getelementptr inbounds i32, i32* %215, i64 0
  %217 = load i32, i32* %216, align 4
  %218 = load i32*, i32** getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @svs, i32 0, i32 1, i32 2), align 8
  %219 = getelementptr inbounds i32, i32* %218, i64 1
  %220 = load i32, i32* %219, align 4
  %221 = load i32*, i32** getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @svs, i32 0, i32 1, i32 2), align 8
  %222 = getelementptr inbounds i32, i32* %221, i64 2
  %223 = load i32, i32* %222, align 4
  %224 = load i32*, i32** getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @svs, i32 0, i32 1, i32 2), align 8
  %225 = getelementptr inbounds i32, i32* %224, i64 3
  %226 = load i32, i32* %225, align 4
  %227 = load i32, i32* getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @svs, i32 0, i32 1, i32 1), align 8
  %228 = call i32 @BigShort(i32 %227)
  %229 = call i32 (i8*, ...) @Com_Printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0), i32 %214, i32 %217, i32 %220, i32 %223, i32 %226, i32 %228)
  br label %230

230:                                              ; preds = %211, %204
  br label %231

231:                                              ; preds = %230, %200
  %232 = load i64, i64* getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @svs, i32 0, i32 1, i32 0), align 8
  %233 = load i64, i64* @NA_BAD, align 8
  %234 = icmp eq i64 %232, %233
  br i1 %234, label %235, label %237

235:                                              ; preds = %231
  %236 = call i32 (i8*, ...) @Com_Printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.7, i64 0, i64 0))
  br label %288

237:                                              ; preds = %231
  %238 = load i32, i32* getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @svs, i32 0, i32 0), align 8
  %239 = load i32, i32* %7, align 4
  %240 = sub i32 %238, %239
  %241 = load i32, i32* @AUTHORIZE_TIMEOUT, align 4
  %242 = icmp ugt i32 %240, %241
  br i1 %242, label %243, label %245

243:                                              ; preds = %237
  %244 = call i32 (i8*, ...) @Com_DPrintf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8, i64 0, i64 0))
  br label %287

245:                                              ; preds = %237
  %246 = bitcast %struct.TYPE_17__* %3 to { i64, i32* }*
  %247 = getelementptr inbounds { i64, i32* }, { i64, i32* }* %246, i32 0, i32 0
  %248 = load i64, i64* %247, align 8
  %249 = getelementptr inbounds { i64, i32* }, { i64, i32* }* %246, i32 0, i32 1
  %250 = load i32*, i32** %249, align 8
  %251 = call i32 @NET_AdrToString(i64 %248, i32* %250)
  %252 = call i32 (i8*, ...) @Com_DPrintf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.9, i64 0, i64 0), i32 %251)
  %253 = call i8* @Cvar_VariableString(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0))
  store i8* %253, i8** %13, align 8
  %254 = load i8*, i8** %13, align 8
  %255 = getelementptr inbounds i8, i8* %254, i64 0
  %256 = load i8, i8* %255, align 1
  %257 = sext i8 %256 to i32
  %258 = icmp eq i32 %257, 0
  br i1 %258, label %259, label %261

259:                                              ; preds = %245
  %260 = load i8*, i8** @BASEGAME, align 8
  store i8* %260, i8** %13, align 8
  br label %261

261:                                              ; preds = %259, %245
  %262 = load i32, i32* @NS_SERVER, align 4
  %263 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %264 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %263, i32 0, i32 3
  %265 = load i32, i32* %264, align 4
  %266 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %3, i32 0, i32 1
  %267 = load i32*, i32** %266, align 8
  %268 = getelementptr inbounds i32, i32* %267, i64 0
  %269 = load i32, i32* %268, align 4
  %270 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %3, i32 0, i32 1
  %271 = load i32*, i32** %270, align 8
  %272 = getelementptr inbounds i32, i32* %271, i64 1
  %273 = load i32, i32* %272, align 4
  %274 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %3, i32 0, i32 1
  %275 = load i32*, i32** %274, align 8
  %276 = getelementptr inbounds i32, i32* %275, i64 2
  %277 = load i32, i32* %276, align 4
  %278 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %3, i32 0, i32 1
  %279 = load i32*, i32** %278, align 8
  %280 = getelementptr inbounds i32, i32* %279, i64 3
  %281 = load i32, i32* %280, align 4
  %282 = load i8*, i8** %13, align 8
  %283 = load %struct.TYPE_20__*, %struct.TYPE_20__** @sv_strictAuth, align 8
  %284 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %283, i32 0, i32 0
  %285 = load i32, i32* %284, align 4
  %286 = call i32 (i32, ...) @NET_OutOfBandPrint(i32 %262, %struct.TYPE_16__* byval(%struct.TYPE_16__) align 8 getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @svs, i32 0, i32 1), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.11, i64 0, i64 0), i32 %265, i32 %269, i32 %273, i32 %277, i32 %281, i8* %282, i32 %285)
  br label %309

287:                                              ; preds = %243
  br label %288

288:                                              ; preds = %287, %235
  br label %289

289:                                              ; preds = %288, %192, %187, %164
  %290 = load i32, i32* getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @svs, i32 0, i32 0), align 8
  %291 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %292 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %291, i32 0, i32 4
  store i32 %290, i32* %292, align 8
  %293 = load i32, i32* @NS_SERVER, align 4
  %294 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %295 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %294, i32 0, i32 5
  %296 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %297 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %296, i32 0, i32 3
  %298 = load i32, i32* %297, align 4
  %299 = load i32, i32* %8, align 4
  %300 = load %struct.TYPE_22__*, %struct.TYPE_22__** @com_protocol, align 8
  %301 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %300, i32 0, i32 0
  %302 = load i32, i32* %301, align 4
  %303 = bitcast %struct.TYPE_17__* %295 to { i64, i32* }*
  %304 = getelementptr inbounds { i64, i32* }, { i64, i32* }* %303, i32 0, i32 0
  %305 = load i64, i64* %304, align 8
  %306 = getelementptr inbounds { i64, i32* }, { i64, i32* }* %303, i32 0, i32 1
  %307 = load i32*, i32** %306, align 8
  %308 = call i32 (i32, ...) @NET_OutOfBandPrint(i32 %293, i64 %305, i32* %307, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.12, i64 0, i64 0), i32 %298, i32 %299, i32 %302)
  br label %309

309:                                              ; preds = %289, %261, %64, %45, %34, %25
  ret void
}

declare dso_local i64 @Cvar_VariableValue(i8*) #1

declare dso_local i64 @SVC_RateLimitAddress(i64, i32*, i32, i32) #1

declare dso_local i32 @Com_DPrintf(i8*, ...) #1

declare dso_local i32 @NET_AdrToString(i64, i32*) #1

declare dso_local i64 @SVC_RateLimit(i32*, i32, i32) #1

declare dso_local i8* @Cmd_Argv(i32) #1

declare dso_local i64 @strcmp(i8*, i32) #1

declare dso_local i32 @NET_OutOfBandPrint(i32, ...) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local i64 @NET_CompareAdr(i64, i32*, i64, i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @rand(...) #1

declare dso_local i32 @Sys_IsLANAddress(i64, i32*) #1

declare dso_local i32 @Com_Printf(i8*, ...) #1

declare dso_local i64 @NET_StringToAdr(i32, %struct.TYPE_16__*, i64) #1

declare dso_local i32 @BigShort(i32) #1

declare dso_local i8* @Cvar_VariableString(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
