; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_submodule.c_git_submodule_lookup.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_submodule.c_git_submodule_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_24__ = type { i8*, i32 }
%struct.TYPE_22__ = type { i32, i64 }
%struct.TYPE_23__ = type { i32*, i64 }
%struct.TYPE_25__ = type { i8*, i64, i32*, i32* }

@GIT_ERROR_SUBMODULE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"cannot get submodules without a working tree\00", align 1
@GIT_SUBMODULE_STATUS_IN_WD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"submodule\\..*\\.path\00", align 1
@GIT_BUF_INIT = common dso_local global %struct.TYPE_24__ zeroinitializer, align 8
@GITMODULES_EXISTING = common dso_local global i32 0, align 4
@find_by_path = common dso_local global i32 0, align 4
@GIT_ENOTFOUND = common dso_local global i32 0, align 4
@DOT_GIT = common dso_local global i32 0, align 4
@GIT_EEXISTS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @git_submodule_lookup(%struct.TYPE_22__** %0, %struct.TYPE_23__* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_22__**, align 8
  %6 = alloca %struct.TYPE_23__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_22__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.TYPE_24__, align 8
  %14 = alloca %struct.TYPE_25__, align 8
  %15 = alloca %struct.TYPE_24__, align 8
  store %struct.TYPE_22__** %0, %struct.TYPE_22__*** %5, align 8
  store %struct.TYPE_23__* %1, %struct.TYPE_23__** %6, align 8
  store i8* %2, i8** %7, align 8
  %16 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %17 = icmp ne %struct.TYPE_23__* %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %3
  %19 = load i8*, i8** %7, align 8
  %20 = icmp ne i8* %19, null
  br label %21

21:                                               ; preds = %18, %3
  %22 = phi i1 [ false, %3 ], [ %20, %18 ]
  %23 = zext i1 %22 to i32
  %24 = call i32 @assert(i32 %23)
  %25 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %21
  %30 = load i32, i32* @GIT_ERROR_SUBMODULE, align 4
  %31 = call i32 @git_error_set(i32 %30, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %214

32:                                               ; preds = %21
  %33 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = icmp ne i32* %35, null
  br i1 %36, label %37, label %55

37:                                               ; preds = %32
  %38 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = load i8*, i8** %7, align 8
  %42 = call %struct.TYPE_22__* @git_strmap_get(i32* %40, i8* %41)
  store %struct.TYPE_22__* %42, %struct.TYPE_22__** %10, align 8
  %43 = icmp ne %struct.TYPE_22__* %42, null
  br i1 %43, label %44, label %54

44:                                               ; preds = %37
  %45 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %5, align 8
  %46 = icmp ne %struct.TYPE_22__** %45, null
  br i1 %46, label %47, label %53

47:                                               ; preds = %44
  %48 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %49 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %5, align 8
  store %struct.TYPE_22__* %48, %struct.TYPE_22__** %49, align 8
  %50 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %5, align 8
  %51 = load %struct.TYPE_22__*, %struct.TYPE_22__** %50, align 8
  %52 = call i32 @GIT_REFCOUNT_INC(%struct.TYPE_22__* %51)
  br label %53

53:                                               ; preds = %47, %44
  store i32 0, i32* %4, align 4
  br label %214

54:                                               ; preds = %37
  br label %55

55:                                               ; preds = %54, %32
  %56 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %57 = load i8*, i8** %7, align 8
  %58 = call i32 @submodule_alloc(%struct.TYPE_22__** %10, %struct.TYPE_23__* %56, i8* %57)
  store i32 %58, i32* %8, align 4
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %55
  %61 = load i32, i32* %8, align 4
  store i32 %61, i32* %4, align 4
  br label %214

62:                                               ; preds = %55
  %63 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %64 = call i32 @git_submodule_reload(%struct.TYPE_22__* %63, i32 0)
  store i32 %64, i32* %8, align 4
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %62
  %67 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %68 = call i32 @git_submodule_free(%struct.TYPE_22__* %67)
  %69 = load i32, i32* %8, align 4
  store i32 %69, i32* %4, align 4
  br label %214

70:                                               ; preds = %62
  %71 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %72 = call i32 @git_submodule_location(i32* %9, %struct.TYPE_22__* %71)
  store i32 %72, i32* %8, align 4
  %73 = icmp slt i32 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %70
  %75 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %76 = call i32 @git_submodule_free(%struct.TYPE_22__* %75)
  %77 = load i32, i32* %8, align 4
  store i32 %77, i32* %4, align 4
  br label %214

78:                                               ; preds = %70
  %79 = load i32, i32* %9, align 4
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %85, label %81

81:                                               ; preds = %78
  %82 = load i32, i32* %9, align 4
  %83 = load i32, i32* @GIT_SUBMODULE_STATUS_IN_WD, align 4
  %84 = icmp eq i32 %82, %83
  br i1 %84, label %85, label %159

85:                                               ; preds = %81, %78
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i8** %12, align 8
  %86 = bitcast %struct.TYPE_24__* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %86, i8* align 8 bitcast (%struct.TYPE_24__* @GIT_BUF_INIT to i8*), i64 16, i1 false)
  %87 = bitcast %struct.TYPE_25__* %14 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %87, i8 0, i64 32, i1 false)
  %88 = load i8*, i8** %7, align 8
  %89 = call i32 @git_buf_puts(%struct.TYPE_24__* %13, i8* %88)
  br label %90

