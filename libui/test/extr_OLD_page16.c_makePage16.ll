; ModuleID = '/home/carl/AnghaBench/libui/test/extr_OLD_page16.c_makePage16.c'
source_filename = "/home/carl/AnghaBench/libui/test/extr_OLD_page16.c_makePage16.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i32 }

@img = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [33 x i8] c"andlabs_16x16test_24june2016.png\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"andlabs_32x32test_24june2016.png\00", align 1
@.str.2 = private unnamed_addr constant [55 x i8] c"tango-icon-theme-0.8.90_16x16_x-office-spreadsheet.png\00", align 1
@.str.3 = private unnamed_addr constant [55 x i8] c"tango-icon-theme-0.8.90_32x32_x-office-spreadsheet.png\00", align 1
@row9text = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [5 x i8] c"Part\00", align 1
@checkStates = common dso_local global i32 0, align 4
@modelNumColumns = common dso_local global i32 0, align 4
@mh = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4
@modelColumnType = common dso_local global i32 0, align 4
@modelNumRows = common dso_local global i32 0, align 4
@modelCellValue = common dso_local global i32 0, align 4
@modelSetCellValue = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [9 x i8] c"Column 1\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"Column 2\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"Buttons\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"Progress Bar\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @makePage16() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
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
  %29 = load i32, i32* @checkStates, align 4
  %30 = call i32 @memset(i32 %29, i32 0, i32 60)
  %31 = call i32* (...) @newVerticalBox()
  store i32* %31, i32** %1, align 8
  %32 = load i32, i32* @modelNumColumns, align 4
  store i32 %32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @mh, i32 0, i32 4), align 4
  %33 = load i32, i32* @modelColumnType, align 4
  store i32 %33, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @mh, i32 0, i32 3), align 4
  %34 = load i32, i32* @modelNumRows, align 4
  store i32 %34, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @mh, i32 0, i32 2), align 4
  %35 = load i32, i32* @modelCellValue, align 4
  store i32 %35, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @mh, i32 0, i32 1), align 4
  %36 = load i32, i32* @modelSetCellValue, align 4
  store i32 %36, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @mh, i32 0, i32 0), align 4
  %37 = call i32* @uiNewTableModel(%struct.TYPE_3__* @mh)
  store i32* %37, i32** %2, align 8
  %38 = load i32*, i32** %2, align 8
  %39 = call i32* @uiNewTable(i32* %38)
  store i32* %39, i32** %3, align 8
  %40 = load i32*, i32** %1, align 8
  %41 = load i32*, i32** %3, align 8
  %42 = call i32 @uiControl(i32* %41)
  %43 = call i32 @uiBoxAppend(i32* %40, i32 %42, i32 1)
  %44 = load i32*, i32** %3, align 8
  %45 = call i32 @uiTableAppendTextColumn(i32* %44, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i32 0)
  %46 = load i32*, i32** %3, align 8
  %47 = call i32* @uiTableAppendColumn(i32* %46, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0))
  store i32* %47, i32** %4, align 8
  %48 = load i32*, i32** %4, align 8
  %49 = call i32 @uiTableColumnAppendImagePart(i32* %48, i32 5, i32 0)
  %50 = load i32*, i32** %4, align 8
  %51 = call i32 @uiTableColumnAppendTextPart(i32* %50, i32 1, i32 0)
  %52 = load i32*, i32** %4, align 8
  %53 = call i32 @uiTableColumnAppendTextPart(i32* %52, i32 2, i32 1)
  %54 = load i32*, i32** %4, align 8
  %55 = call i32 @uiTableColumnPartSetTextColor(i32* %54, i32 1, i32 4)
  %56 = load i32*, i32** %4, align 8
  %57 = call i32 @uiTableColumnPartSetEditable(i32* %56, i32 2, i32 1)
  %58 = load i32*, i32** %3, align 8
  %59 = call i32 @uiTableSetRowBackgroundColorModelColumn(i32* %58, i32 3)
  %60 = load i32*, i32** %3, align 8
  %61 = call i32* @uiTableAppendColumn(i32* %60, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0))
  store i32* %61, i32** %4, align 8
  %62 = load i32*, i32** %4, align 8
  %63 = call i32 @uiTableColumnAppendCheckboxPart(i32* %62, i32 7, i32 0)
  %64 = load i32*, i32** %4, align 8
  %65 = call i32 @uiTableColumnAppendButtonPart(i32* %64, i32 6, i32 1)
  %66 = load i32*, i32** %3, align 8
  %67 = call i32* @uiTableAppendColumn(i32* %66, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0))
  store i32* %67, i32** %4, align 8
  %68 = load i32*, i32** %4, align 8
  %69 = call i32 @uiTableColumnAppendProgressBarPart(i32* %68, i32 8, i32 0)
  %70 = load i32*, i32** %1, align 8
  ret i32* %70
}

declare dso_local i32 @uiNewImage(i32, i32) #1

declare dso_local i32 @appendImageNamed(i32, i8*) #1

declare dso_local i32 @strcpy(i32, i8*) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32* @newVerticalBox(...) #1

declare dso_local i32* @uiNewTableModel(%struct.TYPE_3__*) #1

declare dso_local i32* @uiNewTable(i32*) #1

declare dso_local i32 @uiBoxAppend(i32*, i32, i32) #1

declare dso_local i32 @uiControl(i32*) #1

declare dso_local i32 @uiTableAppendTextColumn(i32*, i8*, i32) #1

declare dso_local i32* @uiTableAppendColumn(i32*, i8*) #1

declare dso_local i32 @uiTableColumnAppendImagePart(i32*, i32, i32) #1

declare dso_local i32 @uiTableColumnAppendTextPart(i32*, i32, i32) #1

declare dso_local i32 @uiTableColumnPartSetTextColor(i32*, i32, i32) #1

declare dso_local i32 @uiTableColumnPartSetEditable(i32*, i32, i32) #1

declare dso_local i32 @uiTableSetRowBackgroundColorModelColumn(i32*, i32) #1

declare dso_local i32 @uiTableColumnAppendCheckboxPart(i32*, i32, i32) #1

declare dso_local i32 @uiTableColumnAppendButtonPart(i32*, i32, i32) #1

declare dso_local i32 @uiTableColumnAppendProgressBarPart(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
