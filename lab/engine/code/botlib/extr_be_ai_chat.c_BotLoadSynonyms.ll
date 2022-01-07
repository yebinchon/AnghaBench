; ModuleID = '/home/carl/AnghaBench/lab/engine/code/botlib/extr_be_ai_chat.c_BotLoadSynonyms.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/botlib/extr_be_ai_chat.c_BotLoadSynonyms.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32 (i32, i8*, i8*)* }
%struct.TYPE_9__ = type { i64, i32, %struct.TYPE_10__*, %struct.TYPE_9__* }
%struct.TYPE_10__ = type { i8*, i64, %struct.TYPE_10__* }
%struct.TYPE_8__ = type { i64, i64, i32, i64 }

@BOTFILESBASEFOLDER = common dso_local global i32 0, align 4
@botimport = common dso_local global %struct.TYPE_11__ zeroinitializer, align 8
@PRT_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"counldn't load %s\0A\00", align 1
@TT_NUMBER = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [28 x i8] c"more than 32 context levels\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"{\00", align 1
@TT_PUNCTUATION = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [2 x i8] c"}\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"too many }\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"(\00", align 1
@TT_STRING = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [13 x i8] c"empty string\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c")\00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c"]\00", align 1
@.str.11 = private unnamed_addr constant [39 x i8] c"synonym must have at least two entries\00", align 1
@.str.12 = private unnamed_addr constant [14 x i8] c"unexpected %s\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"missing }\00", align 1
@PRT_MESSAGE = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [11 x i8] c"loaded %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_9__* @BotLoadSynonyms(i8* %0) #0 {
  %2 = alloca %struct.TYPE_9__*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca [32 x i64], align 16
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_8__, align 8
  %13 = alloca %struct.TYPE_9__*, align 8
  %14 = alloca %struct.TYPE_9__*, align 8
  %15 = alloca %struct.TYPE_9__*, align 8
  %16 = alloca %struct.TYPE_10__*, align 8
  %17 = alloca %struct.TYPE_10__*, align 8
  %18 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i8* null, i8** %10, align 8
  store i32 0, i32* %5, align 4
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %13, align 8
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %15, align 8
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %16, align 8
  store i32 0, i32* %4, align 4
  br label %19

19:                                               ; preds = %300, %1
  %20 = load i32, i32* %4, align 4
  %21 = icmp slt i32 %20, 2
  br i1 %21, label %22, label %303

22:                                               ; preds = %19
  %23 = load i32, i32* %4, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %32

25:                                               ; preds = %22
  %26 = load i32, i32* %5, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %25
  %29 = load i32, i32* %5, align 4
  %30 = call i64 @GetClearedHunkMemory(i32 %29)
  %31 = inttoptr i64 %30 to i8*
  store i8* %31, i8** %10, align 8
  br label %32

32:                                               ; preds = %28, %25, %22
  %33 = load i32, i32* @BOTFILESBASEFOLDER, align 4
  %34 = call i32 @PC_SetBaseFolder(i32 %33)
  %35 = load i8*, i8** %3, align 8
  %36 = call i32* @LoadSourceFile(i8* %35)
  store i32* %36, i32** %11, align 8
  %37 = load i32*, i32** %11, align 8
  %38 = icmp ne i32* %37, null
  br i1 %38, label %44, label %39

39:                                               ; preds = %32
  %40 = load i32 (i32, i8*, i8*)*, i32 (i32, i8*, i8*)** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @botimport, i32 0, i32 0), align 8
  %41 = load i32, i32* @PRT_ERROR, align 4
  %42 = load i8*, i8** %3, align 8
  %43 = call i32 %40(i32 %41, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i8* %42)
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %2, align 8
  br label %309

44:                                               ; preds = %32
  store i64 0, i64* %8, align 8
  store i32 0, i32* %6, align 4
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %13, align 8
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %14, align 8
  br label %45

45:                                               ; preds = %290, %44
  %46 = load i32*, i32** %11, align 8
  %47 = call i64 @PC_ReadToken(i32* %46, %struct.TYPE_8__* %12)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %291

49:                                               ; preds = %45
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @TT_NUMBER, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %81

54:                                               ; preds = %49
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* %8, align 8
  %58 = or i64 %57, %56
  store i64 %58, i64* %8, align 8
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = load i32, i32* %6, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds [32 x i64], [32 x i64]* %9, i64 0, i64 %62
  store i64 %60, i64* %63, align 8
  %64 = load i32, i32* %6, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %6, align 4
  %66 = load i32, i32* %6, align 4
  %67 = icmp sge i32 %66, 32
  br i1 %67, label %68, label %73

