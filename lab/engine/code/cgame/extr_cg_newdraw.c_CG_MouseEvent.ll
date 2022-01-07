; ModuleID = '/home/carl/AnghaBench/lab/engine/code/cgame/extr_cg_newdraw.c_CG_MouseEvent.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/cgame/extr_cg_newdraw.c_CG_MouseEvent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_7__ = type { i32, i32, i32*, %struct.TYPE_6__, i64 }
%struct.TYPE_6__ = type { i64, i64 }

@cg = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@PM_NORMAL = common dso_local global i64 0, align 8
@PM_SPECTATOR = common dso_local global i64 0, align 8
@qfalse = common dso_local global i64 0, align 8
@cgs = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@CURSOR_ARROW = common dso_local global i32 0, align 4
@CURSOR_SIZER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CG_MouseEvent(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %6 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @cg, i32 0, i32 1, i32 0), align 8
  %7 = load i64, i64* @PM_NORMAL, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %13, label %9

9:                                                ; preds = %2
  %10 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @cg, i32 0, i32 1, i32 0), align 8
  %11 = load i64, i64* @PM_SPECTATOR, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %19

13:                                               ; preds = %9, %2
  %14 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @cg, i32 0, i32 0), align 8
  %15 = load i64, i64* @qfalse, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %13
  %18 = call i32 @trap_Key_SetCatcher(i32 0)
  br label %71

19:                                               ; preds = %13, %9
  %20 = load i32, i32* %3, align 4
  %21 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @cgs, i32 0, i32 0), align 8
  %22 = add nsw i32 %21, %20
  store i32 %22, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @cgs, i32 0, i32 0), align 8
  %23 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @cgs, i32 0, i32 0), align 8
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %19
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @cgs, i32 0, i32 0), align 8
  br label %31

26:                                               ; preds = %19
  %27 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @cgs, i32 0, i32 0), align 8
  %28 = icmp sgt i32 %27, 640
  br i1 %28, label %29, label %30

29:                                               ; preds = %26
  store i32 640, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @cgs, i32 0, i32 0), align 8
  br label %30

30:                                               ; preds = %29, %26
  br label %31

31:                                               ; preds = %30, %25
  %32 = load i32, i32* %4, align 4
  %33 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @cgs, i32 0, i32 1), align 4
  %34 = add nsw i32 %33, %32
  store i32 %34, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @cgs, i32 0, i32 1), align 4
  %35 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @cgs, i32 0, i32 1), align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %31
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @cgs, i32 0, i32 1), align 4
  br label %43

38:                                               ; preds = %31
  %39 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @cgs, i32 0, i32 1), align 4
  %40 = icmp sgt i32 %39, 480
  br i1 %40, label %41, label %42

41:                                               ; preds = %38
  store i32 480, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @cgs, i32 0, i32 1), align 4
  br label %42

42:                                               ; preds = %41, %38
  br label %43

43:                                               ; preds = %42, %37
  %44 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @cgs, i32 0, i32 0), align 8
  %45 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @cgs, i32 0, i32 1), align 4
  %46 = call i32 @Display_CursorType(i32 %44, i32 %45)
  store i32 %46, i32* %5, align 4
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @cgs, i32 0, i32 4), align 8
  %47 = load i32, i32* %5, align 4
  %48 = load i32, i32* @CURSOR_ARROW, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %52

50:                                               ; preds = %43
  %51 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @cgs, i32 0, i32 3, i32 1), align 8
  store i64 %51, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @cgs, i32 0, i32 4), align 8
  br label %59

52:                                               ; preds = %43
  %53 = load i32, i32* %5, align 4
  %54 = load i32, i32* @CURSOR_SIZER, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %56, label %58

56:                                               ; preds = %52
  %57 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @cgs, i32 0, i32 3, i32 0), align 8
  store i64 %57, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @cgs, i32 0, i32 4), align 8
  br label %58

58:                                               ; preds = %56, %52
  br label %59

59:                                               ; preds = %58, %50
  %60 = load i32*, i32** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @cgs, i32 0, i32 2), align 8
  %61 = icmp ne i32* %60, null
  br i1 %61, label %62, label %67

62:                                               ; preds = %59
  %63 = load i32*, i32** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @cgs, i32 0, i32 2), align 8
  %64 = load i32, i32* %3, align 4
  %65 = load i32, i32* %4, align 4
  %66 = call i32 @Display_MouseMove(i32* %63, i32 %64, i32 %65)
  br label %71

67:                                               ; preds = %59
  %68 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @cgs, i32 0, i32 0), align 8
  %69 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @cgs, i32 0, i32 1), align 4
  %70 = call i32 @Display_MouseMove(i32* null, i32 %68, i32 %69)
  br label %71

71:                                               ; preds = %17, %67, %62
  ret void
}

declare dso_local i32 @trap_Key_SetCatcher(i32) #1

declare dso_local i32 @Display_CursorType(i32, i32) #1

declare dso_local i32 @Display_MouseMove(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
