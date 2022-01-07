; ModuleID = '/home/carl/AnghaBench/lab/engine/code/q3_ui/extr_ui_qmenu.c_Menu_Draw.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/q3_ui/extr_ui_qmenu.c_Menu_Draw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64 }
%struct.TYPE_8__ = type { i32, i64* }
%struct.TYPE_9__ = type { i32, i32, i32, i32, i32, i32, i32 (i8*)*, i32 (%struct.TYPE_9__*)* }

@QMF_HIDDEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Menu_Draw: unknown type %d\00", align 1
@uis = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@QMF_INACTIVE = common dso_local global i32 0, align 4
@QMF_HASMOUSEFOCUS = common dso_local global i32 0, align 4
@colorYellow = common dso_local global i32 0, align 4
@colorWhite = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Menu_Draw(%struct.TYPE_8__* %0) #0 {
  %2 = alloca %struct.TYPE_8__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %2, align 8
  store i32 0, i32* %3, align 4
  br label %9

9:                                                ; preds = %149, %1
  %10 = load i32, i32* %3, align 4
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp slt i32 %10, %13
  br i1 %14, label %15, label %152

15:                                               ; preds = %9
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 1
  %18 = load i64*, i64** %17, align 8
  %19 = load i32, i32* %3, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i64, i64* %18, i64 %20
  %22 = load i64, i64* %21, align 8
  %23 = inttoptr i64 %22 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %23, %struct.TYPE_9__** %4, align 8
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @QMF_HIDDEN, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %15
  br label %149

31:                                               ; preds = %15
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 7
  %34 = load i32 (%struct.TYPE_9__*)*, i32 (%struct.TYPE_9__*)** %33, align 8
  %35 = icmp ne i32 (%struct.TYPE_9__*)* %34, null
  br i1 %35, label %36, label %42

36:                                               ; preds = %31
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 7
  %39 = load i32 (%struct.TYPE_9__*)*, i32 (%struct.TYPE_9__*)** %38, align 8
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %41 = call i32 %39(%struct.TYPE_9__* %40)
  br label %93

42:                                               ; preds = %31
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  switch i32 %45, label %86 [
    i32 132, label %46
    i32 134, label %50
    i32 130, label %54
    i32 129, label %58
    i32 137, label %62
    i32 136, label %66
    i32 128, label %70
    i32 131, label %74
    i32 133, label %78
    i32 135, label %82
  ]

46:                                               ; preds = %42
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %48 = bitcast %struct.TYPE_9__* %47 to i32*
  %49 = call i32 @RadioButton_Draw(i32* %48)
  br label %92

50:                                               ; preds = %42
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %52 = bitcast %struct.TYPE_9__* %51 to i32*
  %53 = call i32 @MenuField_Draw(i32* %52)
  br label %92

54:                                               ; preds = %42
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %56 = bitcast %struct.TYPE_9__* %55 to i32*
  %57 = call i32 @Slider_Draw(i32* %56)
  br label %92

58:                                               ; preds = %42
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %60 = bitcast %struct.TYPE_9__* %59 to i32*
  %61 = call i32 @SpinControl_Draw(i32* %60)
  br label %92

62:                                               ; preds = %42
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %64 = bitcast %struct.TYPE_9__* %63 to i32*
  %65 = call i32 @Action_Draw(i32* %64)
  br label %92

66:                                               ; preds = %42
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %68 = bitcast %struct.TYPE_9__* %67 to i32*
  %69 = call i32 @Bitmap_Draw(i32* %68)
  br label %92

70:                                               ; preds = %42
  %71 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %72 = bitcast %struct.TYPE_9__* %71 to i32*
  %73 = call i32 @Text_Draw(i32* %72)
  br label %92

74:                                               ; preds = %42
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %76 = bitcast %struct.TYPE_9__* %75 to i32*
  %77 = call i32 @ScrollList_Draw(i32* %76)
  br label %92

78:                                               ; preds = %42
  %79 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %80 = bitcast %struct.TYPE_9__* %79 to i32*
  %81 = call i32 @PText_Draw(i32* %80)
  br label %92

82:                                               ; preds = %42
  %83 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %84 = bitcast %struct.TYPE_9__* %83 to i32*
  %85 = call i32 @BText_Draw(i32* %84)
  br label %92

86:                                               ; preds = %42
  %87 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %88 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @va(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %89)
  %91 = call i32 @trap_Error(i32 %90)
  br label %92

