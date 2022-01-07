; ModuleID = '/home/carl/AnghaBench/libui/_wip/table/extr_test_page9.c_makePage9.c'
source_filename = "/home/carl/AnghaBench/libui/_wip/table/extr_test_page9.c_makePage9.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.TYPE_5__ = type { i8*, i32, i64, i32 }

@modelNumRows = common dso_local global i32 0, align 4
@spec = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@modelCellValue = common dso_local global i32 0, align 4
@modelSetCellValue = common dso_local global i32 0, align 4
@nColumns = common dso_local global i64 0, align 8
@coltypes = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [7 x i8] c"Column\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @makePage9() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_5__, align 8
  %5 = alloca i64, align 8
  %6 = call i32* (...) @newVerticalBox()
  store i32* %6, i32** %1, align 8
  %7 = call i32* (...) @uiNewTable()
  store i32* %7, i32** %2, align 8
  %8 = load i32*, i32** %1, align 8
  %9 = load i32*, i32** %2, align 8
  %10 = call i32 @uiControl(i32* %9)
  %11 = call i32 @uiBoxAppend(i32* %8, i32 %10, i32 1)
  %12 = load i32, i32* @modelNumRows, align 4
  store i32 %12, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @spec, i32 0, i32 2), align 4
  %13 = load i32, i32* @modelCellValue, align 4
  store i32 %13, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @spec, i32 0, i32 1), align 4
  %14 = load i32, i32* @modelSetCellValue, align 4
  store i32 %14, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @spec, i32 0, i32 0), align 4
  %15 = load i64, i64* @nColumns, align 8
  %16 = load i32*, i32** @coltypes, align 8
  %17 = call i32* @uiNewTableModel(i64 %15, i32* %16, %struct.TYPE_6__* @spec, i32* null)
  store i32* %17, i32** %3, align 8
  %18 = load i32*, i32** %2, align 8
  %19 = load i32*, i32** %3, align 8
  %20 = call i32 @uiTableSetModel(i32* %18, i32* %19)
  store i64 0, i64* %5, align 8
  br label %21

21:                                               ; preds = %41, %0
  %22 = load i64, i64* %5, align 8
  %23 = load i64, i64* @nColumns, align 8
  %24 = icmp ult i64 %22, %23
  br i1 %24, label %25, label %44

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8** %26, align 8
  %27 = load i32*, i32** @coltypes, align 8
  %28 = load i64, i64* %5, align 8
  %29 = getelementptr inbounds i32, i32* %27, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 3
  store i32 %30, i32* %31, align 8
  %32 = load i64, i64* %5, align 8
  %33 = urem i64 %32, 2
  %34 = icmp eq i64 %33, 1
  %35 = zext i1 %34 to i32
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 1
  store i32 %35, i32* %36, align 8
  %37 = load i64, i64* %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 2
  store i64 %37, i64* %38, align 8
  %39 = load i32*, i32** %2, align 8
  %40 = call i32 @uiTableAppendColumn(i32* %39, %struct.TYPE_5__* %4)
  br label %41

41:                                               ; preds = %25
  %42 = load i64, i64* %5, align 8
  %43 = add i64 %42, 1
  store i64 %43, i64* %5, align 8
  br label %21

44:                                               ; preds = %21
  %45 = load i32*, i32** %1, align 8
  ret i32* %45
}

declare dso_local i32* @newVerticalBox(...) #1

declare dso_local i32* @uiNewTable(...) #1

declare dso_local i32 @uiBoxAppend(i32*, i32, i32) #1

declare dso_local i32 @uiControl(i32*) #1

declare dso_local i32* @uiNewTableModel(i64, i32*, %struct.TYPE_6__*, i32*) #1

declare dso_local i32 @uiTableSetModel(i32*, i32*) #1

declare dso_local i32 @uiTableAppendColumn(i32*, %struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
