; ModuleID = '/home/carl/AnghaBench/git/extr_submodule.c_show_submodule_inline_diff.c'
source_filename = "/home/carl/AnghaBench/git/extr_submodule.c_show_submodule_inline_diff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.object_id* }
%struct.object_id = type { i32 }
%struct.child_process = type { i32, i8*, i32, i32, i32, i32 }
%struct.strbuf = type { i32, i32 }
%struct.diff_options = type { i32, i32, %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i64 }
%struct.commit = type { i32 }
%struct.commit_list = type { i32 }
%struct.repository = type { i32 }

@the_hash_algo = common dso_local global %struct.TYPE_4__* null, align 8
@CHILD_PROCESS_INIT = common dso_local global %struct.child_process zeroinitializer, align 8
@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 4
@.str = private unnamed_addr constant [5 x i8] c"diff\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"--submodule=diff\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"--color=%s\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"always\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"never\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"--src-prefix=%s%s/\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"--dst-prefix=%s%s/\00", align 1
@DIRTY_SUBMODULE_MODIFIED = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [15 x i8] c"(diff failed)\0A\00", align 1
@EOF = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @show_submodule_inline_diff(%struct.diff_options* %0, i8* %1, %struct.object_id* %2, %struct.object_id* %3, i32 %4) #0 {
  %6 = alloca %struct.diff_options*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.object_id*, align 8
  %9 = alloca %struct.object_id*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.object_id*, align 8
  %12 = alloca %struct.object_id*, align 8
  %13 = alloca %struct.commit*, align 8
  %14 = alloca %struct.commit*, align 8
  %15 = alloca %struct.commit_list*, align 8
  %16 = alloca %struct.child_process, align 8
  %17 = alloca %struct.strbuf, align 4
  %18 = alloca %struct.repository*, align 8
  store %struct.diff_options* %0, %struct.diff_options** %6, align 8
  store i8* %1, i8** %7, align 8
  store %struct.object_id* %2, %struct.object_id** %8, align 8
  store %struct.object_id* %3, %struct.object_id** %9, align 8
  store i32 %4, i32* %10, align 4
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** @the_hash_algo, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load %struct.object_id*, %struct.object_id** %20, align 8
  store %struct.object_id* %21, %struct.object_id** %11, align 8
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** @the_hash_algo, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load %struct.object_id*, %struct.object_id** %23, align 8
  store %struct.object_id* %24, %struct.object_id** %12, align 8
  store %struct.commit* null, %struct.commit** %13, align 8
  store %struct.commit* null, %struct.commit** %14, align 8
  store %struct.commit_list* null, %struct.commit_list** %15, align 8
  %25 = bitcast %struct.child_process* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %25, i8* align 8 bitcast (%struct.child_process* @CHILD_PROCESS_INIT to i8*), i64 32, i1 false)
  %26 = bitcast %struct.strbuf* %17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %26, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 8, i1 false)
  %27 = load i8*, i8** %7, align 8
  %28 = call %struct.repository* @open_submodule(i8* %27)
  store %struct.repository* %28, %struct.repository** %18, align 8
  %29 = load %struct.diff_options*, %struct.diff_options** %6, align 8
  %30 = load i8*, i8** %7, align 8
  %31 = load %struct.object_id*, %struct.object_id** %8, align 8
  %32 = load %struct.object_id*, %struct.object_id** %9, align 8
  %33 = load i32, i32* %10, align 4
  %34 = load %struct.repository*, %struct.repository** %18, align 8
  %35 = call i32 @show_submodule_header(%struct.diff_options* %29, i8* %30, %struct.object_id* %31, %struct.object_id* %32, i32 %33, %struct.repository* %34, %struct.commit** %13, %struct.commit** %14, %struct.commit_list** %15)
  %36 = load %struct.commit*, %struct.commit** %13, align 8
  %37 = icmp ne %struct.commit* %36, null
  br i1 %37, label %42, label %38

