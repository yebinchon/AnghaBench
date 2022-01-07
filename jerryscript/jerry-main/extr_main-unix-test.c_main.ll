; ModuleID = '/home/carl/AnghaBench/jerryscript/jerry-main/extr_main-unix-test.c_main.c'
source_filename = "/home/carl/AnghaBench/jerryscript/jerry-main/extr_main-unix-test.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"-h\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"--help\00", align 1
@JERRY_STANDALONE_EXIT_CODE_OK = common dso_local global i32 0, align 4
@JERRY_INIT_EMPTY = common dso_local global i32 0, align 4
@JERRY_ERROR_COMMON = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@JERRY_PARSE_NO_OPTS = common dso_local global i32 0, align 4
@JERRY_LOG_LEVEL_ERROR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [36 x i8] c"Unhandled exception: Script Error!\0A\00", align 1
@JERRY_STANDALONE_EXIT_CODE_FAIL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %13 = call i64 (...) @jerry_port_get_current_time()
  %14 = trunc i64 %13 to i32
  %15 = call i32 @srand(i32 %14)
  %16 = load i32, i32* %4, align 4
  %17 = icmp sle i32 %16, 1
  br i1 %17, label %33, label %18

18:                                               ; preds = %2
  %19 = load i32, i32* %4, align 4
  %20 = icmp eq i32 %19, 2
  br i1 %20, label %21, label %39

21:                                               ; preds = %18
  %22 = load i8**, i8*** %5, align 8
  %23 = getelementptr inbounds i8*, i8** %22, i64 1
  %24 = load i8*, i8** %23, align 8
  %25 = call i32 @strcmp(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %21
  %28 = load i8**, i8*** %5, align 8
  %29 = getelementptr inbounds i8*, i8** %28, i64 1
  %30 = load i8*, i8** %29, align 8
  %31 = call i32 @strcmp(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %39, label %33

33:                                               ; preds = %27, %21, %2
  %34 = load i8**, i8*** %5, align 8
  %35 = getelementptr inbounds i8*, i8** %34, i64 0
  %36 = load i8*, i8** %35, align 8
  %37 = call i32 @print_help(i8* %36)
  %38 = load i32, i32* @JERRY_STANDALONE_EXIT_CODE_OK, align 4
  store i32 %38, i32* %3, align 4
  br label %101

39:                                               ; preds = %27, %18
  %40 = load i32, i32* @JERRY_INIT_EMPTY, align 4
  %41 = call i32 @jerry_init(i32 %40)
  %42 = call i32 (...) @jerry_create_undefined()
  store i32 %42, i32* %6, align 4
  store i32 1, i32* %7, align 4
  br label %43

43:                                               ; preds = %84, %39
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* %4, align 4
  %46 = icmp slt i32 %44, %45
  br i1 %46, label %47, label %87

47:                                               ; preds = %43
  %48 = load i8**, i8*** %5, align 8
  %49 = load i32, i32* %7, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i8*, i8** %48, i64 %50
  %52 = load i8*, i8** %51, align 8
  store i8* %52, i8** %8, align 8
  %53 = load i8*, i8** %8, align 8
  %54 = call i32* @read_file(i8* %53, i64* %9)
  store i32* %54, i32** %10, align 8
  %55 = load i32*, i32** %10, align 8
  %56 = icmp eq i32* %55, null
  br i1 %56, label %57, label %60

57:                                               ; preds = %47
  %58 = load i32, i32* @JERRY_ERROR_COMMON, align 4
  %59 = call i32 @jerry_create_error(i32 %58, i32* bitcast ([1 x i8]* @.str.2 to i32*))
  store i32 %59, i32* %6, align 4
  br label %87

60:                                               ; preds = %47
  %61 = load i32*, i32** %10, align 8
  %62 = load i64, i64* %9, align 8
  %63 = load i32, i32* @JERRY_PARSE_NO_OPTS, align 4
  %64 = call i32 @jerry_parse(i32* null, i32 0, i32* %61, i64 %62, i32 %63)
  store i32 %64, i32* %6, align 4
  %65 = load i32, i32* %6, align 4
  %66 = call i64 @jerry_value_is_error(i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %74, label %68

68:                                               ; preds = %60
  %69 = load i32, i32* %6, align 4
  store i32 %69, i32* %11, align 4
  %70 = load i32, i32* %11, align 4
  %71 = call i32 @jerry_run(i32 %70)
  store i32 %71, i32* %6, align 4
  %72 = load i32, i32* %11, align 4
  %73 = call i32 @jerry_release_value(i32 %72)
  br label %74

74:                                               ; preds = %68, %60
  br label %75

75:                                               ; preds = %74
  %76 = load i32, i32* %6, align 4
  %77 = call i64 @jerry_value_is_error(i32 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %75
  br label %87

80:                                               ; preds = %75
  %81 = load i32, i32* %6, align 4
  %82 = call i32 @jerry_release_value(i32 %81)
  %83 = call i32 (...) @jerry_create_undefined()
  store i32 %83, i32* %6, align 4
  br label %84

84:                                               ; preds = %80
  %85 = load i32, i32* %7, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %7, align 4
  br label %43

87:                                               ; preds = %79, %57, %43
  %88 = load i32, i32* @JERRY_STANDALONE_EXIT_CODE_OK, align 4
  store i32 %88, i32* %12, align 4
  %89 = load i32, i32* %6, align 4
  %90 = call i64 @jerry_value_is_error(i32 %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %96

92:                                               ; preds = %87
  %93 = load i32, i32* @JERRY_LOG_LEVEL_ERROR, align 4
  %94 = call i32 @jerry_port_log(i32 %93, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0))
  %95 = load i32, i32* @JERRY_STANDALONE_EXIT_CODE_FAIL, align 4
  store i32 %95, i32* %12, align 4
  br label %96

96:                                               ; preds = %92, %87
  %97 = load i32, i32* %6, align 4
  %98 = call i32 @jerry_release_value(i32 %97)
  %99 = call i32 (...) @jerry_cleanup()
  %100 = load i32, i32* %12, align 4
  store i32 %100, i32* %3, align 4
  br label %101

101:                                              ; preds = %96, %33
  %102 = load i32, i32* %3, align 4
  ret i32 %102
}

declare dso_local i32 @srand(i32) #1

declare dso_local i64 @jerry_port_get_current_time(...) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @print_help(i8*) #1

declare dso_local i32 @jerry_init(i32) #1

declare dso_local i32 @jerry_create_undefined(...) #1

declare dso_local i32* @read_file(i8*, i64*) #1

declare dso_local i32 @jerry_create_error(i32, i32*) #1

declare dso_local i32 @jerry_parse(i32*, i32, i32*, i64, i32) #1

declare dso_local i64 @jerry_value_is_error(i32) #1

declare dso_local i32 @jerry_run(i32) #1

declare dso_local i32 @jerry_release_value(i32) #1

declare dso_local i32 @jerry_port_log(i32, i8*) #1

declare dso_local i32 @jerry_cleanup(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
