; ModuleID = '/home/carl/AnghaBench/libui/_wip/examples_drawtext/extr_main.c_main.c'
source_filename = "/home/carl/AnghaBench/libui/_wip/examples_drawtext/extr_main.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_9__ = type { i32, i32 }

@handlerDraw = common dso_local global i32 0, align 4
@handler = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@handlerMouseEvent = common dso_local global i32 0, align 4
@handlerMouseCrossed = common dso_local global i32 0, align 4
@handlerDragBroken = common dso_local global i32 0, align 4
@handlerKeyEvent = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"error initializing ui: %s\0A\00", align 1
@shouldQuit = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"libui Text-Drawing Example\00", align 1
@mainwin = common dso_local global i32 0, align 4
@onClosing = common dso_local global i32 0, align 4
@box = common dso_local global i32 0, align 4
@exampleList = common dso_local global i32 0, align 4
@area = common dso_local global i32 0, align 4
@examples = common dso_local global %struct.TYPE_9__** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %5 = load i32, i32* @handlerDraw, align 4
  store i32 %5, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @handler, i32 0, i32 4), align 4
  %6 = load i32, i32* @handlerMouseEvent, align 4
  store i32 %6, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @handler, i32 0, i32 3), align 4
  %7 = load i32, i32* @handlerMouseCrossed, align 4
  store i32 %7, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @handler, i32 0, i32 2), align 4
  %8 = load i32, i32* @handlerDragBroken, align 4
  store i32 %8, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @handler, i32 0, i32 1), align 4
  %9 = load i32, i32* @handlerKeyEvent, align 4
  store i32 %9, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @handler, i32 0, i32 0), align 4
  %10 = call i32 @memset(i32* %2, i32 0, i32 4)
  %11 = call i8* @uiInit(i32* %2)
  store i8* %11, i8** %3, align 8
  %12 = load i8*, i8** %3, align 8
  %13 = icmp ne i8* %12, null
  br i1 %13, label %14, label %20

14:                                               ; preds = %0
  %15 = load i32, i32* @stderr, align 4
  %16 = load i8*, i8** %3, align 8
  %17 = call i32 @fprintf(i32 %15, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i8* %16)
  %18 = load i8*, i8** %3, align 8
  %19 = call i32 @uiFreeInitError(i8* %18)
  store i32 1, i32* %1, align 4
  br label %184

