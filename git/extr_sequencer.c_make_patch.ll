; ModuleID = '/home/carl/AnghaBench/git/extr_sequencer.c_make_patch.c'
source_filename = "/home/carl/AnghaBench/git/extr_sequencer.c_make_patch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32 }
%struct.repository = type { i32 }
%struct.commit = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.replay_opts = type { i32 }
%struct.rev_info = type { i32, i32, i32, %struct.TYPE_4__, i64 }
%struct.TYPE_4__ = type { i32, i32, i32 }

@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 4
@.str = private unnamed_addr constant [7 x i8] c"rebase\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"REBASE_HEAD\00", align 1
@REF_NO_DEREF = common dso_local global i32 0, align 4
@UPDATE_REFS_MSG_ON_ERR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"could not update %s\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"%s/patch\00", align 1
@DIFF_FORMAT_PATCH = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@GIT_COLOR_NEVER = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [20 x i8] c"could not open '%s'\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"%s/message\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.repository*, %struct.commit*, %struct.replay_opts*)* @make_patch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @make_patch(%struct.repository* %0, %struct.commit* %1, %struct.replay_opts* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.repository*, align 8
  %6 = alloca %struct.commit*, align 8
  %7 = alloca %struct.replay_opts*, align 8
  %8 = alloca %struct.strbuf, align 4
  %9 = alloca %struct.rev_info, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  store %struct.repository* %0, %struct.repository** %5, align 8
  store %struct.commit* %1, %struct.commit** %6, align 8
  store %struct.replay_opts* %2, %struct.replay_opts** %7, align 8
  %14 = bitcast %struct.strbuf* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %14, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 4, i1 false)
  store i32 0, i32* %12, align 4
  %15 = load %struct.commit*, %struct.commit** %6, align 8
  %16 = call i8* @short_commit_name(%struct.commit* %15)
  store i8* %16, i8** %11, align 8
  %17 = load i8*, i8** %11, align 8
  %18 = load i8*, i8** %11, align 8
  %19 = call i32 @strlen(i8* %18)
  %20 = call i32 (...) @rebase_path_stopped_sha()
  %21 = call i32 @write_message(i8* %17, i32 %19, i32 %20, i32 1)
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %107