38:                                               ; preds = %5
  %39 = load %struct.object_id*, %struct.object_id** %8, align 8
  %40 = call i64 @is_null_oid(%struct.object_id* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %38, %5
  %43 = load %struct.commit*, %struct.commit** %14, align 8
  %44 = icmp ne %struct.commit* %43, null
  br i1 %44, label %50, label %45

45:                                               ; preds = %42
  %46 = load %struct.object_id*, %struct.object_id** %9, align 8
  %47 = call i64 @is_null_oid(%struct.object_id* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %45, %38
  br label %159

50:                                               ; preds = %45, %42
  %51 = load %struct.commit*, %struct.commit** %13, align 8
  %52 = icmp ne %struct.commit* %51, null
  br i1 %52, label %53, label %55

53:                                               ; preds = %50
  %54 = load %struct.object_id*, %struct.object_id** %8, align 8
  store %struct.object_id* %54, %struct.object_id** %11, align 8
  br label %55

55:                                               ; preds = %53, %50
  %56 = load %struct.commit*, %struct.commit** %14, align 8
  %57 = icmp ne %struct.commit* %56, null
  br i1 %57, label %58, label %60

58:                                               ; preds = %55
  %59 = load %struct.object_id*, %struct.object_id** %9, align 8
  store %struct.object_id* %59, %struct.object_id** %12, align 8
  br label %60

60:                                               ; preds = %58, %55
  %61 = getelementptr inbounds %struct.child_process, %struct.child_process* %16, i32 0, i32 0
  store i32 1, i32* %61, align 8
  %62 = load i8*, i8** %7, align 8
  %63 = getelementptr inbounds %struct.child_process, %struct.child_process* %16, i32 0, i32 1
  store i8* %62, i8** %63, align 8
  %64 = getelementptr inbounds %struct.child_process, %struct.child_process* %16, i32 0, i32 2
  store i32 -1, i32* %64, align 8
  %65 = getelementptr inbounds %struct.child_process, %struct.child_process* %16, i32 0, i32 3
  store i32 1, i32* %65, align 4
  %66 = getelementptr inbounds %struct.child_process, %struct.child_process* %16, i32 0, i32 5
  %67 = call i32 @argv_array_pushl(i32* %66, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32* null)
  %68 = getelementptr inbounds %struct.child_process, %struct.child_process* %16, i32 0, i32 5
  %69 = load %struct.diff_options*, %struct.diff_options** %6, align 8
  %70 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 8
  %72 = call i64 @want_color(i32 %71)
  %73 = icmp ne i64 %72, 0
  %74 = zext i1 %73 to i64
  %75 = select i1 %73, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0)
  %76 = call i32 (i32*, i8*, i8*, ...) @argv_array_pushf(i32* %68, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8* %75)
  %77 = load %struct.diff_options*, %struct.diff_options** %6, align 8
  %78 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %77, i32 0, i32 2
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %99

82:                                               ; preds = %60
  %83 = getelementptr inbounds %struct.child_process, %struct.child_process* %16, i32 0, i32 5
  %84 = load %struct.diff_options*, %struct.diff_options** %6, align 8
  %85 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = sext i32 %86 to i64
  %88 = inttoptr i64 %87 to i8*
  %89 = load i8*, i8** %7, align 8
  %90 = call i32 (i32*, i8*, i8*, ...) @argv_array_pushf(i32* %83, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0), i8* %88, i8* %89)
  %91 = getelementptr inbounds %struct.child_process, %struct.child_process* %16, i32 0, i32 5
  %92 = load %struct.diff_options*, %struct.diff_options** %6, align 8
  %93 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = sext i32 %94 to i64
  %96 = inttoptr i64 %95 to i8*
  %97 = load i8*, i8** %7, align 8
  %98 = call i32 (i32*, i8*, i8*, ...) @argv_array_pushf(i32* %91, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0), i8* %96, i8* %97)
  br label %116

99:                                               ; preds = %60
  %100 = getelementptr inbounds %struct.child_process, %struct.child_process* %16, i32 0, i32 5
  %101 = load %struct.diff_options*, %struct.diff_options** %6, align 8
  %102 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = sext i32 %103 to i64
  %105 = inttoptr i64 %104 to i8*
  %106 = load i8*, i8** %7, align 8
  %107 = call i32 (i32*, i8*, i8*, ...) @argv_array_pushf(i32* %100, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0), i8* %105, i8* %106)
  %108 = getelementptr inbounds %struct.child_process, %struct.child_process* %16, i32 0, i32 5
  %109 = load %struct.diff_options*, %struct.diff_options** %6, align 8
  %110 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = sext i32 %111 to i64
  %113 = inttoptr i64 %112 to i8*
  %114 = load i8*, i8** %7, align 8
  %115 = call i32 (i32*, i8*, i8*, ...) @argv_array_pushf(i32* %108, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0), i8* %113, i8* %114)
  br label %116

116:                                              ; preds = %99, %82
  %117 = getelementptr inbounds %struct.child_process, %struct.child_process* %16, i32 0, i32 5
  %118 = load %struct.object_id*, %struct.object_id** %11, align 8
  %119 = call i32 @oid_to_hex(%struct.object_id* %118)
  %120 = call i32 @argv_array_push(i32* %117, i32 %119)
  %121 = load i32, i32* %10, align 4
  %122 = load i32, i32* @DIRTY_SUBMODULE_MODIFIED, align 4
  %123 = and i32 %121, %122
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %130, label %125

125:                                              ; preds = %116
  %126 = getelementptr inbounds %struct.child_process, %struct.child_process* %16, i32 0, i32 5
  %127 = load %struct.object_id*, %struct.object_id** %12, align 8
  %128 = call i32 @oid_to_hex(%struct.object_id* %127)
  %129 = call i32 @argv_array_push(i32* %126, i32 %128)
  br label %130

130:                                              ; preds = %125, %116
  %131 = getelementptr inbounds %struct.child_process, %struct.child_process* %16, i32 0, i32 4
  %132 = call i32 @prepare_submodule_repo_env(i32* %131)
  %133 = call i64 @start_command(%struct.child_process* %16)
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %138

