; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/hw_random/extr_optee-rng.c_optee_rng_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/hw_random/extr_optee-rng.c_optee_rng_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hwrng = type { i32 }
%struct.optee_rng_private = type { i32 }

@MAX_ENTROPY_REQ_SZ = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hwrng*, i8*, i64, i32)* @optee_rng_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @optee_rng_read(%struct.hwrng* %0, i8* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.hwrng*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.optee_rng_private*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  store %struct.hwrng* %0, %struct.hwrng** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %15 = load %struct.hwrng*, %struct.hwrng** %6, align 8
  %16 = call %struct.optee_rng_private* @to_optee_rng_private(%struct.hwrng* %15)
  store %struct.optee_rng_private* %16, %struct.optee_rng_private** %10, align 8
  store i64 0, i64* %11, align 8
  store i64 0, i64* %12, align 8
  store i32 1, i32* %13, align 4
  %17 = load i8*, i8** %7, align 8
  %18 = bitcast i8* %17 to i32*
  store i32* %18, i32** %14, align 8
  %19 = load i64, i64* %8, align 8
  %20 = load i64, i64* @MAX_ENTROPY_REQ_SZ, align 8
  %21 = icmp ugt i64 %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %4
  %23 = load i64, i64* @MAX_ENTROPY_REQ_SZ, align 8
  store i64 %23, i64* %8, align 8
  br label %24

24:                                               ; preds = %22, %4
  br label %25

25:                                               ; preds = %65, %24
  %26 = load i64, i64* %11, align 8
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %66

28:                                               ; preds = %25
  %29 = load %struct.optee_rng_private*, %struct.optee_rng_private** %10, align 8
  %30 = load i32*, i32** %14, align 8
  %31 = load i64, i64* %8, align 8
  %32 = load i64, i64* %11, align 8
  %33 = sub i64 %31, %32
  %34 = call i64 @get_optee_rng_data(%struct.optee_rng_private* %29, i32* %30, i64 %33)
  store i64 %34, i64* %12, align 8
  %35 = load i64, i64* %12, align 8
  %36 = load i32*, i32** %14, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 %35
  store i32* %37, i32** %14, align 8
  %38 = load i64, i64* %12, align 8
  %39 = load i64, i64* %11, align 8
  %40 = add i64 %39, %38
  store i64 %40, i64* %11, align 8
  %41 = load i32, i32* %9, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %62

43:                                               ; preds = %28
  %44 = load i32, i32* %13, align 4
  %45 = add nsw i32 %44, -1
  store i32 %45, i32* %13, align 4
  %46 = icmp eq i32 %44, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %43
  %48 = load i64, i64* %11, align 8
  %49 = trunc i64 %48 to i32
  store i32 %49, i32* %5, align 4
  br label %69

50:                                               ; preds = %43
  %51 = load i64, i64* %8, align 8
  %52 = load i64, i64* %11, align 8
  %53 = sub i64 %51, %52
  %54 = mul i64 1000, %53
  %55 = load %struct.optee_rng_private*, %struct.optee_rng_private** %10, align 8
  %56 = getelementptr inbounds %struct.optee_rng_private, %struct.optee_rng_private* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = sext i32 %57 to i64
  %59 = udiv i64 %54, %58
  %60 = trunc i64 %59 to i32
  %61 = call i32 @msleep(i32 %60)
  br label %65

62:                                               ; preds = %28
  %63 = load i64, i64* %11, align 8
  %64 = trunc i64 %63 to i32
  store i32 %64, i32* %5, align 4
  br label %69

65:                                               ; preds = %50
  br label %25

66:                                               ; preds = %25
  %67 = load i64, i64* %11, align 8
  %68 = trunc i64 %67 to i32
  store i32 %68, i32* %5, align 4
  br label %69

69:                                               ; preds = %66, %62, %47
  %70 = load i32, i32* %5, align 4
  ret i32 %70
}

declare dso_local %struct.optee_rng_private* @to_optee_rng_private(%struct.hwrng*) #1

declare dso_local i64 @get_optee_rng_data(%struct.optee_rng_private*, i32*, i64) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