20:                                               ; preds = %0
  %21 = load i32, i32* @shouldQuit, align 4
  %22 = call i32 @uiOnShouldQuit(i32 %21, i32* null)
  %23 = call i32 @uiNewWindow(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 640, i32 480, i32 1)
  store i32 %23, i32* @mainwin, align 4
  %24 = load i32, i32* @mainwin, align 4
  %25 = load i32, i32* @onClosing, align 4
  %26 = call i32 @uiWindowOnClosing(i32 %24, i32 %25, i32* null)
  %27 = call i32 (...) @uiNewVerticalBox()
  store i32 %27, i32* @box, align 4
  %28 = load i32, i32* @mainwin, align 4
  %29 = load i32, i32* @box, align 4
  %30 = call i32 @uiControl(i32 %29)
  %31 = call i32 @uiWindowSetChild(i32 %28, i32 %30)
  %32 = call i32 (...) @uiNewCombobox()
  store i32 %32, i32* @exampleList, align 4
  %33 = load i32, i32* @box, align 4
  %34 = load i32, i32* @exampleList, align 4
  %35 = call i32 @uiControl(i32 %34)
  %36 = call i32 @uiBoxAppend(i32 %33, i32 %35, i32 0)
  %37 = call i32 @uiNewArea(%struct.TYPE_8__* @handler)
  store i32 %37, i32* @area, align 4
  %38 = load i32, i32* @box, align 4
  %39 = load i32, i32* @area, align 4
  %40 = call i32 @uiControl(i32 %39)
  %41 = call i32 @uiBoxAppend(i32 %38, i32 %40, i32 1)
  store i32 0, i32* %4, align 4
  %42 = call %struct.TYPE_9__* (...) @mkBasicExample()
  %43 = load %struct.TYPE_9__**, %struct.TYPE_9__*** @examples, align 8
  %44 = load i32, i32* %4, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %43, i64 %45
  store %struct.TYPE_9__* %42, %struct.TYPE_9__** %46, align 8
  %47 = load i32, i32* @exampleList, align 4
  %48 = load %struct.TYPE_9__**, %struct.TYPE_9__*** @examples, align 8
  %49 = load i32, i32* %4, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %48, i64 %50
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @uiComboboxAppend(i32 %47, i32 %54)
  %56 = load %struct.TYPE_9__**, %struct.TYPE_9__*** @examples, align 8
  %57 = load i32, i32* %4, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %56, i64 %58
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @uiControlHide(i32 %62)
  %64 = load i32, i32* @box, align 4
  %65 = load %struct.TYPE_9__**, %struct.TYPE_9__*** @examples, align 8
  %66 = load i32, i32* %4, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %65, i64 %67
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @uiBoxAppend(i32 %64, i32 %71, i32 0)
  %73 = load i32, i32* %4, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %4, align 4
  %75 = call %struct.TYPE_9__* (...) @mkHitTestExample()
  %76 = load %struct.TYPE_9__**, %struct.TYPE_9__*** @examples, align 8
  %77 = load i32, i32* %4, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %76, i64 %78
  store %struct.TYPE_9__* %75, %struct.TYPE_9__** %79, align 8
  %80 = load i32, i32* @exampleList, align 4
  %81 = load %struct.TYPE_9__**, %struct.TYPE_9__*** @examples, align 8
  %82 = load i32, i32* %4, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %81, i64 %83
  %85 = load %struct.TYPE_9__*, %struct.TYPE_9__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @uiComboboxAppend(i32 %80, i32 %87)
  %89 = load %struct.TYPE_9__**, %struct.TYPE_9__*** @examples, align 8
  %90 = load i32, i32* %4, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %89, i64 %91
  %93 = load %struct.TYPE_9__*, %struct.TYPE_9__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @uiControlHide(i32 %95)
  %97 = load i32, i32* @box, align 4
  %98 = load %struct.TYPE_9__**, %struct.TYPE_9__*** @examples, align 8
  %99 = load i32, i32* %4, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %98, i64 %100
  %102 = load %struct.TYPE_9__*, %struct.TYPE_9__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @uiBoxAppend(i32 %97, i32 %104, i32 0)
  %106 = load i32, i32* %4, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %4, align 4
  %108 = call %struct.TYPE_9__* (...) @mkAttributesExample()
  %109 = load %struct.TYPE_9__**, %struct.TYPE_9__*** @examples, align 8
  %110 = load i32, i32* %4, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %109, i64 %111
  store %struct.TYPE_9__* %108, %struct.TYPE_9__** %112, align 8
  %113 = load i32, i32* @exampleList, align 4
  %114 = load %struct.TYPE_9__**, %struct.TYPE_9__*** @examples, align 8
  %115 = load i32, i32* %4, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %114, i64 %116
  %118 = load %struct.TYPE_9__*, %struct.TYPE_9__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @uiComboboxAppend(i32 %113, i32 %120)
  %122 = load %struct.TYPE_9__**, %struct.TYPE_9__*** @examples, align 8
  %123 = load i32, i32* %4, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %122, i64 %124
  %126 = load %struct.TYPE_9__*, %struct.TYPE_9__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = call i32 @uiControlHide(i32 %128)
  %130 = load i32, i32* @box, align 4
  %131 = load %struct.TYPE_9__**, %struct.TYPE_9__*** @examples, align 8
  %132 = load i32, i32* %4, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %131, i64 %133
  %135 = load %struct.TYPE_9__*, %struct.TYPE_9__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = call i32 @uiBoxAppend(i32 %130, i32 %137, i32 0)
  %139 = load i32, i32* %4, align 4
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %4, align 4
  %141 = call %struct.TYPE_9__* (...) @mkEmptyStringExample()
  %142 = load %struct.TYPE_9__**, %struct.TYPE_9__*** @examples, align 8
  %143 = load i32, i32* %4, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %142, i64 %144
  store %struct.TYPE_9__* %141, %struct.TYPE_9__** %145, align 8
  %146 = load i32, i32* @exampleList, align 4
  %147 = load %struct.TYPE_9__**, %struct.TYPE_9__*** @examples, align 8
  %148 = load i32, i32* %4, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %147, i64 %149
  %151 = load %struct.TYPE_9__*, %struct.TYPE_9__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 4
  %154 = call i32 @uiComboboxAppend(i32 %146, i32 %153)
  %155 = load %struct.TYPE_9__**, %struct.TYPE_9__*** @examples, align 8
  %156 = load i32, i32* %4, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %155, i64 %157
  %159 = load %struct.TYPE_9__*, %struct.TYPE_9__** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 4
  %162 = call i32 @uiControlHide(i32 %161)
  %163 = load i32, i32* @box, align 4
  %164 = load %struct.TYPE_9__**, %struct.TYPE_9__*** @examples, align 8
  %165 = load i32, i32* %4, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %164, i64 %166
  %168 = load %struct.TYPE_9__*, %struct.TYPE_9__** %167, align 8
  %169 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 4
  %171 = call i32 @uiBoxAppend(i32 %163, i32 %170, i32 0)
  %172 = load i32, i32* %4, align 4
  %173 = add nsw i32 %172, 1
  store i32 %173, i32* %4, align 4
  %174 = load i32, i32* @exampleList, align 4
  %175 = call i32 @uiComboboxSetSelected(i32 %174, i32 0)
  %176 = load i32, i32* @exampleList, align 4
  %177 = call i32 @uiComboboxOnSelected(i32 %176, i32 (i32*, i32*)* @onExampleChanged, i32* null)
  %178 = call i32 @onExampleChanged(i32* null, i32* null)
  %179 = load i32, i32* @mainwin, align 4
  %180 = call i32 @uiControl(i32 %179)
  %181 = call i32 @uiControlShow(i32 %180)
  %182 = call i32 (...) @uiMain()
  %183 = call i32 (...) @uiUninit()
  store i32 0, i32* %1, align 4
  br label %184

