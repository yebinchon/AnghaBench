; ModuleID = '/home/carl/AnghaBench/libui/_wip/examples_opentype/extr_main.c_remakeAttrStr.c'
source_filename = "/home/carl/AnghaBench/libui/_wip/examples_opentype/extr_main.c_remakeAttrStr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32*, i32 }

@attrstr = common dso_local global i32* null, align 8
@textEntry = common dso_local global i32 0, align 4
@nullFeatures = common dso_local global i32 0, align 4
@uiAttributeFeatures = common dso_local global i32 0, align 4
@area = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @remakeAttrStr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @remakeAttrStr() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_3__, align 8
  %4 = load i32*, i32** @attrstr, align 8
  %5 = icmp ne i32* %4, null
  br i1 %5, label %6, label %9

6:                                                ; preds = %0
  %7 = load i32*, i32** @attrstr, align 8
  %8 = call i32 @uiFreeAttributedString(i32* %7)
  br label %9

9:                                                ; preds = %6, %0
  %10 = load i32, i32* @textEntry, align 4
  %11 = call i8* @uiEntryText(i32 %10)
  store i8* %11, i8** %1, align 8
  %12 = load i8*, i8** %1, align 8
  %13 = call i32* @uiNewAttributedString(i8* %12)
  store i32* %13, i32** @attrstr, align 8
  %14 = load i8*, i8** %1, align 8
  %15 = call i32 @uiFreeText(i8* %14)
  %16 = load i32, i32* @nullFeatures, align 4
  %17 = call i32 @uiCheckboxChecked(i32 %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %31, label %19

19:                                               ; preds = %9
  %20 = call i32* (...) @uiNewOpenTypeFeatures()
  store i32* %20, i32** %2, align 8
  %21 = load i32, i32* @uiAttributeFeatures, align 4
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 1
  store i32 %21, i32* %22, align 8
  %23 = load i32*, i32** %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 0
  store i32* %23, i32** %24, align 8
  %25 = load i32*, i32** @attrstr, align 8
  %26 = load i32*, i32** @attrstr, align 8
  %27 = call i32 @uiAttributedStringLen(i32* %26)
  %28 = call i32 @uiAttributedStringSetAttribute(i32* %25, %struct.TYPE_3__* %3, i32 0, i32 %27)
  %29 = load i32*, i32** %2, align 8
  %30 = call i32 @uiFreeOpenTypeFeatures(i32* %29)
  br label %31

31:                                               ; preds = %19, %9
  %32 = load i32, i32* @area, align 4
  %33 = call i32 @uiAreaQueueRedrawAll(i32 %32)
  ret void
}

declare dso_local i32 @uiFreeAttributedString(i32*) #1

declare dso_local i8* @uiEntryText(i32) #1

declare dso_local i32* @uiNewAttributedString(i8*) #1

declare dso_local i32 @uiFreeText(i8*) #1

declare dso_local i32 @uiCheckboxChecked(i32) #1

declare dso_local i32* @uiNewOpenTypeFeatures(...) #1

declare dso_local i32 @uiAttributedStringSetAttribute(i32*, %struct.TYPE_3__*, i32, i32) #1

declare dso_local i32 @uiAttributedStringLen(i32*) #1

declare dso_local i32 @uiFreeOpenTypeFeatures(i32*) #1

declare dso_local i32 @uiAreaQueueRedrawAll(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
