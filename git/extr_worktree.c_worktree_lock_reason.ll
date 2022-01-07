; ModuleID = '/home/carl/AnghaBench/git/extr_worktree.c_worktree_lock_reason.c'
source_filename = "/home/carl/AnghaBench/git/extr_worktree.c_worktree_lock_reason.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32 }
%struct.worktree = type { i32, i8* }

@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 4
@.str = private unnamed_addr constant [7 x i8] c"locked\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"failed to read '%s'\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @worktree_lock_reason(%struct.worktree* %0) #0 {
  %2 = alloca %struct.worktree*, align 8
  %3 = alloca %struct.strbuf, align 4
  %4 = alloca %struct.strbuf, align 4
  store %struct.worktree* %0, %struct.worktree** %2, align 8
  %5 = load %struct.worktree*, %struct.worktree** %2, align 8
  %6 = call i32 @is_main_worktree(%struct.worktree* %5)
  %7 = icmp ne i32 %6, 0
  %8 = xor i1 %7, true
  %9 = zext i1 %8 to i32
  %10 = call i32 @assert(i32 %9)
  %11 = load %struct.worktree*, %struct.worktree** %2, align 8
  %12 = getelementptr inbounds %struct.worktree, %struct.worktree* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %47, label %15

15:                                               ; preds = %1
  %16 = bitcast %struct.strbuf* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %16, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 4, i1 false)
  %17 = load %struct.worktree*, %struct.worktree** %2, align 8
  %18 = call i32 @worktree_git_path(%struct.worktree* %17, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %19 = call i32 @strbuf_addstr(%struct.strbuf* %3, i32 %18)
  %20 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %3, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i64 @file_exists(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %40

24:                                               ; preds = %15
  %25 = bitcast %struct.strbuf* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %25, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 4, i1 false)
  %26 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %3, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i64 @strbuf_read_file(%struct.strbuf* %4, i32 %27, i32 0)
  %29 = icmp slt i64 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %24
  %31 = call i32 @_(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %32 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %3, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @die_errno(i32 %31, i32 %33)
  br label %35

35:                                               ; preds = %30, %24
  %36 = call i32 @strbuf_trim(%struct.strbuf* %4)
  %37 = call i8* @strbuf_detach(%struct.strbuf* %4, i32* null)
  %38 = load %struct.worktree*, %struct.worktree** %2, align 8
  %39 = getelementptr inbounds %struct.worktree, %struct.worktree* %38, i32 0, i32 1
  store i8* %37, i8** %39, align 8
  br label %43

40:                                               ; preds = %15
  %41 = load %struct.worktree*, %struct.worktree** %2, align 8
  %42 = getelementptr inbounds %struct.worktree, %struct.worktree* %41, i32 0, i32 1
  store i8* null, i8** %42, align 8
  br label %43

43:                                               ; preds = %40, %35
  %44 = load %struct.worktree*, %struct.worktree** %2, align 8
  %45 = getelementptr inbounds %struct.worktree, %struct.worktree* %44, i32 0, i32 0
  store i32 1, i32* %45, align 8
  %46 = call i32 @strbuf_release(%struct.strbuf* %3)
  br label %47

47:                                               ; preds = %43, %1
  %48 = load %struct.worktree*, %struct.worktree** %2, align 8
  %49 = getelementptr inbounds %struct.worktree, %struct.worktree* %48, i32 0, i32 1
  %50 = load i8*, i8** %49, align 8
  ret i8* %50
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @is_main_worktree(%struct.worktree*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @strbuf_addstr(%struct.strbuf*, i32) #1

declare dso_local i32 @worktree_git_path(%struct.worktree*, i8*) #1

declare dso_local i64 @file_exists(i32) #1

declare dso_local i64 @strbuf_read_file(%struct.strbuf*, i32, i32) #1

declare dso_local i32 @die_errno(i32, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @strbuf_trim(%struct.strbuf*) #1

declare dso_local i8* @strbuf_detach(%struct.strbuf*, i32*) #1

declare dso_local i32 @strbuf_release(%struct.strbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
