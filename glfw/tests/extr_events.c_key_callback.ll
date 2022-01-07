; ModuleID = '/home/carl/AnghaBench/glfw/tests/extr_events.c_key_callback.c'
source_filename = "/home/carl/AnghaBench/glfw/tests/extr_events.c_key_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@.str = private unnamed_addr constant [75 x i8] c"%08x to %i at %0.3f: Key 0x%04x Scancode 0x%04x (%s) (%s) (with%s) was %s\0A\00", align 1
@counter = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [70 x i8] c"%08x to %i at %0.3f: Key 0x%04x Scancode 0x%04x (%s) (with%s) was %s\0A\00", align 1
@GLFW_PRESS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"(( closing %s ))\0A\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"enabled\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"disabled\00", align 1
@GLFW_LOCK_KEY_MODS = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [24 x i8] c"(( lock key mods %s ))\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32, i32, i32)* @key_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @key_callback(i32* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_3__*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %14 = load i32*, i32** %6, align 8
  %15 = call %struct.TYPE_3__* @glfwGetWindowUserPointer(i32* %14)
  store %struct.TYPE_3__* %15, %struct.TYPE_3__** %11, align 8
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* %8, align 4
  %18 = call i8* @glfwGetKeyName(i32 %16, i32 %17)
  store i8* %18, i8** %12, align 8
  %19 = load i8*, i8** %12, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %21, label %40

21:                                               ; preds = %5
  %22 = load i32, i32* @counter, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* @counter, align 4
  %24 = sext i32 %22 to i64
  %25 = inttoptr i64 %24 to i8*
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call double (...) @glfwGetTime()
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* %7, align 4
  %33 = call i8* @get_key_name(i32 %32)
  %34 = load i8*, i8** %12, align 8
  %35 = load i32, i32* %10, align 4
  %36 = call i8* @get_mods_name(i32 %35)
  %37 = load i32, i32* %9, align 4
  %38 = call i8* @get_action_name(i32 %37)
  %39 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str, i64 0, i64 0), i8* %25, i32 %28, double %29, i32 %30, i32 %31, i8* %33, i8* %34, i8* %36, i8* %38)
  br label %58

40:                                               ; preds = %5
  %41 = load i32, i32* @counter, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* @counter, align 4
  %43 = sext i32 %41 to i64
  %44 = inttoptr i64 %43 to i8*
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call double (...) @glfwGetTime()
  %49 = load i32, i32* %7, align 4
  %50 = load i32, i32* %8, align 4
  %51 = load i32, i32* %7, align 4
  %52 = call i8* @get_key_name(i32 %51)
  %53 = load i32, i32* %10, align 4
  %54 = call i8* @get_mods_name(i32 %53)
  %55 = load i32, i32* %9, align 4
  %56 = call i8* @get_action_name(i32 %55)
  %57 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.1, i64 0, i64 0), i8* %44, i32 %47, double %48, i32 %49, i32 %50, i8* %52, i8* %54, i8* %56)
  br label %58

58:                                               ; preds = %40, %21
  %59 = load i32, i32* %9, align 4
  %60 = load i32, i32* @GLFW_PRESS, align 4
  %61 = icmp ne i32 %59, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %58
  br label %98

63:                                               ; preds = %58
  %64 = load i32, i32* %7, align 4
  switch i32 %64, label %98 [
    i32 129, label %65
    i32 128, label %81
  ]

65:                                               ; preds = %63
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = icmp ne i32 %68, 0
  %70 = xor i1 %69, true
  %71 = zext i1 %70 to i32
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 1
  store i32 %71, i32* %73, align 4
  %74 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = icmp ne i32 %76, 0
  %78 = zext i1 %77 to i64
  %79 = select i1 %77, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0)
  %80 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i8* %79)
  br label %98

81:                                               ; preds = %63
  %82 = load i32*, i32** %6, align 8
  %83 = load i32, i32* @GLFW_LOCK_KEY_MODS, align 4
  %84 = call i32 @glfwGetInputMode(i32* %82, i32 %83)
  store i32 %84, i32* %13, align 4
  %85 = load i32*, i32** %6, align 8
  %86 = load i32, i32* @GLFW_LOCK_KEY_MODS, align 4
  %87 = load i32, i32* %13, align 4
  %88 = icmp ne i32 %87, 0
  %89 = xor i1 %88, true
  %90 = zext i1 %89 to i32
  %91 = call i32 @glfwSetInputMode(i32* %85, i32 %86, i32 %90)
  %92 = load i32, i32* %13, align 4
  %93 = icmp ne i32 %92, 0
  %94 = xor i1 %93, true
  %95 = zext i1 %94 to i64
  %96 = select i1 %94, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0)
  %97 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0), i8* %96)
  br label %98

98:                                               ; preds = %62, %63, %81, %65
  ret void
}

declare dso_local %struct.TYPE_3__* @glfwGetWindowUserPointer(i32*) #1

declare dso_local i8* @glfwGetKeyName(i32, i32) #1

declare dso_local i32 @printf(i8*, i8*, ...) #1

declare dso_local double @glfwGetTime(...) #1

declare dso_local i8* @get_key_name(i32) #1

declare dso_local i8* @get_mods_name(i32) #1

declare dso_local i8* @get_action_name(i32) #1

declare dso_local i32 @glfwGetInputMode(i32*, i32) #1

declare dso_local i32 @glfwSetInputMode(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
