; ModuleID = '/home/carl/AnghaBench/lede/tools/firmware-utils/src/extr_cyg_crc32.c_cyg_ether_crc32_accumulate.c'
source_filename = "/home/carl/AnghaBench/lede/tools/firmware-utils/src/extr_cyg_crc32.c_cyg_ether_crc32_accumulate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@crc32_tab = common dso_local global i64* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @cyg_ether_crc32_accumulate(i64 %0, i8* %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i64 %0, i64* %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load i8*, i8** %6, align 8
  %10 = icmp eq i8* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %3
  store i64 0, i64* %4, align 8
  br label %41

12:                                               ; preds = %3
  %13 = load i64, i64* %5, align 8
  %14 = xor i64 %13, 4294967295
  store i64 %14, i64* %5, align 8
  store i32 0, i32* %8, align 4
  br label %15

15:                                               ; preds = %35, %12
  %16 = load i32, i32* %8, align 4
  %17 = load i32, i32* %7, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %38

19:                                               ; preds = %15
  %20 = load i64*, i64** @crc32_tab, align 8
  %21 = load i64, i64* %5, align 8
  %22 = load i8*, i8** %6, align 8
  %23 = load i32, i32* %8, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i8, i8* %22, i64 %24
  %26 = load i8, i8* %25, align 1
  %27 = zext i8 %26 to i64
  %28 = xor i64 %21, %27
  %29 = and i64 %28, 255
  %30 = getelementptr inbounds i64, i64* %20, i64 %29
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* %5, align 8
  %33 = ashr i64 %32, 8
  %34 = xor i64 %31, %33
  store i64 %34, i64* %5, align 8
  br label %35

35:                                               ; preds = %19
  %36 = load i32, i32* %8, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %8, align 4
  br label %15

38:                                               ; preds = %15
  %39 = load i64, i64* %5, align 8
  %40 = xor i64 %39, 4294967295
  store i64 %40, i64* %4, align 8
  br label %41

41:                                               ; preds = %38, %11
  %42 = load i64, i64* %4, align 8
  ret i64 %42
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
