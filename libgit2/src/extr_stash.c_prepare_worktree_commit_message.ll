; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_stash.c_prepare_worktree_commit_message.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_stash.c_prepare_worktree_commit_message.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32 }

@GIT_BUF_INIT = common dso_local global %struct.TYPE_12__ zeroinitializer, align 4
@.str = private unnamed_addr constant [10 x i8] c"WIP on %s\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"On \00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c": %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_12__*, i8*)* @prepare_worktree_commit_message to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @prepare_worktree_commit_message(%struct.TYPE_12__* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_12__, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = bitcast %struct.TYPE_12__* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %8, i8* align 4 bitcast (%struct.TYPE_12__* @GIT_BUF_INIT to i8*), i64 4, i1 false)
  store i32 0, i32* %6, align 4
  %9 = load i8*, i8** %4, align 8
  %10 = icmp ne i8* %9, null
  br i1 %10, label %15, label %11

11:                                               ; preds = %2
  %12 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %13 = call i8* @git_buf_cstr(%struct.TYPE_12__* %12)
  %14 = call i32 @git_buf_printf(%struct.TYPE_12__* %5, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* %13)
  br label %35

15:                                               ; preds = %2
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %17 = call i8* @git_buf_cstr(%struct.TYPE_12__* %16)
  %18 = call i8* @strchr(i8* %17, i8 signext 58)
  store i8* %18, i8** %7, align 8
  %19 = icmp eq i8* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %15
  br label %42

21:                                               ; preds = %15
  %22 = call i32 @git_buf_puts(%struct.TYPE_12__* %5, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %23 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %24 = call i8* @git_buf_cstr(%struct.TYPE_12__* %23)
  %25 = load i8*, i8** %7, align 8
  %26 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = sext i32 %28 to i64
  %30 = sub i64 0, %29
  %31 = getelementptr inbounds i8, i8* %25, i64 %30
  %32 = call i32 @git_buf_put(%struct.TYPE_12__* %5, i8* %24, i8* %31)
  %33 = load i8*, i8** %4, align 8
  %34 = call i32 @git_buf_printf(%struct.TYPE_12__* %5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* %33)
  br label %35

35:                                               ; preds = %21, %11
  %36 = call i64 @git_buf_oom(%struct.TYPE_12__* %5)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %35
  store i32 -1, i32* %6, align 4
  br label %42

39:                                               ; preds = %35
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %41 = call i32 @git_buf_swap(%struct.TYPE_12__* %40, %struct.TYPE_12__* %5)
  br label %42

42:                                               ; preds = %39, %38, %20
  %43 = call i32 @git_buf_dispose(%struct.TYPE_12__* %5)
  %44 = load i32, i32* %6, align 4
  ret i32 %44
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @git_buf_printf(%struct.TYPE_12__*, i8*, i8*) #2

declare dso_local i8* @git_buf_cstr(%struct.TYPE_12__*) #2

declare dso_local i8* @strchr(i8*, i8 signext) #2

declare dso_local i32 @git_buf_puts(%struct.TYPE_12__*, i8*) #2

declare dso_local i32 @git_buf_put(%struct.TYPE_12__*, i8*, i8*) #2

declare dso_local i64 @git_buf_oom(%struct.TYPE_12__*) #2

declare dso_local i32 @git_buf_swap(%struct.TYPE_12__*, %struct.TYPE_12__*) #2

declare dso_local i32 @git_buf_dispose(%struct.TYPE_12__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
