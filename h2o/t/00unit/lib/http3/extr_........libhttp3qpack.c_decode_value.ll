; ModuleID = '/home/carl/AnghaBench/h2o/t/00unit/lib/http3/extr_........libhttp3qpack.c_decode_value.c'
source_filename = "/home/carl/AnghaBench/h2o/t/00unit/lib/http3/extr_........libhttp3qpack.c_decode_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SIZE_MAX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, i32*, i64, i8*, i8**)* @decode_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @decode_value(i32 %0, i32* %1, i64 %2, i8* %3, i8** %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8**, align 8
  %12 = alloca i64, align 8
  store i32 %0, i32* %7, align 4
  store i32* %1, i32** %8, align 8
  store i64 %2, i64* %9, align 8
  store i8* %3, i8** %10, align 8
  store i8** %4, i8*** %11, align 8
  %13 = load i32, i32* %7, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %26

15:                                               ; preds = %5
  %16 = load i8*, i8** %10, align 8
  %17 = load i32*, i32** %8, align 8
  %18 = load i64, i64* %9, align 8
  %19 = load i8**, i8*** %11, align 8
  %20 = call i64 @h2o_hpack_decode_huffman(i8* %16, i32* %17, i64 %18, i32 0, i8** %19)
  store i64 %20, i64* %12, align 8
  %21 = load i64, i64* @SIZE_MAX, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %15
  %24 = load i64, i64* @SIZE_MAX, align 8
  store i64 %24, i64* %6, align 8
  br label %42

25:                                               ; preds = %15
  br label %37

26:                                               ; preds = %5
  %27 = load i32*, i32** %8, align 8
  %28 = bitcast i32* %27 to i8*
  %29 = load i64, i64* %9, align 8
  %30 = load i8**, i8*** %11, align 8
  %31 = call i32 @h2o_hpack_validate_header_value(i8* %28, i64 %29, i8** %30)
  %32 = load i8*, i8** %10, align 8
  %33 = load i32*, i32** %8, align 8
  %34 = load i64, i64* %9, align 8
  %35 = call i32 @memcpy(i8* %32, i32* %33, i64 %34)
  %36 = load i64, i64* %9, align 8
  store i64 %36, i64* %12, align 8
  br label %37

37:                                               ; preds = %26, %25
  %38 = load i8*, i8** %10, align 8
  %39 = load i64, i64* %12, align 8
  %40 = getelementptr inbounds i8, i8* %38, i64 %39
  store i8 0, i8* %40, align 1
  %41 = load i64, i64* %12, align 8
  store i64 %41, i64* %6, align 8
  br label %42

42:                                               ; preds = %37, %23
  %43 = load i64, i64* %6, align 8
  ret i64 %43
}

declare dso_local i64 @h2o_hpack_decode_huffman(i8*, i32*, i64, i32, i8**) #1

declare dso_local i32 @h2o_hpack_validate_header_value(i8*, i64, i8**) #1

declare dso_local i32 @memcpy(i8*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
