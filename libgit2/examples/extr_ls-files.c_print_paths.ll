; ModuleID = '/home/carl/AnghaBench/libgit2/examples/extr_ls-files.c_print_paths.c'
source_filename = "/home/carl/AnghaBench/libgit2/examples/extr_ls-files.c_print_paths.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i8**, i64 }
%struct.TYPE_7__ = type { i8* }

@GIT_INDEX_STAGE_NORMAL = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [62 x i8] c"error: pathspec '%s' did not match any file(s) known to git.\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"Did you forget to 'git add'?\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i32*)* @print_paths to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @print_paths(%struct.TYPE_6__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i32* %1, i32** %5, align 8
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %33

14:                                               ; preds = %2
  %15 = load i32*, i32** %5, align 8
  %16 = call i64 @git_index_entrycount(i32* %15)
  store i64 %16, i64* %8, align 8
  store i64 0, i64* %6, align 8
  br label %17

17:                                               ; preds = %29, %14
  %18 = load i64, i64* %6, align 8
  %19 = load i64, i64* %8, align 8
  %20 = icmp ult i64 %18, %19
  br i1 %20, label %21, label %32

21:                                               ; preds = %17
  %22 = load i32*, i32** %5, align 8
  %23 = load i64, i64* %6, align 8
  %24 = call %struct.TYPE_7__* @git_index_get_byindex(i32* %22, i64 %23)
  store %struct.TYPE_7__* %24, %struct.TYPE_7__** %7, align 8
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  %27 = load i8*, i8** %26, align 8
  %28 = call i32 @puts(i8* %27)
  br label %29

29:                                               ; preds = %21
  %30 = load i64, i64* %6, align 8
  %31 = add i64 %30, 1
  store i64 %31, i64* %6, align 8
  br label %17

32:                                               ; preds = %17
  store i32 0, i32* %3, align 4
  br label %72

33:                                               ; preds = %2
  store i64 0, i64* %6, align 8
  br label %34

34:                                               ; preds = %68, %33
  %35 = load i64, i64* %6, align 8
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp ult i64 %35, %38
  br i1 %39, label %40, label %71

40:                                               ; preds = %34
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 1
  %43 = load i8**, i8*** %42, align 8
  %44 = load i64, i64* %6, align 8
  %45 = getelementptr inbounds i8*, i8** %43, i64 %44
  %46 = load i8*, i8** %45, align 8
  store i8* %46, i8** %9, align 8
  %47 = load i32*, i32** %5, align 8
  %48 = load i8*, i8** %9, align 8
  %49 = load i32, i32* @GIT_INDEX_STAGE_NORMAL, align 4
  %50 = call %struct.TYPE_7__* @git_index_get_bypath(i32* %47, i8* %48, i32 %49)
  store %struct.TYPE_7__* %50, %struct.TYPE_7__** %7, align 8
  %51 = icmp ne %struct.TYPE_7__* %50, null
  br i1 %51, label %52, label %55

52:                                               ; preds = %40
  %53 = load i8*, i8** %9, align 8
  %54 = call i32 @puts(i8* %53)
  br label %67

55:                                               ; preds = %40
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 2
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %66

60:                                               ; preds = %55
  %61 = load i32, i32* @stderr, align 4
  %62 = load i8*, i8** %9, align 8
  %63 = call i32 (i32, i8*, ...) @fprintf(i32 %61, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0), i8* %62)
  %64 = load i32, i32* @stderr, align 4
  %65 = call i32 (i32, i8*, ...) @fprintf(i32 %64, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %72

66:                                               ; preds = %55
  br label %67

67:                                               ; preds = %66, %52
  br label %68

68:                                               ; preds = %67
  %69 = load i64, i64* %6, align 8
  %70 = add i64 %69, 1
  store i64 %70, i64* %6, align 8
  br label %34

71:                                               ; preds = %34
  store i32 0, i32* %3, align 4
  br label %72

72:                                               ; preds = %71, %60, %32
  %73 = load i32, i32* %3, align 4
  ret i32 %73
}

declare dso_local i64 @git_index_entrycount(i32*) #1

declare dso_local %struct.TYPE_7__* @git_index_get_byindex(i32*, i64) #1

declare dso_local i32 @puts(i8*) #1

declare dso_local %struct.TYPE_7__* @git_index_get_bypath(i32*, i8*, i32) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
