; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_diff_generate.c_git_diff__oid_for_entry.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_diff_generate.c_git_diff__oid_for_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i32 }
%struct.TYPE_20__ = type { i64 }
%struct.TYPE_18__ = type { i32, i64, i64, i32 }
%struct.TYPE_19__ = type { i32, i32, %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i32, %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i32, i32 }
%struct.stat = type { i32 }

@GIT_BUF_INIT = common dso_local global %struct.TYPE_21__ zeroinitializer, align 4
@GIT_DIFF_TYPE_GENERATED = common dso_local global i64 0, align 8
@errno = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"stat\00", align 1
@GIT_DIFFCAPS_TRUST_MODE_BITS = common dso_local global i32 0, align 4
@GIT_ERROR_NOMEMORY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"file size overflow (for 32-bits) on '%s'\00", align 1
@GIT_FILTER_TO_ODB = common dso_local global i32 0, align 4
@GIT_FILTER_ALLOW_UNSAFE = common dso_local global i32 0, align 4
@GIT_OBJECT_BLOB = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @git_diff__oid_for_entry(i32* %0, %struct.TYPE_20__* %1, %struct.TYPE_18__* %2, i64 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_20__*, align 8
  %9 = alloca %struct.TYPE_18__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_19__*, align 8
  %13 = alloca %struct.TYPE_21__, align 4
  %14 = alloca %struct.TYPE_18__, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.stat, align 4
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32*, align 8
  %22 = alloca %struct.TYPE_18__, align 8
  store i32* %0, i32** %7, align 8
  store %struct.TYPE_20__* %1, %struct.TYPE_20__** %8, align 8
  store %struct.TYPE_18__* %2, %struct.TYPE_18__** %9, align 8
  store i64 %3, i64* %10, align 8
  store i32* %4, i32** %11, align 8
  %23 = bitcast %struct.TYPE_21__* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %23, i8* align 4 bitcast (%struct.TYPE_21__* @GIT_BUF_INIT to i8*), i64 4, i1 false)
  %24 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %25 = bitcast %struct.TYPE_18__* %14 to i8*
  %26 = bitcast %struct.TYPE_18__* %24 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %25, i8* align 8 %26, i64 32, i1 false)
  store i32* null, i32** %15, align 8
  store i32 0, i32* %16, align 4
  %27 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %28 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @GIT_DIFF_TYPE_GENERATED, align 8
  %31 = icmp eq i64 %29, %30
  %32 = zext i1 %31 to i32
  %33 = call i32 @assert(i32 %32)
  %34 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %35 = bitcast %struct.TYPE_20__* %34 to %struct.TYPE_19__*
  store %struct.TYPE_19__* %35, %struct.TYPE_19__** %12, align 8
  %36 = load i32*, i32** %7, align 8
  %37 = call i32 @memset(i32* %36, i32 0, i32 4)
  %38 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %39 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @git_repository_workdir(i32 %41)
  %43 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %14, i32 0, i32 3
  %44 = load i32, i32* %43, align 8
  %45 = call i64 @git_buf_joinpath(%struct.TYPE_21__* %13, i32 %42, i32 %44)
  %46 = icmp slt i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %5
  store i32 -1, i32* %6, align 4
  br label %205

48:                                               ; preds = %5
  %49 = load i64, i64* %10, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %78, label %51

51:                                               ; preds = %48
  %52 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %53 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %52, i32 0, i32 2
  %54 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %55, align 4
  %58 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %13, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i64 @p_stat(i32 %59, %struct.stat* %17)
  %61 = icmp slt i64 %60, 0
  br i1 %61, label %62, label %69

