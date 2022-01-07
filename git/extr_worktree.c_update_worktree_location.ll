; ModuleID = '/home/carl/AnghaBench/git/extr_worktree.c_update_worktree_location.c'
source_filename = "/home/carl/AnghaBench/git/extr_worktree.c_update_worktree_location.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32 }
%struct.worktree = type { i32, i32 }

@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 4
@.str = private unnamed_addr constant [29 x i8] c"can't relocate main worktree\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"worktrees/%s/gitdir\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"%s/.git\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @update_worktree_location(%struct.worktree* %0, i8* %1) #0 {
  %3 = alloca %struct.worktree*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.strbuf, align 4
  store %struct.worktree* %0, %struct.worktree** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = bitcast %struct.strbuf* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %6, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 4, i1 false)
  %7 = load %struct.worktree*, %struct.worktree** %3, align 8
  %8 = call i64 @is_main_worktree(%struct.worktree* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %2
  %11 = call i32 @BUG(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %12

12:                                               ; preds = %10, %2
  %13 = load i8*, i8** %4, align 8
  %14 = call i32 @strbuf_realpath(%struct.strbuf* %5, i8* %13, i32 1)
  %15 = load %struct.worktree*, %struct.worktree** %3, align 8
  %16 = getelementptr inbounds %struct.worktree, %struct.worktree* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %5, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i64 @fspathcmp(i32 %17, i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %37

22:                                               ; preds = %12
  %23 = load %struct.worktree*, %struct.worktree** %3, align 8
  %24 = getelementptr inbounds %struct.worktree, %struct.worktree* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @git_common_path(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %25)
  %27 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %5, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @write_file(i32 %26, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 %28)
  %30 = load %struct.worktree*, %struct.worktree** %3, align 8
  %31 = getelementptr inbounds %struct.worktree, %struct.worktree* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @free(i32 %32)
  %34 = call i32 @strbuf_detach(%struct.strbuf* %5, i32* null)
  %35 = load %struct.worktree*, %struct.worktree** %3, align 8
  %36 = getelementptr inbounds %struct.worktree, %struct.worktree* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 4
  br label %37

37:                                               ; preds = %22, %12
  %38 = call i32 @strbuf_release(%struct.strbuf* %5)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @is_main_worktree(%struct.worktree*) #2

declare dso_local i32 @BUG(i8*) #2

declare dso_local i32 @strbuf_realpath(%struct.strbuf*, i8*, i32) #2

declare dso_local i64 @fspathcmp(i32, i32) #2

declare dso_local i32 @write_file(i32, i8*, i32) #2

declare dso_local i32 @git_common_path(i8*, i32) #2

declare dso_local i32 @free(i32) #2

declare dso_local i32 @strbuf_detach(%struct.strbuf*, i32*) #2

declare dso_local i32 @strbuf_release(%struct.strbuf*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
