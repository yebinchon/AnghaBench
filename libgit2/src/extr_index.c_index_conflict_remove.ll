; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_index.c_index_conflict_remove.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_index.c_index_conflict_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64 (i32, i8*)*, i32 }
%struct.TYPE_8__ = type { i32 }

@GIT_ENOTFOUND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, i8*)* @index_conflict_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @index_conflict_remove(%struct.TYPE_9__* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 0, i64* %6, align 8
  store i32 0, i32* %8, align 4
  %9 = load i8*, i8** %5, align 8
  %10 = icmp ne i8* %9, null
  br i1 %10, label %11, label %18

11:                                               ; preds = %2
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = call i64 @git_index_find(i64* %6, %struct.TYPE_9__* %12, i8* %13)
  %15 = icmp slt i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %11
  %17 = load i32, i32* @GIT_ENOTFOUND, align 4
  store i32 %17, i32* %3, align 4
  br label %55

18:                                               ; preds = %11, %2
  br label %19

19:                                               ; preds = %52, %43, %18
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 1
  %22 = load i64, i64* %6, align 8
  %23 = call %struct.TYPE_8__* @git_vector_get(i32* %21, i64 %22)
  store %struct.TYPE_8__* %23, %struct.TYPE_8__** %7, align 8
  %24 = icmp ne %struct.TYPE_8__* %23, null
  br i1 %24, label %25, label %53

25:                                               ; preds = %19
  %26 = load i8*, i8** %5, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %28, label %39

28:                                               ; preds = %25
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 0
  %31 = load i64 (i32, i8*)*, i64 (i32, i8*)** %30, align 8
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i8*, i8** %5, align 8
  %36 = call i64 %31(i32 %34, i8* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %28
  br label %53

39:                                               ; preds = %28, %25
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %41 = call i64 @GIT_INDEX_ENTRY_STAGE(%struct.TYPE_8__* %40)
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %39
  %44 = load i64, i64* %6, align 8
  %45 = add i64 %44, 1
  store i64 %45, i64* %6, align 8
  br label %19

46:                                               ; preds = %39
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %48 = load i64, i64* %6, align 8
  %49 = call i32 @index_remove_entry(%struct.TYPE_9__* %47, i64 %48)
  store i32 %49, i32* %8, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %46
  br label %53

52:                                               ; preds = %46
  br label %19

53:                                               ; preds = %51, %38, %19
  %54 = load i32, i32* %8, align 4
  store i32 %54, i32* %3, align 4
  br label %55

55:                                               ; preds = %53, %16
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

declare dso_local i64 @git_index_find(i64*, %struct.TYPE_9__*, i8*) #1

declare dso_local %struct.TYPE_8__* @git_vector_get(i32*, i64) #1

declare dso_local i64 @GIT_INDEX_ENTRY_STAGE(%struct.TYPE_8__*) #1

declare dso_local i32 @index_remove_entry(%struct.TYPE_9__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
