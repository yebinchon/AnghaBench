; ModuleID = '/home/carl/AnghaBench/hashcat/src/extr_convert.c_need_hexify.c'
source_filename = "/home/carl/AnghaBench/hashcat/src/extr_convert.c_need_hexify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @need_hexify(i32* %0, i64 %1, i8 signext %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8, align 1
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8 %2, i8* %7, align 1
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %10 = load i32, i32* %8, align 4
  %11 = icmp eq i32 %10, 1
  br i1 %11, label %12, label %19

12:                                               ; preds = %4
  %13 = load i32*, i32** %5, align 8
  %14 = load i64, i64* %6, align 8
  %15 = call i32 @printable_ascii(i32* %13, i64 %14)
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %12
  store i32 1, i32* %9, align 4
  br label %18

18:                                               ; preds = %17, %12
  br label %26

19:                                               ; preds = %4
  %20 = load i32*, i32** %5, align 8
  %21 = load i64, i64* %6, align 8
  %22 = call i32 @printable_utf8(i32* %20, i64 %21)
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %19
  store i32 1, i32* %9, align 4
  br label %25

25:                                               ; preds = %24, %19
  br label %26

26:                                               ; preds = %25, %18
  %27 = load i32, i32* %9, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %37

29:                                               ; preds = %26
  %30 = load i32*, i32** %5, align 8
  %31 = load i64, i64* %6, align 8
  %32 = load i8, i8* %7, align 1
  %33 = call i32 @matches_separator(i32* %30, i64 %31, i8 signext %32)
  %34 = icmp eq i32 %33, 1
  br i1 %34, label %35, label %36

35:                                               ; preds = %29
  store i32 1, i32* %9, align 4
  br label %36

36:                                               ; preds = %35, %29
  br label %37

37:                                               ; preds = %36, %26
  %38 = load i32, i32* %9, align 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %47

40:                                               ; preds = %37
  %41 = load i32*, i32** %5, align 8
  %42 = load i64, i64* %6, align 8
  %43 = call i64 @is_hexify(i32* %41, i64 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %40
  store i32 1, i32* %9, align 4
  br label %46

46:                                               ; preds = %45, %40
  br label %47

47:                                               ; preds = %46, %37
  %48 = load i32, i32* %9, align 4
  ret i32 %48
}

declare dso_local i32 @printable_ascii(i32*, i64) #1

declare dso_local i32 @printable_utf8(i32*, i64) #1

declare dso_local i32 @matches_separator(i32*, i64, i8 signext) #1

declare dso_local i64 @is_hexify(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
