; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/boot/compressed/extr_........libcmdline.c_memparse.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/boot/compressed/extr_........libcmdline.c_memparse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @memparse(i8* %0, i8** %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8**, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i8** %1, i8*** %4, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = call i64 @simple_strtoull(i8* %7, i8** %5, i32 0)
  store i64 %8, i64* %6, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = load i8, i8* %9, align 1
  %11 = sext i8 %10 to i32
  switch i32 %11, label %32 [
    i32 69, label %12
    i32 101, label %12
    i32 80, label %15
    i32 112, label %15
    i32 84, label %18
    i32 116, label %18
    i32 71, label %21
    i32 103, label %21
    i32 77, label %24
    i32 109, label %24
    i32 75, label %27
    i32 107, label %27
  ]

12:                                               ; preds = %2, %2
  %13 = load i64, i64* %6, align 8
  %14 = shl i64 %13, 10
  store i64 %14, i64* %6, align 8
  br label %15

15:                                               ; preds = %2, %2, %12
  %16 = load i64, i64* %6, align 8
  %17 = shl i64 %16, 10
  store i64 %17, i64* %6, align 8
  br label %18

18:                                               ; preds = %2, %2, %15
  %19 = load i64, i64* %6, align 8
  %20 = shl i64 %19, 10
  store i64 %20, i64* %6, align 8
  br label %21

21:                                               ; preds = %2, %2, %18
  %22 = load i64, i64* %6, align 8
  %23 = shl i64 %22, 10
  store i64 %23, i64* %6, align 8
  br label %24

24:                                               ; preds = %2, %2, %21
  %25 = load i64, i64* %6, align 8
  %26 = shl i64 %25, 10
  store i64 %26, i64* %6, align 8
  br label %27

27:                                               ; preds = %2, %2, %24
  %28 = load i64, i64* %6, align 8
  %29 = shl i64 %28, 10
  store i64 %29, i64* %6, align 8
  %30 = load i8*, i8** %5, align 8
  %31 = getelementptr inbounds i8, i8* %30, i32 1
  store i8* %31, i8** %5, align 8
  br label %32

32:                                               ; preds = %2, %27
  br label %33

33:                                               ; preds = %32
  %34 = load i8**, i8*** %4, align 8
  %35 = icmp ne i8** %34, null
  br i1 %35, label %36, label %39

36:                                               ; preds = %33
  %37 = load i8*, i8** %5, align 8
  %38 = load i8**, i8*** %4, align 8
  store i8* %37, i8** %38, align 8
  br label %39

39:                                               ; preds = %36, %33
  %40 = load i64, i64* %6, align 8
  ret i64 %40
}

declare dso_local i64 @simple_strtoull(i8*, i8**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
