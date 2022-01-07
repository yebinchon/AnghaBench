; ModuleID = '/home/carl/AnghaBench/libgit2/tests/core/extr_env.c_test_core_env__cleanup.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/core/extr_env.c_test_core_env__cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NUM_VARS = common dso_local global i32 0, align 4
@env_vars = common dso_local global i32* null, align 8
@env_save = common dso_local global i32** null, align 8
@home_values = common dso_local global i8** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_core_env__cleanup() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8**, align 8
  store i32 0, i32* %1, align 4
  br label %3

3:                                                ; preds = %29, %0
  %4 = load i32, i32* %1, align 4
  %5 = load i32, i32* @NUM_VARS, align 4
  %6 = icmp slt i32 %4, %5
  br i1 %6, label %7, label %32

7:                                                ; preds = %3
  %8 = load i32*, i32** @env_vars, align 8
  %9 = load i32, i32* %1, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds i32, i32* %8, i64 %10
  %12 = load i32, i32* %11, align 4
  %13 = load i32**, i32*** @env_save, align 8
  %14 = load i32, i32* %1, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i32*, i32** %13, i64 %15
  %17 = load i32*, i32** %16, align 8
  %18 = call i32 @cl_setenv(i32 %12, i32* %17)
  %19 = load i32**, i32*** @env_save, align 8
  %20 = load i32, i32* %1, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32*, i32** %19, i64 %21
  %23 = load i32*, i32** %22, align 8
  %24 = call i32 @git__free(i32* %23)
  %25 = load i32**, i32*** @env_save, align 8
  %26 = load i32, i32* %1, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32*, i32** %25, i64 %27
  store i32* null, i32** %28, align 8
  br label %29

29:                                               ; preds = %7
  %30 = load i32, i32* %1, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %1, align 4
  br label %3

32:                                               ; preds = %3
  %33 = load i8**, i8*** @home_values, align 8
  store i8** %33, i8*** %2, align 8
  br label %34

34:                                               ; preds = %49, %32
  %35 = load i8**, i8*** %2, align 8
  %36 = load i8*, i8** %35, align 8
  %37 = icmp ne i8* %36, null
  br i1 %37, label %38, label %52

38:                                               ; preds = %34
  %39 = load i8**, i8*** %2, align 8
  %40 = load i8*, i8** %39, align 8
  %41 = load i8, i8* %40, align 1
  %42 = sext i8 %41 to i32
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %38
  %45 = load i8**, i8*** %2, align 8
  %46 = load i8*, i8** %45, align 8
  %47 = call i32 @p_rmdir(i8* %46)
  br label %48

48:                                               ; preds = %44, %38
  br label %49

49:                                               ; preds = %48
  %50 = load i8**, i8*** %2, align 8
  %51 = getelementptr inbounds i8*, i8** %50, i32 1
  store i8** %51, i8*** %2, align 8
  br label %34

52:                                               ; preds = %34
  %53 = call i32 (...) @cl_sandbox_set_search_path_defaults()
  ret void
}

declare dso_local i32 @cl_setenv(i32, i32*) #1

declare dso_local i32 @git__free(i32*) #1

declare dso_local i32 @p_rmdir(i8*) #1

declare dso_local i32 @cl_sandbox_set_search_path_defaults(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
