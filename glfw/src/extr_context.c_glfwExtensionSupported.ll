; ModuleID = '/home/carl/AnghaBench/glfw/src/extr_context.c_glfwExtensionSupported.c'
source_filename = "/home/carl/AnghaBench/glfw/src/extr_context.c_glfwExtensionSupported.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 (i8*)*, i64 (i32)*, i64 (i32, i32)*, i32 (i32, i32*)* }

@GLFW_FALSE = common dso_local global i32 0, align 4
@_glfw = common dso_local global %struct.TYPE_7__ zeroinitializer, align 4
@GLFW_NO_CURRENT_CONTEXT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [69 x i8] c"Cannot query extension without a current OpenGL or OpenGL ES context\00", align 1
@GLFW_INVALID_VALUE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"Extension name cannot be an empty string\00", align 1
@GL_NUM_EXTENSIONS = common dso_local global i32 0, align 4
@GL_EXTENSIONS = common dso_local global i32 0, align 4
@GLFW_PLATFORM_ERROR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"Extension string retrieval is broken\00", align 1
@GLFW_TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @glfwExtensionSupported(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %9 = load i8*, i8** %3, align 8
  %10 = icmp ne i8* %9, null
  %11 = zext i1 %10 to i32
  %12 = call i32 @assert(i32 %11)
  %13 = load i32, i32* @GLFW_FALSE, align 4
  %14 = call i32 @_GLFW_REQUIRE_INIT_OR_RETURN(i32 %13)
  %15 = call %struct.TYPE_6__* @_glfwPlatformGetTls(i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @_glfw, i32 0, i32 0))
  store %struct.TYPE_6__* %15, %struct.TYPE_6__** %4, align 8
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %17 = icmp ne %struct.TYPE_6__* %16, null
  br i1 %17, label %22, label %18

18:                                               ; preds = %1
  %19 = load i32, i32* @GLFW_NO_CURRENT_CONTEXT, align 4
  %20 = call i32 @_glfwInputError(i32 %19, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* @GLFW_FALSE, align 4
  store i32 %21, i32* %2, align 4
  br label %104

22:                                               ; preds = %1
  %23 = load i8*, i8** %3, align 8
  %24 = load i8, i8* %23, align 1
  %25 = sext i8 %24 to i32
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %22
  %28 = load i32, i32* @GLFW_INVALID_VALUE, align 4
  %29 = call i32 @_glfwInputError(i32 %28, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  %30 = load i32, i32* @GLFW_FALSE, align 4
  store i32 %30, i32* %2, align 4
  br label %104

31:                                               ; preds = %22
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp sge i32 %35, 3
  br i1 %36, label %37, label %75

37:                                               ; preds = %31
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 4
  %41 = load i32 (i32, i32*)*, i32 (i32, i32*)** %40, align 8
  %42 = load i32, i32* @GL_NUM_EXTENSIONS, align 4
  %43 = call i32 %41(i32 %42, i32* %6)
  store i32 0, i32* %5, align 4
  br label %44

44:                                               ; preds = %71, %37
  %45 = load i32, i32* %5, align 4
  %46 = load i32, i32* %6, align 4
  %47 = icmp slt i32 %45, %46
  br i1 %47, label %48, label %74

48:                                               ; preds = %44
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 3
  %52 = load i64 (i32, i32)*, i64 (i32, i32)** %51, align 8
  %53 = load i32, i32* @GL_EXTENSIONS, align 4
  %54 = load i32, i32* %5, align 4
  %55 = call i64 %52(i32 %53, i32 %54)
  %56 = inttoptr i64 %55 to i8*
  store i8* %56, i8** %7, align 8
  %57 = load i8*, i8** %7, align 8
  %58 = icmp ne i8* %57, null
  br i1 %58, label %63, label %59

59:                                               ; preds = %48
  %60 = load i32, i32* @GLFW_PLATFORM_ERROR, align 4
  %61 = call i32 @_glfwInputError(i32 %60, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0))
  %62 = load i32, i32* @GLFW_FALSE, align 4
  store i32 %62, i32* %2, align 4
  br label %104

63:                                               ; preds = %48
  %64 = load i8*, i8** %7, align 8
  %65 = load i8*, i8** %3, align 8
  %66 = call i64 @strcmp(i8* %64, i8* %65)
  %67 = icmp eq i64 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %63
  %69 = load i32, i32* @GLFW_TRUE, align 4
  store i32 %69, i32* %2, align 4
  br label %104

70:                                               ; preds = %63
  br label %71

71:                                               ; preds = %70
  %72 = load i32, i32* %5, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %5, align 4
  br label %44

74:                                               ; preds = %44
  br label %97

75:                                               ; preds = %31
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 2
  %79 = load i64 (i32)*, i64 (i32)** %78, align 8
  %80 = load i32, i32* @GL_EXTENSIONS, align 4
  %81 = call i64 %79(i32 %80)
  %82 = inttoptr i64 %81 to i8*
  store i8* %82, i8** %8, align 8
  %83 = load i8*, i8** %8, align 8
  %84 = icmp ne i8* %83, null
  br i1 %84, label %89, label %85

85:                                               ; preds = %75
  %86 = load i32, i32* @GLFW_PLATFORM_ERROR, align 4
  %87 = call i32 @_glfwInputError(i32 %86, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0))
  %88 = load i32, i32* @GLFW_FALSE, align 4
  store i32 %88, i32* %2, align 4
  br label %104

89:                                               ; preds = %75
  %90 = load i8*, i8** %3, align 8
  %91 = load i8*, i8** %8, align 8
  %92 = call i64 @_glfwStringInExtensionString(i8* %90, i8* %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %96

94:                                               ; preds = %89
  %95 = load i32, i32* @GLFW_TRUE, align 4
  store i32 %95, i32* %2, align 4
  br label %104

96:                                               ; preds = %89
  br label %97

97:                                               ; preds = %96, %74
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 1
  %101 = load i32 (i8*)*, i32 (i8*)** %100, align 8
  %102 = load i8*, i8** %3, align 8
  %103 = call i32 %101(i8* %102)
  store i32 %103, i32* %2, align 4
  br label %104

104:                                              ; preds = %97, %94, %85, %68, %59, %27, %18
  %105 = load i32, i32* %2, align 4
  ret i32 %105
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @_GLFW_REQUIRE_INIT_OR_RETURN(i32) #1

declare dso_local %struct.TYPE_6__* @_glfwPlatformGetTls(i32*) #1

declare dso_local i32 @_glfwInputError(i32, i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i64 @_glfwStringInExtensionString(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
