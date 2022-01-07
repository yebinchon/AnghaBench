; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_gf128mul.c_gf128mul_4k_bbe.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_gf128mul.c_gf128mul_4k_bbe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gf128mul_4k = type { i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gf128mul_4k_bbe(i32* %0, %struct.gf128mul_4k* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.gf128mul_4k*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca [1 x i32], align 4
  %7 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store %struct.gf128mul_4k* %1, %struct.gf128mul_4k** %4, align 8
  %8 = load i32*, i32** %3, align 8
  %9 = bitcast i32* %8 to i64*
  store i64* %9, i64** %5, align 8
  store i32 0, i32* %7, align 4
  %10 = load %struct.gf128mul_4k*, %struct.gf128mul_4k** %4, align 8
  %11 = getelementptr inbounds %struct.gf128mul_4k, %struct.gf128mul_4k* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  %13 = load i64*, i64** %5, align 8
  %14 = getelementptr inbounds i64, i64* %13, i64 0
  %15 = load i64, i64* %14, align 8
  %16 = getelementptr inbounds i32, i32* %12, i64 %15
  %17 = load i32, i32* %16, align 4
  %18 = getelementptr inbounds [1 x i32], [1 x i32]* %6, i64 0, i64 0
  store i32 %17, i32* %18, align 4
  br label %19

19:                                               ; preds = %23, %2
  %20 = load i32, i32* %7, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %7, align 4
  %22 = icmp slt i32 %21, 16
  br i1 %22, label %23, label %38

23:                                               ; preds = %19
  %24 = getelementptr inbounds [1 x i32], [1 x i32]* %6, i64 0, i64 0
  %25 = call i32 @gf128mul_x8_bbe(i32* %24)
  %26 = getelementptr inbounds [1 x i32], [1 x i32]* %6, i64 0, i64 0
  %27 = getelementptr inbounds [1 x i32], [1 x i32]* %6, i64 0, i64 0
  %28 = load %struct.gf128mul_4k*, %struct.gf128mul_4k** %4, align 8
  %29 = getelementptr inbounds %struct.gf128mul_4k, %struct.gf128mul_4k* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = load i64*, i64** %5, align 8
  %32 = load i32, i32* %7, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i64, i64* %31, i64 %33
  %35 = load i64, i64* %34, align 8
  %36 = getelementptr inbounds i32, i32* %30, i64 %35
  %37 = call i32 @be128_xor(i32* %26, i32* %27, i32* %36)
  br label %19

38:                                               ; preds = %19
  %39 = getelementptr inbounds [1 x i32], [1 x i32]* %6, i64 0, i64 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32*, i32** %3, align 8
  store i32 %40, i32* %41, align 4
  ret void
}

declare dso_local i32 @gf128mul_x8_bbe(i32*) #1

declare dso_local i32 @be128_xor(i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
