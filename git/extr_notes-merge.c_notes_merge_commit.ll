; ModuleID = '/home/carl/AnghaBench/git/extr_notes-merge.c_notes_merge_commit.c'
source_filename = "/home/carl/AnghaBench/git/extr_notes-merge.c_notes_merge_commit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i8*, i32 }
%struct.notes_merge_options = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.notes_tree = type { i32 }
%struct.commit = type { i32 }
%struct.object_id = type { i32 }
%struct.dirent = type { i32 }
%struct.stat = type { i32 }

@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 8
@.str = private unnamed_addr constant [3 x i8] c"\0A\0A\00", align 1
@NOTES_MERGE_WORKTREE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"Committing notes in notes merge worktree at %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"partial notes commit has empty message\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"could not open %s\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"Skipping non-SHA1 entry '%s%s'\0A\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"Failed to stat '%s'\00", align 1
@HASH_WRITE_OBJECT = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [38 x i8] c"Failed to write blob object from '%s'\00", align 1
@.str.7 = private unnamed_addr constant [47 x i8] c"Failed to add resolved note '%s' to notes tree\00", align 1
@.str.8 = private unnamed_addr constant [39 x i8] c"Added resolved note for object %s: %s\0A\00", align 1
@.str.9 = private unnamed_addr constant [34 x i8] c"Finalized notes merge commit: %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @notes_merge_commit(%struct.notes_merge_options* %0, %struct.notes_tree* %1, %struct.commit* %2, %struct.object_id* %3) #0 {
  %5 = alloca %struct.notes_merge_options*, align 8
  %6 = alloca %struct.notes_tree*, align 8
  %7 = alloca %struct.commit*, align 8
  %8 = alloca %struct.object_id*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.dirent*, align 8
  %11 = alloca %struct.strbuf, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.stat, align 4
  %16 = alloca %struct.object_id, align 4
  %17 = alloca %struct.object_id, align 4
  store %struct.notes_merge_options* %0, %struct.notes_merge_options** %5, align 8
  store %struct.notes_tree* %1, %struct.notes_tree** %6, align 8
  store %struct.commit* %2, %struct.commit** %7, align 8
  store %struct.object_id* %3, %struct.object_id** %8, align 8
  %18 = bitcast %struct.strbuf* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %18, i8* align 8 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 16, i1 false)
  %19 = load %struct.commit*, %struct.commit** %7, align 8
  %20 = call i8* @get_commit_buffer(%struct.commit* %19, i32* null)
  store i8* %20, i8** %12, align 8
  %21 = load i8*, i8** %12, align 8
  %22 = call i8* @strstr(i8* %21, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i8* %22, i8** %13, align 8
  %23 = load i32, i32* @NOTES_MERGE_WORKTREE, align 4
  %24 = call i32 @git_path_buf(%struct.strbuf* %11, i32 %23)
  %25 = load %struct.notes_merge_options*, %struct.notes_merge_options** %5, align 8
  %26 = getelementptr inbounds %struct.notes_merge_options, %struct.notes_merge_options* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp sge i32 %27, 3
  br i1 %28, label %29, label %33

29:                                               ; preds = %4
  %30 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %11, i32 0, i32 0
  %31 = load i8*, i8** %30, align 8
  %32 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i8* %31)
  br label %33

33:                                               ; preds = %29, %4
  %34 = load i8*, i8** %13, align 8
  %35 = icmp ne i8* %34, null
  br i1 %35, label %36, label %42

36:                                               ; preds = %33
  %37 = load i8*, i8** %13, align 8
  %38 = getelementptr inbounds i8, i8* %37, i64 2
  %39 = load i8, i8* %38, align 1
  %40 = sext i8 %39 to i32
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %36, %33
  %43 = call i32 (i8*, ...) @die(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0))
  br label %44

44:                                               ; preds = %42, %36
  %45 = load i8*, i8** %13, align 8
  %46 = getelementptr inbounds i8, i8* %45, i64 2
  store i8* %46, i8** %13, align 8
  %47 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %11, i32 0, i32 0
  %48 = load i8*, i8** %47, align 8
  %49 = call i32* @opendir(i8* %48)
  store i32* %49, i32** %9, align 8
  %50 = load i32*, i32** %9, align 8
  %51 = icmp ne i32* %50, null
  br i1 %51, label %56, label %52

