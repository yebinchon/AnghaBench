; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_worktree.c_git_worktree__read_link.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_worktree.c_git_worktree__read_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }

@GIT_BUF_INIT = common dso_local global %struct.TYPE_10__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @git_worktree__read_link(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_10__, align 4
  %7 = alloca %struct.TYPE_10__, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = bitcast %struct.TYPE_10__* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %8, i8* align 4 bitcast (%struct.TYPE_10__* @GIT_BUF_INIT to i8*), i64 4, i1 false)
  %9 = bitcast %struct.TYPE_10__* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %9, i8* align 4 bitcast (%struct.TYPE_10__* @GIT_BUF_INIT to i8*), i64 4, i1 false)
  %10 = load i8*, i8** %4, align 8
  %11 = icmp ne i8* %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load i8*, i8** %5, align 8
  %14 = icmp ne i8* %13, null
  br label %15

15:                                               ; preds = %12, %2
  %16 = phi i1 [ false, %2 ], [ %14, %12 ]
  %17 = zext i1 %16 to i32
  %18 = call i32 @assert(i32 %17)
  %19 = load i8*, i8** %4, align 8
  %20 = load i8*, i8** %5, align 8
  %21 = call i64 @git_buf_joinpath(%struct.TYPE_10__* %6, i8* %19, i8* %20)
  %22 = icmp slt i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %15
  br label %53

24:                                               ; preds = %15
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %6, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i64 @git_futils_readbuffer(%struct.TYPE_10__* %7, i32 %26)
  %28 = icmp slt i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %24
  br label %53

30:                                               ; preds = %24
  %31 = call i32 @git_buf_dispose(%struct.TYPE_10__* %6)
  %32 = call i32 @git_buf_rtrim(%struct.TYPE_10__* %7)
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @git_path_is_relative(i32 %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %39, label %37

37:                                               ; preds = %30
  %38 = call i8* @git_buf_detach(%struct.TYPE_10__* %7)
  store i8* %38, i8** %3, align 8
  br label %56

39:                                               ; preds = %30
  %40 = load i8*, i8** %4, align 8
  %41 = call i64 @git_buf_sets(%struct.TYPE_10__* %6, i8* %40)
  %42 = icmp slt i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %39
  br label %53

44:                                               ; preds = %39
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i64 @git_path_apply_relative(%struct.TYPE_10__* %6, i32 %46)
  %48 = icmp slt i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %44
  br label %53

50:                                               ; preds = %44
  %51 = call i32 @git_buf_dispose(%struct.TYPE_10__* %7)
  %52 = call i8* @git_buf_detach(%struct.TYPE_10__* %6)
  store i8* %52, i8** %3, align 8
  br label %56

53:                                               ; preds = %49, %43, %29, %23
  %54 = call i32 @git_buf_dispose(%struct.TYPE_10__* %7)
  %55 = call i32 @git_buf_dispose(%struct.TYPE_10__* %6)
  store i8* null, i8** %3, align 8
  br label %56

56:                                               ; preds = %53, %50, %37
  %57 = load i8*, i8** %3, align 8
  ret i8* %57
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @assert(i32) #2

declare dso_local i64 @git_buf_joinpath(%struct.TYPE_10__*, i8*, i8*) #2

declare dso_local i64 @git_futils_readbuffer(%struct.TYPE_10__*, i32) #2

declare dso_local i32 @git_buf_dispose(%struct.TYPE_10__*) #2

declare dso_local i32 @git_buf_rtrim(%struct.TYPE_10__*) #2

declare dso_local i32 @git_path_is_relative(i32) #2

declare dso_local i8* @git_buf_detach(%struct.TYPE_10__*) #2

declare dso_local i64 @git_buf_sets(%struct.TYPE_10__*, i8*) #2

declare dso_local i64 @git_path_apply_relative(%struct.TYPE_10__*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
