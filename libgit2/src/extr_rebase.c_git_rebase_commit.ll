; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_rebase.c_git_rebase_commit.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_rebase.c_git_rebase_commit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i64 }

@GIT_REBASE_TYPE_MERGE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @git_rebase_commit(i32* %0, %struct.TYPE_5__* %1, i32* %2, i32* %3, i8* %4, i8* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i8* %4, i8** %11, align 8
  store i8* %5, i8** %12, align 8
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %15 = icmp ne %struct.TYPE_5__* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %6
  %17 = load i32*, i32** %10, align 8
  %18 = icmp ne i32* %17, null
  br label %19

19:                                               ; preds = %16, %6
  %20 = phi i1 [ false, %6 ], [ %18, %16 ]
  %21 = zext i1 %20 to i32
  %22 = call i32 @assert(i32 %21)
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %35

27:                                               ; preds = %19
  %28 = load i32*, i32** %7, align 8
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %30 = load i32*, i32** %9, align 8
  %31 = load i32*, i32** %10, align 8
  %32 = load i8*, i8** %11, align 8
  %33 = load i8*, i8** %12, align 8
  %34 = call i32 @rebase_commit_inmemory(i32* %28, %struct.TYPE_5__* %29, i32* %30, i32* %31, i8* %32, i8* %33)
  store i32 %34, i32* %13, align 4
  br label %52

35:                                               ; preds = %19
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @GIT_REBASE_TYPE_MERGE, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %49

41:                                               ; preds = %35
  %42 = load i32*, i32** %7, align 8
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %44 = load i32*, i32** %9, align 8
  %45 = load i32*, i32** %10, align 8
  %46 = load i8*, i8** %11, align 8
  %47 = load i8*, i8** %12, align 8
  %48 = call i32 @rebase_commit_merge(i32* %42, %struct.TYPE_5__* %43, i32* %44, i32* %45, i8* %46, i8* %47)
  store i32 %48, i32* %13, align 4
  br label %51

49:                                               ; preds = %35
  %50 = call i32 (...) @abort() #3
  unreachable

51:                                               ; preds = %41
  br label %52

52:                                               ; preds = %51, %27
  %53 = load i32, i32* %13, align 4
  ret i32 %53
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @rebase_commit_inmemory(i32*, %struct.TYPE_5__*, i32*, i32*, i8*, i8*) #1

declare dso_local i32 @rebase_commit_merge(i32*, %struct.TYPE_5__*, i32*, i32*, i8*, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
