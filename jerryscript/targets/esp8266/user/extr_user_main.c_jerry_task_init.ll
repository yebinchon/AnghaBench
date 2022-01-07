; ModuleID = '/home/carl/AnghaBench/jerryscript/targets/esp8266/user/extr_user_main.c_jerry_task_init.c'
source_filename = "/home/carl/AnghaBench/jerryscript/targets/esp8266/user/extr_user_main.c_jerry_task_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8*, i32, i64 }

@DECLARE_JS_CODES = common dso_local global i32 0, align 4
@js_codes = common dso_local global %struct.TYPE_2__* null, align 8
@.str = private unnamed_addr constant [31 x i8] c"js_eval failed code(%d) [%s]\0D\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @jerry_task_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jerry_task_init() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = load i32, i32* @DECLARE_JS_CODES, align 4
  %6 = call i32 (...) @js_entry()
  %7 = call i32 @show_free_mem(i32 2)
  store i32 1, i32* %2, align 4
  br label %8

8:                                                ; preds = %42, %0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** @js_codes, align 8
  %10 = load i32, i32* %2, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i64 %11
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 2
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %45

16:                                               ; preds = %8
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** @js_codes, align 8
  %18 = load i32, i32* %2, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** @js_codes, align 8
  %24 = load i32, i32* %2, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @js_eval(i64 %22, i32 %28)
  store i32 %29, i32* %3, align 4
  %30 = load i32, i32* %3, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %41

32:                                               ; preds = %16
  %33 = load i32, i32* %3, align 4
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** @js_codes, align 8
  %35 = load i32, i32* %2, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i8*, i8** %38, align 8
  %40 = call i32 @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %33, i8* %39)
  store i32 -1, i32* %1, align 4
  br label %66

41:                                               ; preds = %16
  br label %42

42:                                               ; preds = %41
  %43 = load i32, i32* %2, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %2, align 4
  br label %8

45:                                               ; preds = %8
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** @js_codes, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i64 0
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** @js_codes, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i64 0
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @js_eval(i64 %49, i32 %53)
  store i32 %54, i32* %4, align 4
  %55 = load i32, i32* %4, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %64

57:                                               ; preds = %45
  %58 = load i32, i32* %4, align 4
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** @js_codes, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i64 0
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i8*, i8** %61, align 8
  %63 = call i32 @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %58, i8* %62)
  store i32 -2, i32* %1, align 4
  br label %66

64:                                               ; preds = %45
  %65 = call i32 @show_free_mem(i32 3)
  store i32 0, i32* %1, align 4
  br label %66

66:                                               ; preds = %64, %57, %32
  %67 = load i32, i32* %1, align 4
  ret i32 %67
}

declare dso_local i32 @js_entry(...) #1

declare dso_local i32 @show_free_mem(i32) #1

declare dso_local i32 @js_eval(i64, i32) #1

declare dso_local i32 @printf(i8*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