62:                                               ; preds = %51
  %63 = load i32, i32* @errno, align 4
  %64 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %14, i32 0, i32 3
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @git_path_set_error(i32 %63, i32 %65, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i32 %66, i32* %16, align 4
  %67 = call i32 @git_buf_dispose(%struct.TYPE_21__* %13)
  %68 = load i32, i32* %16, align 4
  store i32 %68, i32* %6, align 4
  br label %205

69:                                               ; preds = %51
  %70 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %71 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @GIT_DIFFCAPS_TRUST_MODE_BITS, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  %76 = zext i1 %75 to i32
  %77 = call i32 @git_index_entry__init_from_stat(%struct.TYPE_18__* %14, %struct.stat* %17, i32 %76)
  br label %78

78:                                               ; preds = %69, %48
  %79 = load i64, i64* %10, align 8
  %80 = call i64 @S_ISGITLINK(i64 %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %106

82:                                               ; preds = %78
  %83 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %84 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %83, i32 0, i32 2
  %85 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %14, i32 0, i32 3
  %88 = load i32, i32* %87, align 8
  %89 = call i32 @git_submodule_lookup(i32** %18, i32 %86, i32 %88)
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %103, label %91

91:                                               ; preds = %82
  %92 = load i32*, i32** %18, align 8
  %93 = call i32* @git_submodule_wd_id(i32* %92)
  store i32* %93, i32** %19, align 8
  %94 = load i32*, i32** %19, align 8
  %95 = icmp ne i32* %94, null
  br i1 %95, label %96, label %100

96:                                               ; preds = %91
  %97 = load i32*, i32** %7, align 8
  %98 = load i32*, i32** %19, align 8
  %99 = call i32 @git_oid_cpy(i32* %97, i32* %98)
  br label %100

100:                                              ; preds = %96, %91
  %101 = load i32*, i32** %18, align 8
  %102 = call i32 @git_submodule_free(i32* %101)
  br label %105

103:                                              ; preds = %82
  %104 = call i32 (...) @git_error_clear()
  br label %105

105:                                              ; preds = %103, %100
  br label %172

106:                                              ; preds = %78
  %107 = load i64, i64* %10, align 8
  %108 = call i64 @S_ISLNK(i64 %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %121

110:                                              ; preds = %106
  %111 = load i32*, i32** %7, align 8
  %112 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %13, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @git_odb__hashlink(i32* %111, i32 %113)
  store i32 %114, i32* %16, align 4
  %115 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %116 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %115, i32 0, i32 2
  %117 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %116, i32 0, i32 1
  %118 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %118, align 4
  br label %171

121:                                              ; preds = %106
  %122 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %14, i32 0, i32 2
  %123 = load i64, i64* %122, align 8
  %124 = call i32 @git__is_sizet(i64 %123)
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %131, label %126

126:                                              ; preds = %121
  %127 = load i32, i32* @GIT_ERROR_NOMEMORY, align 4
  %128 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %14, i32 0, i32 3
  %129 = load i32, i32* %128, align 8
  %130 = call i32 @git_error_set(i32 %127, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %129)
  store i32 -1, i32* %16, align 4
  br label %170

131:                                              ; preds = %121
  %132 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %133 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %132, i32 0, i32 2
  %134 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %14, i32 0, i32 3
  %137 = load i32, i32* %136, align 8
  %138 = load i32, i32* @GIT_FILTER_TO_ODB, align 4
  %139 = load i32, i32* @GIT_FILTER_ALLOW_UNSAFE, align 4
  %140 = call i32 @git_filter_list_load(i32** %15, i32 %135, i32* null, i32 %137, i32 %138, i32 %139)
  store i32 %140, i32* %16, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %169, label %142

142:                                              ; preds = %131
  %143 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %13, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = call i32 @git_futils_open_ro(i32 %144)
  store i32 %145, i32* %20, align 4
  %146 = load i32, i32* %20, align 4
  %147 = icmp slt i32 %146, 0
  br i1 %147, label %148, label %150

148:                                              ; preds = %142
  %149 = load i32, i32* %20, align 4
  store i32 %149, i32* %16, align 4
  br label %166

150:                                              ; preds = %142
  %151 = load i32*, i32** %7, align 8
  %152 = load i32, i32* %20, align 4
  %153 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %14, i32 0, i32 2
  %154 = load i64, i64* %153, align 8
  %155 = load i32, i32* @GIT_OBJECT_BLOB, align 4
  %156 = load i32*, i32** %15, align 8
  %157 = call i32 @git_odb__hashfd_filtered(i32* %151, i32 %152, i64 %154, i32 %155, i32* %156)
  store i32 %157, i32* %16, align 4
  %158 = load i32, i32* %20, align 4
  %159 = call i32 @p_close(i32 %158)
  %160 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %161 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %160, i32 0, i32 2
  %162 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %161, i32 0, i32 1
  %163 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 4
  %165 = add nsw i32 %164, 1
  store i32 %165, i32* %163, align 4
  br label %166

166:                                              ; preds = %150, %148
  %167 = load i32*, i32** %15, align 8
  %168 = call i32 @git_filter_list_free(i32* %167)
  br label %169

169:                                              ; preds = %166, %131
  br label %170

170:                                              ; preds = %169, %126
  br label %171

171:                                              ; preds = %170, %110
  br label %172

172:                                              ; preds = %171, %105
  %173 = load i32, i32* %16, align 4
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %202, label %175

175:                                              ; preds = %172
  %176 = load i32*, i32** %11, align 8
  %177 = icmp ne i32* %176, null
  br i1 %177, label %178, label %202

178:                                              ; preds = %175
  %179 = load i32*, i32** %7, align 8
  %180 = load i32*, i32** %11, align 8
  %181 = call i64 @git_oid_equal(i32* %179, i32* %180)
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %183, label %202

183:                                              ; preds = %178
  %184 = call i32 @memcpy(%struct.TYPE_18__* %22, %struct.TYPE_18__* %14, i32 32)
  %185 = load i64, i64* %10, align 8
  %186 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %22, i32 0, i32 1
  store i64 %185, i64* %186, align 8
  %187 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %22, i32 0, i32 0
  %188 = load i32*, i32** %7, align 8
  %189 = call i32 @git_oid_cpy(i32* %187, i32* %188)
  %190 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %191 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %190, i32 0, i32 2
  %192 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 4
  %194 = call i32 @git_repository_index__weakptr(i32** %21, i32 %193)
  store i32 %194, i32* %16, align 4
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %201, label %196

196:                                              ; preds = %183
  %197 = load i32*, i32** %21, align 8
  %198 = call i32 @git_index_add(i32* %197, %struct.TYPE_18__* %22)
  store i32 %198, i32* %16, align 4
  %199 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %200 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %199, i32 0, i32 1
  store i32 1, i32* %200, align 4
  br label %201

201:                                              ; preds = %196, %183
  br label %202

202:                                              ; preds = %201, %178, %175, %172
  %203 = call i32 @git_buf_dispose(%struct.TYPE_21__* %13)
  %204 = load i32, i32* %16, align 4
  store i32 %204, i32* %6, align 4
  br label %205

205:                                              ; preds = %202, %62, %47
  %206 = load i32, i32* %6, align 4
  ret i32 %206
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @assert(i32) #2

declare dso_local i32 @memset(i32*, i32, i32) #2

declare dso_local i64 @git_buf_joinpath(%struct.TYPE_21__*, i32, i32) #2

declare dso_local i32 @git_repository_workdir(i32) #2

declare dso_local i64 @p_stat(i32, %struct.stat*) #2

declare dso_local i32 @git_path_set_error(i32, i32, i8*) #2

declare dso_local i32 @git_buf_dispose(%struct.TYPE_21__*) #2

declare dso_local i32 @git_index_entry__init_from_stat(%struct.TYPE_18__*, %struct.stat*, i32) #2

declare dso_local i64 @S_ISGITLINK(i64) #2

declare dso_local i32 @git_submodule_lookup(i32**, i32, i32) #2

declare dso_local i32* @git_submodule_wd_id(i32*) #2

declare dso_local i32 @git_oid_cpy(i32*, i32*) #2

declare dso_local i32 @git_submodule_free(i32*) #2

declare dso_local i32 @git_error_clear(...) #2

declare dso_local i64 @S_ISLNK(i64) #2

declare dso_local i32 @git_odb__hashlink(i32*, i32) #2

declare dso_local i32 @git__is_sizet(i64) #2

declare dso_local i32 @git_error_set(i32, i8*, i32) #2

declare dso_local i32 @git_filter_list_load(i32**, i32, i32*, i32, i32, i32) #2

declare dso_local i32 @git_futils_open_ro(i32) #2

declare dso_local i32 @git_odb__hashfd_filtered(i32*, i32, i64, i32, i32*) #2

declare dso_local i32 @p_close(i32) #2

declare dso_local i32 @git_filter_list_free(i32*) #2

declare dso_local i64 @git_oid_equal(i32*, i32*) #2

declare dso_local i32 @memcpy(%struct.TYPE_18__*, %struct.TYPE_18__*, i32) #2

declare dso_local i32 @git_repository_index__weakptr(i32**, i32) #2

declare dso_local i32 @git_index_add(i32*, %struct.TYPE_18__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
