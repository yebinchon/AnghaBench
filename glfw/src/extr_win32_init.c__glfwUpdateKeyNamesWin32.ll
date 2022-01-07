; ModuleID = '/home/carl/AnghaBench/glfw/src/extr_win32_init.c__glfwUpdateKeyNamesWin32.c'
source_filename = "/home/carl/AnghaBench/glfw/src/extr_win32_init.c__glfwUpdateKeyNamesWin32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32*, i32* }

@_glfw = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@GLFW_KEY_SPACE = common dso_local global i32 0, align 4
@GLFW_KEY_LAST = common dso_local global i32 0, align 4
@GLFW_KEY_KP_0 = common dso_local global i32 0, align 4
@GLFW_KEY_KP_ADD = common dso_local global i32 0, align 4
@VK_NUMPAD0 = common dso_local global i32 0, align 4
@VK_NUMPAD1 = common dso_local global i32 0, align 4
@VK_NUMPAD2 = common dso_local global i32 0, align 4
@VK_NUMPAD3 = common dso_local global i32 0, align 4
@VK_NUMPAD4 = common dso_local global i32 0, align 4
@VK_NUMPAD5 = common dso_local global i32 0, align 4
@VK_NUMPAD6 = common dso_local global i32 0, align 4
@VK_NUMPAD7 = common dso_local global i32 0, align 4
@VK_NUMPAD8 = common dso_local global i32 0, align 4
@VK_NUMPAD9 = common dso_local global i32 0, align 4
@VK_DECIMAL = common dso_local global i32 0, align 4
@VK_DIVIDE = common dso_local global i32 0, align 4
@VK_MULTIPLY = common dso_local global i32 0, align 4
@VK_SUBTRACT = common dso_local global i32 0, align 4
@VK_ADD = common dso_local global i32 0, align 4
@MAPVK_VSC_TO_VK = common dso_local global i32 0, align 4
@CP_UTF8 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_glfwUpdateKeyNamesWin32() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [256 x i32], align 16
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca [16 x i32], align 16
  %7 = alloca [15 x i32], align 16
  %8 = bitcast [256 x i32]* %2 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %8, i8 0, i64 1024, i1 false)
  %9 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @_glfw, i32 0, i32 0, i32 1), align 8
  %10 = call i32 @memset(i32* %9, i32 0, i32 8)
  %11 = load i32, i32* @GLFW_KEY_SPACE, align 4
  store i32 %11, i32* %1, align 4
  br label %12

12:                                               ; preds = %101, %0
  %13 = load i32, i32* %1, align 4
  %14 = load i32, i32* @GLFW_KEY_LAST, align 4
  %15 = icmp sle i32 %13, %14
  br i1 %15, label %16, label %104

16:                                               ; preds = %12
  %17 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @_glfw, i32 0, i32 0, i32 0), align 8
  %18 = load i32, i32* %1, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i32, i32* %17, i64 %19
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* %4, align 4
  %23 = icmp eq i32 %22, -1
  br i1 %23, label %24, label %25

24:                                               ; preds = %16
  br label %101

25:                                               ; preds = %16
  %26 = load i32, i32* %1, align 4
  %27 = load i32, i32* @GLFW_KEY_KP_0, align 4
  %28 = icmp sge i32 %26, %27
  br i1 %28, label %29, label %70

29:                                               ; preds = %25
  %30 = load i32, i32* %1, align 4
  %31 = load i32, i32* @GLFW_KEY_KP_ADD, align 4
  %32 = icmp sle i32 %30, %31
  br i1 %32, label %33, label %70

