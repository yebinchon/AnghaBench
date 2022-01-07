; ModuleID = '/home/carl/AnghaBench/libui/test/extr_OLD_page16.c_modelSetCellValue.c'
source_filename = "/home/carl/AnghaBench/libui/test/extr_OLD_page16.c_modelSetCellValue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@row9text = common dso_local global i32 0, align 4
@yellowRow = common dso_local global i32 0, align 4
@checkStates = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32, i32, i8*)* @modelSetCellValue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @modelSetCellValue(i32* %0, i32* %1, i32 %2, i32 %3, i8* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i8* %4, i8** %10, align 8
  %11 = load i32, i32* %8, align 4
  %12 = icmp eq i32 %11, 9
  br i1 %12, label %13, label %20

13:                                               ; preds = %5
  %14 = load i32, i32* %9, align 4
  %15 = icmp eq i32 %14, 2
  br i1 %15, label %16, label %20

16:                                               ; preds = %13
  %17 = load i32, i32* @row9text, align 4
  %18 = load i8*, i8** %10, align 8
  %19 = call i32 @strcpy(i32 %17, i8* %18)
  br label %20

20:                                               ; preds = %16, %13, %5
  %21 = load i32, i32* %9, align 4
  %22 = icmp eq i32 %21, 6
  br i1 %22, label %23, label %25

23:                                               ; preds = %20
  %24 = load i32, i32* %8, align 4
  store i32 %24, i32* @yellowRow, align 4
  br label %25

25:                                               ; preds = %23, %20
  %26 = load i32, i32* %9, align 4
  %27 = icmp eq i32 %26, 7
  br i1 %27, label %28, label %35

28:                                               ; preds = %25
  %29 = load i8*, i8** %10, align 8
  %30 = call i32 @uiTableModelTakeInt(i8* %29)
  %31 = load i32*, i32** @checkStates, align 8
  %32 = load i32, i32* %8, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  store i32 %30, i32* %34, align 4
  br label %35

35:                                               ; preds = %28, %25
  ret void
}

declare dso_local i32 @strcpy(i32, i8*) #1

declare dso_local i32 @uiTableModelTakeInt(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
