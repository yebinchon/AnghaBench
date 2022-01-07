; ModuleID = '/home/carl/AnghaBench/htop/extr_AffinityPanel.c_AffinityPanel_new.c'
source_filename = "/home/carl/AnghaBench/htop/extr_AffinityPanel.c_AffinityPanel_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32, i32* }

@CheckItem = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"Set    \00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"Cancel \00", align 1
@AffinityPanel = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"Use CPUs:\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @AffinityPanel_new(%struct.TYPE_5__* %0, %struct.TYPE_6__* %1) #0 {
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [10 x i8], align 1
  %9 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %4, align 8
  %10 = load i32, i32* @CheckItem, align 4
  %11 = call i32 @Class(i32 %10)
  %12 = call i32 @FunctionBar_newEnterEsc(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %13 = call i32* @Panel_new(i32 1, i32 1, i32 1, i32 1, i32 1, i32 %11, i32 %12)
  store i32* %13, i32** %5, align 8
  %14 = load i32*, i32** %5, align 8
  %15 = load i32, i32* @AffinityPanel, align 4
  %16 = call i32 @Class(i32 %15)
  %17 = call i32 @Object_setClass(i32* %14, i32 %16)
  %18 = load i32*, i32** %5, align 8
  %19 = call i32 @Panel_setHeader(i32* %18, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %20

20:                                               ; preds = %61, %2
  %21 = load i32, i32* %7, align 4
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp slt i32 %21, %24
  br i1 %25, label %26, label %64

26:                                               ; preds = %20
  %27 = getelementptr inbounds [10 x i8], [10 x i8]* %8, i64 0, i64 0
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %7, align 4
  %32 = call i32 @Settings_cpuId(i32 %30, i32 %31)
  %33 = call i32 @xSnprintf(i8* %27, i32 9, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 %32)
  %34 = load i32, i32* %6, align 4
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp slt i32 %34, %37
  br i1 %38, label %39, label %52

39:                                               ; preds = %26
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 1
  %42 = load i32*, i32** %41, align 8
  %43 = load i32, i32* %6, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* %7, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %52

49:                                               ; preds = %39
  store i32 1, i32* %9, align 4
  %50 = load i32, i32* %6, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %6, align 4
  br label %53

52:                                               ; preds = %39, %26
  store i32 0, i32* %9, align 4
  br label %53

53:                                               ; preds = %52, %49
  %54 = load i32*, i32** %5, align 8
  %55 = getelementptr inbounds [10 x i8], [10 x i8]* %8, i64 0, i64 0
  %56 = call i32 @xStrdup(i8* %55)
  %57 = load i32, i32* %9, align 4
  %58 = call i64 @CheckItem_newByVal(i32 %56, i32 %57)
  %59 = inttoptr i64 %58 to i32*
  %60 = call i32 @Panel_add(i32* %54, i32* %59)
  br label %61

61:                                               ; preds = %53
  %62 = load i32, i32* %7, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %7, align 4
  br label %20

64:                                               ; preds = %20
  %65 = load i32*, i32** %5, align 8
  ret i32* %65
}

declare dso_local i32* @Panel_new(i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @Class(i32) #1

declare dso_local i32 @FunctionBar_newEnterEsc(i8*, i8*) #1

declare dso_local i32 @Object_setClass(i32*, i32) #1

declare dso_local i32 @Panel_setHeader(i32*, i8*) #1

declare dso_local i32 @xSnprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @Settings_cpuId(i32, i32) #1

declare dso_local i32 @Panel_add(i32*, i32*) #1

declare dso_local i64 @CheckItem_newByVal(i32, i32) #1

declare dso_local i32 @xStrdup(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