90:                                               ; preds = %101, %85
  %91 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %13, i32 0, i32 0
  %92 = load i8*, i8** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %13, i32 0, i32 1
  %94 = load i32, i32* %93, align 8
  %95 = sub nsw i32 %94, 1
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i8, i8* %92, i64 %96
  %98 = load i8, i8* %97, align 1
  %99 = sext i8 %98 to i32
  %100 = icmp eq i32 %99, 47
  br i1 %100, label %101, label %109

101:                                              ; preds = %90
  %102 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %13, i32 0, i32 0
  %103 = load i8*, i8** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %13, i32 0, i32 1
  %105 = load i32, i32* %104, align 8
  %106 = add nsw i32 %105, -1
  store i32 %106, i32* %104, align 8
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i8, i8* %103, i64 %107
  store i8 0, i8* %108, align 1
  br label %90

109:                                              ; preds = %90
  %110 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %13, i32 0, i32 0
  %111 = load i8*, i8** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %14, i32 0, i32 0
  store i8* %111, i8** %112, align 8
  %113 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %114 = load i32, i32* @GITMODULES_EXISTING, align 4
  %115 = call i32* @open_gitmodules(%struct.TYPE_23__* %113, i32 %114)
  store i32* %115, i32** %11, align 8
  %116 = load i32*, i32** %11, align 8
  %117 = icmp ne i32* %116, null
  br i1 %117, label %118, label %123

118:                                              ; preds = %109
  %119 = load i32*, i32** %11, align 8
  %120 = load i8*, i8** %12, align 8
  %121 = load i32, i32* @find_by_path, align 4
  %122 = call i32 @git_config_backend_foreach_match(i32* %119, i8* %120, i32 %121, %struct.TYPE_25__* %14)
  store i32 %122, i32* %8, align 4
  br label %123

123:                                              ; preds = %118, %109
  %124 = load i32*, i32** %11, align 8
  %125 = call i32 @git_config_backend_free(i32* %124)
  %126 = load i32, i32* %8, align 4
  %127 = icmp slt i32 %126, 0
  br i1 %127, label %128, label %133

128:                                              ; preds = %123
  %129 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %130 = call i32 @git_submodule_free(%struct.TYPE_22__* %129)
  %131 = call i32 @git_buf_dispose(%struct.TYPE_24__* %13)
  %132 = load i32, i32* %8, align 4
  store i32 %132, i32* %4, align 4
  br label %214

133:                                              ; preds = %123
  %134 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %14, i32 0, i32 1
  %135 = load i64, i64* %134, align 8
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %157

137:                                              ; preds = %133
  %138 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %139 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %138, i32 0, i32 1
  %140 = load i64, i64* %139, align 8
  %141 = call i32 @git__free(i64 %140)
  %142 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %14, i32 0, i32 1
  %143 = load i64, i64* %142, align 8
  %144 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %145 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %144, i32 0, i32 1
  store i64 %143, i64* %145, align 8
  %146 = call i32 @git_buf_detach(%struct.TYPE_24__* %13)
  %147 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %148 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %147, i32 0, i32 0
  store i32 %146, i32* %148, align 8
  %149 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %150 = call i32 @git_submodule_reload(%struct.TYPE_22__* %149, i32 0)
  store i32 %150, i32* %8, align 4
  %151 = icmp slt i32 %150, 0
  br i1 %151, label %152, label %156

152:                                              ; preds = %137
  %153 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %154 = call i32 @git_submodule_free(%struct.TYPE_22__* %153)
  %155 = load i32, i32* %8, align 4
  store i32 %155, i32* %4, align 4
  br label %214

156:                                              ; preds = %137
  br label %157

157:                                              ; preds = %156, %133
  %158 = call i32 @git_buf_dispose(%struct.TYPE_24__* %13)
  br label %159

159:                                              ; preds = %157, %81
  %160 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %161 = call i32 @git_submodule_location(i32* %9, %struct.TYPE_22__* %160)
  store i32 %161, i32* %8, align 4
  %162 = icmp slt i32 %161, 0
  br i1 %162, label %163, label %167

163:                                              ; preds = %159
  %164 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %165 = call i32 @git_submodule_free(%struct.TYPE_22__* %164)
  %166 = load i32, i32* %8, align 4
  store i32 %166, i32* %4, align 4
  br label %214

