; ModuleID = '/home/carl/AnghaBench/glfw/src/extr_x11_window.c__glfwPushSelectionToManagerX11.c'
source_filename = "/home/carl/AnghaBench/glfw/src/extr_x11_window.c__glfwPushSelectionToManagerX11.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32, i32, i32 }
%struct.TYPE_10__ = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }

@_glfw = common dso_local global %struct.TYPE_11__ zeroinitializer, align 4
@None = common dso_local global i32 0, align 4
@CurrentTime = common dso_local global i32 0, align 4
@isSelectionEvent = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_glfwPushSelectionToManagerX11() #0 {
  %1 = alloca %struct.TYPE_10__, align 4
  %2 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @_glfw, i32 0, i32 0, i32 1), align 4
  %3 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @_glfw, i32 0, i32 0, i32 3), align 4
  %4 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @_glfw, i32 0, i32 0, i32 0), align 4
  %5 = load i32, i32* @None, align 4
  %6 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @_glfw, i32 0, i32 0, i32 2), align 4
  %7 = load i32, i32* @CurrentTime, align 4
  %8 = call i32 @XConvertSelection(i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7)
  br label %9

9:                                                ; preds = %31, %0
  br label %10

10:                                               ; preds = %30, %9
  %11 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @_glfw, i32 0, i32 0, i32 1), align 4
  %12 = load i32, i32* @isSelectionEvent, align 4
  %13 = call i64 @XCheckIfEvent(i32 %11, %struct.TYPE_10__* %1, i32 %12, i32* null)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %31

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %1, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  switch i32 %17, label %30 [
    i32 128, label %18
    i32 130, label %20
    i32 129, label %22
  ]

18:                                               ; preds = %15
  %19 = call i32 @handleSelectionRequest(%struct.TYPE_10__* %1)
  br label %30

20:                                               ; preds = %15
  %21 = call i32 @handleSelectionClear(%struct.TYPE_10__* %1)
  br label %30

22:                                               ; preds = %15
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %1, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @_glfw, i32 0, i32 0, i32 0), align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %22
  ret void

29:                                               ; preds = %22
  br label %30

30:                                               ; preds = %15, %29, %20, %18
  br label %10

31:                                               ; preds = %10
  %32 = call i32 @waitForEvent(i32* null)
  br label %9
}

declare dso_local i32 @XConvertSelection(i32, i32, i32, i32, i32, i32) #1

declare dso_local i64 @XCheckIfEvent(i32, %struct.TYPE_10__*, i32, i32*) #1

declare dso_local i32 @handleSelectionRequest(%struct.TYPE_10__*) #1

declare dso_local i32 @handleSelectionClear(%struct.TYPE_10__*) #1

declare dso_local i32 @waitForEvent(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