68:                                               ; preds = %54
  %69 = load i32*, i32** %11, align 8
  %70 = call i32 (i32*, i8*, ...) @SourceError(i32* %69, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %71 = load i32*, i32** %11, align 8
  %72 = call i32 @FreeSource(i32* %71)
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %2, align 8
  br label %309

73:                                               ; preds = %54
  %74 = load i32*, i32** %11, align 8
  %75 = call i32 @PC_ExpectTokenString(i32* %74, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %80, label %77

77:                                               ; preds = %73
  %78 = load i32*, i32** %11, align 8
  %79 = call i32 @FreeSource(i32* %78)
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %2, align 8
  br label %309

80:                                               ; preds = %73
  br label %290

81:                                               ; preds = %49
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @TT_PUNCTUATION, align 8
  %85 = icmp eq i64 %83, %84
  br i1 %85, label %86, label %289

86:                                               ; preds = %81
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 2
  %88 = load i32, i32* %87, align 8
  %89 = call i32 @strcmp(i32 %88, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %109, label %91

91:                                               ; preds = %86
  %92 = load i32, i32* %6, align 4
  %93 = add nsw i32 %92, -1
  store i32 %93, i32* %6, align 4
  %94 = load i32, i32* %6, align 4
  %95 = icmp slt i32 %94, 0
  br i1 %95, label %96, label %101

96:                                               ; preds = %91
  %97 = load i32*, i32** %11, align 8
  %98 = call i32 (i32*, i8*, ...) @SourceError(i32* %97, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0))
  %99 = load i32*, i32** %11, align 8
  %100 = call i32 @FreeSource(i32* %99)
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %2, align 8
  br label %309

101:                                              ; preds = %91
  %102 = load i32, i32* %6, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds [32 x i64], [32 x i64]* %9, i64 0, i64 %103
  %105 = load i64, i64* %104, align 8
  %106 = xor i64 %105, -1
  %107 = load i64, i64* %8, align 8
  %108 = and i64 %107, %106
  store i64 %108, i64* %8, align 8
  br label %288

109:                                              ; preds = %86
  %110 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 2
  %111 = load i32, i32* %110, align 8
  %112 = call i32 @strcmp(i32 %111, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %280, label %114

114:                                              ; preds = %109
  %115 = load i32, i32* %5, align 4
  %116 = sext i32 %115 to i64
  %117 = add i64 %116, 32
  %118 = trunc i64 %117 to i32
  store i32 %118, i32* %5, align 4
  %119 = load i32, i32* %4, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %146

121:                                              ; preds = %114
  %122 = load i8*, i8** %10, align 8
  %123 = icmp ne i8* %122, null
  br i1 %123, label %124, label %146

124:                                              ; preds = %121
  %125 = load i8*, i8** %10, align 8
  %126 = bitcast i8* %125 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %126, %struct.TYPE_9__** %15, align 8
  %127 = load i8*, i8** %10, align 8
  %128 = getelementptr inbounds i8, i8* %127, i64 32
  store i8* %128, i8** %10, align 8
  %129 = load i64, i64* %8, align 8
  %130 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %131 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %130, i32 0, i32 0
  store i64 %129, i64* %131, align 8
  %132 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %133 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %132, i32 0, i32 2
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %133, align 8
  %134 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %135 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %134, i32 0, i32 3
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %135, align 8
  %136 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %137 = icmp ne %struct.TYPE_9__* %136, null
  br i1 %137, label %138, label %142

138:                                              ; preds = %124
  %139 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %140 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %141 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %140, i32 0, i32 3
  store %struct.TYPE_9__* %139, %struct.TYPE_9__** %141, align 8
  br label %144

142:                                              ; preds = %124
  %143 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  store %struct.TYPE_9__* %143, %struct.TYPE_9__** %13, align 8
  br label %144

144:                                              ; preds = %142, %138
  %145 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  store %struct.TYPE_9__* %145, %struct.TYPE_9__** %14, align 8
  br label %146

146:                                              ; preds = %144, %121, %114
  store i32 0, i32* %7, align 4
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %17, align 8
  br label %147

147:                                              ; preds = %146, %270
  %148 = load i32*, i32** %11, align 8
  %149 = call i32 @PC_ExpectTokenString(i32* %148, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %156

151:                                              ; preds = %147
  %152 = load i32*, i32** %11, align 8
  %153 = load i64, i64* @TT_STRING, align 8
  %154 = call i32 @PC_ExpectTokenType(i32* %152, i64 %153, i32 0, %struct.TYPE_8__* %12)
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %159, label %156

156:                                              ; preds = %151, %147
  %157 = load i32*, i32** %11, align 8
  %158 = call i32 @FreeSource(i32* %157)
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %2, align 8
  br label %309

159:                                              ; preds = %151
  %160 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 2
  %161 = load i32, i32* %160, align 8
  %162 = call i32 @StripDoubleQuotes(i32 %161)
  %163 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 2
  %164 = load i32, i32* %163, align 8
  %165 = call i32 @strlen(i32 %164)
  %166 = icmp sle i32 %165, 0
  br i1 %166, label %167, label %172

167:                                              ; preds = %159
  %168 = load i32*, i32** %11, align 8
  %169 = call i32 (i32*, i8*, ...) @SourceError(i32* %168, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0))
  %170 = load i32*, i32** %11, align 8
  %171 = call i32 @FreeSource(i32* %170)
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %2, align 8
  br label %309

172:                                              ; preds = %159
  %173 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 2
  %174 = load i32, i32* %173, align 8
  %175 = call i32 @strlen(i32 %174)
  %176 = add nsw i32 %175, 1
  %177 = sext i32 %176 to i64
  store i64 %177, i64* %18, align 8
  %178 = load i64, i64* %18, align 8
  %179 = call i64 @PAD(i64 %178, i32 8)
  store i64 %179, i64* %18, align 8
  %180 = load i64, i64* %18, align 8
  %181 = add i64 24, %180
  %182 = load i32, i32* %5, align 4
  %183 = sext i32 %182 to i64
  %184 = add i64 %183, %181
  %185 = trunc i64 %184 to i32
  store i32 %185, i32* %5, align 4
  %186 = load i32, i32* %4, align 4
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %220

188:                                              ; preds = %172
  %189 = load i8*, i8** %10, align 8
  %190 = icmp ne i8* %189, null
  br i1 %190, label %191, label %220

191:                                              ; preds = %188
  %192 = load i8*, i8** %10, align 8
  %193 = bitcast i8* %192 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %193, %struct.TYPE_10__** %16, align 8
  %194 = load i8*, i8** %10, align 8
  %195 = getelementptr inbounds i8, i8* %194, i64 24
  store i8* %195, i8** %10, align 8
  %196 = load i8*, i8** %10, align 8
  %197 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %198 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %197, i32 0, i32 0
  store i8* %196, i8** %198, align 8
  %199 = load i64, i64* %18, align 8
  %200 = load i8*, i8** %10, align 8
  %201 = getelementptr inbounds i8, i8* %200, i64 %199
  store i8* %201, i8** %10, align 8
  %202 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %203 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %202, i32 0, i32 0
  %204 = load i8*, i8** %203, align 8
  %205 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 2
  %206 = load i32, i32* %205, align 8
  %207 = call i32 @strcpy(i8* %204, i32 %206)
  %208 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %209 = icmp ne %struct.TYPE_10__* %208, null
  br i1 %209, label %210, label %214

210:                                              ; preds = %191
  %211 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %212 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %213 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %212, i32 0, i32 2
  store %struct.TYPE_10__* %211, %struct.TYPE_10__** %213, align 8
  br label %218

214:                                              ; preds = %191
  %215 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %216 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %217 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %216, i32 0, i32 2
  store %struct.TYPE_10__* %215, %struct.TYPE_10__** %217, align 8
  br label %218

218:                                              ; preds = %214, %210
  %219 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  store %struct.TYPE_10__* %219, %struct.TYPE_10__** %17, align 8
  br label %220

220:                                              ; preds = %218, %188, %172
  %221 = load i32, i32* %7, align 4
  %222 = add nsw i32 %221, 1
  store i32 %222, i32* %7, align 4
  %223 = load i32*, i32** %11, align 8
  %224 = call i32 @PC_ExpectTokenString(i32* %223, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0))
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %226, label %235

226:                                              ; preds = %220
  %227 = load i32*, i32** %11, align 8
  %228 = load i64, i64* @TT_NUMBER, align 8
  %229 = call i32 @PC_ExpectTokenType(i32* %227, i64 %228, i32 0, %struct.TYPE_8__* %12)
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %231, label %235

231:                                              ; preds = %226
  %232 = load i32*, i32** %11, align 8
  %233 = call i32 @PC_ExpectTokenString(i32* %232, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0))
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %238, label %235

235:                                              ; preds = %231, %226, %220
  %236 = load i32*, i32** %11, align 8
  %237 = call i32 @FreeSource(i32* %236)
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %2, align 8
  br label %309

238:                                              ; preds = %231
  %239 = load i32, i32* %4, align 4
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %241, label %258

241:                                              ; preds = %238
  %242 = load i8*, i8** %10, align 8
  %243 = icmp ne i8* %242, null
  br i1 %243, label %244, label %258

244:                                              ; preds = %241
  %245 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 3
  %246 = load i64, i64* %245, align 8
  %247 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %248 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %247, i32 0, i32 1
  store i64 %246, i64* %248, align 8
  %249 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %250 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %249, i32 0, i32 1
  %251 = load i64, i64* %250, align 8
  %252 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %253 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %252, i32 0, i32 1
  %254 = load i32, i32* %253, align 8
  %255 = sext i32 %254 to i64
  %256 = add nsw i64 %255, %251
  %257 = trunc i64 %256 to i32
  store i32 %257, i32* %253, align 8
  br label %258

258:                                              ; preds = %244, %241, %238
  %259 = load i32*, i32** %11, align 8
  %260 = call i64 @PC_CheckTokenString(i32* %259, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0))
  %261 = icmp ne i64 %260, 0
  br i1 %261, label %262, label %263

