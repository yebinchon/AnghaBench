; ModuleID = '/home/carl/AnghaBench/lab/engine/code/ui/extr_ui_main.c__UI_MouseEvent.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/ui/extr_ui_main.c__UI_MouseEvent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32, i64 }

@uiInfo = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@SCREEN_WIDTH = common dso_local global i32 0, align 4
@SCREEN_HEIGHT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_UI_MouseEvent(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @uiInfo, i32 0, i32 0, i32 0), align 8
  %7 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @uiInfo, i32 0, i32 0, i32 1), align 4
  %8 = sdiv i32 %6, %7
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @uiInfo, i32 0, i32 0, i32 2), align 8
  %11 = add nsw i32 %10, %9
  store i32 %11, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @uiInfo, i32 0, i32 0, i32 2), align 8
  %12 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @uiInfo, i32 0, i32 0, i32 2), align 8
  %13 = load i32, i32* %5, align 4
  %14 = sub nsw i32 0, %13
  %15 = icmp slt i32 %12, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load i32, i32* %5, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @uiInfo, i32 0, i32 0, i32 2), align 8
  br label %30

19:                                               ; preds = %2
  %20 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @uiInfo, i32 0, i32 0, i32 2), align 8
  %21 = load i32, i32* @SCREEN_WIDTH, align 4
  %22 = load i32, i32* %5, align 4
  %23 = add nsw i32 %21, %22
  %24 = icmp sgt i32 %20, %23
  br i1 %24, label %25, label %29

25:                                               ; preds = %19
  %26 = load i32, i32* @SCREEN_WIDTH, align 4
  %27 = load i32, i32* %5, align 4
  %28 = add nsw i32 %26, %27
  store i32 %28, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @uiInfo, i32 0, i32 0, i32 2), align 8
  br label %29

29:                                               ; preds = %25, %19
  br label %30

30:                                               ; preds = %29, %16
  %31 = load i32, i32* %4, align 4
  %32 = sext i32 %31 to i64
  %33 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @uiInfo, i32 0, i32 0, i32 3), align 8
  %34 = add nsw i64 %33, %32
  store i64 %34, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @uiInfo, i32 0, i32 0, i32 3), align 8
  %35 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @uiInfo, i32 0, i32 0, i32 3), align 8
  %36 = icmp slt i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %30
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @uiInfo, i32 0, i32 0, i32 3), align 8
  br label %45

38:                                               ; preds = %30
  %39 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @uiInfo, i32 0, i32 0, i32 3), align 8
  %40 = load i64, i64* @SCREEN_HEIGHT, align 8
  %41 = icmp sgt i64 %39, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %38
  %43 = load i64, i64* @SCREEN_HEIGHT, align 8
  store i64 %43, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @uiInfo, i32 0, i32 0, i32 3), align 8
  br label %44

44:                                               ; preds = %42, %38
  br label %45

45:                                               ; preds = %44, %37
  %46 = call i64 (...) @Menu_Count()
  %47 = icmp sgt i64 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %45
  %49 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @uiInfo, i32 0, i32 0, i32 2), align 8
  %50 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @uiInfo, i32 0, i32 0, i32 3), align 8
  %51 = call i32 @Display_MouseMove(i32* null, i32 %49, i64 %50)
  br label %52

52:                                               ; preds = %48, %45
  ret void
}

declare dso_local i64 @Menu_Count(...) #1

declare dso_local i32 @Display_MouseMove(i32*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
