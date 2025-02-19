; ModuleID = '/home/carl/AnghaBench/libuv/src/win/extr_util.c_uv_os_setpriority.c'
source_filename = "/home/carl/AnghaBench/libuv/src/win/extr_util.c_uv_os_setpriority.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@UV_PRIORITY_HIGHEST = common dso_local global i32 0, align 4
@UV_PRIORITY_LOW = common dso_local global i32 0, align 4
@UV_EINVAL = common dso_local global i32 0, align 4
@UV_PRIORITY_HIGH = common dso_local global i32 0, align 4
@REALTIME_PRIORITY_CLASS = common dso_local global i32 0, align 4
@UV_PRIORITY_ABOVE_NORMAL = common dso_local global i32 0, align 4
@HIGH_PRIORITY_CLASS = common dso_local global i32 0, align 4
@UV_PRIORITY_NORMAL = common dso_local global i32 0, align 4
@ABOVE_NORMAL_PRIORITY_CLASS = common dso_local global i32 0, align 4
@UV_PRIORITY_BELOW_NORMAL = common dso_local global i32 0, align 4
@NORMAL_PRIORITY_CLASS = common dso_local global i32 0, align 4
@BELOW_NORMAL_PRIORITY_CLASS = common dso_local global i32 0, align 4
@IDLE_PRIORITY_CLASS = common dso_local global i32 0, align 4
@PROCESS_SET_INFORMATION = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @uv_os_setpriority(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* @UV_PRIORITY_HIGHEST, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %16, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* @UV_PRIORITY_LOW, align 4
  %15 = icmp sgt i32 %13, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %12, %2
  %17 = load i32, i32* @UV_EINVAL, align 4
  store i32 %17, i32* %3, align 4
  br label %75

18:                                               ; preds = %12
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @UV_PRIORITY_HIGH, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %18
  %23 = load i32, i32* @REALTIME_PRIORITY_CLASS, align 4
  store i32 %23, i32* %7, align 4
  br label %54

24:                                               ; preds = %18
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* @UV_PRIORITY_ABOVE_NORMAL, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %24
  %29 = load i32, i32* @HIGH_PRIORITY_CLASS, align 4
  store i32 %29, i32* %7, align 4
  br label %53

30:                                               ; preds = %24
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* @UV_PRIORITY_NORMAL, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %30
  %35 = load i32, i32* @ABOVE_NORMAL_PRIORITY_CLASS, align 4
  store i32 %35, i32* %7, align 4
  br label %52

36:                                               ; preds = %30
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* @UV_PRIORITY_BELOW_NORMAL, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %36
  %41 = load i32, i32* @NORMAL_PRIORITY_CLASS, align 4
  store i32 %41, i32* %7, align 4
  br label %51

42:                                               ; preds = %36
  %43 = load i32, i32* %5, align 4
  %44 = load i32, i32* @UV_PRIORITY_LOW, align 4
  %45 = icmp slt i32 %43, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %42
  %47 = load i32, i32* @BELOW_NORMAL_PRIORITY_CLASS, align 4
  store i32 %47, i32* %7, align 4
  br label %50

48:                                               ; preds = %42
  %49 = load i32, i32* @IDLE_PRIORITY_CLASS, align 4
  store i32 %49, i32* %7, align 4
  br label %50

50:                                               ; preds = %48, %46
  br label %51

51:                                               ; preds = %50, %40
  br label %52

52:                                               ; preds = %51, %34
  br label %53

53:                                               ; preds = %52, %28
  br label %54

54:                                               ; preds = %53, %22
  br label %55

55:                                               ; preds = %54
  %56 = load i32, i32* %4, align 4
  %57 = load i32, i32* @PROCESS_SET_INFORMATION, align 4
  %58 = call i32 @uv__get_handle(i32 %56, i32 %57, i32* %6)
  store i32 %58, i32* %8, align 4
  %59 = load i32, i32* %8, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %55
  %62 = load i32, i32* %8, align 4
  store i32 %62, i32* %3, align 4
  br label %75

63:                                               ; preds = %55
  %64 = load i32, i32* %6, align 4
  %65 = load i32, i32* %7, align 4
  %66 = call i64 @SetPriorityClass(i32 %64, i32 %65)
  %67 = icmp eq i64 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %63
  %69 = call i32 (...) @GetLastError()
  %70 = call i32 @uv_translate_sys_error(i32 %69)
  store i32 %70, i32* %8, align 4
  br label %71

71:                                               ; preds = %68, %63
  %72 = load i32, i32* %6, align 4
  %73 = call i32 @CloseHandle(i32 %72)
  %74 = load i32, i32* %8, align 4
  store i32 %74, i32* %3, align 4
  br label %75

75:                                               ; preds = %71, %61, %16
  %76 = load i32, i32* %3, align 4
  ret i32 %76
}

declare dso_local i32 @uv__get_handle(i32, i32, i32*) #1

declare dso_local i64 @SetPriorityClass(i32, i32) #1

declare dso_local i32 @uv_translate_sys_error(i32) #1

declare dso_local i32 @GetLastError(...) #1

declare dso_local i32 @CloseHandle(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