262:                                              ; preds = %258
  br label %271

263:                                              ; preds = %258
  %264 = load i32*, i32** %11, align 8
  %265 = call i32 @PC_ExpectTokenString(i32* %264, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0))
  %266 = icmp ne i32 %265, 0
  br i1 %266, label %270, label %267

267:                                              ; preds = %263
  %268 = load i32*, i32** %11, align 8
  %269 = call i32 @FreeSource(i32* %268)
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %2, align 8
  br label %309

270:                                              ; preds = %263
  br label %147

271:                                              ; preds = %262
  %272 = load i32, i32* %7, align 4
  %273 = icmp slt i32 %272, 2
  br i1 %273, label %274, label %279

274:                                              ; preds = %271
  %275 = load i32*, i32** %11, align 8
  %276 = call i32 (i32*, i8*, ...) @SourceError(i32* %275, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.11, i64 0, i64 0))
  %277 = load i32*, i32** %11, align 8
  %278 = call i32 @FreeSource(i32* %277)
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %2, align 8
  br label %309

279:                                              ; preds = %271
  br label %287

280:                                              ; preds = %109
  %281 = load i32*, i32** %11, align 8
  %282 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 2
  %283 = load i32, i32* %282, align 8
  %284 = call i32 (i32*, i8*, ...) @SourceError(i32* %281, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i64 0, i64 0), i32 %283)
  %285 = load i32*, i32** %11, align 8
  %286 = call i32 @FreeSource(i32* %285)
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %2, align 8
  br label %309

