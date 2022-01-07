; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/hw_random/extr_powernv-rng.c_powernv_rng_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/hw_random/extr_powernv-rng.c_powernv_rng_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hwrng = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hwrng*, i8*, i64, i32)* @powernv_rng_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @powernv_rng_read(%struct.hwrng* %0, i8* %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.hwrng*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.hwrng* %0, %struct.hwrng** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %12 = load i64, i64* %7, align 8
  %13 = udiv i64 %12, 8
  %14 = trunc i64 %13 to i32
  store i32 %14, i32* %11, align 4
  %15 = load i8*, i8** %6, align 8
  %16 = bitcast i8* %15 to i64*
  store i64* %16, i64** %9, align 8
  store i32 0, i32* %10, align 4
  br label %17

17:                                               ; preds = %26, %4
  %18 = load i32, i32* %10, align 4
  %19 = load i32, i32* %11, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %29

21:                                               ; preds = %17
  %22 = load i64*, i64** %9, align 8
  %23 = getelementptr inbounds i64, i64* %22, i32 1
  store i64* %23, i64** %9, align 8
  %24 = ptrtoint i64* %22 to i32
  %25 = call i32 @powernv_get_random_long(i32 %24)
  br label %26

26:                                               ; preds = %21
  %27 = load i32, i32* %10, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %10, align 4
  br label %17

29:                                               ; preds = %17
  %30 = load i32, i32* %11, align 4
  %31 = sext i32 %30 to i64
  %32 = mul i64 %31, 8
  %33 = trunc i64 %32 to i32
  ret i32 %33
}

declare dso_local i32 @powernv_get_random_long(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
