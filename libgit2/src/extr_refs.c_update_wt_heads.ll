; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_refs.c_update_wt_heads.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_refs.c_update_wt_heads.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }

@GIT_ERROR_REFERENCE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"could not read HEAD when renaming references\00", align 1
@GIT_REFERENCE_SYMBOLIC = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [47 x i8] c"failed to update HEAD after renaming reference\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i8*)* @update_wt_heads to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @update_wt_heads(i32* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = bitcast i8* %11 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %12, %struct.TYPE_8__** %7, align 8
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %8, align 8
  store i8* null, i8** %9, align 8
  %13 = load i32*, i32** %4, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = call i32 @git_reference__read_head(%struct.TYPE_9__** %8, i32* %13, i8* %14)
  store i32 %15, i32* %10, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = load i32, i32* @GIT_ERROR_REFERENCE, align 4
  %19 = call i32 @git_error_set(i32 %18, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  br label %52

20:                                               ; preds = %3
  %21 = load i8*, i8** %5, align 8
  %22 = call i8* @git_path_dirname(i8* %21)
  store i8* %22, i8** %9, align 8
  %23 = icmp eq i8* %22, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %20
  store i32 -1, i32* %10, align 4
  br label %52

25:                                               ; preds = %20
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %27 = call i64 @git_reference_type(%struct.TYPE_9__* %26)
  %28 = load i64, i64* @GIT_REFERENCE_SYMBOLIC, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %40, label %30

30:                                               ; preds = %25
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i64 @git__strcmp(i32 %34, i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %30, %25
  store i32 0, i32* %10, align 4
  br label %52

41:                                               ; preds = %30
  %42 = load i8*, i8** %9, align 8
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @git_repository_create_head(i8* %42, i32 %45)
  store i32 %46, i32* %10, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %41
  %49 = load i32, i32* @GIT_ERROR_REFERENCE, align 4
  %50 = call i32 @git_error_set(i32 %49, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0))
  br label %52

51:                                               ; preds = %41
  br label %52

52:                                               ; preds = %51, %48, %40, %24, %17
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %54 = call i32 @git_reference_free(%struct.TYPE_9__* %53)
  %55 = load i8*, i8** %9, align 8
  %56 = call i32 @git__free(i8* %55)
  %57 = load i32, i32* %10, align 4
  ret i32 %57
}

declare dso_local i32 @git_reference__read_head(%struct.TYPE_9__**, i32*, i8*) #1

declare dso_local i32 @git_error_set(i32, i8*) #1

declare dso_local i8* @git_path_dirname(i8*) #1

declare dso_local i64 @git_reference_type(%struct.TYPE_9__*) #1

declare dso_local i64 @git__strcmp(i32, i32) #1

declare dso_local i32 @git_repository_create_head(i8*, i32) #1

declare dso_local i32 @git_reference_free(%struct.TYPE_9__*) #1

declare dso_local i32 @git__free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