33:                                               ; preds = %29
  %34 = getelementptr inbounds [15 x i32], [15 x i32]* %7, i64 0, i64 0
  %35 = load i32, i32* @VK_NUMPAD0, align 4
  store i32 %35, i32* %34, align 4
  %36 = getelementptr inbounds i32, i32* %34, i64 1
  %37 = load i32, i32* @VK_NUMPAD1, align 4
  store i32 %37, i32* %36, align 4
  %38 = getelementptr inbounds i32, i32* %36, i64 1
  %39 = load i32, i32* @VK_NUMPAD2, align 4
  store i32 %39, i32* %38, align 4
  %40 = getelementptr inbounds i32, i32* %38, i64 1
  %41 = load i32, i32* @VK_NUMPAD3, align 4
  store i32 %41, i32* %40, align 4
  %42 = getelementptr inbounds i32, i32* %40, i64 1
  %43 = load i32, i32* @VK_NUMPAD4, align 4
  store i32 %43, i32* %42, align 4
  %44 = getelementptr inbounds i32, i32* %42, i64 1
  %45 = load i32, i32* @VK_NUMPAD5, align 4
  store i32 %45, i32* %44, align 4
  %46 = getelementptr inbounds i32, i32* %44, i64 1
  %47 = load i32, i32* @VK_NUMPAD6, align 4
  store i32 %47, i32* %46, align 4
  %48 = getelementptr inbounds i32, i32* %46, i64 1
  %49 = load i32, i32* @VK_NUMPAD7, align 4
  store i32 %49, i32* %48, align 4
  %50 = getelementptr inbounds i32, i32* %48, i64 1
  %51 = load i32, i32* @VK_NUMPAD8, align 4
  store i32 %51, i32* %50, align 4
  %52 = getelementptr inbounds i32, i32* %50, i64 1
  %53 = load i32, i32* @VK_NUMPAD9, align 4
  store i32 %53, i32* %52, align 4
  %54 = getelementptr inbounds i32, i32* %52, i64 1
  %55 = load i32, i32* @VK_DECIMAL, align 4
  store i32 %55, i32* %54, align 4
  %56 = getelementptr inbounds i32, i32* %54, i64 1
  %57 = load i32, i32* @VK_DIVIDE, align 4
  store i32 %57, i32* %56, align 4
  %58 = getelementptr inbounds i32, i32* %56, i64 1
  %59 = load i32, i32* @VK_MULTIPLY, align 4
  store i32 %59, i32* %58, align 4
  %60 = getelementptr inbounds i32, i32* %58, i64 1
  %61 = load i32, i32* @VK_SUBTRACT, align 4
  store i32 %61, i32* %60, align 4
  %62 = getelementptr inbounds i32, i32* %60, i64 1
  %63 = load i32, i32* @VK_ADD, align 4
  store i32 %63, i32* %62, align 4
  %64 = load i32, i32* %1, align 4
  %65 = load i32, i32* @GLFW_KEY_KP_0, align 4
  %66 = sub nsw i32 %64, %65
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds [15 x i32], [15 x i32]* %7, i64 0, i64 %67
  %69 = load i32, i32* %68, align 4
  store i32 %69, i32* %3, align 4
  br label %74

70:                                               ; preds = %29, %25
  %71 = load i32, i32* %4, align 4
  %72 = load i32, i32* @MAPVK_VSC_TO_VK, align 4
  %73 = call i32 @MapVirtualKey(i32 %71, i32 %72)
  store i32 %73, i32* %3, align 4
  br label %74

74:                                               ; preds = %70, %33
  %75 = load i32, i32* %3, align 4
  %76 = load i32, i32* %4, align 4
  %77 = getelementptr inbounds [256 x i32], [256 x i32]* %2, i64 0, i64 0
  %78 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 0
  %79 = call i32 @ToUnicode(i32 %75, i32 %76, i32* %77, i32* %78, i32 16, i32 0)
  store i32 %79, i32* %5, align 4
  %80 = load i32, i32* %5, align 4
  %81 = icmp eq i32 %80, -1
  br i1 %81, label %82, label %88

82:                                               ; preds = %74
  %83 = load i32, i32* %3, align 4
  %84 = load i32, i32* %4, align 4
  %85 = getelementptr inbounds [256 x i32], [256 x i32]* %2, i64 0, i64 0
  %86 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 0
  %87 = call i32 @ToUnicode(i32 %83, i32 %84, i32* %85, i32* %86, i32 16, i32 0)
  store i32 %87, i32* %5, align 4
  br label %88

88:                                               ; preds = %82, %74
  %89 = load i32, i32* %5, align 4
  %90 = icmp slt i32 %89, 1
  br i1 %90, label %91, label %92

91:                                               ; preds = %88
  br label %101

92:                                               ; preds = %88
  %93 = load i32, i32* @CP_UTF8, align 4
  %94 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 0
  %95 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @_glfw, i32 0, i32 0, i32 1), align 8
  %96 = load i32, i32* %1, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i32, i32* %95, i64 %97
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @WideCharToMultiByte(i32 %93, i32 0, i32* %94, i32 1, i32 %99, i32 4, i32* null, i32* null)
  br label %101

101:                                              ; preds = %92, %91, %24
  %102 = load i32, i32* %1, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %1, align 4
  br label %12

104:                                              ; preds = %12
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @memset(i32*, i32, i32) #2

declare dso_local i32 @MapVirtualKey(i32, i32) #2

declare dso_local i32 @ToUnicode(i32, i32, i32*, i32*, i32, i32) #2

declare dso_local i32 @WideCharToMultiByte(i32, i32, i32*, i32, i32, i32, i32*, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
