; ModuleID = '/home/carl/AnghaBench/ios-webkit-debug-proxy/src/extr_char_buffer.c_cb_asscan.c'
source_filename = "/home/carl/AnghaBench/ios-webkit-debug-proxy/src/extr_char_buffer.c_cb_asscan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cb_asscan(i8** %0, i64* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store i8** %0, i8*** %5, align 8
  store i64* %1, i64** %6, align 8
  store i8* %2, i8** %7, align 8
  %9 = load i8**, i8*** %5, align 8
  %10 = icmp ne i8** %9, null
  br i1 %10, label %11, label %21

11:                                               ; preds = %3
  %12 = load i8**, i8*** %5, align 8
  %13 = load i8*, i8** %12, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %15, label %21

15:                                               ; preds = %11
  %16 = load i64*, i64** %6, align 8
  %17 = icmp ne i64* %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %15
  %19 = load i8*, i8** %7, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %18, %15, %11, %3
  store i32 -1, i32* %4, align 4
  br label %51

22:                                               ; preds = %18
  %23 = load i8*, i8** %7, align 8
  %24 = call i64 @strlen(i8* %23)
  %25 = add nsw i64 %24, 1
  %26 = call i64 @calloc(i64 %25, i32 1)
  %27 = inttoptr i64 %26 to i8*
  %28 = load i8**, i8*** %5, align 8
  store i8* %27, i8** %28, align 8
  %29 = load i8**, i8*** %5, align 8
  %30 = load i8*, i8** %29, align 8
  %31 = load i64*, i64** %6, align 8
  %32 = load i8*, i8** %7, align 8
  %33 = call i32 @cb_sscan(i8* %30, i64* %31, i8* %32)
  store i32 %33, i32* %8, align 4
  %34 = load i8**, i8*** %5, align 8
  %35 = load i8*, i8** %34, align 8
  %36 = icmp ne i8* %35, null
  br i1 %36, label %37, label %49

37:                                               ; preds = %22
  %38 = load i64*, i64** %6, align 8
  %39 = icmp ne i64* %38, null
  br i1 %39, label %40, label %49

40:                                               ; preds = %37
  %41 = load i8**, i8*** %5, align 8
  %42 = load i8*, i8** %41, align 8
  %43 = load i64*, i64** %6, align 8
  %44 = load i64, i64* %43, align 8
  %45 = mul i64 %44, 1
  %46 = call i64 @realloc(i8* %42, i64 %45)
  %47 = inttoptr i64 %46 to i8*
  %48 = load i8**, i8*** %5, align 8
  store i8* %47, i8** %48, align 8
  br label %49

49:                                               ; preds = %40, %37, %22
  %50 = load i32, i32* %8, align 4
  store i32 %50, i32* %4, align 4
  br label %51

51:                                               ; preds = %49, %21
  %52 = load i32, i32* %4, align 4
  ret i32 %52
}

declare dso_local i64 @calloc(i64, i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @cb_sscan(i8*, i64*, i8*) #1

declare dso_local i64 @realloc(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
