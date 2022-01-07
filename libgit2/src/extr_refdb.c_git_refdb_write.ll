; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_refdb.c_git_refdb_write.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_refdb.c_git_refdb_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 (%struct.TYPE_10__*, %struct.TYPE_8__*, i32, i32*, i8*, i32*, i8*)* }
%struct.TYPE_8__ = type { %struct.TYPE_9__* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @git_refdb_write(%struct.TYPE_9__* %0, %struct.TYPE_8__* %1, i32 %2, i32* %3, i8* %4, i32* %5, i8* %6) #0 {
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca %struct.TYPE_8__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i8*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %8, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32* %3, i32** %11, align 8
  store i8* %4, i8** %12, align 8
  store i32* %5, i32** %13, align 8
  store i8* %6, i8** %14, align 8
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %16 = icmp ne %struct.TYPE_9__* %15, null
  br i1 %16, label %17, label %22

17:                                               ; preds = %7
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %19, align 8
  %21 = icmp ne %struct.TYPE_10__* %20, null
  br label %22

22:                                               ; preds = %17, %7
  %23 = phi i1 [ false, %7 ], [ %21, %17 ]
  %24 = zext i1 %23 to i32
  %25 = call i32 @assert(i32 %24)
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %27 = call i32 @GIT_REFCOUNT_INC(%struct.TYPE_9__* %26)
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 0
  store %struct.TYPE_9__* %28, %struct.TYPE_9__** %30, align 8
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 0
  %35 = load i32 (%struct.TYPE_10__*, %struct.TYPE_8__*, i32, i32*, i8*, i32*, i8*)*, i32 (%struct.TYPE_10__*, %struct.TYPE_8__*, i32, i32*, i8*, i32*, i8*)** %34, align 8
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %37, align 8
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %40 = load i32, i32* %10, align 4
  %41 = load i32*, i32** %11, align 8
  %42 = load i8*, i8** %12, align 8
  %43 = load i32*, i32** %13, align 8
  %44 = load i8*, i8** %14, align 8
  %45 = call i32 %35(%struct.TYPE_10__* %38, %struct.TYPE_8__* %39, i32 %40, i32* %41, i8* %42, i32* %43, i8* %44)
  ret i32 %45
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @GIT_REFCOUNT_INC(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
