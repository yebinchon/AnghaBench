; ModuleID = '/home/carl/AnghaBench/glfw/src/extr_win32_init.c__glfwIsWindows10BuildOrGreaterWin32.c'
source_filename = "/home/carl/AnghaBench/glfw/src/extr_win32_init.c__glfwIsWindows10BuildOrGreaterWin32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32 }

@VER_MAJORVERSION = common dso_local global i32 0, align 4
@VER_MINORVERSION = common dso_local global i32 0, align 4
@VER_BUILDNUMBER = common dso_local global i32 0, align 4
@VER_GREATER_EQUAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_glfwIsWindows10BuildOrGreaterWin32(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_3__, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store i32 %0, i32* %2, align 4
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 0
  store i32 16, i32* %6, align 4
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 1
  store i32 10, i32* %7, align 4
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 2
  store i32 0, i32* %8, align 4
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 3
  %10 = load i32, i32* %2, align 4
  store i32 %10, i32* %9, align 4
  %11 = load i32, i32* @VER_MAJORVERSION, align 4
  %12 = load i32, i32* @VER_MINORVERSION, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* @VER_BUILDNUMBER, align 4
  %15 = or i32 %13, %14
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* @VER_MAJORVERSION, align 4
  %17 = load i32, i32* @VER_GREATER_EQUAL, align 4
  %18 = call i64 @VerSetConditionMask(i64 0, i32 %16, i32 %17)
  store i64 %18, i64* %5, align 8
  %19 = load i64, i64* %5, align 8
  %20 = load i32, i32* @VER_MINORVERSION, align 4
  %21 = load i32, i32* @VER_GREATER_EQUAL, align 4
  %22 = call i64 @VerSetConditionMask(i64 %19, i32 %20, i32 %21)
  store i64 %22, i64* %5, align 8
  %23 = load i64, i64* %5, align 8
  %24 = load i32, i32* @VER_BUILDNUMBER, align 4
  %25 = load i32, i32* @VER_GREATER_EQUAL, align 4
  %26 = call i64 @VerSetConditionMask(i64 %23, i32 %24, i32 %25)
  store i64 %26, i64* %5, align 8
  %27 = load i32, i32* %4, align 4
  %28 = load i64, i64* %5, align 8
  %29 = call i64 @RtlVerifyVersionInfo(%struct.TYPE_3__* %3, i32 %27, i64 %28)
  %30 = icmp eq i64 %29, 0
  %31 = zext i1 %30 to i32
  ret i32 %31
}

declare dso_local i64 @VerSetConditionMask(i64, i32, i32) #1

declare dso_local i64 @RtlVerifyVersionInfo(%struct.TYPE_3__*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