24:                                               ; preds = %3
  %25 = load %struct.commit*, %struct.commit** %6, align 8
  %26 = getelementptr inbounds %struct.commit, %struct.commit* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32, i32* @REF_NO_DEREF, align 4
  %29 = load i32, i32* @UPDATE_REFS_MSG_ON_ERR, align 4
  %30 = call i64 @update_ref(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32* %27, i32* null, i32 %28, i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %24
  %33 = call i32 @_(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %34 = call i32 @error(i32 %33, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %35 = load i32, i32* %12, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %12, align 4
  br label %37

37:                                               ; preds = %32, %24
  %38 = load %struct.replay_opts*, %struct.replay_opts** %7, align 8
  %39 = call i32 @get_dir(%struct.replay_opts* %38)
  %40 = call i32 @strbuf_addf(%struct.strbuf* %8, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32 %39)
  %41 = call i32 @memset(%struct.rev_info* %9, i32 0, i32 32)
  %42 = load %struct.repository*, %struct.repository** %5, align 8
  %43 = call i32 @repo_init_revisions(%struct.repository* %42, %struct.rev_info* %9, i32* null)
  %44 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %9, i32 0, i32 4
  store i64 0, i64* %44, align 8
  %45 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %9, i32 0, i32 0
  store i32 1, i32* %45, align 8
  %46 = load i32, i32* @DIFF_FORMAT_PATCH, align 4
  %47 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %9, i32 0, i32 3
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 2
  store i32 %46, i32* %48, align 4
  %49 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %9, i32 0, i32 1
  store i32 1, i32* %49, align 4
  %50 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %9, i32 0, i32 2
  store i32 1, i32* %50, align 8
  %51 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %8, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @fopen(i32 %52, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %54 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %9, i32 0, i32 3
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 4
  %56 = load i32, i32* @GIT_COLOR_NEVER, align 4
  %57 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %9, i32 0, i32 3
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 1
  store i32 %56, i32* %58, align 4
  %59 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %9, i32 0, i32 3
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %70, label %63

63:                                               ; preds = %37
  %64 = call i32 @_(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0))
  %65 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %8, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @error_errno(i32 %64, i32 %66)
  %68 = load i32, i32* %12, align 4
  %69 = or i32 %68, %67
  store i32 %69, i32* %12, align 4
  br label %79

70:                                               ; preds = %37
  %71 = load %struct.commit*, %struct.commit** %6, align 8
  %72 = call i32 @log_tree_commit(%struct.rev_info* %9, %struct.commit* %71)
  %73 = load i32, i32* %12, align 4
  %74 = or i32 %73, %72
  store i32 %74, i32* %12, align 4
  %75 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %9, i32 0, i32 3
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @fclose(i32 %77)
  br label %79

79:                                               ; preds = %70, %63
  %80 = call i32 @strbuf_reset(%struct.strbuf* %8)
  %81 = load %struct.replay_opts*, %struct.replay_opts** %7, align 8
  %82 = call i32 @get_dir(%struct.replay_opts* %81)
  %83 = call i32 @strbuf_addf(%struct.strbuf* %8, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0), i32 %82)
  %84 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %8, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @file_exists(i32 %85)
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %104, label %88

88:                                               ; preds = %79
  %89 = load %struct.commit*, %struct.commit** %6, align 8
  %90 = call i8* @get_commit_buffer(%struct.commit* %89, i32* null)
  store i8* %90, i8** %13, align 8
  %91 = load i8*, i8** %13, align 8
  %92 = call i32 @find_commit_subject(i8* %91, i8** %10)
  %93 = load i8*, i8** %10, align 8
  %94 = load i8*, i8** %10, align 8
  %95 = call i32 @strlen(i8* %94)
  %96 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %8, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @write_message(i8* %93, i32 %95, i32 %97, i32 1)
  %99 = load i32, i32* %12, align 4
  %100 = or i32 %99, %98
  store i32 %100, i32* %12, align 4
  %101 = load %struct.commit*, %struct.commit** %6, align 8
  %102 = load i8*, i8** %13, align 8
  %103 = call i32 @unuse_commit_buffer(%struct.commit* %101, i8* %102)
  br label %104

104:                                              ; preds = %88, %79
  %105 = call i32 @strbuf_release(%struct.strbuf* %8)
  %106 = load i32, i32* %12, align 4
  store i32 %106, i32* %4, align 4
  br label %107

107:                                              ; preds = %104, %23
  %108 = load i32, i32* %4, align 4
  ret i32 %108
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i8* @short_commit_name(%struct.commit*) #2

declare dso_local i32 @write_message(i8*, i32, i32, i32) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @rebase_path_stopped_sha(...) #2

declare dso_local i64 @update_ref(i8*, i8*, i32*, i32*, i32, i32) #2

declare dso_local i32 @error(i32, i8*) #2

declare dso_local i32 @_(i8*) #2

declare dso_local i32 @strbuf_addf(%struct.strbuf*, i8*, i32) #2

declare dso_local i32 @get_dir(%struct.replay_opts*) #2

declare dso_local i32 @memset(%struct.rev_info*, i32, i32) #2

declare dso_local i32 @repo_init_revisions(%struct.repository*, %struct.rev_info*, i32*) #2

declare dso_local i32 @fopen(i32, i8*) #2

declare dso_local i32 @error_errno(i32, i32) #2

declare dso_local i32 @log_tree_commit(%struct.rev_info*, %struct.commit*) #2

declare dso_local i32 @fclose(i32) #2

declare dso_local i32 @strbuf_reset(%struct.strbuf*) #2

declare dso_local i32 @file_exists(i32) #2

declare dso_local i8* @get_commit_buffer(%struct.commit*, i32*) #2

declare dso_local i32 @find_commit_subject(i8*, i8**) #2

declare dso_local i32 @unuse_commit_buffer(%struct.commit*, i8*) #2

declare dso_local i32 @strbuf_release(%struct.strbuf*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
