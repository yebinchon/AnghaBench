; ModuleID = '/home/carl/AnghaBench/h2o/deps/brotli/c/enc/extr_encode.c_WriteMetadataHeader.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/brotli/c/enc/extr_encode.c_WriteMetadataHeader.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_3__*, i64, i64*)* @WriteMetadataHeader to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @WriteMetadataHeader(%struct.TYPE_3__* %0, i64 %1, i64* %2) #0 {
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64* %2, i64** %6, align 8
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  store i64 %12, i64* %7, align 8
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = load i64*, i64** %6, align 8
  %17 = getelementptr inbounds i64, i64* %16, i64 0
  store i64 %15, i64* %17, align 8
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 1
  store i64 0, i64* %19, align 8
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  store i64 0, i64* %21, align 8
  %22 = load i64*, i64** %6, align 8
  %23 = call i32 @BrotliWriteBits(i32 1, i64 0, i64* %7, i64* %22)
  %24 = load i64*, i64** %6, align 8
  %25 = call i32 @BrotliWriteBits(i32 2, i64 3, i64* %7, i64* %24)
  %26 = load i64*, i64** %6, align 8
  %27 = call i32 @BrotliWriteBits(i32 1, i64 0, i64* %7, i64* %26)
  %28 = load i64, i64* %5, align 8
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %3
  %31 = load i64*, i64** %6, align 8
  %32 = call i32 @BrotliWriteBits(i32 2, i64 0, i64* %7, i64* %31)
  br label %58

33:                                               ; preds = %3
  %34 = load i64, i64* %5, align 8
  %35 = icmp eq i64 %34, 1
  br i1 %35, label %36, label %37

36:                                               ; preds = %33
  br label %43

37:                                               ; preds = %33
  %38 = load i64, i64* %5, align 8
  %39 = trunc i64 %38 to i32
  %40 = sub nsw i32 %39, 1
  %41 = call i32 @Log2FloorNonZero(i32 %40)
  %42 = add nsw i32 %41, 1
  br label %43

43:                                               ; preds = %37, %36
  %44 = phi i32 [ 0, %36 ], [ %42, %37 ]
  store i32 %44, i32* %8, align 4
  %45 = load i32, i32* %8, align 4
  %46 = add nsw i32 %45, 7
  %47 = sdiv i32 %46, 8
  store i32 %47, i32* %9, align 4
  %48 = load i32, i32* %9, align 4
  %49 = sext i32 %48 to i64
  %50 = load i64*, i64** %6, align 8
  %51 = call i32 @BrotliWriteBits(i32 2, i64 %49, i64* %7, i64* %50)
  %52 = load i32, i32* %9, align 4
  %53 = mul nsw i32 8, %52
  %54 = load i64, i64* %5, align 8
  %55 = sub i64 %54, 1
  %56 = load i64*, i64** %6, align 8
  %57 = call i32 @BrotliWriteBits(i32 %53, i64 %55, i64* %7, i64* %56)
  br label %58

58:                                               ; preds = %43, %30
  %59 = load i64, i64* %7, align 8
  %60 = add i64 %59, 7
  %61 = lshr i64 %60, 3
  ret i64 %61
}

declare dso_local i32 @BrotliWriteBits(i32, i64, i64*, i64*) #1

declare dso_local i32 @Log2FloorNonZero(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
