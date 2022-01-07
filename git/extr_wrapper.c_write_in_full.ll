; ModuleID = '/home/carl/AnghaBench/git/extr_wrapper.c_write_in_full.c'
source_filename = "/home/carl/AnghaBench/git/extr_wrapper.c_write_in_full.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ENOSPC = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @write_in_full(i32 %0, i8* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load i8*, i8** %6, align 8
  store i8* %11, i8** %8, align 8
  store i64 0, i64* %9, align 8
  br label %12

12:                                               ; preds = %28, %3
  %13 = load i64, i64* %7, align 8
  %14 = icmp ugt i64 %13, 0
  br i1 %14, label %15, label %38

15:                                               ; preds = %12
  %16 = load i32, i32* %5, align 4
  %17 = load i8*, i8** %8, align 8
  %18 = load i64, i64* %7, align 8
  %19 = call i64 @xwrite(i32 %16, i8* %17, i64 %18)
  store i64 %19, i64* %10, align 8
  %20 = load i64, i64* %10, align 8
  %21 = icmp slt i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %15
  store i64 -1, i64* %4, align 8
  br label %40

23:                                               ; preds = %15
  %24 = load i64, i64* %10, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %23
  %27 = load i32, i32* @ENOSPC, align 4
  store i32 %27, i32* @errno, align 4
  store i64 -1, i64* %4, align 8
  br label %40

28:                                               ; preds = %23
  %29 = load i64, i64* %10, align 8
  %30 = load i64, i64* %7, align 8
  %31 = sub i64 %30, %29
  store i64 %31, i64* %7, align 8
  %32 = load i64, i64* %10, align 8
  %33 = load i8*, i8** %8, align 8
  %34 = getelementptr inbounds i8, i8* %33, i64 %32
  store i8* %34, i8** %8, align 8
  %35 = load i64, i64* %10, align 8
  %36 = load i64, i64* %9, align 8
  %37 = add nsw i64 %36, %35
  store i64 %37, i64* %9, align 8
  br label %12

38:                                               ; preds = %12
  %39 = load i64, i64* %9, align 8
  store i64 %39, i64* %4, align 8
  br label %40

40:                                               ; preds = %38, %26, %22
  %41 = load i64, i64* %4, align 8
  ret i64 %41
}

declare dso_local i64 @xwrite(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
