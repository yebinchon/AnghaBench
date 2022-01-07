; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_filter.c_git_filter_lookup.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_filter.c_git_filter_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32*, i32 }

@filter_registry = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@GIT_ERROR_OS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"failed to lock filter registry\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @git_filter_lookup(i8* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32*, align 8
  store i8* %0, i8** %3, align 8
  store i32* null, i32** %6, align 8
  %7 = call i64 @git_rwlock_rdlock(i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @filter_registry, i32 0, i32 0))
  %8 = icmp slt i64 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %1
  %10 = load i32, i32* @GIT_ERROR_OS, align 4
  %11 = call i32 @git_error_set(i32 %10, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  store i32* null, i32** %2, align 8
  br label %33

12:                                               ; preds = %1
  %13 = load i8*, i8** %3, align 8
  %14 = call %struct.TYPE_5__* @filter_registry_lookup(i64* %4, i8* %13)
  store %struct.TYPE_5__* %14, %struct.TYPE_5__** %5, align 8
  %15 = icmp eq %struct.TYPE_5__* %14, null
  br i1 %15, label %25, label %16

16:                                               ; preds = %12
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %26, label %21

21:                                               ; preds = %16
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %23 = call i64 @filter_initialize(%struct.TYPE_5__* %22)
  %24 = icmp slt i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %21, %12
  br label %30

26:                                               ; preds = %21, %16
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  store i32* %29, i32** %6, align 8
  br label %30

30:                                               ; preds = %26, %25
  %31 = call i32 @git_rwlock_rdunlock(i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @filter_registry, i32 0, i32 0))
  %32 = load i32*, i32** %6, align 8
  store i32* %32, i32** %2, align 8
  br label %33

33:                                               ; preds = %30, %9
  %34 = load i32*, i32** %2, align 8
  ret i32* %34
}

declare dso_local i64 @git_rwlock_rdlock(i32*) #1

declare dso_local i32 @git_error_set(i32, i8*) #1

declare dso_local %struct.TYPE_5__* @filter_registry_lookup(i64*, i8*) #1

declare dso_local i64 @filter_initialize(%struct.TYPE_5__*) #1

declare dso_local i32 @git_rwlock_rdunlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
