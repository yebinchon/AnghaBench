; ModuleID = '/home/carl/AnghaBench/glfw/src/extr_win32_window.c_getFullWindowSize.c'
source_filename = "/home/carl/AnghaBench/glfw/src/extr_win32_window.c_getFullWindowSize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32, i32, i32*, i32*, i32)* @getFullWindowSize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @getFullWindowSize(i32 %0, i32 %1, i32 %2, i32 %3, i32* %4, i32* %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_4__, align 4
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  store i32 %6, i32* %14, align 4
  %16 = bitcast %struct.TYPE_4__* %15 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %16, i8 0, i64 32, i1 false)
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 2
  %18 = load i32, i32* %10, align 4
  store i32 %18, i32* %17, align 4
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 3
  %20 = load i32, i32* %11, align 4
  store i32 %20, i32* %19, align 4
  %21 = call i64 (...) @_glfwIsWindows10AnniversaryUpdateOrGreaterWin32()
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %7
  %24 = load i32, i32* %8, align 4
  %25 = load i32, i32* @FALSE, align 4
  %26 = load i32, i32* %9, align 4
  %27 = load i32, i32* %14, align 4
  %28 = call i32 @AdjustWindowRectExForDpi(%struct.TYPE_4__* %15, i32 %24, i32 %25, i32 %26, i32 %27)
  br label %34

29:                                               ; preds = %7
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* @FALSE, align 4
  %32 = load i32, i32* %9, align 4
  %33 = call i32 @AdjustWindowRectEx(%struct.TYPE_4__* %15, i32 %30, i32 %31, i32 %32)
  br label %34

34:                                               ; preds = %29, %23
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 3
  %38 = load i32, i32* %37, align 4
  %39 = sub nsw i32 %36, %38
  %40 = load i32*, i32** %12, align 8
  store i32 %39, i32* %40, align 4
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 4
  %42 = load i32, i32* %41, align 4
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 5
  %44 = load i32, i32* %43, align 4
  %45 = sub nsw i32 %42, %44
  %46 = load i32*, i32** %13, align 8
  store i32 %45, i32* %46, align 4
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @_glfwIsWindows10AnniversaryUpdateOrGreaterWin32(...) #2

declare dso_local i32 @AdjustWindowRectExForDpi(%struct.TYPE_4__*, i32, i32, i32, i32) #2

declare dso_local i32 @AdjustWindowRectEx(%struct.TYPE_4__*, i32, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
