; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_transaction.c_git_transaction_lock_ref.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_transaction.c_git_transaction_lock_ref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, i32 }
%struct.TYPE_9__ = type { i32, %struct.TYPE_9__* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @git_transaction_lock_ref(%struct.TYPE_10__* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_9__*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %9 = icmp ne %struct.TYPE_10__* %8, null
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = load i8*, i8** %5, align 8
  %12 = icmp ne i8* %11, null
  br label %13

13:                                               ; preds = %10, %2
  %14 = phi i1 [ false, %2 ], [ %12, %10 ]
  %15 = zext i1 %14 to i32
  %16 = call i32 @assert(i32 %15)
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 2
  %19 = call %struct.TYPE_9__* @git_pool_mallocz(i32* %18, i32 16)
  store %struct.TYPE_9__* %19, %struct.TYPE_9__** %7, align 8
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %21 = call i32 @GIT_ERROR_CHECK_ALLOC(%struct.TYPE_9__* %20)
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 2
  %24 = load i8*, i8** %5, align 8
  %25 = call %struct.TYPE_9__* @git_pool_strdup(i32* %23, i8* %24)
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 1
  store %struct.TYPE_9__* %25, %struct.TYPE_9__** %27, align 8
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 1
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %29, align 8
  %31 = call i32 @GIT_ERROR_CHECK_ALLOC(%struct.TYPE_9__* %30)
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i8*, i8** %5, align 8
  %38 = call i32 @git_refdb_lock(i32* %33, i32 %36, i8* %37)
  store i32 %38, i32* %6, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %13
  %41 = load i32, i32* %6, align 4
  store i32 %41, i32* %3, align 4
  br label %63

42:                                               ; preds = %13
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 1
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %47, align 8
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %50 = call i32 @git_strmap_set(i32 %45, %struct.TYPE_9__* %48, %struct.TYPE_9__* %49)
  store i32 %50, i32* %6, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %42
  br label %54

53:                                               ; preds = %42
  store i32 0, i32* %3, align 4
  br label %63

54:                                               ; preds = %52
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @git_refdb_unlock(i32 %57, i32 %60, i32 0, i32 0, i32* null, i32* null, i32* null)
  %62 = load i32, i32* %6, align 4
  store i32 %62, i32* %3, align 4
  br label %63

63:                                               ; preds = %54, %53, %40
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.TYPE_9__* @git_pool_mallocz(i32*, i32) #1

declare dso_local i32 @GIT_ERROR_CHECK_ALLOC(%struct.TYPE_9__*) #1

declare dso_local %struct.TYPE_9__* @git_pool_strdup(i32*, i8*) #1

declare dso_local i32 @git_refdb_lock(i32*, i32, i8*) #1

declare dso_local i32 @git_strmap_set(i32, %struct.TYPE_9__*, %struct.TYPE_9__*) #1

declare dso_local i32 @git_refdb_unlock(i32, i32, i32, i32, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
