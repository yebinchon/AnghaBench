; ModuleID = '/home/carl/AnghaBench/libui/common/extr_utf.c_uiprivUTF16UTF8Count.c'
source_filename = "/home/carl/AnghaBench/libui/common/extr_utf.c_uiprivUTF16UTF8Count.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @uiprivUTF16UTF8Count(i64* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca [4 x i8], align 1
  %9 = alloca i64*, align 8
  %10 = alloca i64*, align 8
  store i64* %0, i64** %4, align 8
  store i64 %1, i64* %5, align 8
  %11 = load i64, i64* %5, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %38

13:                                               ; preds = %2
  store i64 0, i64* %6, align 8
  %14 = load i64*, i64** %4, align 8
  store i64* %14, i64** %9, align 8
  br label %15

15:                                               ; preds = %18, %13
  %16 = load i64, i64* %5, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %36

18:                                               ; preds = %15
  %19 = load i64*, i64** %9, align 8
  %20 = load i64, i64* %5, align 8
  %21 = call i64* @uiprivUTF16DecodeRune(i64* %19, i64 %20, i32* %7)
  store i64* %21, i64** %10, align 8
  %22 = load i32, i32* %7, align 4
  %23 = getelementptr inbounds [4 x i8], [4 x i8]* %8, i64 0, i64 0
  %24 = call i64 @uiprivUTF8EncodeRune(i32 %22, i8* %23)
  %25 = load i64, i64* %6, align 8
  %26 = add i64 %25, %24
  store i64 %26, i64* %6, align 8
  %27 = load i64*, i64** %10, align 8
  %28 = load i64*, i64** %9, align 8
  %29 = ptrtoint i64* %27 to i64
  %30 = ptrtoint i64* %28 to i64
  %31 = sub i64 %29, %30
  %32 = sdiv exact i64 %31, 8
  %33 = load i64, i64* %5, align 8
  %34 = sub i64 %33, %32
  store i64 %34, i64* %5, align 8
  %35 = load i64*, i64** %10, align 8
  store i64* %35, i64** %9, align 8
  br label %15

36:                                               ; preds = %15
  %37 = load i64, i64* %6, align 8
  store i64 %37, i64* %3, align 8
  br label %54

38:                                               ; preds = %2
  store i64 0, i64* %6, align 8
  br label %39

39:                                               ; preds = %43, %38
  %40 = load i64*, i64** %4, align 8
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %52

43:                                               ; preds = %39
  %44 = load i64*, i64** %4, align 8
  %45 = load i64, i64* %5, align 8
  %46 = call i64* @uiprivUTF16DecodeRune(i64* %44, i64 %45, i32* %7)
  store i64* %46, i64** %4, align 8
  %47 = load i32, i32* %7, align 4
  %48 = getelementptr inbounds [4 x i8], [4 x i8]* %8, i64 0, i64 0
  %49 = call i64 @uiprivUTF8EncodeRune(i32 %47, i8* %48)
  %50 = load i64, i64* %6, align 8
  %51 = add i64 %50, %49
  store i64 %51, i64* %6, align 8
  br label %39

52:                                               ; preds = %39
  %53 = load i64, i64* %6, align 8
  store i64 %53, i64* %3, align 8
  br label %54

54:                                               ; preds = %52, %36
  %55 = load i64, i64* %3, align 8
  ret i64 %55
}

declare dso_local i64* @uiprivUTF16DecodeRune(i64*, i64, i32*) #1

declare dso_local i64 @uiprivUTF8EncodeRune(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
