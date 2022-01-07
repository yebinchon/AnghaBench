; ModuleID = '/home/carl/AnghaBench/hashcat/deps/LZMA-SDK/C/extr_Aes.c_Aes_Encode.c'
source_filename = "/home/carl/AnghaBench/hashcat/deps/LZMA-SDK/C/extr_Aes.c_Aes_Encode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64*, i64*, i64*)* @Aes_Encode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @Aes_Encode(i64* %0, i64* %1, i64* %2) #0 {
  %4 = alloca i64*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca [4 x i64], align 16
  %8 = alloca [4 x i64], align 16
  %9 = alloca i64, align 8
  store i64* %0, i64** %4, align 8
  store i64* %1, i64** %5, align 8
  store i64* %2, i64** %6, align 8
  %10 = load i64*, i64** %4, align 8
  %11 = getelementptr inbounds i64, i64* %10, i64 0
  %12 = load i64, i64* %11, align 8
  store i64 %12, i64* %9, align 8
  %13 = load i64*, i64** %4, align 8
  %14 = getelementptr inbounds i64, i64* %13, i64 4
  store i64* %14, i64** %4, align 8
  %15 = load i64*, i64** %6, align 8
  %16 = getelementptr inbounds i64, i64* %15, i64 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64*, i64** %4, align 8
  %19 = getelementptr inbounds i64, i64* %18, i64 0
  %20 = load i64, i64* %19, align 8
  %21 = xor i64 %17, %20
  %22 = getelementptr inbounds [4 x i64], [4 x i64]* %7, i64 0, i64 0
  store i64 %21, i64* %22, align 16
  %23 = load i64*, i64** %6, align 8
  %24 = getelementptr inbounds i64, i64* %23, i64 1
  %25 = load i64, i64* %24, align 8
  %26 = load i64*, i64** %4, align 8
  %27 = getelementptr inbounds i64, i64* %26, i64 1
  %28 = load i64, i64* %27, align 8
  %29 = xor i64 %25, %28
  %30 = getelementptr inbounds [4 x i64], [4 x i64]* %7, i64 0, i64 1
  store i64 %29, i64* %30, align 8
  %31 = load i64*, i64** %6, align 8
  %32 = getelementptr inbounds i64, i64* %31, i64 2
  %33 = load i64, i64* %32, align 8
  %34 = load i64*, i64** %4, align 8
  %35 = getelementptr inbounds i64, i64* %34, i64 2
  %36 = load i64, i64* %35, align 8
  %37 = xor i64 %33, %36
  %38 = getelementptr inbounds [4 x i64], [4 x i64]* %7, i64 0, i64 2
  store i64 %37, i64* %38, align 16
  %39 = load i64*, i64** %6, align 8
  %40 = getelementptr inbounds i64, i64* %39, i64 3
  %41 = load i64, i64* %40, align 8
  %42 = load i64*, i64** %4, align 8
  %43 = getelementptr inbounds i64, i64* %42, i64 3
  %44 = load i64, i64* %43, align 8
  %45 = xor i64 %41, %44
  %46 = getelementptr inbounds [4 x i64], [4 x i64]* %7, i64 0, i64 3
  store i64 %45, i64* %46, align 8
  %47 = load i64*, i64** %4, align 8
  %48 = getelementptr inbounds i64, i64* %47, i64 4
  store i64* %48, i64** %4, align 8
  br label %49

49:                                               ; preds = %57, %3
  %50 = getelementptr inbounds [4 x i64], [4 x i64]* %8, i64 0, i64 0
  %51 = getelementptr inbounds [4 x i64], [4 x i64]* %7, i64 0, i64 0
  %52 = call i32 @HT16(i64* %50, i64* %51, i32 0)
  %53 = load i64, i64* %9, align 8
  %54 = add nsw i64 %53, -1
  store i64 %54, i64* %9, align 8
  %55 = icmp eq i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %49
  br label %63

57:                                               ; preds = %49
  %58 = getelementptr inbounds [4 x i64], [4 x i64]* %7, i64 0, i64 0
  %59 = getelementptr inbounds [4 x i64], [4 x i64]* %8, i64 0, i64 0
  %60 = call i32 @HT16(i64* %58, i64* %59, i32 4)
  %61 = load i64*, i64** %4, align 8
  %62 = getelementptr inbounds i64, i64* %61, i64 8
  store i64* %62, i64** %4, align 8
  br label %49

63:                                               ; preds = %56
  %64 = load i64*, i64** %4, align 8
  %65 = getelementptr inbounds i64, i64* %64, i64 4
  store i64* %65, i64** %4, align 8
  %66 = call i32 @FT4(i32 0)
  %67 = call i32 @FT4(i32 1)
  %68 = call i32 @FT4(i32 2)
  %69 = call i32 @FT4(i32 3)
  ret void
}

declare dso_local i32 @HT16(i64*, i64*, i32) #1

declare dso_local i32 @FT4(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
