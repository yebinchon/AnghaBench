; ModuleID = '/home/carl/AnghaBench/libuv/src/win/extr_util.c_uv_os_getpriority.c'
source_filename = "/home/carl/AnghaBench/libuv/src/win/extr_util.c_uv_os_getpriority.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@UV_EINVAL = common dso_local global i32 0, align 4
@PROCESS_QUERY_LIMITED_INFORMATION = common dso_local global i32 0, align 4
@REALTIME_PRIORITY_CLASS = common dso_local global i32 0, align 4
@UV_PRIORITY_HIGHEST = common dso_local global i32 0, align 4
@HIGH_PRIORITY_CLASS = common dso_local global i32 0, align 4
@UV_PRIORITY_HIGH = common dso_local global i32 0, align 4
@ABOVE_NORMAL_PRIORITY_CLASS = common dso_local global i32 0, align 4
@UV_PRIORITY_ABOVE_NORMAL = common dso_local global i32 0, align 4
@NORMAL_PRIORITY_CLASS = common dso_local global i32 0, align 4
@UV_PRIORITY_NORMAL = common dso_local global i32 0, align 4
@BELOW_NORMAL_PRIORITY_CLASS = common dso_local global i32 0, align 4
@UV_PRIORITY_BELOW_NORMAL = common dso_local global i32 0, align 4
@UV_PRIORITY_LOW = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @uv_os_getpriority(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  %8 = load i32*, i32** %5, align 8
  %9 = icmp eq i32* %8, null
  br i1 %9, label %10, label %12

10:                                               ; preds = %2
  %11 = load i32, i32* @UV_EINVAL, align 4
  store i32 %11, i32* %3, align 4
  br label %75

12:                                               ; preds = %2
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* @PROCESS_QUERY_LIMITED_INFORMATION, align 4
  %15 = call i32 @uv__get_handle(i32 %13, i32 %14, i32* %6)
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %12
  %19 = load i32, i32* %7, align 4
  store i32 %19, i32* %3, align 4
  br label %75

20:                                               ; preds = %12
  %21 = load i32, i32* %6, align 4
  %22 = call i32 @GetPriorityClass(i32 %21)
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %7, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %20
  %26 = call i32 (...) @GetLastError()
  %27 = call i32 @uv_translate_sys_error(i32 %26)
  store i32 %27, i32* %7, align 4
  br label %71

28:                                               ; preds = %20
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* @REALTIME_PRIORITY_CLASS, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %28
  %33 = load i32, i32* @UV_PRIORITY_HIGHEST, align 4
  %34 = load i32*, i32** %5, align 8
  store i32 %33, i32* %34, align 4
  br label %70

35:                                               ; preds = %28
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* @HIGH_PRIORITY_CLASS, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %35
  %40 = load i32, i32* @UV_PRIORITY_HIGH, align 4
  %41 = load i32*, i32** %5, align 8
  store i32 %40, i32* %41, align 4
  br label %69

42:                                               ; preds = %35
  %43 = load i32, i32* %7, align 4
  %44 = load i32, i32* @ABOVE_NORMAL_PRIORITY_CLASS, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %42
  %47 = load i32, i32* @UV_PRIORITY_ABOVE_NORMAL, align 4
  %48 = load i32*, i32** %5, align 8
  store i32 %47, i32* %48, align 4
  br label %68

49:                                               ; preds = %42
  %50 = load i32, i32* %7, align 4
  %51 = load i32, i32* @NORMAL_PRIORITY_CLASS, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %56

53:                                               ; preds = %49
  %54 = load i32, i32* @UV_PRIORITY_NORMAL, align 4
  %55 = load i32*, i32** %5, align 8
  store i32 %54, i32* %55, align 4
  br label %67

56:                                               ; preds = %49
  %57 = load i32, i32* %7, align 4
  %58 = load i32, i32* @BELOW_NORMAL_PRIORITY_CLASS, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %60, label %63

60:                                               ; preds = %56
  %61 = load i32, i32* @UV_PRIORITY_BELOW_NORMAL, align 4
  %62 = load i32*, i32** %5, align 8
  store i32 %61, i32* %62, align 4
  br label %66

63:                                               ; preds = %56
  %64 = load i32, i32* @UV_PRIORITY_LOW, align 4
  %65 = load i32*, i32** %5, align 8
  store i32 %64, i32* %65, align 4
  br label %66

66:                                               ; preds = %63, %60
  br label %67

67:                                               ; preds = %66, %53
  br label %68

68:                                               ; preds = %67, %46
  br label %69

69:                                               ; preds = %68, %39
  br label %70

70:                                               ; preds = %69, %32
  store i32 0, i32* %7, align 4
  br label %71

71:                                               ; preds = %70, %25
  %72 = load i32, i32* %6, align 4
  %73 = call i32 @CloseHandle(i32 %72)
  %74 = load i32, i32* %7, align 4
  store i32 %74, i32* %3, align 4
  br label %75

75:                                               ; preds = %71, %18, %10
  %76 = load i32, i32* %3, align 4
  ret i32 %76
}

declare dso_local i32 @uv__get_handle(i32, i32, i32*) #1

declare dso_local i32 @GetPriorityClass(i32) #1

declare dso_local i32 @uv_translate_sys_error(i32) #1

declare dso_local i32 @GetLastError(...) #1

declare dso_local i32 @CloseHandle(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