287:                                              ; preds = %279
  br label %288

288:                                              ; preds = %287, %101
  br label %289

289:                                              ; preds = %288, %81
  br label %290

290:                                              ; preds = %289, %80
  br label %45

291:                                              ; preds = %45
  %292 = load i32*, i32** %11, align 8
  %293 = call i32 @FreeSource(i32* %292)
  %294 = load i32, i32* %6, align 4
  %295 = icmp sgt i32 %294, 0
  br i1 %295, label %296, label %299

296:                                              ; preds = %291
  %297 = load i32*, i32** %11, align 8
  %298 = call i32 (i32*, i8*, ...) @SourceError(i32* %297, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0))
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %2, align 8
  br label %309

299:                                              ; preds = %291
  br label %300

300:                                              ; preds = %299
  %301 = load i32, i32* %4, align 4
  %302 = add nsw i32 %301, 1
  store i32 %302, i32* %4, align 4
  br label %19

303:                                              ; preds = %19
  %304 = load i32 (i32, i8*, i8*)*, i32 (i32, i8*, i8*)** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @botimport, i32 0, i32 0), align 8
  %305 = load i32, i32* @PRT_MESSAGE, align 4
  %306 = load i8*, i8** %3, align 8
  %307 = call i32 %304(i32 %305, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.14, i64 0, i64 0), i8* %306)
  %308 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  store %struct.TYPE_9__* %308, %struct.TYPE_9__** %2, align 8
  br label %309

309:                                              ; preds = %303, %296, %280, %274, %267, %235, %167, %156, %96, %77, %68, %39
  %310 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  ret %struct.TYPE_9__* %310
}

declare dso_local i64 @GetClearedHunkMemory(i32) #1

declare dso_local i32 @PC_SetBaseFolder(i32) #1

declare dso_local i32* @LoadSourceFile(i8*) #1

declare dso_local i64 @PC_ReadToken(i32*, %struct.TYPE_8__*) #1

declare dso_local i32 @SourceError(i32*, i8*, ...) #1

declare dso_local i32 @FreeSource(i32*) #1

declare dso_local i32 @PC_ExpectTokenString(i32*, i8*) #1

declare dso_local i32 @strcmp(i32, i8*) #1

declare dso_local i32 @PC_ExpectTokenType(i32*, i64, i32, %struct.TYPE_8__*) #1

declare dso_local i32 @StripDoubleQuotes(i32) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i64 @PAD(i64, i32) #1

declare dso_local i32 @strcpy(i8*, i32) #1

declare dso_local i64 @PC_CheckTokenString(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
