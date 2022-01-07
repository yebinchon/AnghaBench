; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_pathspec.c_pathspec_match_from_iterator.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_pathspec.c_pathspec_match_from_iterator.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, i32, i32 }
%struct.TYPE_17__ = type { i32, %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i64 }
%struct.TYPE_18__ = type { i32 }
%struct.pathspec_match_context = type { i32 }

@GIT_PATHSPEC_FIND_FAILURES = common dso_local global i32 0, align 4
@GIT_PATHSPEC_FAILURES_ONLY = common dso_local global i32 0, align 4
@PATHSPEC_DATATYPE_STRINGS = common dso_local global i32 0, align 4
@GIT_ITERATOR_TYPE_WORKDIR = common dso_local global i64 0, align 8
@GIT_PATHSPEC_NO_GLOB = common dso_local global i32 0, align 4
@GIT_INDEX_STAGE_ANY = common dso_local global i32 0, align 4
@GIT_ITEROVER = common dso_local global i32 0, align 4
@GIT_PATHSPEC_NO_MATCH_ERROR = common dso_local global i32 0, align 4
@GIT_ERROR_INVALID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"no matching files were found\00", align 1
@GIT_ENOTFOUND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_16__**, i32*, i32, %struct.TYPE_17__*)* @pathspec_match_from_iterator to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pathspec_match_from_iterator(%struct.TYPE_16__** %0, i32* %1, i32 %2, %struct.TYPE_17__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_16__**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_17__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_16__*, align 8
  %12 = alloca %struct.TYPE_18__*, align 8
  %13 = alloca %struct.pathspec_match_context, align 4
  %14 = alloca %struct.TYPE_15__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i8**, align 8
  %23 = alloca i32, align 4
  store %struct.TYPE_16__** %0, %struct.TYPE_16__*** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.TYPE_17__* %3, %struct.TYPE_17__** %9, align 8
  store i32 0, i32* %10, align 4
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %11, align 8
  store %struct.TYPE_18__* null, %struct.TYPE_18__** %12, align 8
  %24 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %25 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %24, i32 0, i32 1
  store %struct.TYPE_15__* %25, %struct.TYPE_15__** %14, align 8
  %26 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %6, align 8
  %27 = icmp ne %struct.TYPE_16__** %26, null
  br i1 %27, label %28, label %33

28:                                               ; preds = %4
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* @GIT_PATHSPEC_FIND_FAILURES, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br label %33

33:                                               ; preds = %28, %4
  %34 = phi i1 [ false, %4 ], [ %32, %28 ]
  %35 = zext i1 %34 to i32
  store i32 %35, i32* %15, align 4
  %36 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %6, align 8
  %37 = icmp ne %struct.TYPE_16__** %36, null
  br i1 %37, label %38, label %43

38:                                               ; preds = %33
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* @GIT_PATHSPEC_FAILURES_ONLY, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br label %43

43:                                               ; preds = %38, %33
  %44 = phi i1 [ true, %33 ], [ %42, %38 ]
  %45 = zext i1 %44 to i32
  store i32 %45, i32* %16, align 4
  store i64 0, i64* %18, align 8
  store i64 0, i64* %19, align 8
  store i32* null, i32** %20, align 8
  %46 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %47 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = call i64 @git_bitvec_init(i32* %21, i64 %48)
  %50 = icmp slt i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %43
  store i32 -1, i32* %5, align 4
  br label %241

52:                                               ; preds = %43
  %53 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %6, align 8
  %54 = icmp ne %struct.TYPE_16__** %53, null
  br i1 %54, label %55, label %62

55:                                               ; preds = %52
  %56 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %57 = load i32, i32* @PATHSPEC_DATATYPE_STRINGS, align 4
  %58 = call %struct.TYPE_16__* @pathspec_match_alloc(%struct.TYPE_17__* %56, i32 %57)
  store %struct.TYPE_16__* %58, %struct.TYPE_16__** %11, align 8
  %59 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %6, align 8
  store %struct.TYPE_16__* %58, %struct.TYPE_16__** %59, align 8
  %60 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %61 = call i32 @GIT_ERROR_CHECK_ALLOC(%struct.TYPE_16__* %60)
  br label %62

62:                                               ; preds = %55, %52
  %63 = load i32*, i32** %7, align 8
  %64 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %65 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %68 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @git_iterator_reset_range(i32* %63, i32 %66, i32 %69)
  store i32 %70, i32* %10, align 4
  %71 = icmp slt i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %62
  br label %227

73:                                               ; preds = %62
  %74 = load i32*, i32** %7, align 8
  %75 = call i64 @git_iterator_type(i32* %74)
  %76 = load i64, i64* @GIT_ITERATOR_TYPE_WORKDIR, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %78, label %84

78:                                               ; preds = %73
  %79 = load i32*, i32** %7, align 8
  %80 = call i32 @git_iterator_owner(i32* %79)
  %81 = call i32 @git_repository_index__weakptr(i32** %20, i32 %80)
  store i32 %81, i32* %10, align 4
  %82 = icmp slt i32 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %78
  br label %227

84:                                               ; preds = %78, %73
  %85 = load i32, i32* %8, align 4
  %86 = load i32, i32* @GIT_PATHSPEC_NO_GLOB, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  %89 = zext i1 %88 to i32
  %90 = load i32*, i32** %7, align 8
  %91 = call i32 @git_iterator_ignore_case(i32* %90)
  %92 = call i32 @pathspec_match_context_init(%struct.pathspec_match_context* %13, i32 %89, i32 %91)
  br label %93

93:                                               ; preds = %187, %169, %130, %110, %106, %84
  %94 = load i32*, i32** %7, align 8
  %95 = call i32 @git_iterator_advance(%struct.TYPE_18__** %12, i32* %94)
  store i32 %95, i32* %10, align 4
  %96 = icmp ne i32 %95, 0
  %97 = xor i1 %96, true
  br i1 %97, label %98, label %188

98:                                               ; preds = %93
  %99 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %100 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %101 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @git_pathspec__match_at(i64* %17, %struct.TYPE_15__* %99, %struct.pathspec_match_context* %13, i32 %102, i32* null)
  store i32 %103, i32* %23, align 4
  %104 = load i32, i32* %23, align 4
  %105 = icmp slt i32 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %98
  br label %93

107:                                              ; preds = %98
  %108 = load i32, i32* %23, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %115, label %110

110:                                              ; preds = %107
  %111 = load i64, i64* %17, align 8
  %112 = call i64 @pathspec_mark_pattern(i32* %21, i64 %111)
  %113 = load i64, i64* %18, align 8
  %114 = add i64 %113, %112
  store i64 %114, i64* %18, align 8
  br label %93

115:                                              ; preds = %107
  %116 = load i32*, i32** %20, align 8
  %117 = icmp ne i32* %116, null
  br i1 %117, label %118, label %131

118:                                              ; preds = %115
  %119 = load i32*, i32** %7, align 8
  %120 = call i64 @git_iterator_current_is_ignored(i32* %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %131

122:                                              ; preds = %118
  %123 = load i32*, i32** %20, align 8
  %124 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %125 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = load i32, i32* @GIT_INDEX_STAGE_ANY, align 4
  %128 = call i64 @git_index__find_pos(i32* null, i32* %123, i32 %126, i32 0, i32 %127)
  %129 = icmp slt i64 %128, 0
  br i1 %129, label %130, label %131

130:                                              ; preds = %122
  br label %93

131:                                              ; preds = %122, %118, %115
  %132 = load i64, i64* %17, align 8
  %133 = call i64 @pathspec_mark_pattern(i32* %21, i64 %132)
  %134 = load i64, i64* %18, align 8
  %135 = add i64 %134, %133
  store i64 %135, i64* %18, align 8
  %136 = load i64, i64* %19, align 8
  %137 = add i64 %136, 1
  store i64 %137, i64* %19, align 8
  %138 = load i32, i32* %15, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %156

140:                                              ; preds = %131
  %141 = load i64, i64* %18, align 8
  %142 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %143 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %142, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  %145 = icmp ult i64 %141, %144
  br i1 %145, label %146, label %156

146:                                              ; preds = %140
  %147 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %148 = load i64, i64* %17, align 8
  %149 = add i64 %148, 1
  %150 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %151 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = call i64 @pathspec_mark_remaining(i32* %21, %struct.TYPE_15__* %147, %struct.pathspec_match_context* %13, i64 %149, i32 %152, i32* null)
  %154 = load i64, i64* %18, align 8
  %155 = add i64 %154, %153
  store i64 %155, i64* %18, align 8
  br label %156

156:                                              ; preds = %146, %140, %131
  %157 = load i32, i32* %16, align 4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %162, label %159

159:                                              ; preds = %156
  %160 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %6, align 8
  %161 = icmp ne %struct.TYPE_16__** %160, null
  br i1 %161, label %170, label %162

162:                                              ; preds = %159, %156
  %163 = load i64, i64* %18, align 8
  %164 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %165 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %164, i32 0, i32 0
  %166 = load i64, i64* %165, align 8
  %167 = icmp eq i64 %163, %166
  br i1 %167, label %168, label %169

168:                                              ; preds = %162
  br label %188

169:                                              ; preds = %162
  br label %93

170:                                              ; preds = %159
  %171 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %172 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %171, i32 0, i32 2
  %173 = load i32, i32* %172, align 4
  %174 = call i64 @git_array_alloc(i32 %173)
  %175 = inttoptr i64 %174 to i8**
  store i8** %175, i8*** %22, align 8
  %176 = icmp eq i8** %175, null
  br i1 %176, label %186, label %177

177:                                              ; preds = %170
  %178 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %179 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %178, i32 0, i32 0
  %180 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %181 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 4
  %183 = call i8* @git_pool_strdup(i32* %179, i32 %182)
  %184 = load i8**, i8*** %22, align 8
  store i8* %183, i8** %184, align 8
  %185 = icmp eq i8* %183, null
  br i1 %185, label %186, label %187

186:                                              ; preds = %177, %170
  store i32 -1, i32* %10, align 4
  br label %227

187:                                              ; preds = %177
  br label %93

188:                                              ; preds = %168, %93
  %189 = load i32, i32* %10, align 4
  %190 = icmp slt i32 %189, 0
  br i1 %190, label %191, label %196

191:                                              ; preds = %188
  %192 = load i32, i32* %10, align 4
  %193 = load i32, i32* @GIT_ITEROVER, align 4
  %194 = icmp ne i32 %192, %193
  br i1 %194, label %195, label %196

195:                                              ; preds = %191
  br label %227

196:                                              ; preds = %191, %188
  store i32 0, i32* %10, align 4
  %197 = load i32, i32* %15, align 4
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %199, label %214

199:                                              ; preds = %196
  %200 = load i64, i64* %18, align 8
  %201 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %202 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %201, i32 0, i32 0
  %203 = load i64, i64* %202, align 8
  %204 = icmp ult i64 %200, %203
  br i1 %204, label %205, label %214

205:                                              ; preds = %199
  %206 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %207 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %206, i32 0, i32 1
  %208 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %209 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %210 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %209, i32 0, i32 0
  %211 = call i32 @pathspec_build_failure_array(i32* %207, %struct.TYPE_15__* %208, i32* %21, i32* %210)
  store i32 %211, i32* %10, align 4
  %212 = icmp slt i32 %211, 0
  br i1 %212, label %213, label %214

213:                                              ; preds = %205
  br label %227

214:                                              ; preds = %205, %199, %196
  %215 = load i32, i32* %8, align 4
  %216 = load i32, i32* @GIT_PATHSPEC_NO_MATCH_ERROR, align 4
  %217 = and i32 %215, %216
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %219, label %226

219:                                              ; preds = %214
  %220 = load i64, i64* %19, align 8
  %221 = icmp ne i64 %220, 0
  br i1 %221, label %226, label %222

222:                                              ; preds = %219
  %223 = load i32, i32* @GIT_ERROR_INVALID, align 4
  %224 = call i32 @git_error_set(i32 %223, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %225 = load i32, i32* @GIT_ENOTFOUND, align 4
  store i32 %225, i32* %10, align 4
  br label %226

226:                                              ; preds = %222, %219, %214
  br label %227

227:                                              ; preds = %226, %213, %195, %186, %83, %72
  %228 = call i32 @git_bitvec_free(i32* %21)
  %229 = load i32, i32* %10, align 4
  %230 = icmp slt i32 %229, 0
  br i1 %230, label %231, label %239

231:                                              ; preds = %227
  %232 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %233 = call i32 @pathspec_match_free(%struct.TYPE_16__* %232)
  %234 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %6, align 8
  %235 = icmp ne %struct.TYPE_16__** %234, null
  br i1 %235, label %236, label %238

236:                                              ; preds = %231
  %237 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %6, align 8
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %237, align 8
  br label %238

238:                                              ; preds = %236, %231
  br label %239

239:                                              ; preds = %238, %227
  %240 = load i32, i32* %10, align 4
  store i32 %240, i32* %5, align 4
  br label %241

241:                                              ; preds = %239, %51
  %242 = load i32, i32* %5, align 4
  ret i32 %242
}

declare dso_local i64 @git_bitvec_init(i32*, i64) #1

declare dso_local %struct.TYPE_16__* @pathspec_match_alloc(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @GIT_ERROR_CHECK_ALLOC(%struct.TYPE_16__*) #1

declare dso_local i32 @git_iterator_reset_range(i32*, i32, i32) #1

declare dso_local i64 @git_iterator_type(i32*) #1

declare dso_local i32 @git_repository_index__weakptr(i32**, i32) #1

declare dso_local i32 @git_iterator_owner(i32*) #1

declare dso_local i32 @pathspec_match_context_init(%struct.pathspec_match_context*, i32, i32) #1

declare dso_local i32 @git_iterator_ignore_case(i32*) #1

declare dso_local i32 @git_iterator_advance(%struct.TYPE_18__**, i32*) #1

declare dso_local i32 @git_pathspec__match_at(i64*, %struct.TYPE_15__*, %struct.pathspec_match_context*, i32, i32*) #1

declare dso_local i64 @pathspec_mark_pattern(i32*, i64) #1

declare dso_local i64 @git_iterator_current_is_ignored(i32*) #1

declare dso_local i64 @git_index__find_pos(i32*, i32*, i32, i32, i32) #1

declare dso_local i64 @pathspec_mark_remaining(i32*, %struct.TYPE_15__*, %struct.pathspec_match_context*, i64, i32, i32*) #1

declare dso_local i64 @git_array_alloc(i32) #1

declare dso_local i8* @git_pool_strdup(i32*, i32) #1

declare dso_local i32 @pathspec_build_failure_array(i32*, %struct.TYPE_15__*, i32*, i32*) #1

declare dso_local i32 @git_error_set(i32, i8*) #1

declare dso_local i32 @git_bitvec_free(i32*) #1

declare dso_local i32 @pathspec_match_free(%struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
