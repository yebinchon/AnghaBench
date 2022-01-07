; ModuleID = '/home/carl/AnghaBench/libui/test/extr_page16.c_modelSetCellValue.c'
source_filename = "/home/carl/AnghaBench/libui/test/extr_page16.c_modelSetCellValue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@row9text = common dso_local global i32 0, align 4
@yellowRow = common dso_local global i32 0, align 4
@checkStates = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32, i32, i32*)* @modelSetCellValue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @modelSetCellValue(i32* %0, i32* %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32* %4, i32** %10, align 8
  %12 = load i32, i32* %8, align 4
  %13 = icmp eq i32 %12, 9
  br i1 %13, label %14, label %22

14:                                               ; preds = %5
  %15 = load i32, i32* %9, align 4
  %16 = icmp eq i32 %15, 2
  br i1 %16, label %17, label %22

17:                                               ; preds = %14
  %18 = load i32, i32* @row9text, align 4
  %19 = load i32*, i32** %10, align 8
  %20 = call i32 @uiTableValueString(i32* %19)
  %21 = call i32 @strcpy(i32 %18, i32 %20)
  br label %22

22:                                               ; preds = %17, %14, %5
  %23 = load i32, i32* %9, align 4
  %24 = icmp eq i32 %23, 6
  br i1 %24, label %25, label %38

25:                                               ; preds = %22
  %26 = load i32, i32* @yellowRow, align 4
  store i32 %26, i32* %11, align 4
  %27 = load i32, i32* %8, align 4
  store i32 %27, i32* @yellowRow, align 4
  %28 = load i32, i32* %11, align 4
  %29 = icmp ne i32 %28, -1
  br i1 %29, label %30, label %34

30:                                               ; preds = %25
  %31 = load i32*, i32** %7, align 8
  %32 = load i32, i32* %11, align 4
  %33 = call i32 @uiTableModelRowChanged(i32* %31, i32 %32)
  br label %34

34:                                               ; preds = %30, %25
  %35 = load i32*, i32** %7, align 8
  %36 = load i32, i32* @yellowRow, align 4
  %37 = call i32 @uiTableModelRowChanged(i32* %35, i32 %36)
  br label %38

38:                                               ; preds = %34, %22
  %39 = load i32, i32* %9, align 4
  %40 = icmp eq i32 %39, 7
  br i1 %40, label %41, label %48

41:                                               ; preds = %38
  %42 = load i32*, i32** %10, align 8
  %43 = call i32 @uiTableValueInt(i32* %42)
  %44 = load i32*, i32** @checkStates, align 8
  %45 = load i32, i32* %8, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  store i32 %43, i32* %47, align 4
  br label %48

48:                                               ; preds = %41, %38
  ret void
}

declare dso_local i32 @strcpy(i32, i32) #1

declare dso_local i32 @uiTableValueString(i32*) #1

declare dso_local i32 @uiTableModelRowChanged(i32*, i32) #1

declare dso_local i32 @uiTableValueInt(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
