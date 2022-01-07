; ModuleID = '/home/carl/AnghaBench/libui/test/extr_OLD_page16.c_modelColumnType.c'
source_filename = "/home/carl/AnghaBench/libui/test/extr_OLD_page16.c_modelColumnType.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@uiTableModelColumnColor = common dso_local global i32 0, align 4
@uiTableModelColumnImage = common dso_local global i32 0, align 4
@uiTableModelColumnInt = common dso_local global i32 0, align 4
@uiTableModelColumnString = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32)* @modelColumnType to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @modelColumnType(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load i32, i32* %7, align 4
  %9 = icmp eq i32 %8, 3
  br i1 %9, label %13, label %10

10:                                               ; preds = %3
  %11 = load i32, i32* %7, align 4
  %12 = icmp eq i32 %11, 4
  br i1 %12, label %13, label %15

13:                                               ; preds = %10, %3
  %14 = load i32, i32* @uiTableModelColumnColor, align 4
  store i32 %14, i32* %4, align 4
  br label %30

15:                                               ; preds = %10
  %16 = load i32, i32* %7, align 4
  %17 = icmp eq i32 %16, 5
  br i1 %17, label %18, label %20

18:                                               ; preds = %15
  %19 = load i32, i32* @uiTableModelColumnImage, align 4
  store i32 %19, i32* %4, align 4
  br label %30

20:                                               ; preds = %15
  %21 = load i32, i32* %7, align 4
  %22 = icmp eq i32 %21, 7
  br i1 %22, label %26, label %23

23:                                               ; preds = %20
  %24 = load i32, i32* %7, align 4
  %25 = icmp eq i32 %24, 8
  br i1 %25, label %26, label %28

26:                                               ; preds = %23, %20
  %27 = load i32, i32* @uiTableModelColumnInt, align 4
  store i32 %27, i32* %4, align 4
  br label %30

28:                                               ; preds = %23
  %29 = load i32, i32* @uiTableModelColumnString, align 4
  store i32 %29, i32* %4, align 4
  br label %30

30:                                               ; preds = %28, %26, %18, %13
  %31 = load i32, i32* %4, align 4
  ret i32 %31
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
