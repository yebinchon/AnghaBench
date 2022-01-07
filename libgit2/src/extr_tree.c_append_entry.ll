; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_tree.c_append_entry.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_tree.c_append_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32, i64 }

@GIT_ERROR_TREE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"failed to append entry %s to the tree builder\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, i8*, i32*, i64, i32)* @append_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @append_entry(%struct.TYPE_8__* %0, i8* %1, i32* %2, i64 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_9__*, align 8
  %13 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32* %2, i32** %9, align 8
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 0, i32* %13, align 4
  %14 = load i32, i32* %11, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %27

16:                                               ; preds = %5
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load i8*, i8** %8, align 8
  %21 = load i32*, i32** %9, align 8
  %22 = load i64, i64* %10, align 8
  %23 = call i32 @check_entry(i32 %19, i8* %20, i32* %21, i64 %22)
  store i32 %23, i32* %13, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %16
  %26 = load i32, i32* %13, align 4
  store i32 %26, i32* %6, align 4
  br label %54

27:                                               ; preds = %16, %5
  %28 = load i8*, i8** %8, align 8
  %29 = load i8*, i8** %8, align 8
  %30 = call i32 @strlen(i8* %29)
  %31 = load i32*, i32** %9, align 8
  %32 = call %struct.TYPE_9__* @alloc_entry(i8* %28, i32 %30, i32* %31)
  store %struct.TYPE_9__* %32, %struct.TYPE_9__** %12, align 8
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %34 = call i32 @GIT_ERROR_CHECK_ALLOC(%struct.TYPE_9__* %33)
  %35 = load i64, i64* %10, align 8
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 1
  store i64 %35, i64* %37, align 8
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %45 = call i32 @git_strmap_set(i32 %40, i32 %43, %struct.TYPE_9__* %44)
  store i32 %45, i32* %13, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %27
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %49 = call i32 @git_tree_entry_free(%struct.TYPE_9__* %48)
  %50 = load i32, i32* @GIT_ERROR_TREE, align 4
  %51 = load i8*, i8** %8, align 8
  %52 = call i32 @git_error_set(i32 %50, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i8* %51)
  store i32 -1, i32* %6, align 4
  br label %54

53:                                               ; preds = %27
  store i32 0, i32* %6, align 4
  br label %54

54:                                               ; preds = %53, %47, %25
  %55 = load i32, i32* %6, align 4
  ret i32 %55
}

declare dso_local i32 @check_entry(i32, i8*, i32*, i64) #1

declare dso_local %struct.TYPE_9__* @alloc_entry(i8*, i32, i32*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @GIT_ERROR_CHECK_ALLOC(%struct.TYPE_9__*) #1

declare dso_local i32 @git_strmap_set(i32, i32, %struct.TYPE_9__*) #1

declare dso_local i32 @git_tree_entry_free(%struct.TYPE_9__*) #1

declare dso_local i32 @git_error_set(i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
