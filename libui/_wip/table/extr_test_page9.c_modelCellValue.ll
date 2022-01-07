; ModuleID = '/home/carl/AnghaBench/libui/_wip/table/extr_test_page9.c_modelCellValue.c'
source_filename = "/home/carl/AnghaBench/libui/_wip/table/extr_test_page9.c_modelCellValue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @modelCellValue(i32* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [20 x i8], align 16
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = getelementptr inbounds [20 x i8], [20 x i8]* %10, i64 0, i64 0
  store i8 82, i8* %11, align 16
  %12 = getelementptr inbounds [20 x i8], [20 x i8]* %10, i64 0, i64 1
  store i8 111, i8* %12, align 1
  %13 = getelementptr inbounds [20 x i8], [20 x i8]* %10, i64 0, i64 2
  store i8 119, i8* %13, align 2
  %14 = getelementptr inbounds [20 x i8], [20 x i8]* %10, i64 0, i64 3
  store i8 32, i8* %14, align 1
  %15 = load i32, i32* %8, align 4
  %16 = add nsw i32 %15, 48
  %17 = trunc i32 %16 to i8
  %18 = getelementptr inbounds [20 x i8], [20 x i8]* %10, i64 0, i64 4
  store i8 %17, i8* %18, align 4
  %19 = getelementptr inbounds [20 x i8], [20 x i8]* %10, i64 0, i64 5
  store i8 0, i8* %19, align 1
  %20 = load i32, i32* %9, align 4
  switch i32 %20, label %36 [
    i32 0, label %21
    i32 1, label %21
    i32 2, label %24
    i32 3, label %30
  ]

21:                                               ; preds = %4, %4
  %22 = getelementptr inbounds [20 x i8], [20 x i8]* %10, i64 0, i64 0
  %23 = call i8* @uiTableModelFromString(i8* %22)
  store i8* %23, i8** %5, align 8
  br label %37

24:                                               ; preds = %4
  %25 = load i32, i32* %8, align 4
  %26 = srem i32 %25, 2
  %27 = icmp eq i32 %26, 0
  %28 = zext i1 %27 to i32
  %29 = call i8* @uiTableModelFromBool(i32 %28)
  store i8* %29, i8** %5, align 8
  br label %37

30:                                               ; preds = %4
  %31 = load i32, i32* %8, align 4
  %32 = srem i32 %31, 3
  %33 = icmp eq i32 %32, 0
  %34 = zext i1 %33 to i32
  %35 = call i8* @uiTableModelFromBool(i32 %34)
  store i8* %35, i8** %5, align 8
  br label %37

36:                                               ; preds = %4
  store i8* null, i8** %5, align 8
  br label %37

37:                                               ; preds = %36, %30, %24, %21
  %38 = load i8*, i8** %5, align 8
  ret i8* %38
}

declare dso_local i8* @uiTableModelFromString(i8*) #1

declare dso_local i8* @uiTableModelFromBool(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