184:                                              ; preds = %20, %14
  %185 = load i32, i32* %1, align 4
  ret i32 %185
}

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i8* @uiInit(i32*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i32 @uiFreeInitError(i8*) #1

declare dso_local i32 @uiOnShouldQuit(i32, i32*) #1

declare dso_local i32 @uiNewWindow(i8*, i32, i32, i32) #1

declare dso_local i32 @uiWindowOnClosing(i32, i32, i32*) #1

declare dso_local i32 @uiNewVerticalBox(...) #1

declare dso_local i32 @uiWindowSetChild(i32, i32) #1

declare dso_local i32 @uiControl(i32) #1

declare dso_local i32 @uiNewCombobox(...) #1

declare dso_local i32 @uiBoxAppend(i32, i32, i32) #1

declare dso_local i32 @uiNewArea(%struct.TYPE_8__*) #1

declare dso_local %struct.TYPE_9__* @mkBasicExample(...) #1

declare dso_local i32 @uiComboboxAppend(i32, i32) #1

declare dso_local i32 @uiControlHide(i32) #1

declare dso_local %struct.TYPE_9__* @mkHitTestExample(...) #1

declare dso_local %struct.TYPE_9__* @mkAttributesExample(...) #1

declare dso_local %struct.TYPE_9__* @mkEmptyStringExample(...) #1

declare dso_local i32 @uiComboboxSetSelected(i32, i32) #1

declare dso_local i32 @uiComboboxOnSelected(i32, i32 (i32*, i32*)*, i32*) #1

declare dso_local i32 @onExampleChanged(i32*, i32*) #1

declare dso_local i32 @uiControlShow(i32) #1

declare dso_local i32 @uiMain(...) #1

declare dso_local i32 @uiUninit(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
