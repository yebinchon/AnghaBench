; ModuleID = '/home/carl/AnghaBench/libui/common/extr_utf.c_uiprivUTF8UTF16Count.c'
source_filename = "/home/carl/AnghaBench/libui/common/extr_utf.c_uiprivUTF8UTF16Count.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @uiprivUTF8UTF16Count(i8* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca [2 x i32], align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  %11 = load i64, i64* %5, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %37

13:                                               ; preds = %2
  store i64 0, i64* %6, align 8
  %14 = load i8*, i8** %4, align 8
  store i8* %14, i8** %9, align 8
  br label %15

15:                                               ; preds = %18, %13
  %16 = load i64, i64* %5, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %35

18:                                               ; preds = %15
  %19 = load i8*, i8** %9, align 8
  %20 = load i64, i64* %5, align 8
  %21 = call i8* @uiprivUTF8DecodeRune(i8* %19, i64 %20, i32* %7)
  store i8* %21, i8** %10, align 8
  %22 = load i32, i32* %7, align 4
  %23 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %24 = call i64 @uiprivUTF16EncodeRune(i32 %22, i32* %23)
  %25 = load i64, i64* %6, align 8
  %26 = add i64 %25, %24
  store i64 %26, i64* %6, align 8
  %27 = load i8*, i8** %10, align 8
  %28 = load i8*, i8** %9, align 8
  %29 = ptrtoint i8* %27 to i64
  %30 = ptrtoint i8* %28 to i64
  %31 = sub i64 %29, %30
  %32 = load i64, i64* %5, align 8
  %33 = sub i64 %32, %31
  store i64 %33, i64* %5, align 8
  %34 = load i8*, i8** %10, align 8
  store i8* %34, i8** %9, align 8
  br label %15

35:                                               ; preds = %15
  %36 = load i64, i64* %6, align 8
  store i64 %36, i64* %3, align 8
  br label %53

37:                                               ; preds = %2
  store i64 0, i64* %6, align 8
  br label %38

38:                                               ; preds = %42, %37
  %39 = load i8*, i8** %4, align 8
  %40 = load i8, i8* %39, align 1
  %41 = icmp ne i8 %40, 0
  br i1 %41, label %42, label %51

42:                                               ; preds = %38
  %43 = load i8*, i8** %4, align 8
  %44 = load i64, i64* %5, align 8
  %45 = call i8* @uiprivUTF8DecodeRune(i8* %43, i64 %44, i32* %7)
  store i8* %45, i8** %4, align 8
  %46 = load i32, i32* %7, align 4
  %47 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %48 = call i64 @uiprivUTF16EncodeRune(i32 %46, i32* %47)
  %49 = load i64, i64* %6, align 8
  %50 = add i64 %49, %48
  store i64 %50, i64* %6, align 8
  br label %38

51:                                               ; preds = %38
  %52 = load i64, i64* %6, align 8
  store i64 %52, i64* %3, align 8
  br label %53

53:                                               ; preds = %51, %35
  %54 = load i64, i64* %3, align 8
  ret i64 %54
}

declare dso_local i8* @uiprivUTF8DecodeRune(i8*, i64, i32*) #1

declare dso_local i64 @uiprivUTF16EncodeRune(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
