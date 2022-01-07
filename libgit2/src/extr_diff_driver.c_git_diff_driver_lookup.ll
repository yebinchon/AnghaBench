; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_diff_driver.c_git_diff_driver_lookup.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_diff_driver.c_git_diff_driver_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"diff\00", align 1
@__const.git_diff_driver_lookup.attrs = private unnamed_addr constant [1 x i8*] [i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0)], align 8
@global_drivers = common dso_local global i32* null, align 8
@DIFF_DRIVER_BINARY = common dso_local global i64 0, align 8
@DIFF_DRIVER_TEXT = common dso_local global i64 0, align 8
@GIT_ENOTFOUND = common dso_local global i32 0, align 4
@DIFF_DRIVER_AUTO = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @git_diff_driver_lookup(i32** %0, i32* %1, i32* %2, i8* %3) #0 {
  %5 = alloca i32**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca [1 x i8*], align 8
  %11 = alloca [1 x i8*], align 8
  store i32** %0, i32*** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i8* %3, i8** %8, align 8
  store i32 0, i32* %9, align 4
  %12 = bitcast [1 x i8*]* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %12, i8* align 8 bitcast ([1 x i8*]* @__const.git_diff_driver_lookup.attrs to i8*), i64 8, i1 false)
  %13 = load i32**, i32*** %5, align 8
  %14 = call i32 @assert(i32** %13)
  %15 = load i32**, i32*** %5, align 8
  store i32* null, i32** %15, align 8
  %16 = load i32*, i32** %6, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %18, label %25

18:                                               ; preds = %4
  %19 = load i8*, i8** %8, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %21, label %25

21:                                               ; preds = %18
  %22 = load i8*, i8** %8, align 8
  %23 = call i32 @strlen(i8* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %21, %18, %4
  br label %80

26:                                               ; preds = %21
  %27 = getelementptr inbounds [1 x i8*], [1 x i8*]* %10, i64 0, i64 0
  %28 = load i32*, i32** %6, align 8
  %29 = load i32*, i32** %7, align 8
  %30 = load i8*, i8** %8, align 8
  %31 = getelementptr inbounds [1 x i8*], [1 x i8*]* %11, i64 0, i64 0
  %32 = call i32 @git_attr_get_many_with_session(i8** %27, i32* %28, i32* %29, i32 0, i8* %30, i32 1, i8** %31)
  store i32 %32, i32* %9, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %26
  br label %79

35:                                               ; preds = %26
  %36 = getelementptr inbounds [1 x i8*], [1 x i8*]* %10, i64 0, i64 0
  %37 = load i8*, i8** %36, align 8
  %38 = call i64 @GIT_ATTR_IS_UNSPECIFIED(i8* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %35
  br label %78

41:                                               ; preds = %35
  %42 = getelementptr inbounds [1 x i8*], [1 x i8*]* %10, i64 0, i64 0
  %43 = load i8*, i8** %42, align 8
  %44 = call i64 @GIT_ATTR_IS_FALSE(i8* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %41
  %47 = load i32*, i32** @global_drivers, align 8
  %48 = load i64, i64* @DIFF_DRIVER_BINARY, align 8
  %49 = getelementptr inbounds i32, i32* %47, i64 %48
  %50 = load i32**, i32*** %5, align 8
  store i32* %49, i32** %50, align 8
  br label %77

51:                                               ; preds = %41
  %52 = getelementptr inbounds [1 x i8*], [1 x i8*]* %10, i64 0, i64 0
  %53 = load i8*, i8** %52, align 8
  %54 = call i64 @GIT_ATTR_IS_TRUE(i8* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %51
  %57 = load i32*, i32** @global_drivers, align 8
  %58 = load i64, i64* @DIFF_DRIVER_TEXT, align 8
  %59 = getelementptr inbounds i32, i32* %57, i64 %58
  %60 = load i32**, i32*** %5, align 8
  store i32* %59, i32** %60, align 8
  br label %76

61:                                               ; preds = %51
  %62 = load i32**, i32*** %5, align 8
  %63 = load i32*, i32** %6, align 8
  %64 = getelementptr inbounds [1 x i8*], [1 x i8*]* %10, i64 0, i64 0
  %65 = load i8*, i8** %64, align 8
  %66 = call i32 @git_diff_driver_load(i32** %62, i32* %63, i8* %65)
  store i32 %66, i32* %9, align 4
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %68, label %75

68:                                               ; preds = %61
  %69 = load i32, i32* %9, align 4
  %70 = load i32, i32* @GIT_ENOTFOUND, align 4
  %71 = icmp eq i32 %69, %70
  br i1 %71, label %72, label %74

72:                                               ; preds = %68
  store i32 0, i32* %9, align 4
  %73 = call i32 (...) @git_error_clear()
  br label %74

74:                                               ; preds = %72, %68
  br label %75

75:                                               ; preds = %74, %61
  br label %76

76:                                               ; preds = %75, %56
  br label %77

77:                                               ; preds = %76, %46
  br label %78

78:                                               ; preds = %77, %40
  br label %79

79:                                               ; preds = %78, %34
  br label %80

80:                                               ; preds = %79, %25
  %81 = load i32**, i32*** %5, align 8
  %82 = load i32*, i32** %81, align 8
  %83 = icmp ne i32* %82, null
  br i1 %83, label %89, label %84

84:                                               ; preds = %80
  %85 = load i32*, i32** @global_drivers, align 8
  %86 = load i64, i64* @DIFF_DRIVER_AUTO, align 8
  %87 = getelementptr inbounds i32, i32* %85, i64 %86
  %88 = load i32**, i32*** %5, align 8
  store i32* %87, i32** %88, align 8
  br label %89

89:                                               ; preds = %84, %80
  %90 = load i32, i32* %9, align 4
  ret i32 %90
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @assert(i32**) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @git_attr_get_many_with_session(i8**, i32*, i32*, i32, i8*, i32, i8**) #2

declare dso_local i64 @GIT_ATTR_IS_UNSPECIFIED(i8*) #2

declare dso_local i64 @GIT_ATTR_IS_FALSE(i8*) #2

declare dso_local i64 @GIT_ATTR_IS_TRUE(i8*) #2

declare dso_local i32 @git_diff_driver_load(i32**, i32*, i8*) #2

declare dso_local i32 @git_error_clear(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
