; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_commit.c_commit_parse.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_commit.c_commit_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_12__*, %struct.TYPE_12__*, %struct.TYPE_12__*, %struct.TYPE_12__*, %struct.TYPE_12__*, i32, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32, i32 }

@GIT_COMMIT_PARSE_QUICK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"tree \00", align 1
@GIT_OID_HEXSZ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"parent \00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"author \00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"committer \00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"encoding \00", align 1
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@GIT_ERROR_OBJECT = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [34 x i8] c"failed to parse bad commit object\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_13__*, i8*, i64, i32)* @commit_parse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @commit_parse(%struct.TYPE_13__* %0, i8* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.TYPE_12__, align 4
  %14 = alloca i64, align 8
  %15 = alloca %struct.TYPE_12__, align 4
  %16 = alloca i64, align 8
  %17 = alloca %struct.TYPE_12__*, align 8
  %18 = alloca i8*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %19 = load i8*, i8** %7, align 8
  store i8* %19, i8** %10, align 8
  %20 = load i8*, i8** %10, align 8
  %21 = load i64, i64* %8, align 8
  %22 = getelementptr inbounds i8, i8* %20, i64 %21
  store i8* %22, i8** %12, align 8
  %23 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %24 = icmp ne %struct.TYPE_13__* %23, null
  br i1 %24, label %25, label %28

25:                                               ; preds = %4
  %26 = load i8*, i8** %7, align 8
  %27 = icmp ne i8* %26, null
  br label %28

28:                                               ; preds = %25, %4
  %29 = phi i1 [ false, %4 ], [ %27, %25 ]
  %30 = zext i1 %29 to i32
  %31 = call i32 @assert(i32 %30)
  %32 = load i8*, i8** %10, align 8
  store i8* %32, i8** %11, align 8
  %33 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %33, i32 0, i32 5
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @git_array_init_to_size(i32 %35, i32 1)
  %37 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %37, i32 0, i32 5
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @GIT_ERROR_CHECK_ARRAY(i32 %39)
  %41 = load i32, i32* %9, align 4
  %42 = load i32, i32* @GIT_COMMIT_PARSE_QUICK, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %53, label %45

