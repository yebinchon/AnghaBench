; ModuleID = '/home/carl/AnghaBench/htop/extr_SignalsPanel.c_SignalsPanel_new.c'
source_filename = "/home/carl/AnghaBench/htop/extr_SignalsPanel.c_SignalsPanel_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8*, i32 }

@ListItem = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"Send   \00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"Cancel \00", align 1
@SIGTERM = common dso_local global i32 0, align 4
@Platform_numberOfSignals = common dso_local global i32 0, align 4
@Platform_signals = common dso_local global %struct.TYPE_2__* null, align 8
@.str.2 = private unnamed_addr constant [13 x i8] c"Send signal:\00", align 1
@SIGRTMAX = common dso_local global i32 0, align 4
@SIGRTMIN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @SignalsPanel_new() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = load i32, i32* @ListItem, align 4
  %6 = call i32 @Class(i32 %5)
  %7 = call i32 @FunctionBar_newEnterEsc(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %8 = call i32* @Panel_new(i32 1, i32 1, i32 1, i32 1, i32 1, i32 %6, i32 %7)
  store i32* %8, i32** %1, align 8
  %9 = load i32, i32* @SIGTERM, align 4
  store i32 %9, i32* %2, align 4
  store i32 15, i32* %3, align 4
  store i32 0, i32* %4, align 4
  br label %10

10:                                               ; preds = %43, %0
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* @Platform_numberOfSignals, align 4
  %13 = icmp ult i32 %11, %12
  br i1 %13, label %14, label %46

14:                                               ; preds = %10
  %15 = load i32*, i32** %1, align 8
  %16 = load i32, i32* %4, align 4
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** @Platform_signals, align 8
  %18 = load i32, i32* %4, align 4
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** @Platform_signals, align 8
  %24 = load i32, i32* %4, align 4
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = call i64 @ListItem_new(i8* %22, i32 %28)
  %30 = inttoptr i64 %29 to i32*
  %31 = call i32 @Panel_set(i32* %15, i32 %16, i32* %30)
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** @Platform_signals, align 8
  %33 = load i32, i32* %4, align 4
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* %2, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %14
  %41 = load i32, i32* %4, align 4
  store i32 %41, i32* %3, align 4
  br label %42

42:                                               ; preds = %40, %14
  br label %43

43:                                               ; preds = %42
  %44 = load i32, i32* %4, align 4
  %45 = add i32 %44, 1
  store i32 %45, i32* %4, align 4
  br label %10

46:                                               ; preds = %10
  %47 = load i32*, i32** %1, align 8
  %48 = call i32 @Panel_setHeader(i32* %47, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  %49 = load i32*, i32** %1, align 8
  %50 = load i32, i32* %3, align 4
  %51 = call i32 @Panel_setSelected(i32* %49, i32 %50)
  %52 = load i32*, i32** %1, align 8
  ret i32* %52
}

declare dso_local i32* @Panel_new(i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @Class(i32) #1

declare dso_local i32 @FunctionBar_newEnterEsc(i8*, i8*) #1

declare dso_local i32 @Panel_set(i32*, i32, i32*) #1

declare dso_local i64 @ListItem_new(i8*, i32) #1

declare dso_local i32 @Panel_setHeader(i32*, i8*) #1

declare dso_local i32 @Panel_setSelected(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