92:                                               ; preds = %86, %82, %78, %74, %70, %66, %62, %58, %54, %50, %46
  br label %93

93:                                               ; preds = %92, %36
  %94 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @uis, i32 0, i32 0), align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %148

96:                                               ; preds = %93
  %97 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %98 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = load i32, i32* @QMF_INACTIVE, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %147, label %103

103:                                              ; preds = %96
  %104 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %105 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 8
  store i32 %106, i32* %5, align 4
  %107 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %108 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %107, i32 0, i32 3
  %109 = load i32, i32* %108, align 4
  store i32 %109, i32* %6, align 4
  %110 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %111 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %110, i32 0, i32 4
  %112 = load i32, i32* %111, align 8
  %113 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %114 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 8
  %116 = sub nsw i32 %112, %115
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %7, align 4
  %118 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %119 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %118, i32 0, i32 5
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %122 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %121, i32 0, i32 3
  %123 = load i32, i32* %122, align 4
  %124 = sub nsw i32 %120, %123
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %8, align 4
  %126 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %127 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = load i32, i32* @QMF_HASMOUSEFOCUS, align 4
  %130 = and i32 %128, %129
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %139

132:                                              ; preds = %103
  %133 = load i32, i32* %5, align 4
  %134 = load i32, i32* %6, align 4
  %135 = load i32, i32* %7, align 4
  %136 = load i32, i32* %8, align 4
  %137 = load i32, i32* @colorYellow, align 4
  %138 = call i32 @UI_DrawRect(i32 %133, i32 %134, i32 %135, i32 %136, i32 %137)
  br label %146

139:                                              ; preds = %103
  %140 = load i32, i32* %5, align 4
  %141 = load i32, i32* %6, align 4
  %142 = load i32, i32* %7, align 4
  %143 = load i32, i32* %8, align 4
  %144 = load i32, i32* @colorWhite, align 4
  %145 = call i32 @UI_DrawRect(i32 %140, i32 %141, i32 %142, i32 %143, i32 %144)
  br label %146

146:                                              ; preds = %139, %132
  br label %147

147:                                              ; preds = %146, %96
  br label %148

148:                                              ; preds = %147, %93
  br label %149

149:                                              ; preds = %148, %30
  %150 = load i32, i32* %3, align 4
  %151 = add nsw i32 %150, 1
  store i32 %151, i32* %3, align 4
  br label %9

152:                                              ; preds = %9
  %153 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %154 = call %struct.TYPE_9__* @Menu_ItemAtCursor(%struct.TYPE_8__* %153)
  store %struct.TYPE_9__* %154, %struct.TYPE_9__** %4, align 8
  %155 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %156 = icmp ne %struct.TYPE_9__* %155, null
  br i1 %156, label %157, label %169

157:                                              ; preds = %152
  %158 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %159 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %158, i32 0, i32 6
  %160 = load i32 (i8*)*, i32 (i8*)** %159, align 8
  %161 = icmp ne i32 (i8*)* %160, null
  br i1 %161, label %162, label %169

162:                                              ; preds = %157
  %163 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %164 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %163, i32 0, i32 6
  %165 = load i32 (i8*)*, i32 (i8*)** %164, align 8
  %166 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %167 = bitcast %struct.TYPE_9__* %166 to i8*
  %168 = call i32 %165(i8* %167)
  br label %169

169:                                              ; preds = %162, %157, %152
  ret void
}

declare dso_local i32 @RadioButton_Draw(i32*) #1

declare dso_local i32 @MenuField_Draw(i32*) #1

declare dso_local i32 @Slider_Draw(i32*) #1

declare dso_local i32 @SpinControl_Draw(i32*) #1

declare dso_local i32 @Action_Draw(i32*) #1

declare dso_local i32 @Bitmap_Draw(i32*) #1

declare dso_local i32 @Text_Draw(i32*) #1

declare dso_local i32 @ScrollList_Draw(i32*) #1

declare dso_local i32 @PText_Draw(i32*) #1

declare dso_local i32 @BText_Draw(i32*) #1

declare dso_local i32 @trap_Error(i32) #1

declare dso_local i32 @va(i8*, i32) #1

declare dso_local i32 @UI_DrawRect(i32, i32, i32, i32, i32) #1

declare dso_local %struct.TYPE_9__* @Menu_ItemAtCursor(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