52:                                               ; preds = %44
  %53 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %11, i32 0, i32 0
  %54 = load i8*, i8** %53, align 8
  %55 = call i32 @die_errno(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i8* %54)
  br label %56

56:                                               ; preds = %52, %44
  %57 = call i32 @strbuf_addch(%struct.strbuf* %11, i8 signext 47)
  %58 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %11, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  store i32 %59, i32* %14, align 4
  br label %60

60:                                               ; preds = %135, %89, %70, %56
  %61 = load i32*, i32** %9, align 8
  %62 = call %struct.dirent* @readdir(i32* %61)
  store %struct.dirent* %62, %struct.dirent** %10, align 8
  %63 = icmp ne %struct.dirent* %62, null
  br i1 %63, label %64, label %138

64:                                               ; preds = %60
  %65 = load %struct.dirent*, %struct.dirent** %10, align 8
  %66 = getelementptr inbounds %struct.dirent, %struct.dirent* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i64 @is_dot_or_dotdot(i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %64
  br label %60

71:                                               ; preds = %64
  %72 = load %struct.dirent*, %struct.dirent** %10, align 8
  %73 = getelementptr inbounds %struct.dirent, %struct.dirent* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i64 @get_oid_hex(i32 %74, %struct.object_id* %16)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %90

77:                                               ; preds = %71
  %78 = load %struct.notes_merge_options*, %struct.notes_merge_options** %5, align 8
  %79 = getelementptr inbounds %struct.notes_merge_options, %struct.notes_merge_options* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = icmp sge i32 %80, 3
  br i1 %81, label %82, label %89

82:                                               ; preds = %77
  %83 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %11, i32 0, i32 0
  %84 = load i8*, i8** %83, align 8
  %85 = load %struct.dirent*, %struct.dirent** %10, align 8
  %86 = getelementptr inbounds %struct.dirent, %struct.dirent* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0), i8* %84, i32 %87)
  br label %89

89:                                               ; preds = %82, %77
  br label %60

90:                                               ; preds = %71
  %91 = load %struct.dirent*, %struct.dirent** %10, align 8
  %92 = getelementptr inbounds %struct.dirent, %struct.dirent* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @strbuf_addstr(%struct.strbuf* %11, i32 %93)
  %95 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %11, i32 0, i32 0
  %96 = load i8*, i8** %95, align 8
  %97 = call i64 @stat(i8* %96, %struct.stat* %15)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %103

99:                                               ; preds = %90
  %100 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %11, i32 0, i32 0
  %101 = load i8*, i8** %100, align 8
  %102 = call i32 @die_errno(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0), i8* %101)
  br label %103

103:                                              ; preds = %99, %90
  %104 = load %struct.notes_merge_options*, %struct.notes_merge_options** %5, align 8
  %105 = getelementptr inbounds %struct.notes_merge_options, %struct.notes_merge_options* %104, i32 0, i32 1
  %106 = load %struct.TYPE_2__*, %struct.TYPE_2__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %11, i32 0, i32 0
  %110 = load i8*, i8** %109, align 8
  %111 = load i32, i32* @HASH_WRITE_OBJECT, align 4
  %112 = call i64 @index_path(i32 %108, %struct.object_id* %17, i8* %110, %struct.stat* %15, i32 %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %118

114:                                              ; preds = %103
  %115 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %11, i32 0, i32 0
  %116 = load i8*, i8** %115, align 8
  %117 = call i32 (i8*, ...) @die(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.6, i64 0, i64 0), i8* %116)
  br label %118

118:                                              ; preds = %114, %103
  %119 = load %struct.notes_tree*, %struct.notes_tree** %6, align 8
  %120 = call i64 @add_note(%struct.notes_tree* %119, %struct.object_id* %16, %struct.object_id* %17, i32* null)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %126

122:                                              ; preds = %118
  %123 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %11, i32 0, i32 0
  %124 = load i8*, i8** %123, align 8
  %125 = call i32 (i8*, ...) @die(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.7, i64 0, i64 0), i8* %124)
  br label %126

126:                                              ; preds = %122, %118
  %127 = load %struct.notes_merge_options*, %struct.notes_merge_options** %5, align 8
  %128 = getelementptr inbounds %struct.notes_merge_options, %struct.notes_merge_options* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = icmp sge i32 %129, 4
  br i1 %130, label %131, label %135

