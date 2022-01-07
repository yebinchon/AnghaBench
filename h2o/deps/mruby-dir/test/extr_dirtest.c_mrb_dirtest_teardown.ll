; ModuleID = '/home/carl/AnghaBench/h2o/deps/mruby-dir/test/extr_dirtest.c_mrb_dirtest_teardown.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/mruby-dir/test/extr_dirtest.c_mrb_dirtest_teardown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dirent = type { i8* }

@.str = private unnamed_addr constant [8 x i8] c"sandbox\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"..\00", align 1
@E_RUNTIME_ERROR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [17 x i8] c"rmdir(%S) failed\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"pwd\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"chdir(%S) failed\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mrb_dirtest_teardown(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.dirent*, align 8
  %9 = alloca i8*, align 8
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load i32*, i32** %3, align 8
  %11 = load i32, i32* %4, align 4
  %12 = load i32*, i32** %3, align 8
  %13 = call i32 @mrb_intern_cstr(i32* %12, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %14 = call i32 @mrb_cv_get(i32* %10, i32 %11, i32 %13)
  store i32 %14, i32* %6, align 4
  %15 = load i32*, i32** %3, align 8
  %16 = load i32, i32* %6, align 4
  %17 = call i8* @mrb_str_to_cstr(i32* %15, i32 %16)
  store i8* %17, i8** %9, align 8
  %18 = load i8*, i8** %9, align 8
  %19 = call i32* @opendir(i8* %18)
  store i32* %19, i32** %7, align 8
  br label %20

20:                                               ; preds = %52, %36, %2
  %21 = load i32*, i32** %7, align 8
  %22 = call %struct.dirent* @readdir(i32* %21)
  store %struct.dirent* %22, %struct.dirent** %8, align 8
  %23 = icmp ne %struct.dirent* %22, null
  br i1 %23, label %24, label %53

24:                                               ; preds = %20
  %25 = load %struct.dirent*, %struct.dirent** %8, align 8
  %26 = getelementptr inbounds %struct.dirent, %struct.dirent* %25, i32 0, i32 0
  %27 = load i8*, i8** %26, align 8
  %28 = call i64 @strcmp(i8* %27, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %36, label %30

30:                                               ; preds = %24
  %31 = load %struct.dirent*, %struct.dirent** %8, align 8
  %32 = getelementptr inbounds %struct.dirent, %struct.dirent* %31, i32 0, i32 0
  %33 = load i8*, i8** %32, align 8
  %34 = call i64 @strcmp(i8* %33, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %30, %24
  br label %20

37:                                               ; preds = %30
  %38 = load %struct.dirent*, %struct.dirent** %8, align 8
  %39 = getelementptr inbounds %struct.dirent, %struct.dirent* %38, i32 0, i32 0
  %40 = load i8*, i8** %39, align 8
  %41 = call i32 @rmdir(i8* %40)
  %42 = icmp eq i32 %41, -1
  br i1 %42, label %43, label %52

43:                                               ; preds = %37
  %44 = load i32*, i32** %3, align 8
  %45 = load i32, i32* @E_RUNTIME_ERROR, align 4
  %46 = load i32*, i32** %3, align 8
  %47 = load %struct.dirent*, %struct.dirent** %8, align 8
  %48 = getelementptr inbounds %struct.dirent, %struct.dirent* %47, i32 0, i32 0
  %49 = load i8*, i8** %48, align 8
  %50 = call i32 @mrb_str_new_cstr(i32* %46, i8* %49)
  %51 = call i32 @mrb_raisef(i32* %44, i32 %45, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i32 %50)
  br label %52

52:                                               ; preds = %43, %37
  br label %20

53:                                               ; preds = %20
  %54 = load i32*, i32** %7, align 8
  %55 = call i32 @closedir(i32* %54)
  %56 = load i32*, i32** %3, align 8
  %57 = load i32, i32* %4, align 4
  %58 = load i32*, i32** %3, align 8
  %59 = call i32 @mrb_intern_cstr(i32* %58, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  %60 = call i32 @mrb_cv_get(i32* %56, i32 %57, i32 %59)
  store i32 %60, i32* %5, align 4
  %61 = load i32*, i32** %3, align 8
  %62 = load i32, i32* %5, align 4
  %63 = call i8* @mrb_str_to_cstr(i32* %61, i32 %62)
  store i8* %63, i8** %9, align 8
  %64 = load i8*, i8** %9, align 8
  %65 = call i32 @chdir(i8* %64)
  %66 = icmp eq i32 %65, -1
  br i1 %66, label %67, label %72

67:                                               ; preds = %53
  %68 = load i32*, i32** %3, align 8
  %69 = load i32, i32* @E_RUNTIME_ERROR, align 4
  %70 = load i32, i32* %5, align 4
  %71 = call i32 @mrb_raisef(i32* %68, i32 %69, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i32 %70)
  br label %72

72:                                               ; preds = %67, %53
  %73 = load i32*, i32** %3, align 8
  %74 = load i32, i32* %4, align 4
  %75 = load i32*, i32** %3, align 8
  %76 = call i32 @mrb_intern_cstr(i32* %75, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %77 = call i32 @mrb_cv_get(i32* %73, i32 %74, i32 %76)
  store i32 %77, i32* %6, align 4
  %78 = load i32*, i32** %3, align 8
  %79 = load i32, i32* %6, align 4
  %80 = call i8* @mrb_str_to_cstr(i32* %78, i32 %79)
  store i8* %80, i8** %9, align 8
  %81 = load i8*, i8** %9, align 8
  %82 = call i32 @rmdir(i8* %81)
  %83 = icmp eq i32 %82, -1
  br i1 %83, label %84, label %89

84:                                               ; preds = %72
  %85 = load i32*, i32** %3, align 8
  %86 = load i32, i32* @E_RUNTIME_ERROR, align 4
  %87 = load i32, i32* %6, align 4
  %88 = call i32 @mrb_raisef(i32* %85, i32 %86, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i32 %87)
  br label %89

89:                                               ; preds = %84, %72
  %90 = call i32 (...) @mrb_true_value()
  ret i32 %90
}

declare dso_local i32 @mrb_cv_get(i32*, i32, i32) #1

declare dso_local i32 @mrb_intern_cstr(i32*, i8*) #1

declare dso_local i8* @mrb_str_to_cstr(i32*, i32) #1

declare dso_local i32* @opendir(i8*) #1

declare dso_local %struct.dirent* @readdir(i32*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @rmdir(i8*) #1

declare dso_local i32 @mrb_raisef(i32*, i32, i8*, i32) #1

declare dso_local i32 @mrb_str_new_cstr(i32*, i8*) #1

declare dso_local i32 @closedir(i32*) #1

declare dso_local i32 @chdir(i8*) #1

declare dso_local i32 @mrb_true_value(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
