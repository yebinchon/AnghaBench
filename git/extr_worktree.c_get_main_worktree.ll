; ModuleID = '/home/carl/AnghaBench/git/extr_worktree.c_get_main_worktree.c'
source_filename = "/home/carl/AnghaBench/git/extr_worktree.c_get_main_worktree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32 }
%struct.worktree = type { i32, i32 }

@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 4
@.str = private unnamed_addr constant [6 x i8] c"/.git\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"/.\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"%s/HEAD\00", align 1
@is_bare_repository_cfg = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.worktree* ()* @get_main_worktree to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.worktree* @get_main_worktree() #0 {
  %1 = alloca %struct.worktree*, align 8
  %2 = alloca %struct.strbuf, align 4
  %3 = alloca %struct.strbuf, align 4
  store %struct.worktree* null, %struct.worktree** %1, align 8
  %4 = bitcast %struct.strbuf* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %4, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 4, i1 false)
  %5 = bitcast %struct.strbuf* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %5, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 4, i1 false)
  %6 = call i32 (...) @get_git_common_dir()
  %7 = call i32 @strbuf_add_absolute_path(%struct.strbuf* %3, i32 %6)
  %8 = call i32 @strbuf_strip_suffix(%struct.strbuf* %3, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %0
  %11 = call i32 @strbuf_strip_suffix(%struct.strbuf* %3, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  br label %12

12:                                               ; preds = %10, %0
  %13 = call i32 (...) @get_git_common_dir()
  %14 = call i32 @strbuf_addf(%struct.strbuf* %2, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 %13)
  %15 = call %struct.worktree* @xcalloc(i32 1, i32 8)
  store %struct.worktree* %15, %struct.worktree** %1, align 8
  %16 = call i32 @strbuf_detach(%struct.strbuf* %3, i32* null)
  %17 = load %struct.worktree*, %struct.worktree** %1, align 8
  %18 = getelementptr inbounds %struct.worktree, %struct.worktree* %17, i32 0, i32 1
  store i32 %16, i32* %18, align 4
  %19 = load i32, i32* @is_bare_repository_cfg, align 4
  %20 = icmp eq i32 %19, 1
  br i1 %20, label %24, label %21

21:                                               ; preds = %12
  %22 = call i64 (...) @is_bare_repository()
  %23 = icmp ne i64 %22, 0
  br label %24

24:                                               ; preds = %21, %12
  %25 = phi i1 [ true, %12 ], [ %23, %21 ]
  %26 = zext i1 %25 to i32
  %27 = load %struct.worktree*, %struct.worktree** %1, align 8
  %28 = getelementptr inbounds %struct.worktree, %struct.worktree* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 4
  %29 = load %struct.worktree*, %struct.worktree** %1, align 8
  %30 = call i32 @add_head_info(%struct.worktree* %29)
  %31 = call i32 @strbuf_release(%struct.strbuf* %2)
  %32 = call i32 @strbuf_release(%struct.strbuf* %3)
  %33 = load %struct.worktree*, %struct.worktree** %1, align 8
  ret %struct.worktree* %33
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @strbuf_add_absolute_path(%struct.strbuf*, i32) #2

declare dso_local i32 @get_git_common_dir(...) #2

declare dso_local i32 @strbuf_strip_suffix(%struct.strbuf*, i8*) #2

declare dso_local i32 @strbuf_addf(%struct.strbuf*, i8*, i32) #2

declare dso_local %struct.worktree* @xcalloc(i32, i32) #2

declare dso_local i32 @strbuf_detach(%struct.strbuf*, i32*) #2

declare dso_local i64 @is_bare_repository(...) #2

declare dso_local i32 @add_head_info(%struct.worktree*) #2

declare dso_local i32 @strbuf_release(%struct.strbuf*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
