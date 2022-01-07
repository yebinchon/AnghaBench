; ModuleID = '/home/carl/AnghaBench/libui/test/extr_page16.c_makePage16.c'
source_filename = "/home/carl/AnghaBench/libui/test/extr_page16.c_makePage16.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, i32 }
%struct.TYPE_10__ = type { i32, i32, i32, i32, i32 }

@img = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [33 x i8] c"andlabs_16x16test_24june2016.png\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"andlabs_32x32test_24june2016.png\00", align 1
@.str.2 = private unnamed_addr constant [55 x i8] c"tango-icon-theme-0.8.90_16x16_x-office-spreadsheet.png\00", align 1
@.str.3 = private unnamed_addr constant [55 x i8] c"tango-icon-theme-0.8.90_32x32_x-office-spreadsheet.png\00", align 1
@row9text = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [5 x i8] c"Part\00", align 1
@checkStates = common dso_local global %struct.TYPE_9__* null, align 8
@modelNumColumns = common dso_local global i32 0, align 4
@mh = common dso_local global %struct.TYPE_10__ zeroinitializer, align 4
@modelColumnType = common dso_local global i32 0, align 4
@modelNumRows = common dso_local global i32 0, align 4
@modelCellValue = common dso_local global i32 0, align 4
@modelSetCellValue = common dso_local global i32 0, align 4
@m = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [9 x i8] c"Column 1\00", align 1
@uiTableModelColumnNeverEditable = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [9 x i8] c"Column 2\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"Editable\00", align 1
@uiTableModelColumnAlwaysEditable = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [11 x i8] c"Checkboxes\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"Buttons\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"Progress Bar\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @makePage16() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_9__, align 4
  %4 = alloca %struct.TYPE_9__, align 4
  %5 = call i32 @uiNewImage(i32 16, i32 16)
  %6 = load i32*, i32** @img, align 8
  %7 = getelementptr inbounds i32, i32* %6, i64 0
  store i32 %5, i32* %7, align 4
  %8 = load i32*, i32** @img, align 8
  %9 = getelementptr inbounds i32, i32* %8, i64 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @appendImageNamed(i32 %10, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %12 = load i32*, i32** @img, align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @appendImageNamed(i32 %14, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %16 = call i32 @uiNewImage(i32 16, i32 16)
  %17 = load i32*, i32** @img, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 1
  store i32 %16, i32* %18, align 4
  %19 = load i32*, i32** @img, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @appendImageNamed(i32 %21, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.2, i64 0, i64 0))
  %23 = load i32*, i32** @img, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @appendImageNamed(i32 %25, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.3, i64 0, i64 0))
  %27 = load i32, i32* @row9text, align 4
  %28 = call i32 @strcpy(i32 %27, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** @checkStates, align 8
  %30 = call i32 @memset(%struct.TYPE_9__* %29, i32 0, i32 60)
  %31 = call i32* (...) @newVerticalBox()
  store i32* %31, i32** %1, align 8
  %32 = load i32, i32* @modelNumColumns, align 4
  store i32 %32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @mh, i32 0, i32 4), align 4
  %33 = load i32, i32* @modelColumnType, align 4
  store i32 %33, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @mh, i32 0, i32 3), align 4
  %34 = load i32, i32* @modelNumRows, align 4
  store i32 %34, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @mh, i32 0, i32 2), align 4
  %35 = load i32, i32* @modelCellValue, align 4
  store i32 %35, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @mh, i32 0, i32 1), align 4
  %36 = load i32, i32* @modelSetCellValue, align 4
  store i32 %36, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @mh, i32 0, i32 0), align 4
  %37 = call i32 @uiNewTableModel(%struct.TYPE_10__* @mh)
  store i32 %37, i32* @m, align 4
  %38 = call i32 @memset(%struct.TYPE_9__* %3, i32 0, i32 12)
  %39 = load i32, i32* @m, align 4
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %3, i32 0, i32 2
  store i32 %39, i32* %40, align 4
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %3, i32 0, i32 0
  store i32 3, i32* %41, align 4
  %42 = call i32* @uiNewTable(%struct.TYPE_9__* %3)
  store i32* %42, i32** %2, align 8
  %43 = load i32*, i32** %1, align 8
  %44 = load i32*, i32** %2, align 8
  %45 = call i32 @uiControl(i32* %44)
  %46 = call i32 @uiBoxAppend(i32* %43, i32 %45, i32 1)
  %47 = load i32*, i32** %2, align 8
  %48 = load i32, i32* @uiTableModelColumnNeverEditable, align 4
  %49 = call i32 @uiTableAppendTextColumn(i32* %47, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i32 0, i32 %48, i32* null)
  %50 = call i32 @memset(%struct.TYPE_9__* %4, i32 0, i32 12)
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 1
  store i32 4, i32* %51, align 4
  %52 = load i32*, i32** %2, align 8
  %53 = load i32, i32* @uiTableModelColumnNeverEditable, align 4
  %54 = call i32 @uiTableAppendImageTextColumn(i32* %52, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i32 5, i32 1, i32 %53, %struct.TYPE_9__* %4)
  %55 = load i32*, i32** %2, align 8
  %56 = load i32, i32* @uiTableModelColumnAlwaysEditable, align 4
  %57 = call i32 @uiTableAppendTextColumn(i32* %55, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i32 2, i32 %56, i32* null)
  %58 = load i32*, i32** %2, align 8
  %59 = load i32, i32* @uiTableModelColumnAlwaysEditable, align 4
  %60 = call i32 @uiTableAppendCheckboxColumn(i32* %58, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0), i32 7, i32 %59)
  %61 = load i32*, i32** %2, align 8
  %62 = load i32, i32* @uiTableModelColumnAlwaysEditable, align 4
  %63 = call i32 @uiTableAppendButtonColumn(i32* %61, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0), i32 6, i32 %62)
  %64 = load i32*, i32** %2, align 8
  %65 = call i32 @uiTableAppendProgressBarColumn(i32* %64, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i64 0, i64 0), i32 8)
  %66 = load i32*, i32** %1, align 8
  ret i32* %66
}

declare dso_local i32 @uiNewImage(i32, i32) #1

declare dso_local i32 @appendImageNamed(i32, i8*) #1

declare dso_local i32 @strcpy(i32, i8*) #1

declare dso_local i32 @memset(%struct.TYPE_9__*, i32, i32) #1

declare dso_local i32* @newVerticalBox(...) #1

declare dso_local i32 @uiNewTableModel(%struct.TYPE_10__*) #1

declare dso_local i32* @uiNewTable(%struct.TYPE_9__*) #1

declare dso_local i32 @uiBoxAppend(i32*, i32, i32) #1

declare dso_local i32 @uiControl(i32*) #1

declare dso_local i32 @uiTableAppendTextColumn(i32*, i8*, i32, i32, i32*) #1

declare dso_local i32 @uiTableAppendImageTextColumn(i32*, i8*, i32, i32, i32, %struct.TYPE_9__*) #1

declare dso_local i32 @uiTableAppendCheckboxColumn(i32*, i8*, i32, i32) #1

declare dso_local i32 @uiTableAppendButtonColumn(i32*, i8*, i32, i32) #1

declare dso_local i32 @uiTableAppendProgressBarColumn(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
