; ModuleID = '/home/carl/AnghaBench/glfw/src/extr_input.c_glfwGetInputMode.c'
source_filename = "/home/carl/AnghaBench/glfw/src/extr_input.c_glfwGetInputMode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32, i32 }

@GLFW_INVALID_ENUM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Invalid input mode 0x%08X\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @glfwGetInputMode(i32* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_2__*, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32*, i32** %4, align 8
  %8 = bitcast i32* %7 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %8, %struct.TYPE_2__** %6, align 8
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %10 = icmp ne %struct.TYPE_2__* %9, null
  %11 = zext i1 %10 to i32
  %12 = call i32 @assert(i32 %11)
  %13 = call i32 @_GLFW_REQUIRE_INIT_OR_RETURN(i32 0)
  %14 = load i32, i32* %5, align 4
  switch i32 %14, label %35 [
    i32 132, label %15
    i32 129, label %19
    i32 128, label %23
    i32 131, label %27
    i32 130, label %31
  ]

15:                                               ; preds = %2
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %3, align 4
  br label %39

19:                                               ; preds = %2
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %3, align 4
  br label %39

23:                                               ; preds = %2
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %3, align 4
  br label %39

27:                                               ; preds = %2
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %3, align 4
  br label %39

31:                                               ; preds = %2
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 4
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %3, align 4
  br label %39

35:                                               ; preds = %2
  %36 = load i32, i32* @GLFW_INVALID_ENUM, align 4
  %37 = load i32, i32* %5, align 4
  %38 = call i32 @_glfwInputError(i32 %36, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %37)
  store i32 0, i32* %3, align 4
  br label %39

39:                                               ; preds = %35, %31, %27, %23, %19, %15
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @_GLFW_REQUIRE_INIT_OR_RETURN(i32) #1

declare dso_local i32 @_glfwInputError(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
