; ModuleID = '/home/carl/AnghaBench/glfw/tests/extr_glfwinfo.c_print_version.c'
source_filename = "/home/carl/AnghaBench/glfw/tests/extr_glfwinfo.c_print_version.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [31 x i8] c"GLFW header version: %u.%u.%u\0A\00", align 1
@GLFW_VERSION_MAJOR = common dso_local global i32 0, align 4
@GLFW_VERSION_MINOR = common dso_local global i32 0, align 4
@GLFW_VERSION_REVISION = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"GLFW library version: %u.%u.%u\0A\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"GLFW library version string: \22%s\22\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @print_version to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_version() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = call i32 @glfwGetVersion(i32* %1, i32* %2, i32* %3)
  %5 = load i32, i32* @GLFW_VERSION_MAJOR, align 4
  %6 = load i32, i32* @GLFW_VERSION_MINOR, align 4
  %7 = load i32, i32* @GLFW_VERSION_REVISION, align 4
  %8 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %5, i32 %6, i32 %7)
  %9 = load i32, i32* %1, align 4
  %10 = load i32, i32* %2, align 4
  %11 = load i32, i32* %3, align 4
  %12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %9, i32 %10, i32 %11)
  %13 = call i8* (...) @glfwGetVersionString()
  %14 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i8* %13)
  ret void
}

declare dso_local i32 @glfwGetVersion(i32*, i32*, i32*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i8* @glfwGetVersionString(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
