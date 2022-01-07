; ModuleID = '/home/carl/AnghaBench/hashcat/deps/LZMA-SDK/C/extr_LzmaEnc.c_SetPrices_3.c'
source_filename = "/home/carl/AnghaBench/hashcat/deps/LZMA-SDK/C/extr_LzmaEnc.c_SetPrices_3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64*, i64, i64*, i32*)* @SetPrices_3 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @SetPrices_3(i64* %0, i64 %1, i64* %2, i32* %3) #0 {
  %5 = alloca i64*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store i64* %0, i64** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64* %2, i64** %7, align 8
  store i32* %3, i32** %8, align 8
  store i32 0, i32* %9, align 4
  br label %12

12:                                               ; preds = %62, %4
  %13 = load i32, i32* %9, align 4
  %14 = icmp ult i32 %13, 8
  br i1 %14, label %15, label %65

15:                                               ; preds = %12
  %16 = load i64, i64* %6, align 8
  store i64 %16, i64* %10, align 8
  %17 = load i64*, i64** %5, align 8
  %18 = getelementptr inbounds i64, i64* %17, i64 1
  %19 = load i64, i64* %18, align 8
  %20 = load i32, i32* %9, align 4
  %21 = lshr i32 %20, 2
  %22 = call i64 @GET_PRICEa(i64 %19, i32 %21)
  %23 = load i64, i64* %10, align 8
  %24 = add nsw i64 %23, %22
  store i64 %24, i64* %10, align 8
  %25 = load i64*, i64** %5, align 8
  %26 = load i32, i32* %9, align 4
  %27 = lshr i32 %26, 2
  %28 = add i32 2, %27
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds i64, i64* %25, i64 %29
  %31 = load i64, i64* %30, align 8
  %32 = load i32, i32* %9, align 4
  %33 = lshr i32 %32, 1
  %34 = and i32 %33, 1
  %35 = call i64 @GET_PRICEa(i64 %31, i32 %34)
  %36 = load i64, i64* %10, align 8
  %37 = add nsw i64 %36, %35
  store i64 %37, i64* %10, align 8
  %38 = load i64*, i64** %5, align 8
  %39 = load i32, i32* %9, align 4
  %40 = lshr i32 %39, 1
  %41 = add i32 4, %40
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds i64, i64* %38, i64 %42
  %44 = load i64, i64* %43, align 8
  store i64 %44, i64* %11, align 8
  %45 = load i64, i64* %10, align 8
  %46 = load i64, i64* %11, align 8
  %47 = call i64 @GET_PRICEa_0(i64 %46)
  %48 = add nsw i64 %45, %47
  %49 = load i64*, i64** %7, align 8
  %50 = load i32, i32* %9, align 4
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds i64, i64* %49, i64 %51
  store i64 %48, i64* %52, align 8
  %53 = load i64, i64* %10, align 8
  %54 = load i64, i64* %11, align 8
  %55 = call i64 @GET_PRICEa_1(i64 %54)
  %56 = add nsw i64 %53, %55
  %57 = load i64*, i64** %7, align 8
  %58 = load i32, i32* %9, align 4
  %59 = add i32 %58, 1
  %60 = zext i32 %59 to i64
  %61 = getelementptr inbounds i64, i64* %57, i64 %60
  store i64 %56, i64* %61, align 8
  br label %62

62:                                               ; preds = %15
  %63 = load i32, i32* %9, align 4
  %64 = add i32 %63, 2
  store i32 %64, i32* %9, align 4
  br label %12

65:                                               ; preds = %12
  ret void
}

declare dso_local i64 @GET_PRICEa(i64, i32) #1

declare dso_local i64 @GET_PRICEa_0(i64) #1

declare dso_local i64 @GET_PRICEa_1(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
