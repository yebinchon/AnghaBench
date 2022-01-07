; ModuleID = '/home/carl/AnghaBench/lab/engine/code/q3_ui/extr_ui_atoms.c_UI_Refresh.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/q3_ui/extr_ui_atoms.c_UI_Refresh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i64, i64, i64, i32, i8*, %struct.TYPE_4__*, i32, i32 }
%struct.TYPE_4__ = type { i32 (...)*, i64, i64 }

@uis = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@KEYCATCH_UI = common dso_local global i32 0, align 4
@SCREEN_WIDTH = common dso_local global i32 0, align 4
@SCREEN_HEIGHT = common dso_local global i32 0, align 4
@qfalse = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [8 x i8] c"(%d,%d)\00", align 1
@UI_LEFT = common dso_local global i32 0, align 4
@UI_SMALLFONT = common dso_local global i32 0, align 4
@colorRed = common dso_local global i32 0, align 4
@m_entersound = common dso_local global i8* null, align 8
@menu_in_sound = common dso_local global i32 0, align 4
@CHAN_LOCAL_SOUND = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @UI_Refresh(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @uis, i32 0, i32 1), align 4
  %5 = sub nsw i32 %3, %4
  store i32 %5, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @uis, i32 0, i32 0), align 8
  %6 = load i32, i32* %2, align 4
  store i32 %6, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @uis, i32 0, i32 1), align 4
  %7 = call i32 (...) @trap_Key_GetCatcher()
  %8 = load i32, i32* @KEYCATCH_UI, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  br label %85

12:                                               ; preds = %1
  %13 = call i32 (...) @UI_UpdateCvars()
  %14 = call i32 (...) @BG_UpdateItems()
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @uis, i32 0, i32 7), align 8
  %16 = icmp ne %struct.TYPE_4__* %15, null
  br i1 %16, label %17, label %58

17:                                               ; preds = %12
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @uis, i32 0, i32 7), align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 2
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %38

22:                                               ; preds = %17
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @uis, i32 0, i32 7), align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %22
  %28 = load i32, i32* @SCREEN_WIDTH, align 4
  %29 = load i32, i32* @SCREEN_HEIGHT, align 4
  %30 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @uis, i32 0, i32 9), align 4
  %31 = call i32 @UI_DrawHandlePic(i64 0, i64 0, i32 %28, i32 %29, i32 %30)
  br label %37

32:                                               ; preds = %22
  %33 = load i32, i32* @SCREEN_WIDTH, align 4
  %34 = load i32, i32* @SCREEN_HEIGHT, align 4
  %35 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @uis, i32 0, i32 8), align 8
  %36 = call i32 @UI_DrawHandlePic(i64 0, i64 0, i32 %33, i32 %34, i32 %35)
  br label %37

37:                                               ; preds = %32, %27
  br label %38

38:                                               ; preds = %37, %17
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @uis, i32 0, i32 7), align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i32 (...)*, i32 (...)** %40, align 8
  %42 = icmp ne i32 (...)* %41, null
  br i1 %42, label %43, label %48

43:                                               ; preds = %38
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @uis, i32 0, i32 7), align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i32 (...)*, i32 (...)** %45, align 8
  %47 = call i32 (...) %46()
  br label %51

48:                                               ; preds = %38
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @uis, i32 0, i32 7), align 8
  %50 = call i32 @Menu_Draw(%struct.TYPE_4__* %49)
  br label %51

51:                                               ; preds = %48, %43
  %52 = load i8*, i8** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @uis, i32 0, i32 6), align 8
  %53 = icmp ne i8* %52, null
  br i1 %53, label %54, label %57

54:                                               ; preds = %51
  %55 = call i32 @UI_MouseEvent(i32 0, i32 0)
  %56 = load i8*, i8** @qfalse, align 8
  store i8* %56, i8** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @uis, i32 0, i32 6), align 8
  br label %57

57:                                               ; preds = %54, %51
  br label %58

58:                                               ; preds = %57, %12
  %59 = call i32 @UI_SetColor(i32* null)
  %60 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @uis, i32 0, i32 3), align 8
  %61 = sub nsw i64 %60, 16
  %62 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @uis, i32 0, i32 2), align 8
  %63 = sub nsw i64 %62, 16
  %64 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @uis, i32 0, i32 5), align 8
  %65 = call i32 @UI_DrawHandlePic(i64 %61, i64 %63, i32 32, i32 32, i32 %64)
  %66 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @uis, i32 0, i32 4), align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %77

68:                                               ; preds = %58
  %69 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @uis, i32 0, i32 3), align 8
  %70 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @uis, i32 0, i32 2), align 8
  %71 = call i32 @va(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i64 %69, i64 %70)
  %72 = load i32, i32* @UI_LEFT, align 4
  %73 = load i32, i32* @UI_SMALLFONT, align 4
  %74 = or i32 %72, %73
  %75 = load i32, i32* @colorRed, align 4
  %76 = call i32 @UI_DrawString(i32 0, i32 0, i32 %71, i32 %74, i32 %75)
  br label %77

77:                                               ; preds = %68, %58
  %78 = load i8*, i8** @m_entersound, align 8
  %79 = icmp ne i8* %78, null
  br i1 %79, label %80, label %85

80:                                               ; preds = %77
  %81 = load i32, i32* @menu_in_sound, align 4
  %82 = load i32, i32* @CHAN_LOCAL_SOUND, align 4
  %83 = call i32 @trap_S_StartLocalSound(i32 %81, i32 %82)
  %84 = load i8*, i8** @qfalse, align 8
  store i8* %84, i8** @m_entersound, align 8
  br label %85

85:                                               ; preds = %11, %80, %77
  ret void
}

declare dso_local i32 @trap_Key_GetCatcher(...) #1

declare dso_local i32 @UI_UpdateCvars(...) #1

declare dso_local i32 @BG_UpdateItems(...) #1

declare dso_local i32 @UI_DrawHandlePic(i64, i64, i32, i32, i32) #1

declare dso_local i32 @Menu_Draw(%struct.TYPE_4__*) #1

declare dso_local i32 @UI_MouseEvent(i32, i32) #1

declare dso_local i32 @UI_SetColor(i32*) #1

declare dso_local i32 @UI_DrawString(i32, i32, i32, i32, i32) #1

declare dso_local i32 @va(i8*, i64, i64) #1

declare dso_local i32 @trap_S_StartLocalSound(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
