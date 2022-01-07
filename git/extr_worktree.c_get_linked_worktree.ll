; ModuleID = '/home/carl/AnghaBench/git/extr_worktree.c_get_linked_worktree.c'
source_filename = "/home/carl/AnghaBench/git/extr_worktree.c_get_linked_worktree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32 }
%struct.worktree = type { i32, i32 }

@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 4
@.str = private unnamed_addr constant [29 x i8] c"Missing linked worktree name\00", align 1
@the_repository = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"worktrees/%s/gitdir\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"/.git\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"/.\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"%s/worktrees/%s/HEAD\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.worktree* (i8*)* @get_linked_worktree to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.worktree* @get_linked_worktree(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.worktree*, align 8
  %4 = alloca %struct.strbuf, align 4
  %5 = alloca %struct.strbuf, align 4
  store i8* %0, i8** %2, align 8
  store %struct.worktree* null, %struct.worktree** %3, align 8
  %6 = bitcast %struct.strbuf* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %6, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 4, i1 false)
  %7 = bitcast %struct.strbuf* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %7, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 4, i1 false)
  %8 = load i8*, i8** %2, align 8
  %9 = icmp ne i8* %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %1
  %11 = call i32 @die(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %12

12:                                               ; preds = %10, %1
  %13 = load i32, i32* @the_repository, align 4
  %14 = load i8*, i8** %2, align 8
  %15 = call i32 @strbuf_git_common_path(%struct.strbuf* %4, i32 %13, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i8* %14)
  %16 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %4, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i64 @strbuf_read_file(%struct.strbuf* %5, i32 %17, i32 0)
  %19 = icmp sle i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %12
  br label %44

21:                                               ; preds = %12
  %22 = call i32 @strbuf_rtrim(%struct.strbuf* %5)
  %23 = call i32 @strbuf_strip_suffix(%struct.strbuf* %5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %29, label %25

25:                                               ; preds = %21
  %26 = call i32 @strbuf_reset(%struct.strbuf* %5)
  %27 = call i32 @strbuf_add_absolute_path(%struct.strbuf* %5, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %28 = call i32 @strbuf_strip_suffix(%struct.strbuf* %5, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  br label %29

29:                                               ; preds = %25, %21
  %30 = call i32 @strbuf_reset(%struct.strbuf* %4)
  %31 = call i32 (...) @get_git_common_dir()
  %32 = load i8*, i8** %2, align 8
  %33 = call i32 @strbuf_addf(%struct.strbuf* %4, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i32 %31, i8* %32)
  %34 = call %struct.worktree* @xcalloc(i32 1, i32 8)
  store %struct.worktree* %34, %struct.worktree** %3, align 8
  %35 = call i32 @strbuf_detach(%struct.strbuf* %5, i32* null)
  %36 = load %struct.worktree*, %struct.worktree** %3, align 8
  %37 = getelementptr inbounds %struct.worktree, %struct.worktree* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 4
  %38 = load i8*, i8** %2, align 8
  %39 = call i32 @xstrdup(i8* %38)
  %40 = load %struct.worktree*, %struct.worktree** %3, align 8
  %41 = getelementptr inbounds %struct.worktree, %struct.worktree* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 4
  %42 = load %struct.worktree*, %struct.worktree** %3, align 8
  %43 = call i32 @add_head_info(%struct.worktree* %42)
  br label %44

44:                                               ; preds = %29, %20
  %45 = call i32 @strbuf_release(%struct.strbuf* %4)
  %46 = call i32 @strbuf_release(%struct.strbuf* %5)
  %47 = load %struct.worktree*, %struct.worktree** %3, align 8
  ret %struct.worktree* %47
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @die(i8*) #2

declare dso_local i32 @strbuf_git_common_path(%struct.strbuf*, i32, i8*, i8*) #2

declare dso_local i64 @strbuf_read_file(%struct.strbuf*, i32, i32) #2

declare dso_local i32 @strbuf_rtrim(%struct.strbuf*) #2

declare dso_local i32 @strbuf_strip_suffix(%struct.strbuf*, i8*) #2

declare dso_local i32 @strbuf_reset(%struct.strbuf*) #2

declare dso_local i32 @strbuf_add_absolute_path(%struct.strbuf*, i8*) #2

declare dso_local i32 @strbuf_addf(%struct.strbuf*, i8*, i32, i8*) #2

declare dso_local i32 @get_git_common_dir(...) #2

declare dso_local %struct.worktree* @xcalloc(i32, i32) #2

declare dso_local i32 @strbuf_detach(%struct.strbuf*, i32*) #2

declare dso_local i32 @xstrdup(i8*) #2

declare dso_local i32 @add_head_info(%struct.worktree*) #2

declare dso_local i32 @strbuf_release(%struct.strbuf*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
