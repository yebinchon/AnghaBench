; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_config.c_git_config_set_string.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_config.c_git_config_set_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 (%struct.TYPE_4__*, i8*, i8*)* }

@GIT_ERROR_CONFIG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"the value to set cannot be NULL\00", align 1
@BACKEND_USE_SET = common dso_local global i32 0, align 4
@GIT_ENOTFOUND = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @git_config_set_string(i32* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_4__*, align 8
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load i8*, i8** %7, align 8
  %11 = icmp ne i8* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %3
  %13 = load i32, i32* @GIT_ERROR_CONFIG, align 4
  %14 = call i32 @git_error_set(i32 %13, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %43

15:                                               ; preds = %3
  %16 = load i32*, i32** %5, align 8
  %17 = load i8*, i8** %6, align 8
  %18 = load i32, i32* @BACKEND_USE_SET, align 4
  %19 = call i64 @get_backend_for_use(%struct.TYPE_4__** %9, i32* %16, i8* %17, i32 %18)
  %20 = icmp slt i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %15
  %22 = load i32, i32* @GIT_ENOTFOUND, align 4
  store i32 %22, i32* %4, align 4
  br label %43

23:                                               ; preds = %15
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32 (%struct.TYPE_4__*, i8*, i8*)*, i32 (%struct.TYPE_4__*, i8*, i8*)** %25, align 8
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %28 = load i8*, i8** %6, align 8
  %29 = load i8*, i8** %7, align 8
  %30 = call i32 %26(%struct.TYPE_4__* %27, i8* %28, i8* %29)
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* %8, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %41, label %33

33:                                               ; preds = %23
  %34 = load i32*, i32** %5, align 8
  %35 = call i32* @GIT_REFCOUNT_OWNER(i32* %34)
  %36 = icmp ne i32* %35, null
  br i1 %36, label %37, label %41

37:                                               ; preds = %33
  %38 = load i32*, i32** %5, align 8
  %39 = call i32* @GIT_REFCOUNT_OWNER(i32* %38)
  %40 = call i32 @git_repository__configmap_lookup_cache_clear(i32* %39)
  br label %41

41:                                               ; preds = %37, %33, %23
  %42 = load i32, i32* %8, align 4
  store i32 %42, i32* %4, align 4
  br label %43

43:                                               ; preds = %41, %21, %12
  %44 = load i32, i32* %4, align 4
  ret i32 %44
}

declare dso_local i32 @git_error_set(i32, i8*) #1

declare dso_local i64 @get_backend_for_use(%struct.TYPE_4__**, i32*, i8*, i32) #1

declare dso_local i32* @GIT_REFCOUNT_OWNER(i32*) #1

declare dso_local i32 @git_repository__configmap_lookup_cache_clear(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
