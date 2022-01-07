; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_transaction.c_git_transaction_set_symbolic_target.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_transaction.c_git_transaction_set_symbolic_target.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }

@GIT_REFERENCE_SYMBOLIC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @git_transaction_set_symbolic_target(%struct.TYPE_11__* %0, i8* %1, i8* %2, i32* %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_10__*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32* %3, i32** %10, align 8
  store i8* %4, i8** %11, align 8
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %15 = icmp ne %struct.TYPE_11__* %14, null
  br i1 %15, label %16, label %22

16:                                               ; preds = %5
  %17 = load i8*, i8** %8, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %16
  %20 = load i8*, i8** %9, align 8
  %21 = icmp ne i8* %20, null
  br label %22

22:                                               ; preds = %19, %16, %5
  %23 = phi i1 [ false, %16 ], [ false, %5 ], [ %21, %19 ]
  %24 = zext i1 %23 to i32
  %25 = call i32 @assert(i32 %24)
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %27 = load i8*, i8** %8, align 8
  %28 = call i32 @find_locked(%struct.TYPE_10__** %13, %struct.TYPE_11__* %26, i8* %27)
  store i32 %28, i32* %12, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %22
  %31 = load i32, i32* %12, align 4
  store i32 %31, i32* %6, align 4
  br label %57

32:                                               ; preds = %22
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %35 = load i32*, i32** %10, align 8
  %36 = load i8*, i8** %11, align 8
  %37 = call i32 @copy_common(%struct.TYPE_10__* %33, %struct.TYPE_11__* %34, i32* %35, i8* %36)
  store i32 %37, i32* %12, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %32
  %40 = load i32, i32* %12, align 4
  store i32 %40, i32* %6, align 4
  br label %57

41:                                               ; preds = %32
  %42 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %42, i32 0, i32 0
  %44 = load i8*, i8** %9, align 8
  %45 = call i32 @git_pool_strdup(i32* %43, i8* %44)
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 0
  store i32 %45, i32* %48, align 4
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @GIT_ERROR_CHECK_ALLOC(i32 %52)
  %54 = load i32, i32* @GIT_REFERENCE_SYMBOLIC, align 4
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 4
  store i32 0, i32* %6, align 4
  br label %57

57:                                               ; preds = %41, %39, %30
  %58 = load i32, i32* %6, align 4
  ret i32 %58
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @find_locked(%struct.TYPE_10__**, %struct.TYPE_11__*, i8*) #1

declare dso_local i32 @copy_common(%struct.TYPE_10__*, %struct.TYPE_11__*, i32*, i8*) #1

declare dso_local i32 @git_pool_strdup(i32*, i8*) #1

declare dso_local i32 @GIT_ERROR_CHECK_ALLOC(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
