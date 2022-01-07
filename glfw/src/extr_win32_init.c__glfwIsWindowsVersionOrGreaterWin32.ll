; ModuleID = '/home/carl/AnghaBench/glfw/src/extr_win32_init.c__glfwIsWindowsVersionOrGreaterWin32.c'
source_filename = "/home/carl/AnghaBench/glfw/src/extr_win32_init.c__glfwIsWindowsVersionOrGreaterWin32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, %struct.TYPE_4__, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32 }

@VER_MAJORVERSION = common dso_local global i32 0, align 4
@VER_MINORVERSION = common dso_local global i32 0, align 4
@VER_SERVICEPACKMAJOR = common dso_local global i32 0, align 4
@VER_GREATER_EQUAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_glfwIsWindowsVersionOrGreaterWin32(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_5__, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  store i32 28, i32* %10, align 4
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 1
  %12 = load i32, i32* %4, align 4
  store i32 %12, i32* %11, align 4
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 2
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32, i32* %5, align 4
  store i32 %15, i32* %14, align 4
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 3
  store i32 0, i32* %16, align 4
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 4
  store i32 0, i32* %17, align 4
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 5
  store i32 0, i32* %18, align 4
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 6
  %20 = load i32, i32* %6, align 4
  store i32 %20, i32* %19, align 4
  %21 = load i32, i32* @VER_MAJORVERSION, align 4
  %22 = load i32, i32* @VER_MINORVERSION, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* @VER_SERVICEPACKMAJOR, align 4
  %25 = or i32 %23, %24
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* @VER_MAJORVERSION, align 4
  %27 = load i32, i32* @VER_GREATER_EQUAL, align 4
  %28 = call i64 @VerSetConditionMask(i64 0, i32 %26, i32 %27)
  store i64 %28, i64* %9, align 8
  %29 = load i64, i64* %9, align 8
  %30 = load i32, i32* @VER_MINORVERSION, align 4
  %31 = load i32, i32* @VER_GREATER_EQUAL, align 4
  %32 = call i64 @VerSetConditionMask(i64 %29, i32 %30, i32 %31)
  store i64 %32, i64* %9, align 8
  %33 = load i64, i64* %9, align 8
  %34 = load i32, i32* @VER_SERVICEPACKMAJOR, align 4
  %35 = load i32, i32* @VER_GREATER_EQUAL, align 4
  %36 = call i64 @VerSetConditionMask(i64 %33, i32 %34, i32 %35)
  store i64 %36, i64* %9, align 8
  %37 = load i32, i32* %8, align 4
  %38 = load i64, i64* %9, align 8
  %39 = call i64 @RtlVerifyVersionInfo(%struct.TYPE_5__* %7, i32 %37, i64 %38)
  %40 = icmp eq i64 %39, 0
  %41 = zext i1 %40 to i32
  ret i32 %41
}

declare dso_local i64 @VerSetConditionMask(i64, i32, i32) #1

declare dso_local i64 @RtlVerifyVersionInfo(%struct.TYPE_5__*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
