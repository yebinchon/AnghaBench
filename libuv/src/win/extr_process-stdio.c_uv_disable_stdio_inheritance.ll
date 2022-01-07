; ModuleID = '/home/carl/AnghaBench/libuv/src/win/extr_process-stdio.c_uv_disable_stdio_inheritance.c'
source_filename = "/home/carl/AnghaBench/libuv/src/win/extr_process-stdio.c_uv_disable_stdio_inheritance.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@STD_INPUT_HANDLE = common dso_local global i32 0, align 4
@INVALID_HANDLE_VALUE = common dso_local global i32* null, align 8
@HANDLE_FLAG_INHERIT = common dso_local global i32 0, align 4
@STD_OUTPUT_HANDLE = common dso_local global i32 0, align 4
@STD_ERROR_HANDLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @uv_disable_stdio_inheritance() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca %struct.TYPE_3__, align 4
  %3 = load i32, i32* @STD_INPUT_HANDLE, align 4
  %4 = call i32* @GetStdHandle(i32 %3)
  store i32* %4, i32** %1, align 8
  %5 = load i32*, i32** %1, align 8
  %6 = icmp ne i32* %5, null
  br i1 %6, label %7, label %15

7:                                                ; preds = %0
  %8 = load i32*, i32** %1, align 8
  %9 = load i32*, i32** @INVALID_HANDLE_VALUE, align 8
  %10 = icmp ne i32* %8, %9
  br i1 %10, label %11, label %15

11:                                               ; preds = %7
  %12 = load i32*, i32** %1, align 8
  %13 = load i32, i32* @HANDLE_FLAG_INHERIT, align 4
  %14 = call i32 @SetHandleInformation(i32* %12, i32 %13, i32 0)
  br label %15

15:                                               ; preds = %11, %7, %0
  %16 = load i32, i32* @STD_OUTPUT_HANDLE, align 4
  %17 = call i32* @GetStdHandle(i32 %16)
  store i32* %17, i32** %1, align 8
  %18 = load i32*, i32** %1, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %20, label %28

20:                                               ; preds = %15
  %21 = load i32*, i32** %1, align 8
  %22 = load i32*, i32** @INVALID_HANDLE_VALUE, align 8
  %23 = icmp ne i32* %21, %22
  br i1 %23, label %24, label %28

24:                                               ; preds = %20
  %25 = load i32*, i32** %1, align 8
  %26 = load i32, i32* @HANDLE_FLAG_INHERIT, align 4
  %27 = call i32 @SetHandleInformation(i32* %25, i32 %26, i32 0)
  br label %28

28:                                               ; preds = %24, %20, %15
  %29 = load i32, i32* @STD_ERROR_HANDLE, align 4
  %30 = call i32* @GetStdHandle(i32 %29)
  store i32* %30, i32** %1, align 8
  %31 = load i32*, i32** %1, align 8
  %32 = icmp ne i32* %31, null
  br i1 %32, label %33, label %41

33:                                               ; preds = %28
  %34 = load i32*, i32** %1, align 8
  %35 = load i32*, i32** @INVALID_HANDLE_VALUE, align 8
  %36 = icmp ne i32* %34, %35
  br i1 %36, label %37, label %41

37:                                               ; preds = %33
  %38 = load i32*, i32** %1, align 8
  %39 = load i32, i32* @HANDLE_FLAG_INHERIT, align 4
  %40 = call i32 @SetHandleInformation(i32* %38, i32 %39, i32 0)
  br label %41

41:                                               ; preds = %37, %33, %28
  %42 = call i32 @GetStartupInfoW(%struct.TYPE_3__* %2)
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i64 @uv__stdio_verify(i32 %44, i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %41
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @uv__stdio_noinherit(i32 %51)
  br label %53

53:                                               ; preds = %49, %41
  ret void
}

declare dso_local i32* @GetStdHandle(i32) #1

declare dso_local i32 @SetHandleInformation(i32*, i32, i32) #1

declare dso_local i32 @GetStartupInfoW(%struct.TYPE_3__*) #1

declare dso_local i64 @uv__stdio_verify(i32, i32) #1

declare dso_local i32 @uv__stdio_noinherit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