45:                                               ; preds = %28
  %46 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %46, i32 0, i32 6
  %48 = load i8*, i8** %12, align 8
  %49 = call i64 @git_oid__parse(%struct.TYPE_12__* %47, i8** %11, i8* %48, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %50 = icmp slt i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %45
  br label %274

52:                                               ; preds = %45
  br label %69

53:                                               ; preds = %28
  %54 = call i32 @strlen(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %55 = load i32, i32* @GIT_OID_HEXSZ, align 4
  %56 = add nsw i32 %54, %55
  %57 = add nsw i32 %56, 1
  %58 = sext i32 %57 to i64
  store i64 %58, i64* %16, align 8
  %59 = load i8*, i8** %11, align 8
  %60 = load i64, i64* %16, align 8
  %61 = getelementptr inbounds i8, i8* %59, i64 %60
  %62 = load i8*, i8** %12, align 8
  %63 = icmp ugt i8* %61, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %53
  br label %274

65:                                               ; preds = %53
  %66 = load i64, i64* %16, align 8
  %67 = load i8*, i8** %11, align 8
  %68 = getelementptr inbounds i8, i8* %67, i64 %66
  store i8* %68, i8** %11, align 8
  br label %69

69:                                               ; preds = %65, %52
  br label %70

70:                                               ; preds = %74, %69
  %71 = load i8*, i8** %12, align 8
  %72 = call i64 @git_oid__parse(%struct.TYPE_12__* %13, i8** %11, i8* %71, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %73 = icmp eq i64 %72, 0
  br i1 %73, label %74, label %83

74:                                               ; preds = %70
  %75 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %76 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %75, i32 0, i32 5
  %77 = load i32, i32* %76, align 8
  %78 = call %struct.TYPE_12__* @git_array_alloc(i32 %77)
  store %struct.TYPE_12__* %78, %struct.TYPE_12__** %17, align 8
  %79 = load %struct.TYPE_12__*, %struct.TYPE_12__** %17, align 8
  %80 = call i32 @GIT_ERROR_CHECK_ALLOC(%struct.TYPE_12__* %79)
  %81 = load %struct.TYPE_12__*, %struct.TYPE_12__** %17, align 8
  %82 = call i32 @git_oid_cpy(%struct.TYPE_12__* %81, %struct.TYPE_12__* %13)
  br label %70

83:                                               ; preds = %70
  %84 = load i32, i32* %9, align 4
  %85 = load i32, i32* @GIT_COMMIT_PARSE_QUICK, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %105, label %88

88:                                               ; preds = %83
  %89 = call i8* @git__malloc(i32 8)
  %90 = bitcast i8* %89 to %struct.TYPE_12__*
  %91 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %92 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %91, i32 0, i32 4
  store %struct.TYPE_12__* %90, %struct.TYPE_12__** %92, align 8
  %93 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %94 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %93, i32 0, i32 4
  %95 = load %struct.TYPE_12__*, %struct.TYPE_12__** %94, align 8
  %96 = call i32 @GIT_ERROR_CHECK_ALLOC(%struct.TYPE_12__* %95)
  %97 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %98 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %97, i32 0, i32 4
  %99 = load %struct.TYPE_12__*, %struct.TYPE_12__** %98, align 8
  %100 = load i8*, i8** %12, align 8
  %101 = call i64 @git_signature__parse(%struct.TYPE_12__* %99, i8** %11, i8* %100, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8 signext 10)
  %102 = icmp slt i64 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %88
  store i32 -1, i32* %5, align 4
  br label %277

104:                                              ; preds = %88
  br label %105

105:                                              ; preds = %104, %83
  br label %106

106:                                              ; preds = %122, %105
  %107 = load i8*, i8** %11, align 8
  %108 = load i8*, i8** %12, align 8
  %109 = load i8*, i8** %11, align 8
  %110 = ptrtoint i8* %108 to i64
  %111 = ptrtoint i8* %109 to i64
  %112 = sub i64 %110, %111
  %113 = trunc i64 %112 to i32
  %114 = call i64 @git__prefixncmp(i8* %107, i32 %113, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %115 = icmp ne i64 %114, 0
  %116 = xor i1 %115, true
  br i1 %116, label %117, label %129

117:                                              ; preds = %106
  %118 = load i8*, i8** %12, align 8
  %119 = call i64 @git_signature__parse(%struct.TYPE_12__* %15, i8** %11, i8* %118, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8 signext 10)
  %120 = icmp slt i64 %119, 0
  br i1 %120, label %121, label %122

121:                                              ; preds = %117
  store i32 -1, i32* %5, align 4
  br label %277

122:                                              ; preds = %117
  %123 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @git__free(i32 %124)
  %126 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = call i32 @git__free(i32 %127)
  br label %106

129:                                              ; preds = %106
  %130 = call i8* @git__malloc(i32 8)
  %131 = bitcast i8* %130 to %struct.TYPE_12__*
  %132 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %133 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %132, i32 0, i32 3
  store %struct.TYPE_12__* %131, %struct.TYPE_12__** %133, align 8
  %134 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %135 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %134, i32 0, i32 3
  %136 = load %struct.TYPE_12__*, %struct.TYPE_12__** %135, align 8
  %137 = call i32 @GIT_ERROR_CHECK_ALLOC(%struct.TYPE_12__* %136)
  %138 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %139 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %138, i32 0, i32 3
  %140 = load %struct.TYPE_12__*, %struct.TYPE_12__** %139, align 8
  %141 = load i8*, i8** %12, align 8
  %142 = call i64 @git_signature__parse(%struct.TYPE_12__* %140, i8** %11, i8* %141, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i8 signext 10)
  %143 = icmp slt i64 %142, 0
  br i1 %143, label %144, label %145

144:                                              ; preds = %129
  store i32 -1, i32* %5, align 4
  br label %277

145:                                              ; preds = %129
  %146 = load i32, i32* %9, align 4
  %147 = load i32, i32* @GIT_COMMIT_PARSE_QUICK, align 4
  %148 = and i32 %146, %147
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %151

150:                                              ; preds = %145
  store i32 0, i32* %5, align 4
  br label %277

151:                                              ; preds = %145
  br label %152

152:                                              ; preds = %227, %151
  %153 = load i8*, i8** %11, align 8
  %154 = load i8*, i8** %12, align 8
  %155 = icmp ult i8* %153, %154
  br i1 %155, label %156, label %229

156:                                              ; preds = %152
  %157 = load i8*, i8** %11, align 8
  store i8* %157, i8** %18, align 8
  %158 = load i8*, i8** %11, align 8
  %159 = getelementptr inbounds i8, i8* %158, i64 -1
  %160 = load i8, i8* %159, align 1
  %161 = sext i8 %160 to i32
  %162 = icmp eq i32 %161, 10
  br i1 %162, label %163, label %170

163:                                              ; preds = %156
  %164 = load i8*, i8** %11, align 8
  %165 = getelementptr inbounds i8, i8* %164, i64 0
  %166 = load i8, i8* %165, align 1
  %167 = sext i8 %166 to i32
  %168 = icmp eq i32 %167, 10
  br i1 %168, label %169, label %170

169:                                              ; preds = %163
  br label %229

170:                                              ; preds = %163, %156
  br label %171

171:                                              ; preds = %182, %170
  %172 = load i8*, i8** %18, align 8
  %173 = load i8*, i8** %12, align 8
  %174 = icmp ult i8* %172, %173
  br i1 %174, label %175, label %180

175:                                              ; preds = %171
  %176 = load i8*, i8** %18, align 8
  %177 = load i8, i8* %176, align 1
  %178 = sext i8 %177 to i32
  %179 = icmp ne i32 %178, 10
  br label %180

180:                                              ; preds = %175, %171
  %181 = phi i1 [ false, %171 ], [ %179, %175 ]
  br i1 %181, label %182, label %185

182:                                              ; preds = %180
  %183 = load i8*, i8** %18, align 8
  %184 = getelementptr inbounds i8, i8* %183, i32 1
  store i8* %184, i8** %18, align 8
  br label %171

185:                                              ; preds = %180
  %186 = load i8*, i8** %11, align 8
  %187 = load i8*, i8** %12, align 8
  %188 = load i8*, i8** %11, align 8
  %189 = ptrtoint i8* %187 to i64
  %190 = ptrtoint i8* %188 to i64
  %191 = sub i64 %189, %190
  %192 = trunc i64 %191 to i32
  %193 = call i64 @git__prefixncmp(i8* %186, i32 %192, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  %194 = icmp eq i64 %193, 0
  br i1 %194, label %195, label %215

195:                                              ; preds = %185
  %196 = call i32 @strlen(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  %197 = load i8*, i8** %11, align 8
  %198 = sext i32 %196 to i64
  %199 = getelementptr inbounds i8, i8* %197, i64 %198
  store i8* %199, i8** %11, align 8
  %200 = load i8*, i8** %11, align 8
  %201 = load i8*, i8** %18, align 8
  %202 = load i8*, i8** %11, align 8
  %203 = ptrtoint i8* %201 to i64
  %204 = ptrtoint i8* %202 to i64
  %205 = sub i64 %203, %204
  %206 = trunc i64 %205 to i32
  %207 = call i8* @git__strndup(i8* %200, i32 %206)
  %208 = bitcast i8* %207 to %struct.TYPE_12__*
  %209 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %210 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %209, i32 0, i32 2
  store %struct.TYPE_12__* %208, %struct.TYPE_12__** %210, align 8
  %211 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %212 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %211, i32 0, i32 2
  %213 = load %struct.TYPE_12__*, %struct.TYPE_12__** %212, align 8
  %214 = call i32 @GIT_ERROR_CHECK_ALLOC(%struct.TYPE_12__* %213)
  br label %215

215:                                              ; preds = %195, %185
  %216 = load i8*, i8** %18, align 8
  %217 = load i8*, i8** %12, align 8
  %218 = icmp ult i8* %216, %217
  br i1 %218, label %219, label %227

219:                                              ; preds = %215
  %220 = load i8*, i8** %18, align 8
  %221 = load i8, i8* %220, align 1
  %222 = sext i8 %221 to i32
  %223 = icmp eq i32 %222, 10
  br i1 %223, label %224, label %227

224:                                              ; preds = %219
  %225 = load i8*, i8** %18, align 8
  %226 = getelementptr inbounds i8, i8* %225, i32 1
  store i8* %226, i8** %18, align 8
  br label %227

227:                                              ; preds = %224, %219, %215
  %228 = load i8*, i8** %18, align 8
  store i8* %228, i8** %11, align 8
  br label %152

229:                                              ; preds = %169, %152
  %230 = load i8*, i8** %11, align 8
  %231 = load i8*, i8** %10, align 8
  %232 = ptrtoint i8* %230 to i64
  %233 = ptrtoint i8* %231 to i64
  %234 = sub i64 %232, %233
  store i64 %234, i64* %14, align 8
  %235 = load i8*, i8** %10, align 8
  %236 = load i64, i64* %14, align 8
  %237 = trunc i64 %236 to i32
  %238 = call i8* @git__strndup(i8* %235, i32 %237)
  %239 = bitcast i8* %238 to %struct.TYPE_12__*
  %240 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %241 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %240, i32 0, i32 1
  store %struct.TYPE_12__* %239, %struct.TYPE_12__** %241, align 8
  %242 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %243 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %242, i32 0, i32 1
  %244 = load %struct.TYPE_12__*, %struct.TYPE_12__** %243, align 8
  %245 = call i32 @GIT_ERROR_CHECK_ALLOC(%struct.TYPE_12__* %244)
  %246 = load i8*, i8** %10, align 8
  %247 = load i64, i64* %14, align 8
  %248 = getelementptr inbounds i8, i8* %246, i64 %247
  %249 = getelementptr inbounds i8, i8* %248, i64 1
  store i8* %249, i8** %11, align 8
  %250 = load i8*, i8** %11, align 8
  %251 = load i8*, i8** %12, align 8
  %252 = icmp ule i8* %250, %251
  br i1 %252, label %253, label %265

253:                                              ; preds = %229
  %254 = load i8*, i8** %11, align 8
  %255 = load i8*, i8** %12, align 8
  %256 = load i8*, i8** %11, align 8
  %257 = ptrtoint i8* %255 to i64
  %258 = ptrtoint i8* %256 to i64
  %259 = sub i64 %257, %258
  %260 = trunc i64 %259 to i32
  %261 = call i8* @git__strndup(i8* %254, i32 %260)
  %262 = bitcast i8* %261 to %struct.TYPE_12__*
  %263 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %264 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %263, i32 0, i32 0
  store %struct.TYPE_12__* %262, %struct.TYPE_12__** %264, align 8
  br label %269

265:                                              ; preds = %229
  %266 = call %struct.TYPE_12__* @git__strdup(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0))
  %267 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %268 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %267, i32 0, i32 0
  store %struct.TYPE_12__* %266, %struct.TYPE_12__** %268, align 8
  br label %269

269:                                              ; preds = %265, %253
  %270 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %271 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %270, i32 0, i32 0
  %272 = load %struct.TYPE_12__*, %struct.TYPE_12__** %271, align 8
  %273 = call i32 @GIT_ERROR_CHECK_ALLOC(%struct.TYPE_12__* %272)
  store i32 0, i32* %5, align 4
  br label %277

274:                                              ; preds = %64, %51
  %275 = load i32, i32* @GIT_ERROR_OBJECT, align 4
  %276 = call i32 @git_error_set(i32 %275, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  br label %277

277:                                              ; preds = %274, %269, %150, %144, %121, %103
  %278 = load i32, i32* %5, align 4
  ret i32 %278
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @git_array_init_to_size(i32, i32) #1

declare dso_local i32 @GIT_ERROR_CHECK_ARRAY(i32) #1

declare dso_local i64 @git_oid__parse(%struct.TYPE_12__*, i8**, i8*, i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local %struct.TYPE_12__* @git_array_alloc(i32) #1

declare dso_local i32 @GIT_ERROR_CHECK_ALLOC(%struct.TYPE_12__*) #1

declare dso_local i32 @git_oid_cpy(%struct.TYPE_12__*, %struct.TYPE_12__*) #1

declare dso_local i8* @git__malloc(i32) #1

declare dso_local i64 @git_signature__parse(%struct.TYPE_12__*, i8**, i8*, i8*, i8 signext) #1

declare dso_local i64 @git__prefixncmp(i8*, i32, i8*) #1

declare dso_local i32 @git__free(i32) #1

declare dso_local i8* @git__strndup(i8*, i32) #1

declare dso_local %struct.TYPE_12__* @git__strdup(i8*) #1

declare dso_local i32 @git_error_set(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
