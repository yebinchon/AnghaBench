; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_refdb.c_git_refdb_rename.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_refdb.c_git_refdb_rename.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 (%struct.TYPE_8__**, %struct.TYPE_10__*, i8*, i8*, i32, i32*, i8*)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @git_refdb_rename(%struct.TYPE_8__** %0, %struct.TYPE_9__* %1, i8* %2, i8* %3, i32 %4, i32* %5, i8* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_8__**, align 8
  %10 = alloca %struct.TYPE_9__*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  store %struct.TYPE_8__** %0, %struct.TYPE_8__*** %9, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %10, align 8
  store i8* %2, i8** %11, align 8
  store i8* %3, i8** %12, align 8
  store i32 %4, i32* %13, align 4
  store i32* %5, i32** %14, align 8
  store i8* %6, i8** %15, align 8
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %18 = icmp ne %struct.TYPE_9__* %17, null
  br i1 %18, label %19, label %24

19:                                               ; preds = %7
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %21, align 8
  %23 = icmp ne %struct.TYPE_10__* %22, null
  br label %24

24:                                               ; preds = %19, %7
  %25 = phi i1 [ false, %7 ], [ %23, %19 ]
  %26 = zext i1 %25 to i32
  %27 = call i32 @assert(i32 %26)
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 0
  %32 = load i32 (%struct.TYPE_8__**, %struct.TYPE_10__*, i8*, i8*, i32, i32*, i8*)*, i32 (%struct.TYPE_8__**, %struct.TYPE_10__*, i8*, i8*, i32, i32*, i8*)** %31, align 8
  %33 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %9, align 8
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %35, align 8
  %37 = load i8*, i8** %11, align 8
  %38 = load i8*, i8** %12, align 8
  %39 = load i32, i32* %13, align 4
  %40 = load i32*, i32** %14, align 8
  %41 = load i8*, i8** %15, align 8
  %42 = call i32 %32(%struct.TYPE_8__** %33, %struct.TYPE_10__* %36, i8* %37, i8* %38, i32 %39, i32* %40, i8* %41)
  store i32 %42, i32* %16, align 4
  %43 = load i32, i32* %16, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %24
  %46 = load i32, i32* %16, align 4
  store i32 %46, i32* %8, align 4
  br label %58

47:                                               ; preds = %24
  %48 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %9, align 8
  %49 = icmp ne %struct.TYPE_8__** %48, null
  br i1 %49, label %50, label %57

50:                                               ; preds = %47
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %52 = call i32 @GIT_REFCOUNT_INC(%struct.TYPE_9__* %51)
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %54 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %9, align 8
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 0
  store %struct.TYPE_9__* %53, %struct.TYPE_9__** %56, align 8
  br label %57

57:                                               ; preds = %50, %47
  store i32 0, i32* %8, align 4
  br label %58

58:                                               ; preds = %57, %45
  %59 = load i32, i32* %8, align 4
  ret i32 %59
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @GIT_REFCOUNT_INC(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
