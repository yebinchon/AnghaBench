; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_jitterentropy.c_jent_lfsr_time.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_jitterentropy.c_jent_lfsr_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rand_data = type { i64 }

@DATA_SIZE_BITS = common dso_local global i32 0, align 4
@MAX_FOLD_LOOP_BIT = common dso_local global i32 0, align 4
@MIN_FOLD_LOOP_BIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.rand_data*, i64, i64)* @jent_lfsr_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @jent_lfsr_time(%struct.rand_data* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.rand_data*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.rand_data* %0, %struct.rand_data** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  store i64 0, i64* %8, align 8
  store i64 0, i64* %9, align 8
  %12 = load %struct.rand_data*, %struct.rand_data** %4, align 8
  %13 = call i64 @jent_loop_shuffle(%struct.rand_data* %12, i32 4, i32 0)
  store i64 %13, i64* %10, align 8
  %14 = load i64, i64* %6, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %3
  %17 = load i64, i64* %6, align 8
  store i64 %17, i64* %10, align 8
  br label %18

18:                                               ; preds = %16, %3
  store i64 0, i64* %8, align 8
  br label %19

19:                                               ; preds = %82, %18
  %20 = load i64, i64* %8, align 8
  %21 = load i64, i64* %10, align 8
  %22 = icmp slt i64 %20, %21
  br i1 %22, label %23, label %85

23:                                               ; preds = %19
  %24 = load %struct.rand_data*, %struct.rand_data** %4, align 8
  %25 = getelementptr inbounds %struct.rand_data, %struct.rand_data* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  store i64 %26, i64* %9, align 8
  store i32 1, i32* %7, align 4
  br label %27

27:                                               ; preds = %78, %23
  %28 = load i32, i32* @DATA_SIZE_BITS, align 4
  %29 = load i32, i32* %7, align 4
  %30 = icmp uge i32 %28, %29
  br i1 %30, label %31, label %81

31:                                               ; preds = %27
  %32 = load i64, i64* %5, align 8
  %33 = load i32, i32* @DATA_SIZE_BITS, align 4
  %34 = load i32, i32* %7, align 4
  %35 = sub i32 %33, %34
  %36 = zext i32 %35 to i64
  %37 = shl i64 %32, %36
  store i64 %37, i64* %11, align 8
  %38 = load i64, i64* %11, align 8
  %39 = load i32, i32* @DATA_SIZE_BITS, align 4
  %40 = sub i32 %39, 1
  %41 = zext i32 %40 to i64
  %42 = ashr i64 %38, %41
  store i64 %42, i64* %11, align 8
  %43 = load i64, i64* %9, align 8
  %44 = ashr i64 %43, 63
  %45 = and i64 %44, 1
  %46 = load i64, i64* %11, align 8
  %47 = xor i64 %46, %45
  store i64 %47, i64* %11, align 8
  %48 = load i64, i64* %9, align 8
  %49 = ashr i64 %48, 60
  %50 = and i64 %49, 1
  %51 = load i64, i64* %11, align 8
  %52 = xor i64 %51, %50
  store i64 %52, i64* %11, align 8
  %53 = load i64, i64* %9, align 8
  %54 = ashr i64 %53, 55
  %55 = and i64 %54, 1
  %56 = load i64, i64* %11, align 8
  %57 = xor i64 %56, %55
  store i64 %57, i64* %11, align 8
  %58 = load i64, i64* %9, align 8
  %59 = ashr i64 %58, 30
  %60 = and i64 %59, 1
  %61 = load i64, i64* %11, align 8
  %62 = xor i64 %61, %60
  store i64 %62, i64* %11, align 8
  %63 = load i64, i64* %9, align 8
  %64 = ashr i64 %63, 27
  %65 = and i64 %64, 1
  %66 = load i64, i64* %11, align 8
  %67 = xor i64 %66, %65
  store i64 %67, i64* %11, align 8
  %68 = load i64, i64* %9, align 8
  %69 = ashr i64 %68, 22
  %70 = and i64 %69, 1
  %71 = load i64, i64* %11, align 8
  %72 = xor i64 %71, %70
  store i64 %72, i64* %11, align 8
  %73 = load i64, i64* %9, align 8
  %74 = shl i64 %73, 1
  store i64 %74, i64* %9, align 8
  %75 = load i64, i64* %11, align 8
  %76 = load i64, i64* %9, align 8
  %77 = xor i64 %76, %75
  store i64 %77, i64* %9, align 8
  br label %78

78:                                               ; preds = %31
  %79 = load i32, i32* %7, align 4
  %80 = add i32 %79, 1
  store i32 %80, i32* %7, align 4
  br label %27

81:                                               ; preds = %27
  br label %82

82:                                               ; preds = %81
  %83 = load i64, i64* %8, align 8
  %84 = add nsw i64 %83, 1
  store i64 %84, i64* %8, align 8
  br label %19

85:                                               ; preds = %19
  %86 = load i64, i64* %9, align 8
  %87 = load %struct.rand_data*, %struct.rand_data** %4, align 8
  %88 = getelementptr inbounds %struct.rand_data, %struct.rand_data* %87, i32 0, i32 0
  store i64 %86, i64* %88, align 8
  %89 = load i64, i64* %10, align 8
  ret i64 %89
}

declare dso_local i64 @jent_loop_shuffle(%struct.rand_data*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
