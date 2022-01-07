; ModuleID = '/home/carl/AnghaBench/glfw/src/extr_linux_joystick.c__glfwInitJoysticksLinux.c'
source_filename = "/home/carl/AnghaBench/glfw/src/extr_linux_joystick.c__glfwInitJoysticksLinux.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i32, i32 }
%struct.dirent = type { i8* }

@.str = private unnamed_addr constant [11 x i8] c"/dev/input\00", align 1
@IN_NONBLOCK = common dso_local global i32 0, align 4
@IN_CLOEXEC = common dso_local global i32 0, align 4
@_glfw = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@IN_CREATE = common dso_local global i32 0, align 4
@IN_ATTRIB = common dso_local global i32 0, align 4
@IN_DELETE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"^event[0-9]\\+$\00", align 1
@GLFW_PLATFORM_ERROR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"Linux: Failed to compile regex\00", align 1
@GLFW_FALSE = common dso_local global i32 0, align 4
@PATH_MAX = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@compareJoysticks = common dso_local global i32 0, align 4
@GLFW_TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_glfwInitJoysticksLinux() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.dirent*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8** %2, align 8
  %9 = load i32, i32* @IN_NONBLOCK, align 4
  %10 = load i32, i32* @IN_CLOEXEC, align 4
  %11 = or i32 %9, %10
  %12 = call i64 @inotify_init1(i32 %11)
  store i64 %12, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @_glfw, i32 0, i32 1, i32 0), align 8
  %13 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @_glfw, i32 0, i32 1, i32 0), align 8
  %14 = icmp sgt i64 %13, 0
  br i1 %14, label %15, label %24

15:                                               ; preds = %0
  %16 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @_glfw, i32 0, i32 1, i32 0), align 8
  %17 = load i8*, i8** %2, align 8
  %18 = load i32, i32* @IN_CREATE, align 4
  %19 = load i32, i32* @IN_ATTRIB, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* @IN_DELETE, align 4
  %22 = or i32 %20, %21
  %23 = call i32 @inotify_add_watch(i64 %16, i8* %17, i32 %22)
  store i32 %23, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @_glfw, i32 0, i32 1, i32 2), align 4
  br label %24

24:                                               ; preds = %15, %0
  %25 = call i64 @regcomp(i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @_glfw, i32 0, i32 1, i32 1), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 0)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %24
  %28 = load i32, i32* @GLFW_PLATFORM_ERROR, align 4
  %29 = call i32 @_glfwInputError(i32 %28, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  %30 = load i32, i32* @GLFW_FALSE, align 4
  store i32 %30, i32* %1, align 4
  br label %75

31:                                               ; preds = %24
  store i32 0, i32* %3, align 4
  %32 = load i8*, i8** %2, align 8
  %33 = call i32* @opendir(i8* %32)
  store i32* %33, i32** %4, align 8
  %34 = load i32*, i32** %4, align 8
  %35 = icmp ne i32* %34, null
  br i1 %35, label %36, label %69

36:                                               ; preds = %31
  br label %37

37:                                               ; preds = %64, %47, %36
  %38 = load i32*, i32** %4, align 8
  %39 = call %struct.dirent* @readdir(i32* %38)
  store %struct.dirent* %39, %struct.dirent** %5, align 8
  %40 = icmp ne %struct.dirent* %39, null
  br i1 %40, label %41, label %66

41:                                               ; preds = %37
  %42 = load %struct.dirent*, %struct.dirent** %5, align 8
  %43 = getelementptr inbounds %struct.dirent, %struct.dirent* %42, i32 0, i32 0
  %44 = load i8*, i8** %43, align 8
  %45 = call i64 @regexec(i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @_glfw, i32 0, i32 1, i32 1), i8* %44, i32 1, i32* %6, i32 0)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %41
  br label %37

48:                                               ; preds = %41
  %49 = load i32, i32* @PATH_MAX, align 4
  %50 = zext i32 %49 to i64
  %51 = call i8* @llvm.stacksave()
  store i8* %51, i8** %7, align 8
  %52 = alloca i8, i64 %50, align 16
  store i64 %50, i64* %8, align 8
  %53 = trunc i64 %50 to i32
  %54 = load i8*, i8** %2, align 8
  %55 = load %struct.dirent*, %struct.dirent** %5, align 8
  %56 = getelementptr inbounds %struct.dirent, %struct.dirent* %55, i32 0, i32 0
  %57 = load i8*, i8** %56, align 8
  %58 = call i32 @snprintf(i8* %52, i32 %53, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* %54, i8* %57)
  %59 = call i64 @openJoystickDevice(i8* %52)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %48
  %62 = load i32, i32* %3, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %3, align 4
  br label %64

64:                                               ; preds = %61, %48
  %65 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %65)
  br label %37

66:                                               ; preds = %37
  %67 = load i32*, i32** %4, align 8
  %68 = call i32 @closedir(i32* %67)
  br label %69

69:                                               ; preds = %66, %31
  %70 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @_glfw, i32 0, i32 0), align 8
  %71 = load i32, i32* %3, align 4
  %72 = load i32, i32* @compareJoysticks, align 4
  %73 = call i32 @qsort(i32 %70, i32 %71, i32 4, i32 %72)
  %74 = load i32, i32* @GLFW_TRUE, align 4
  store i32 %74, i32* %1, align 4
  br label %75

75:                                               ; preds = %69, %27
  %76 = load i32, i32* %1, align 4
  ret i32 %76
}

declare dso_local i64 @inotify_init1(i32) #1

declare dso_local i32 @inotify_add_watch(i64, i8*, i32) #1

declare dso_local i64 @regcomp(i32*, i8*, i32) #1

declare dso_local i32 @_glfwInputError(i32, i8*) #1

declare dso_local i32* @opendir(i8*) #1

declare dso_local %struct.dirent* @readdir(i32*) #1

declare dso_local i64 @regexec(i32*, i8*, i32, i32*, i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i8*) #1

declare dso_local i64 @openJoystickDevice(i8*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @closedir(i32*) #1

declare dso_local i32 @qsort(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