167:                                              ; preds = %159
  %168 = load i32, i32* %9, align 4
  %169 = icmp eq i32 %168, 0
  br i1 %169, label %174, label %170

170:                                              ; preds = %167
  %171 = load i32, i32* %9, align 4
  %172 = load i32, i32* @GIT_SUBMODULE_STATUS_IN_WD, align 4
  %173 = icmp eq i32 %171, %172
  br i1 %173, label %174, label %204

174:                                              ; preds = %170, %167
  %175 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %176 = call i32 @git_submodule_free(%struct.TYPE_22__* %175)
  %177 = load i32, i32* @GIT_ENOTFOUND, align 4
  store i32 %177, i32* %8, align 4
  %178 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %179 = call i64 @git_repository_workdir(%struct.TYPE_23__* %178)
  %180 = icmp ne i64 %179, 0
  br i1 %180, label %181, label %199

181:                                              ; preds = %174
  %182 = bitcast %struct.TYPE_24__* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %182, i8* align 8 bitcast (%struct.TYPE_24__* @GIT_BUF_INIT to i8*), i64 16, i1 false)
  %183 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %184 = call i64 @git_repository_workdir(%struct.TYPE_23__* %183)
  %185 = load i8*, i8** %7, align 8
  %186 = load i32, i32* @DOT_GIT, align 4
  %187 = call i64 @git_buf_join3(%struct.TYPE_24__* %15, i8 signext 47, i64 %184, i8* %185, i32 %186)
  %188 = icmp slt i64 %187, 0
  br i1 %188, label %189, label %190

189:                                              ; preds = %181
  store i32 -1, i32* %4, align 4
  br label %214

190:                                              ; preds = %181
  %191 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %15, i32 0, i32 0
  %192 = load i8*, i8** %191, align 8
  %193 = call i64 @git_path_exists(i8* %192)
  %194 = icmp ne i64 %193, 0
  br i1 %194, label %195, label %197

195:                                              ; preds = %190
  %196 = load i32, i32* @GIT_EEXISTS, align 4
  store i32 %196, i32* %8, align 4
  br label %197

197:                                              ; preds = %195, %190
  %198 = call i32 @git_buf_dispose(%struct.TYPE_24__* %15)
  br label %199

199:                                              ; preds = %197, %174
  %200 = load i32, i32* %8, align 4
  %201 = load i8*, i8** %7, align 8
  %202 = call i32 @submodule_set_lookup_error(i32 %200, i8* %201)
  %203 = load i32, i32* %8, align 4
  store i32 %203, i32* %4, align 4
  br label %214

204:                                              ; preds = %170
  %205 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %5, align 8
  %206 = icmp ne %struct.TYPE_22__** %205, null
  br i1 %206, label %207, label %210

207:                                              ; preds = %204
  %208 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %209 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %5, align 8
  store %struct.TYPE_22__* %208, %struct.TYPE_22__** %209, align 8
  br label %213

210:                                              ; preds = %204
  %211 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %212 = call i32 @git_submodule_free(%struct.TYPE_22__* %211)
  br label %213

213:                                              ; preds = %210, %207
  store i32 0, i32* %4, align 4
  br label %214

214:                                              ; preds = %213, %199, %189, %163, %152, %128, %74, %66, %60, %53, %29
  %215 = load i32, i32* %4, align 4
  ret i32 %215
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @git_error_set(i32, i8*) #1

declare dso_local %struct.TYPE_22__* @git_strmap_get(i32*, i8*) #1

declare dso_local i32 @GIT_REFCOUNT_INC(%struct.TYPE_22__*) #1

declare dso_local i32 @submodule_alloc(%struct.TYPE_22__**, %struct.TYPE_23__*, i8*) #1

declare dso_local i32 @git_submodule_reload(%struct.TYPE_22__*, i32) #1

declare dso_local i32 @git_submodule_free(%struct.TYPE_22__*) #1

declare dso_local i32 @git_submodule_location(i32*, %struct.TYPE_22__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @git_buf_puts(%struct.TYPE_24__*, i8*) #1

declare dso_local i32* @open_gitmodules(%struct.TYPE_23__*, i32) #1

declare dso_local i32 @git_config_backend_foreach_match(i32*, i8*, i32, %struct.TYPE_25__*) #1

declare dso_local i32 @git_config_backend_free(i32*) #1

declare dso_local i32 @git_buf_dispose(%struct.TYPE_24__*) #1

declare dso_local i32 @git__free(i64) #1

declare dso_local i32 @git_buf_detach(%struct.TYPE_24__*) #1

declare dso_local i64 @git_repository_workdir(%struct.TYPE_23__*) #1

declare dso_local i64 @git_buf_join3(%struct.TYPE_24__*, i8 signext, i64, i8*, i32) #1

declare dso_local i64 @git_path_exists(i8*) #1

declare dso_local i32 @submodule_set_lookup_error(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
