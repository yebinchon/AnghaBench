; ModuleID = '/home/carl/AnghaBench/glfw/src/extr_input.c__glfwInputJoystickHat.c'
source_filename = "/home/carl/AnghaBench/glfw/src/extr_input.c__glfwInputJoystickHat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i8*, i8** }

@GLFW_PRESS = common dso_local global i8* null, align 8
@GLFW_RELEASE = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_glfwInputJoystickHat(%struct.TYPE_3__* %0, i32 %1, i8 signext %2) #0 {
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8, align 1
  %7 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8 %2, i8* %6, align 1
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* %5, align 4
  %12 = mul nsw i32 %11, 4
  %13 = add nsw i32 %10, %12
  store i32 %13, i32* %7, align 4
  %14 = load i8, i8* %6, align 1
  %15 = sext i8 %14 to i32
  %16 = and i32 %15, 1
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %3
  %19 = load i8*, i8** @GLFW_PRESS, align 8
  br label %22

20:                                               ; preds = %3
  %21 = load i8*, i8** @GLFW_RELEASE, align 8
  br label %22

22:                                               ; preds = %20, %18
  %23 = phi i8* [ %19, %18 ], [ %21, %20 ]
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 2
  %26 = load i8**, i8*** %25, align 8
  %27 = load i32, i32* %7, align 4
  %28 = add nsw i32 %27, 0
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i8*, i8** %26, i64 %29
  store i8* %23, i8** %30, align 8
  %31 = load i8, i8* %6, align 1
  %32 = sext i8 %31 to i32
  %33 = and i32 %32, 2
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %22
  %36 = load i8*, i8** @GLFW_PRESS, align 8
  br label %39

37:                                               ; preds = %22
  %38 = load i8*, i8** @GLFW_RELEASE, align 8
  br label %39

39:                                               ; preds = %37, %35
  %40 = phi i8* [ %36, %35 ], [ %38, %37 ]
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 2
  %43 = load i8**, i8*** %42, align 8
  %44 = load i32, i32* %7, align 4
  %45 = add nsw i32 %44, 1
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i8*, i8** %43, i64 %46
  store i8* %40, i8** %47, align 8
  %48 = load i8, i8* %6, align 1
  %49 = sext i8 %48 to i32
  %50 = and i32 %49, 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %39
  %53 = load i8*, i8** @GLFW_PRESS, align 8
  br label %56

54:                                               ; preds = %39
  %55 = load i8*, i8** @GLFW_RELEASE, align 8
  br label %56

56:                                               ; preds = %54, %52
  %57 = phi i8* [ %53, %52 ], [ %55, %54 ]
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 2
  %60 = load i8**, i8*** %59, align 8
  %61 = load i32, i32* %7, align 4
  %62 = add nsw i32 %61, 2
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i8*, i8** %60, i64 %63
  store i8* %57, i8** %64, align 8
  %65 = load i8, i8* %6, align 1
  %66 = sext i8 %65 to i32
  %67 = and i32 %66, 8
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %56
  %70 = load i8*, i8** @GLFW_PRESS, align 8
  br label %73

71:                                               ; preds = %56
  %72 = load i8*, i8** @GLFW_RELEASE, align 8
  br label %73

73:                                               ; preds = %71, %69
  %74 = phi i8* [ %70, %69 ], [ %72, %71 ]
  %75 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 2
  %77 = load i8**, i8*** %76, align 8
  %78 = load i32, i32* %7, align 4
  %79 = add nsw i32 %78, 3
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i8*, i8** %77, i64 %80
  store i8* %74, i8** %81, align 8
  %82 = load i8, i8* %6, align 1
  %83 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 1
  %85 = load i8*, i8** %84, align 8
  %86 = load i32, i32* %5, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i8, i8* %85, i64 %87
  store i8 %82, i8* %88, align 1
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
