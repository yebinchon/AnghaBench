; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_diff_tform.c_git_diff__merge.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_diff_tform.c_git_diff__merge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { %struct.TYPE_25__, i32, i32, i32, %struct.TYPE_24__ }
%struct.TYPE_25__ = type { i32, i8*, i8* }
%struct.TYPE_24__ = type { i32 }
%struct.TYPE_22__ = type { %struct.TYPE_21__ }
%struct.TYPE_21__ = type { i32 }

@GIT_DIFF_IGNORE_CASE = common dso_local global i32 0, align 4
@GIT_DIFF_REVERSE = common dso_local global i32 0, align 4
@GIT_ERROR_INVALID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [56 x i8] c"attempt to merge diffs created with conflicting options\00", align 1
@git_diff_delta__cmp = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @git_diff__merge(%struct.TYPE_23__* %0, %struct.TYPE_23__* %1, %struct.TYPE_22__* (%struct.TYPE_22__*, %struct.TYPE_22__*, i32*)* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_23__*, align 8
  %6 = alloca %struct.TYPE_23__*, align 8
  %7 = alloca %struct.TYPE_22__* (%struct.TYPE_22__*, %struct.TYPE_22__*, i32*)*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_22__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_22__*, align 8
  %17 = alloca %struct.TYPE_22__*, align 8
  %18 = alloca i32, align 4
  %19 = alloca %struct.TYPE_22__*, align 8
  %20 = alloca %struct.TYPE_22__*, align 8
  store %struct.TYPE_23__* %0, %struct.TYPE_23__** %5, align 8
  store %struct.TYPE_23__* %1, %struct.TYPE_23__** %6, align 8
  store %struct.TYPE_22__* (%struct.TYPE_22__*, %struct.TYPE_22__*, i32*)* %2, %struct.TYPE_22__* (%struct.TYPE_22__*, %struct.TYPE_22__*, i32*)** %7, align 8
  store i32 0, i32* %8, align 4
  %21 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %22 = icmp ne %struct.TYPE_23__* %21, null
  br i1 %22, label %23, label %26

23:                                               ; preds = %3
  %24 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %25 = icmp ne %struct.TYPE_23__* %24, null
  br label %26

26:                                               ; preds = %23, %3
  %27 = phi i1 [ false, %3 ], [ %25, %23 ]
  %28 = zext i1 %27 to i32
  %29 = call i32 @assert(i32 %28)
  %30 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %30, i32 0, i32 4
  %32 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %26
  store i32 0, i32* %4, align 4
  br label %254

36:                                               ; preds = %26
  %37 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @GIT_DIFF_IGNORE_CASE, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  %44 = zext i1 %43 to i32
  store i32 %44, i32* %12, align 4
  %45 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @GIT_DIFF_REVERSE, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  %52 = zext i1 %51 to i32
  store i32 %52, i32* %13, align 4
  %53 = load i32, i32* %12, align 4
  %54 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @GIT_DIFF_IGNORE_CASE, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  %61 = zext i1 %60 to i32
  %62 = icmp ne i32 %53, %61
  br i1 %62, label %74, label %63

63:                                               ; preds = %36
  %64 = load i32, i32* %13, align 4
  %65 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* @GIT_DIFF_REVERSE, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  %72 = zext i1 %71 to i32
  %73 = icmp ne i32 %64, %72
  br i1 %73, label %74, label %77

74:                                               ; preds = %63, %36
  %75 = load i32, i32* @GIT_ERROR_INVALID, align 4
  %76 = call i32 @git_error_set(i32 %75, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %254

77:                                               ; preds = %63
  %78 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %78, i32 0, i32 4
  %80 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @git_diff_delta__cmp, align 4
  %83 = call i64 @git_vector_init(i32* %10, i32 %81, i32 %82)
  %84 = icmp slt i64 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %77
  store i32 -1, i32* %4, align 4
  br label %254

86:                                               ; preds = %77
  %87 = call i32 @git_pool_init(i32* %9, i32 1)
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  br label %88

88:                                               ; preds = %199, %185, %86
  %89 = load i32, i32* %14, align 4
  %90 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %91 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %90, i32 0, i32 4
  %92 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = icmp ult i32 %89, %93
  br i1 %94, label %102, label %95

95:                                               ; preds = %88
  %96 = load i32, i32* %15, align 4
  %97 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %98 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %97, i32 0, i32 4
  %99 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = icmp ult i32 %96, %100
  br label %102

102:                                              ; preds = %95, %88
  %103 = phi i1 [ true, %88 ], [ %101, %95 ]
  br i1 %103, label %104, label %200

104:                                              ; preds = %102
  %105 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %106 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %105, i32 0, i32 4
  %107 = load i32, i32* %14, align 4
  %108 = call %struct.TYPE_22__* @GIT_VECTOR_GET(%struct.TYPE_24__* %106, i32 %107)
  store %struct.TYPE_22__* %108, %struct.TYPE_22__** %16, align 8
  %109 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %110 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %109, i32 0, i32 4
  %111 = load i32, i32* %15, align 4
  %112 = call %struct.TYPE_22__* @GIT_VECTOR_GET(%struct.TYPE_24__* %110, i32 %111)
  store %struct.TYPE_22__* %112, %struct.TYPE_22__** %17, align 8
  %113 = load %struct.TYPE_22__*, %struct.TYPE_22__** %17, align 8
  %114 = icmp ne %struct.TYPE_22__* %113, null
  br i1 %114, label %116, label %115

115:                                              ; preds = %104
  br label %133

116:                                              ; preds = %104
  %117 = load %struct.TYPE_22__*, %struct.TYPE_22__** %16, align 8
  %118 = icmp ne %struct.TYPE_22__* %117, null
  br i1 %118, label %120, label %119

119:                                              ; preds = %116
  br label %131

120:                                              ; preds = %116
  %121 = load i32, i32* %12, align 4
  %122 = load %struct.TYPE_22__*, %struct.TYPE_22__** %16, align 8
  %123 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.TYPE_22__*, %struct.TYPE_22__** %17, align 8
  %127 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = call i32 @STRCMP_CASESELECT(i32 %121, i32 %125, i32 %129)
  br label %131

131:                                              ; preds = %120, %119
  %132 = phi i32 [ 1, %119 ], [ %130, %120 ]
  br label %133

133:                                              ; preds = %131, %115
  %134 = phi i32 [ -1, %115 ], [ %132, %131 ]
  store i32 %134, i32* %18, align 4
  %135 = load i32, i32* %18, align 4
  %136 = icmp slt i32 %135, 0
  br i1 %136, label %137, label %142

137:                                              ; preds = %133
  %138 = load %struct.TYPE_22__*, %struct.TYPE_22__** %16, align 8
  %139 = call %struct.TYPE_22__* @git_diff__delta_dup(%struct.TYPE_22__* %138, i32* %9)
  store %struct.TYPE_22__* %139, %struct.TYPE_22__** %11, align 8
  %140 = load i32, i32* %14, align 4
  %141 = add i32 %140, 1
  store i32 %141, i32* %14, align 4
  br label %176

142:                                              ; preds = %133
  %143 = load i32, i32* %18, align 4
  %144 = icmp sgt i32 %143, 0
  br i1 %144, label %145, label %150

145:                                              ; preds = %142
  %146 = load %struct.TYPE_22__*, %struct.TYPE_22__** %17, align 8
  %147 = call %struct.TYPE_22__* @git_diff__delta_dup(%struct.TYPE_22__* %146, i32* %9)
  store %struct.TYPE_22__* %147, %struct.TYPE_22__** %11, align 8
  %148 = load i32, i32* %15, align 4
  %149 = add i32 %148, 1
  store i32 %149, i32* %15, align 4
  br label %175

150:                                              ; preds = %142
  %151 = load i32, i32* %13, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %155

153:                                              ; preds = %150
  %154 = load %struct.TYPE_22__*, %struct.TYPE_22__** %17, align 8
  br label %157

155:                                              ; preds = %150
  %156 = load %struct.TYPE_22__*, %struct.TYPE_22__** %16, align 8
  br label %157

157:                                              ; preds = %155, %153
  %158 = phi %struct.TYPE_22__* [ %154, %153 ], [ %156, %155 ]
  store %struct.TYPE_22__* %158, %struct.TYPE_22__** %19, align 8
  %159 = load i32, i32* %13, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %163

161:                                              ; preds = %157
  %162 = load %struct.TYPE_22__*, %struct.TYPE_22__** %16, align 8
  br label %165

163:                                              ; preds = %157
  %164 = load %struct.TYPE_22__*, %struct.TYPE_22__** %17, align 8
  br label %165

165:                                              ; preds = %163, %161
  %166 = phi %struct.TYPE_22__* [ %162, %161 ], [ %164, %163 ]
  store %struct.TYPE_22__* %166, %struct.TYPE_22__** %20, align 8
  %167 = load %struct.TYPE_22__* (%struct.TYPE_22__*, %struct.TYPE_22__*, i32*)*, %struct.TYPE_22__* (%struct.TYPE_22__*, %struct.TYPE_22__*, i32*)** %7, align 8
  %168 = load %struct.TYPE_22__*, %struct.TYPE_22__** %19, align 8
  %169 = load %struct.TYPE_22__*, %struct.TYPE_22__** %20, align 8
  %170 = call %struct.TYPE_22__* %167(%struct.TYPE_22__* %168, %struct.TYPE_22__* %169, i32* %9)
  store %struct.TYPE_22__* %170, %struct.TYPE_22__** %11, align 8
  %171 = load i32, i32* %14, align 4
  %172 = add i32 %171, 1
  store i32 %172, i32* %14, align 4
  %173 = load i32, i32* %15, align 4
  %174 = add i32 %173, 1
  store i32 %174, i32* %15, align 4
  br label %175

175:                                              ; preds = %165, %145
  br label %176

176:                                              ; preds = %175, %137
  %177 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %178 = icmp ne %struct.TYPE_22__* %177, null
  br i1 %178, label %179, label %188

179:                                              ; preds = %176
  %180 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %181 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %180, i32 0, i32 0
  %182 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %183 = call i64 @git_diff_delta__should_skip(%struct.TYPE_25__* %181, %struct.TYPE_22__* %182)
  %184 = icmp ne i64 %183, 0
  br i1 %184, label %185, label %188

185:                                              ; preds = %179
  %186 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %187 = call i32 @git__free(%struct.TYPE_22__* %186)
  br label %88

188:                                              ; preds = %179, %176
  %189 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %190 = icmp ne %struct.TYPE_22__* %189, null
  br i1 %190, label %192, label %191

191:                                              ; preds = %188
  br label %195

192:                                              ; preds = %188
  %193 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %194 = call i32 @git_vector_insert(i32* %10, %struct.TYPE_22__* %193)
  br label %195

195:                                              ; preds = %192, %191
  %196 = phi i32 [ -1, %191 ], [ %194, %192 ]
  store i32 %196, i32* %8, align 4
  %197 = icmp slt i32 %196, 0
  br i1 %197, label %198, label %199

198:                                              ; preds = %195
  br label %200

199:                                              ; preds = %195
  br label %88

200:                                              ; preds = %198, %102
  %201 = load i32, i32* %8, align 4
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %250, label %203

203:                                              ; preds = %200
  %204 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %205 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %204, i32 0, i32 4
  %206 = call i32 @git_vector_swap(%struct.TYPE_24__* %205, i32* %10)
  %207 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %208 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %207, i32 0, i32 1
  %209 = call i32 @git_pool_swap(i32* %208, i32* %9)
  %210 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %211 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %210, i32 0, i32 0
  %212 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 8
  %214 = load i32, i32* @GIT_DIFF_REVERSE, align 4
  %215 = and i32 %213, %214
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %217, label %223

217:                                              ; preds = %203
  %218 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %219 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %218, i32 0, i32 3
  %220 = load i32, i32* %219, align 8
  %221 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %222 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %221, i32 0, i32 3
  store i32 %220, i32* %222, align 8
  br label %229

223:                                              ; preds = %203
  %224 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %225 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %224, i32 0, i32 2
  %226 = load i32, i32* %225, align 4
  %227 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %228 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %227, i32 0, i32 2
  store i32 %226, i32* %228, align 4
  br label %229

229:                                              ; preds = %223, %217
  %230 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %231 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %230, i32 0, i32 1
  %232 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %233 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %232, i32 0, i32 0
  %234 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %233, i32 0, i32 2
  %235 = load i8*, i8** %234, align 8
  %236 = call i8* @git_pool_strdup_safe(i32* %231, i8* %235)
  %237 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %238 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %237, i32 0, i32 0
  %239 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %238, i32 0, i32 2
  store i8* %236, i8** %239, align 8
  %240 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %241 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %240, i32 0, i32 1
  %242 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %243 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %242, i32 0, i32 0
  %244 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %243, i32 0, i32 1
  %245 = load i8*, i8** %244, align 8
  %246 = call i8* @git_pool_strdup_safe(i32* %241, i8* %245)
  %247 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %248 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %247, i32 0, i32 0
  %249 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %248, i32 0, i32 1
  store i8* %246, i8** %249, align 8
  br label %250

250:                                              ; preds = %229, %200
  %251 = call i32 @git_vector_free_deep(i32* %10)
  %252 = call i32 @git_pool_clear(i32* %9)
  %253 = load i32, i32* %8, align 4
  store i32 %253, i32* %4, align 4
  br label %254

254:                                              ; preds = %250, %85, %74, %35
  %255 = load i32, i32* %4, align 4
  ret i32 %255
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @git_error_set(i32, i8*) #1

declare dso_local i64 @git_vector_init(i32*, i32, i32) #1

declare dso_local i32 @git_pool_init(i32*, i32) #1

declare dso_local %struct.TYPE_22__* @GIT_VECTOR_GET(%struct.TYPE_24__*, i32) #1

declare dso_local i32 @STRCMP_CASESELECT(i32, i32, i32) #1

declare dso_local %struct.TYPE_22__* @git_diff__delta_dup(%struct.TYPE_22__*, i32*) #1

declare dso_local i64 @git_diff_delta__should_skip(%struct.TYPE_25__*, %struct.TYPE_22__*) #1

declare dso_local i32 @git__free(%struct.TYPE_22__*) #1

declare dso_local i32 @git_vector_insert(i32*, %struct.TYPE_22__*) #1

declare dso_local i32 @git_vector_swap(%struct.TYPE_24__*, i32*) #1

declare dso_local i32 @git_pool_swap(i32*, i32*) #1

declare dso_local i8* @git_pool_strdup_safe(i32*, i8*) #1

declare dso_local i32 @git_vector_free_deep(i32*) #1

declare dso_local i32 @git_pool_clear(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