131:                                              ; preds = %126
  %132 = call i8* @oid_to_hex(%struct.object_id* %16)
  %133 = call i8* @oid_to_hex(%struct.object_id* %17)
  %134 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.8, i64 0, i64 0), i8* %132, i8* %133)
  br label %135

135:                                              ; preds = %131, %126
  %136 = load i32, i32* %14, align 4
  %137 = call i32 @strbuf_setlen(%struct.strbuf* %11, i32 %136)
  br label %60

138:                                              ; preds = %60
  %139 = load %struct.notes_merge_options*, %struct.notes_merge_options** %5, align 8
  %140 = getelementptr inbounds %struct.notes_merge_options, %struct.notes_merge_options* %139, i32 0, i32 1
  %141 = load %struct.TYPE_2__*, %struct.TYPE_2__** %140, align 8
  %142 = load %struct.notes_tree*, %struct.notes_tree** %6, align 8
  %143 = load %struct.commit*, %struct.commit** %7, align 8
  %144 = getelementptr inbounds %struct.commit, %struct.commit* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = load i8*, i8** %13, align 8
  %147 = load i8*, i8** %13, align 8
  %148 = call i32 @strlen(i8* %147)
  %149 = load %struct.object_id*, %struct.object_id** %8, align 8
  %150 = call i32 @create_notes_commit(%struct.TYPE_2__* %141, %struct.notes_tree* %142, i32 %145, i8* %146, i32 %148, %struct.object_id* %149)
  %151 = load %struct.commit*, %struct.commit** %7, align 8
  %152 = load i8*, i8** %12, align 8
  %153 = call i32 @unuse_commit_buffer(%struct.commit* %151, i8* %152)
  %154 = load %struct.notes_merge_options*, %struct.notes_merge_options** %5, align 8
  %155 = getelementptr inbounds %struct.notes_merge_options, %struct.notes_merge_options* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = icmp sge i32 %156, 4
  br i1 %157, label %158, label %162

158:                                              ; preds = %138
  %159 = load %struct.object_id*, %struct.object_id** %8, align 8
  %160 = call i8* @oid_to_hex(%struct.object_id* %159)
  %161 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.9, i64 0, i64 0), i8* %160)
  br label %162

162:                                              ; preds = %158, %138
  %163 = call i32 @strbuf_release(%struct.strbuf* %11)
  %164 = load i32*, i32** %9, align 8
  %165 = call i32 @closedir(i32* %164)
  ret i32 0
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i8* @get_commit_buffer(%struct.commit*, i32*) #2

declare dso_local i8* @strstr(i8*, i8*) #2

declare dso_local i32 @git_path_buf(%struct.strbuf*, i32) #2

declare dso_local i32 @printf(i8*, i8*, ...) #2

declare dso_local i32 @die(i8*, ...) #2

declare dso_local i32* @opendir(i8*) #2

declare dso_local i32 @die_errno(i8*, i8*) #2

declare dso_local i32 @strbuf_addch(%struct.strbuf*, i8 signext) #2

declare dso_local %struct.dirent* @readdir(i32*) #2

declare dso_local i64 @is_dot_or_dotdot(i32) #2

declare dso_local i64 @get_oid_hex(i32, %struct.object_id*) #2

declare dso_local i32 @strbuf_addstr(%struct.strbuf*, i32) #2

declare dso_local i64 @stat(i8*, %struct.stat*) #2

declare dso_local i64 @index_path(i32, %struct.object_id*, i8*, %struct.stat*, i32) #2

declare dso_local i64 @add_note(%struct.notes_tree*, %struct.object_id*, %struct.object_id*, i32*) #2

declare dso_local i8* @oid_to_hex(%struct.object_id*) #2

declare dso_local i32 @strbuf_setlen(%struct.strbuf*, i32) #2

declare dso_local i32 @create_notes_commit(%struct.TYPE_2__*, %struct.notes_tree*, i32, i8*, i32, %struct.object_id*) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @unuse_commit_buffer(%struct.commit*, i8*) #2

declare dso_local i32 @strbuf_release(%struct.strbuf*) #2

declare dso_local i32 @closedir(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
