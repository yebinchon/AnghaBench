; ModuleID = '/home/carl/AnghaBench/h2o/lib/http2/extr_hpack.c_encode_content_length.c'
source_filename = "/home/carl/AnghaBench/h2o/lib/http2/extr_hpack.c_encode_content_length.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64* (i64*, i64)* @encode_content_length to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64* @encode_content_length(i64* %0, i64 %1) #0 {
  %3 = alloca i64*, align 8
  %4 = alloca i64, align 8
  %5 = alloca [32 x i8], align 16
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  store i64* %0, i64** %3, align 8
  store i64 %1, i64* %4, align 8
  %8 = getelementptr inbounds [32 x i8], [32 x i8]* %5, i64 0, i64 0
  %9 = getelementptr inbounds i8, i8* %8, i64 32
  store i8* %9, i8** %6, align 8
  br label %10

10:                                               ; preds = %17, %2
  %11 = load i64, i64* %4, align 8
  %12 = urem i64 %11, 10
  %13 = add i64 48, %12
  %14 = trunc i64 %13 to i8
  %15 = load i8*, i8** %6, align 8
  %16 = getelementptr inbounds i8, i8* %15, i32 -1
  store i8* %16, i8** %6, align 8
  store i8 %14, i8* %16, align 1
  br label %17

17:                                               ; preds = %10
  %18 = load i64, i64* %4, align 8
  %19 = udiv i64 %18, 10
  store i64 %19, i64* %4, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %10, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds [32 x i8], [32 x i8]* %5, i64 0, i64 0
  %23 = getelementptr inbounds i8, i8* %22, i64 32
  %24 = load i8*, i8** %6, align 8
  %25 = ptrtoint i8* %23 to i64
  %26 = ptrtoint i8* %24 to i64
  %27 = sub i64 %25, %26
  store i64 %27, i64* %7, align 8
  %28 = load i64*, i64** %3, align 8
  %29 = getelementptr inbounds i64, i64* %28, i32 1
  store i64* %29, i64** %3, align 8
  store i64 15, i64* %28, align 8
  %30 = load i64*, i64** %3, align 8
  %31 = getelementptr inbounds i64, i64* %30, i32 1
  store i64* %31, i64** %3, align 8
  store i64 13, i64* %30, align 8
  %32 = load i64, i64* %7, align 8
  %33 = load i64*, i64** %3, align 8
  %34 = getelementptr inbounds i64, i64* %33, i32 1
  store i64* %34, i64** %3, align 8
  store i64 %32, i64* %33, align 8
  %35 = load i64*, i64** %3, align 8
  %36 = load i8*, i8** %6, align 8
  %37 = load i64, i64* %7, align 8
  %38 = call i32 @memcpy(i64* %35, i8* %36, i64 %37)
  %39 = load i64, i64* %7, align 8
  %40 = load i64*, i64** %3, align 8
  %41 = getelementptr inbounds i64, i64* %40, i64 %39
  store i64* %41, i64** %3, align 8
  %42 = load i64*, i64** %3, align 8
  ret i64* %42
}

declare dso_local i32 @memcpy(i64*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
