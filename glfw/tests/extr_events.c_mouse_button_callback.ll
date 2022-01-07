; ModuleID = '/home/carl/AnghaBench/glfw/tests/extr_events.c_mouse_button_callback.c'
source_filename = "/home/carl/AnghaBench/glfw/tests/extr_events.c_mouse_button_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [59 x i8] c"%08x to %i at %0.3f: Mouse button %i (%s) (with%s) was %s\0A\00", align 1
@counter = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32, i32)* @mouse_button_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mouse_button_callback(i32* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_3__*, align 8
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load i32*, i32** %5, align 8
  %11 = call %struct.TYPE_3__* @glfwGetWindowUserPointer(i32* %10)
  store %struct.TYPE_3__* %11, %struct.TYPE_3__** %9, align 8
  %12 = load i32, i32* @counter, align 4
  %13 = add nsw i32 %12, 1
  store i32 %13, i32* @counter, align 4
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call double (...) @glfwGetTime()
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = call i8* @get_button_name(i32 %19)
  %21 = load i32, i32* %8, align 4
  %22 = call i8* @get_mods_name(i32 %21)
  %23 = load i32, i32* %7, align 4
  %24 = call i8* @get_action_name(i32 %23)
  %25 = call i32 @printf(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0), i32 %12, i32 %16, double %17, i32 %18, i8* %20, i8* %22, i8* %24)
  ret void
}

declare dso_local %struct.TYPE_3__* @glfwGetWindowUserPointer(i32*) #1

declare dso_local i32 @printf(i8*, i32, i32, double, i32, i8*, i8*, i8*) #1

declare dso_local double @glfwGetTime(...) #1

declare dso_local i8* @get_button_name(i32) #1

declare dso_local i8* @get_mods_name(i32) #1

declare dso_local i8* @get_action_name(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
