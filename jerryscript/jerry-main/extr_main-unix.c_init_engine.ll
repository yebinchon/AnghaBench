; ModuleID = '/home/carl/AnghaBench/jerryscript/jerry-main/extr_main-unix.c_init_engine.c'
source_filename = "/home/carl/AnghaBench/jerryscript/jerry-main/extr_main-unix.c_init_engine.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"tcp\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"serial\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"rawpacket\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"websocket\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"assert\00", align 1
@jerryx_handler_assert = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [3 x i8] c"gc\00", align 1
@jerryx_handler_gc = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [6 x i8] c"print\00", align 1
@jerryx_handler_print = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [13 x i8] c"resourceName\00", align 1
@jerryx_handler_resource_name = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8*, i8*, i32, i8*)* @init_engine to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_engine(i32 %0, i8* %1, i8* %2, i32 %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store i8* %4, i8** %10, align 8
  %12 = load i32, i32* %6, align 4
  %13 = call i32 @jerry_init(i32 %12)
  %14 = load i8*, i8** %7, align 8
  %15 = call i64 @strcmp(i8* %14, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %64

17:                                               ; preds = %5
  store i32 0, i32* %11, align 4
  %18 = load i8*, i8** %8, align 8
  %19 = call i64 @strcmp(i8* %18, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %17
  %22 = load i32, i32* %9, align 4
  %23 = call i32 @jerryx_debugger_tcp_create(i32 %22)
  store i32 %23, i32* %11, align 4
  br label %33

24:                                               ; preds = %17
  %25 = load i8*, i8** %8, align 8
  %26 = call i64 @strcmp(i8* %25, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %27 = icmp ne i64 %26, 0
  %28 = xor i1 %27, true
  %29 = zext i1 %28 to i32
  %30 = call i32 @assert(i32 %29)
  %31 = load i8*, i8** %10, align 8
  %32 = call i32 @jerryx_debugger_serial_create(i8* %31)
  store i32 %32, i32* %11, align 4
  br label %33

33:                                               ; preds = %24, %21
  %34 = load i8*, i8** %7, align 8
  %35 = call i64 @strcmp(i8* %34, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %47, label %37

37:                                               ; preds = %33
  %38 = load i32, i32* %11, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %37
  %41 = call i64 (...) @jerryx_debugger_rp_create()
  %42 = icmp ne i64 %41, 0
  br label %43

43:                                               ; preds = %40, %37
  %44 = phi i1 [ false, %37 ], [ %42, %40 ]
  %45 = zext i1 %44 to i32
  %46 = call i32 @jerryx_debugger_after_connect(i32 %45)
  br label %63

47:                                               ; preds = %33
  %48 = load i8*, i8** %7, align 8
  %49 = call i64 @strcmp(i8* %48, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  %50 = icmp ne i64 %49, 0
  %51 = xor i1 %50, true
  %52 = zext i1 %51 to i32
  %53 = call i32 @assert(i32 %52)
  %54 = load i32, i32* %11, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %47
  %57 = call i64 (...) @jerryx_debugger_ws_create()
  %58 = icmp ne i64 %57, 0
  br label %59

59:                                               ; preds = %56, %47
  %60 = phi i1 [ false, %47 ], [ %58, %56 ]
  %61 = zext i1 %60 to i32
  %62 = call i32 @jerryx_debugger_after_connect(i32 %61)
  br label %63

63:                                               ; preds = %59, %43
  br label %64

64:                                               ; preds = %63, %5
  %65 = load i32, i32* @jerryx_handler_assert, align 4
  %66 = call i32 @register_js_function(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i32 %65)
  %67 = load i32, i32* @jerryx_handler_gc, align 4
  %68 = call i32 @register_js_function(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i32 %67)
  %69 = load i32, i32* @jerryx_handler_print, align 4
  %70 = call i32 @register_js_function(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i32 %69)
  %71 = load i32, i32* @jerryx_handler_resource_name, align 4
  %72 = call i32 @register_js_function(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0), i32 %71)
  ret void
}

declare dso_local i32 @jerry_init(i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @jerryx_debugger_tcp_create(i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @jerryx_debugger_serial_create(i8*) #1

declare dso_local i32 @jerryx_debugger_after_connect(i32) #1

declare dso_local i64 @jerryx_debugger_rp_create(...) #1

declare dso_local i64 @jerryx_debugger_ws_create(...) #1

declare dso_local i32 @register_js_function(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
