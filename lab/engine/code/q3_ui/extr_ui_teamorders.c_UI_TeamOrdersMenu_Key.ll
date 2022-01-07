; ModuleID = '/home/carl/AnghaBench/lab/engine/code/q3_ui/extr_ui_teamorders.c_UI_TeamOrdersMenu_Key.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/q3_ui/extr_ui_teamorders.c_UI_TeamOrdersMenu_Key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, i32 (%struct.TYPE_7__*, i32)*, i32, i32 }
%struct.TYPE_8__ = type { i32 }

@teamOrdersMenuInfo = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@uis = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@PROP_HEIGHT = common dso_local global i32 0, align 4
@QM_ACTIVATED = common dso_local global i32 0, align 4
@menu_move_sound = common dso_local global i32 0, align 4
@menu_null_sound = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @UI_TeamOrdersMenu_Key(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %8 = call i64 @Menu_ItemAtCursor(i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @teamOrdersMenuInfo, i32 0, i32 0))
  %9 = inttoptr i64 %8 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %9, %struct.TYPE_7__** %4, align 8
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %11 = icmp ne %struct.TYPE_7__* %10, getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @teamOrdersMenuInfo, i32 0, i32 1)
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = load i32, i32* %3, align 4
  %14 = call i32 @Menu_DefaultKey(i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @teamOrdersMenuInfo, i32 0, i32 0), i32 %13)
  store i32 %14, i32* %2, align 4
  br label %124

15:                                               ; preds = %1
  %16 = load i32, i32* %3, align 4
  switch i32 %16, label %121 [
    i32 129, label %17
    i32 130, label %73
    i32 128, label %73
    i32 131, label %97
    i32 132, label %97
  ]

17:                                               ; preds = %15
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 3
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  store i32 %21, i32* %5, align 4
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 3
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* %6, align 4
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 3
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 4
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %5, align 4
  %33 = sub nsw i32 %31, %32
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 3
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* %6, align 4
  %39 = sub nsw i32 %37, %38
  %40 = call i32 @UI_CursorInRect(i32 %26, i32 %27, i32 %33, i32 %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %71

42:                                               ; preds = %17
  %43 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @uis, i32 0, i32 0), align 4
  %44 = load i32, i32* %6, align 4
  %45 = sub nsw i32 %43, %44
  %46 = load i32, i32* @PROP_HEIGHT, align 4
  %47 = sdiv i32 %45, %46
  store i32 %47, i32* %7, align 4
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 8
  %53 = load i32, i32* %7, align 4
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 1
  store i32 %53, i32* %55, align 4
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 3
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 2
  %59 = load i32 (%struct.TYPE_7__*, i32)*, i32 (%struct.TYPE_7__*, i32)** %58, align 8
  %60 = icmp ne i32 (%struct.TYPE_7__*, i32)* %59, null
  br i1 %60, label %61, label %70

61:                                               ; preds = %42
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 3
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 2
  %65 = load i32 (%struct.TYPE_7__*, i32)*, i32 (%struct.TYPE_7__*, i32)** %64, align 8
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %67 = load i32, i32* @QM_ACTIVATED, align 4
  %68 = call i32 %65(%struct.TYPE_7__* %66, i32 %67)
  %69 = load i32, i32* @menu_move_sound, align 4
  store i32 %69, i32* %2, align 4
  br label %124

70:                                               ; preds = %42
  br label %71

71:                                               ; preds = %70, %17
  %72 = load i32, i32* @menu_null_sound, align 4
  store i32 %72, i32* %2, align 4
  br label %124

73:                                               ; preds = %15, %15
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 0
  store i32 %76, i32* %78, align 8
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %90

83:                                               ; preds = %73
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 8
  %87 = sub nsw i32 %86, 1
  %88 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 1
  store i32 %87, i32* %89, align 4
  br label %95

90:                                               ; preds = %73
  %91 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = add nsw i32 %93, -1
  store i32 %94, i32* %92, align 4
  br label %95

95:                                               ; preds = %90, %83
  %96 = load i32, i32* @menu_move_sound, align 4
  store i32 %96, i32* %2, align 4
  br label %124

97:                                               ; preds = %15, %15
  %98 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %101, i32 0, i32 0
  store i32 %100, i32* %102, align 8
  %103 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %104 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %107 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 8
  %109 = sub nsw i32 %108, 1
  %110 = icmp eq i32 %105, %109
  br i1 %110, label %111, label %114

111:                                              ; preds = %97
  %112 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %113 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %112, i32 0, i32 1
  store i32 0, i32* %113, align 4
  br label %119

114:                                              ; preds = %97
  %115 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %116 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %116, align 4
  br label %119

119:                                              ; preds = %114, %111
  %120 = load i32, i32* @menu_move_sound, align 4
  store i32 %120, i32* %2, align 4
  br label %124

121:                                              ; preds = %15
  %122 = load i32, i32* %3, align 4
  %123 = call i32 @Menu_DefaultKey(i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @teamOrdersMenuInfo, i32 0, i32 0), i32 %122)
  store i32 %123, i32* %2, align 4
  br label %124

124:                                              ; preds = %121, %119, %95, %71, %61, %12
  %125 = load i32, i32* %2, align 4
  ret i32 %125
}

declare dso_local i64 @Menu_ItemAtCursor(i32*) #1

declare dso_local i32 @Menu_DefaultKey(i32*, i32) #1

declare dso_local i32 @UI_CursorInRect(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
