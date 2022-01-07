; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_util.c_git__utf8_charlen.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_util.c_git__utf8_charlen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@utf8proc_utf8class = common dso_local global i64* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @git__utf8_charlen(i64* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i64* %0, i64** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load i64*, i64** @utf8proc_utf8class, align 8
  %9 = load i64*, i64** %4, align 8
  %10 = getelementptr inbounds i64, i64* %9, i64 0
  %11 = load i64, i64* %10, align 8
  %12 = getelementptr inbounds i64, i64* %8, i64 %11
  %13 = load i64, i64* %12, align 8
  store i64 %13, i64* %6, align 8
  %14 = load i64, i64* %6, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %45

17:                                               ; preds = %2
  %18 = load i64, i64* %5, align 8
  %19 = icmp ugt i64 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %17
  %21 = load i64, i64* %6, align 8
  %22 = load i64, i64* %5, align 8
  %23 = icmp ugt i64 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %20
  store i32 -1, i32* %3, align 4
  br label %45

25:                                               ; preds = %20, %17
  store i64 1, i64* %7, align 8
  br label %26

26:                                               ; preds = %39, %25
  %27 = load i64, i64* %7, align 8
  %28 = load i64, i64* %6, align 8
  %29 = icmp ult i64 %27, %28
  br i1 %29, label %30, label %42

30:                                               ; preds = %26
  %31 = load i64*, i64** %4, align 8
  %32 = load i64, i64* %7, align 8
  %33 = getelementptr inbounds i64, i64* %31, i64 %32
  %34 = load i64, i64* %33, align 8
  %35 = and i64 %34, 192
  %36 = icmp ne i64 %35, 128
  br i1 %36, label %37, label %38

37:                                               ; preds = %30
  store i32 -1, i32* %3, align 4
  br label %45

38:                                               ; preds = %30
  br label %39

39:                                               ; preds = %38
  %40 = load i64, i64* %7, align 8
  %41 = add i64 %40, 1
  store i64 %41, i64* %7, align 8
  br label %26

42:                                               ; preds = %26
  %43 = load i64, i64* %6, align 8
  %44 = trunc i64 %43 to i32
  store i32 %44, i32* %3, align 4
  br label %45

45:                                               ; preds = %42, %37, %24, %16
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
