; ModuleID = '/home/carl/AnghaBench/jerryscript/targets/riot-stm32f4/source/extr_main-riotos.c_test_jerry.c'
source_filename = "/home/carl/AnghaBench/jerryscript/targets/riot-stm32f4/source/extr_main-riotos.c_test_jerry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.test_jerry.script = private unnamed_addr constant [25 x i8] c"print ('Hello, World!');\00", align 16
@.str = private unnamed_addr constant [48 x i8] c"This test run the following script code: [%s]\0A\0A\00", align 1
@JERRY_INIT_EMPTY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"print\00", align 1
@jerryx_handler_print = common dso_local global i32 0, align 4
@JERRY_PARSE_NO_OPTS = common dso_local global i32 0, align 4
@JERRY_STANDALONE_EXIT_CODE_OK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [14 x i8] c"Script Error!\00", align 1
@JERRY_STANDALONE_EXIT_CODE_FAIL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @test_jerry(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i32, align 4
  %6 = alloca [25 x i8], align 16
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  %8 = load i32, i32* %3, align 4
  %9 = load i8**, i8*** %4, align 8
  %10 = call i32 (...) @jerry_create_undefined()
  store i32 %10, i32* %5, align 4
  %11 = bitcast [25 x i8]* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %11, i8* align 16 getelementptr inbounds ([25 x i8], [25 x i8]* @__const.test_jerry.script, i32 0, i32 0), i64 25, i1 false)
  %12 = getelementptr inbounds [25 x i8], [25 x i8]* %6, i64 0, i64 0
  %13 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i8* %12)
  %14 = load i32, i32* @JERRY_INIT_EMPTY, align 4
  %15 = call i32 @jerry_init(i32 %14)
  %16 = load i32, i32* @jerryx_handler_print, align 4
  %17 = call i32 @register_js_function(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %16)
  %18 = getelementptr inbounds [25 x i8], [25 x i8]* %6, i64 0, i64 0
  %19 = load i32, i32* @JERRY_PARSE_NO_OPTS, align 4
  %20 = call i32 @jerry_parse(i32* null, i32 0, i8* %18, i32 24, i32 %19)
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %5, align 4
  %22 = call i64 @jerry_value_is_error(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %2
  %25 = load i32, i32* %5, align 4
  %26 = call i32 @jerry_run(i32 %25)
  store i32 %26, i32* %5, align 4
  br label %27

27:                                               ; preds = %24, %2
  %28 = load i32, i32* @JERRY_STANDALONE_EXIT_CODE_OK, align 4
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %5, align 4
  %30 = call i64 @jerry_value_is_error(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %27
  %33 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  %34 = load i32, i32* @JERRY_STANDALONE_EXIT_CODE_FAIL, align 4
  store i32 %34, i32* %7, align 4
  br label %35

35:                                               ; preds = %32, %27
  %36 = load i32, i32* %5, align 4
  %37 = call i32 @jerry_release_value(i32 %36)
  %38 = call i32 (...) @jerry_cleanup()
  %39 = load i32, i32* %7, align 4
  ret i32 %39
}

declare dso_local i32 @jerry_create_undefined(...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @jerry_init(i32) #1

declare dso_local i32 @register_js_function(i8*, i32) #1

declare dso_local i32 @jerry_parse(i32*, i32, i8*, i32, i32) #1

declare dso_local i64 @jerry_value_is_error(i32) #1

declare dso_local i32 @jerry_run(i32) #1

declare dso_local i32 @jerry_release_value(i32) #1

declare dso_local i32 @jerry_cleanup(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
