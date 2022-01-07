; ModuleID = '/home/carl/AnghaBench/glfw/src/extr_win32_window.c_translateKey.c'
source_filename = "/home/carl/AnghaBench/glfw/src/extr_win32_window.c_translateKey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32* }
%struct.TYPE_6__ = type { i64, i64, i64, i32 }

@VK_CONTROL = common dso_local global i64 0, align 8
@KF_EXTENDED = common dso_local global i32 0, align 4
@GLFW_KEY_RIGHT_CONTROL = common dso_local global i32 0, align 4
@PM_NOREMOVE = common dso_local global i32 0, align 4
@WM_KEYDOWN = common dso_local global i64 0, align 8
@WM_SYSKEYDOWN = common dso_local global i64 0, align 8
@WM_KEYUP = common dso_local global i64 0, align 8
@WM_SYSKEYUP = common dso_local global i64 0, align 8
@VK_MENU = common dso_local global i64 0, align 8
@_GLFW_KEY_INVALID = common dso_local global i32 0, align 4
@GLFW_KEY_LEFT_CONTROL = common dso_local global i32 0, align 4
@VK_PROCESSKEY = common dso_local global i64 0, align 8
@_glfw = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i32)* @translateKey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @translateKey(i64 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_6__, align 8
  %7 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i64, i64* %4, align 8
  %9 = load i64, i64* @VK_CONTROL, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %67

11:                                               ; preds = %2
  %12 = load i32, i32* %5, align 4
  %13 = call i32 @HIWORD(i32 %12)
  %14 = load i32, i32* @KF_EXTENDED, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %11
  %18 = load i32, i32* @GLFW_KEY_RIGHT_CONTROL, align 4
  store i32 %18, i32* %3, align 4
  br label %81

19:                                               ; preds = %11
  %20 = call i64 (...) @GetMessageTime()
  store i64 %20, i64* %7, align 8
  %21 = load i32, i32* @PM_NOREMOVE, align 4
  %22 = call i64 @PeekMessageW(%struct.TYPE_6__* %6, i32* null, i32 0, i32 0, i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %65

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @WM_KEYDOWN, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %44, label %29

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @WM_SYSKEYDOWN, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %44, label %34

34:                                               ; preds = %29
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @WM_KEYUP, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %44, label %39

39:                                               ; preds = %34
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @WM_SYSKEYUP, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %64

44:                                               ; preds = %39, %34, %29, %24
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @VK_MENU, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %63

49:                                               ; preds = %44
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 3
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @HIWORD(i32 %51)
  %53 = load i32, i32* @KF_EXTENDED, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %63

56:                                               ; preds = %49
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 2
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* %7, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %63

61:                                               ; preds = %56
  %62 = load i32, i32* @_GLFW_KEY_INVALID, align 4
  store i32 %62, i32* %3, align 4
  br label %81

63:                                               ; preds = %56, %49, %44
  br label %64

64:                                               ; preds = %63, %39
  br label %65

65:                                               ; preds = %64, %19
  %66 = load i32, i32* @GLFW_KEY_LEFT_CONTROL, align 4
  store i32 %66, i32* %3, align 4
  br label %81

67:                                               ; preds = %2
  %68 = load i64, i64* %4, align 8
  %69 = load i64, i64* @VK_PROCESSKEY, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %73

71:                                               ; preds = %67
  %72 = load i32, i32* @_GLFW_KEY_INVALID, align 4
  store i32 %72, i32* %3, align 4
  br label %81

73:                                               ; preds = %67
  %74 = load i32*, i32** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @_glfw, i32 0, i32 0, i32 0), align 8
  %75 = load i32, i32* %5, align 4
  %76 = call i32 @HIWORD(i32 %75)
  %77 = and i32 %76, 511
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %74, i64 %78
  %80 = load i32, i32* %79, align 4
  store i32 %80, i32* %3, align 4
  br label %81

81:                                               ; preds = %73, %71, %65, %61, %17
  %82 = load i32, i32* %3, align 4
  ret i32 %82
}

declare dso_local i32 @HIWORD(i32) #1

declare dso_local i64 @GetMessageTime(...) #1

declare dso_local i64 @PeekMessageW(%struct.TYPE_6__*, i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
