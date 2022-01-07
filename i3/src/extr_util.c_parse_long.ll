; ModuleID = '/home/carl/AnghaBench/i3/src/extr_util.c_parse_long.c'
source_filename = "/home/carl/AnghaBench/i3/src/extr_util.c_parse_long.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LONG_MIN = common dso_local global i64 0, align 8
@LONG_MAX = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @parse_long(i8* %0, i64* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i64* %1, i64** %6, align 8
  store i32 %2, i32* %7, align 4
  store i8* null, i8** %8, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = load i32, i32* %7, align 4
  %12 = call i64 @strtol(i8* %10, i8** %8, i32 %11)
  store i64 %12, i64* %9, align 8
  %13 = load i64, i64* %9, align 8
  %14 = load i64, i64* @LONG_MIN, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %31, label %16

16:                                               ; preds = %3
  %17 = load i64, i64* %9, align 8
  %18 = load i64, i64* @LONG_MAX, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %31, label %20

20:                                               ; preds = %16
  %21 = load i64, i64* %9, align 8
  %22 = icmp slt i64 %21, 0
  br i1 %22, label %31, label %23

23:                                               ; preds = %20
  %24 = load i8*, i8** %8, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %26, label %34

26:                                               ; preds = %23
  %27 = load i8*, i8** %8, align 8
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %26, %20, %16, %3
  %32 = load i64, i64* %9, align 8
  %33 = load i64*, i64** %6, align 8
  store i64 %32, i64* %33, align 8
  store i32 0, i32* %4, align 4
  br label %37

34:                                               ; preds = %26, %23
  %35 = load i64, i64* %9, align 8
  %36 = load i64*, i64** %6, align 8
  store i64 %35, i64* %36, align 8
  store i32 1, i32* %4, align 4
  br label %37

37:                                               ; preds = %34, %31
  %38 = load i32, i32* %4, align 4
  ret i32 %38
}

declare dso_local i64 @strtol(i8*, i8**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