135:                                              ; preds = %130
  %136 = load %struct.diff_options*, %struct.diff_options** %6, align 8
  %137 = call i32 @diff_emit_submodule_error(%struct.diff_options* %136, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0))
  br label %138

138:                                              ; preds = %135, %130
  br label %139

139:                                              ; preds = %145, %138
  %140 = getelementptr inbounds %struct.child_process, %struct.child_process* %16, i32 0, i32 2
  %141 = load i32, i32* %140, align 8
  %142 = call i64 @strbuf_getwholeline_fd(%struct.strbuf* %17, i32 %141, i8 signext 10)
  %143 = load i64, i64* @EOF, align 8
  %144 = icmp ne i64 %142, %143
  br i1 %144, label %145, label %152

145:                                              ; preds = %139
  %146 = load %struct.diff_options*, %struct.diff_options** %6, align 8
  %147 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %17, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  %149 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %17, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = call i32 @diff_emit_submodule_pipethrough(%struct.diff_options* %146, i32 %148, i32 %150)
  br label %139

152:                                              ; preds = %139
  %153 = call i64 @finish_command(%struct.child_process* %16)
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %158

155:                                              ; preds = %152
  %156 = load %struct.diff_options*, %struct.diff_options** %6, align 8
  %157 = call i32 @diff_emit_submodule_error(%struct.diff_options* %156, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0))
  br label %158

158:                                              ; preds = %155, %152
  br label %159

159:                                              ; preds = %158, %49
  %160 = call i32 @strbuf_release(%struct.strbuf* %17)
  %161 = load %struct.commit_list*, %struct.commit_list** %15, align 8
  %162 = icmp ne %struct.commit_list* %161, null
  br i1 %162, label %163, label %166

163:                                              ; preds = %159
  %164 = load %struct.commit_list*, %struct.commit_list** %15, align 8
  %165 = call i32 @free_commit_list(%struct.commit_list* %164)
  br label %166

166:                                              ; preds = %163, %159
  %167 = load %struct.commit*, %struct.commit** %13, align 8
  %168 = icmp ne %struct.commit* %167, null
  br i1 %168, label %169, label %172

169:                                              ; preds = %166
  %170 = load %struct.commit*, %struct.commit** %13, align 8
  %171 = call i32 @clear_commit_marks(%struct.commit* %170, i32 -1)
  br label %172

172:                                              ; preds = %169, %166
  %173 = load %struct.commit*, %struct.commit** %14, align 8
  %174 = icmp ne %struct.commit* %173, null
  br i1 %174, label %175, label %178

175:                                              ; preds = %172
  %176 = load %struct.commit*, %struct.commit** %14, align 8
  %177 = call i32 @clear_commit_marks(%struct.commit* %176, i32 -1)
  br label %178

178:                                              ; preds = %175, %172
  %179 = load %struct.repository*, %struct.repository** %18, align 8
  %180 = icmp ne %struct.repository* %179, null
  br i1 %180, label %181, label %186

181:                                              ; preds = %178
  %182 = load %struct.repository*, %struct.repository** %18, align 8
  %183 = call i32 @repo_clear(%struct.repository* %182)
  %184 = load %struct.repository*, %struct.repository** %18, align 8
  %185 = call i32 @free(%struct.repository* %184)
  br label %186

186:                                              ; preds = %181, %178
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local %struct.repository* @open_submodule(i8*) #2

declare dso_local i32 @show_submodule_header(%struct.diff_options*, i8*, %struct.object_id*, %struct.object_id*, i32, %struct.repository*, %struct.commit**, %struct.commit**, %struct.commit_list**) #2

declare dso_local i64 @is_null_oid(%struct.object_id*) #2

declare dso_local i32 @argv_array_pushl(i32*, i8*, i8*, i32*) #2

declare dso_local i32 @argv_array_pushf(i32*, i8*, i8*, ...) #2

declare dso_local i64 @want_color(i32) #2

declare dso_local i32 @argv_array_push(i32*, i32) #2

declare dso_local i32 @oid_to_hex(%struct.object_id*) #2

declare dso_local i32 @prepare_submodule_repo_env(i32*) #2

declare dso_local i64 @start_command(%struct.child_process*) #2

declare dso_local i32 @diff_emit_submodule_error(%struct.diff_options*, i8*) #2

declare dso_local i64 @strbuf_getwholeline_fd(%struct.strbuf*, i32, i8 signext) #2

declare dso_local i32 @diff_emit_submodule_pipethrough(%struct.diff_options*, i32, i32) #2

declare dso_local i64 @finish_command(%struct.child_process*) #2

declare dso_local i32 @strbuf_release(%struct.strbuf*) #2

declare dso_local i32 @free_commit_list(%struct.commit_list*) #2

declare dso_local i32 @clear_commit_marks(%struct.commit*, i32) #2

declare dso_local i32 @repo_clear(%struct.repository*) #2

declare dso_local i32 @free(%struct.repository*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
