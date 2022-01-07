; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/hw_random/extr_st-rng.c_st_rng_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/hw_random/extr_st-rng.c_st_rng_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hwrng = type { i64 }
%struct.st_rng_data = type { i64 }

@ST_RNG_FILL_FIFO_TIMEOUT = common dso_local global i32 0, align 4
@ST_RNG_STATUS_REG = common dso_local global i64 0, align 8
@ST_RNG_STATUS_FIFO_FULL = common dso_local global i32 0, align 4
@ST_RNG_FIFO_SIZE = common dso_local global i32 0, align 4
@ST_RNG_DATA_REG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hwrng*, i8*, i64, i32)* @st_rng_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @st_rng_read(%struct.hwrng* %0, i8* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.hwrng*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.st_rng_data*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.hwrng* %0, %struct.hwrng** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load %struct.hwrng*, %struct.hwrng** %6, align 8
  %14 = getelementptr inbounds %struct.hwrng, %struct.hwrng* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to %struct.st_rng_data*
  store %struct.st_rng_data* %16, %struct.st_rng_data** %10, align 8
  store i32 0, i32* %12, align 4
  br label %17

17:                                               ; preds = %36, %4
  %18 = load i32, i32* %12, align 4
  %19 = load i32, i32* @ST_RNG_FILL_FIFO_TIMEOUT, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %39

21:                                               ; preds = %17
  %22 = load %struct.st_rng_data*, %struct.st_rng_data** %10, align 8
  %23 = getelementptr inbounds %struct.st_rng_data, %struct.st_rng_data* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @ST_RNG_STATUS_REG, align 8
  %26 = add nsw i64 %24, %25
  %27 = call i8* @readl_relaxed(i64 %26)
  %28 = ptrtoint i8* %27 to i32
  store i32 %28, i32* %11, align 4
  %29 = load i32, i32* %11, align 4
  %30 = load i32, i32* @ST_RNG_STATUS_FIFO_FULL, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %21
  br label %39

34:                                               ; preds = %21
  %35 = call i32 @udelay(i32 1)
  br label %36

36:                                               ; preds = %34
  %37 = load i32, i32* %12, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %12, align 4
  br label %17

39:                                               ; preds = %33, %17
  %40 = load i32, i32* %12, align 4
  %41 = load i32, i32* @ST_RNG_FILL_FIFO_TIMEOUT, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %39
  store i32 0, i32* %5, align 4
  br label %73

44:                                               ; preds = %39
  store i32 0, i32* %12, align 4
  br label %45

45:                                               ; preds = %68, %44
  %46 = load i32, i32* %12, align 4
  %47 = load i32, i32* @ST_RNG_FIFO_SIZE, align 4
  %48 = icmp slt i32 %46, %47
  br i1 %48, label %49, label %54

49:                                               ; preds = %45
  %50 = load i32, i32* %12, align 4
  %51 = sext i32 %50 to i64
  %52 = load i64, i64* %8, align 8
  %53 = icmp ult i64 %51, %52
  br label %54

54:                                               ; preds = %49, %45
  %55 = phi i1 [ false, %45 ], [ %53, %49 ]
  br i1 %55, label %56, label %71

56:                                               ; preds = %54
  %57 = load %struct.st_rng_data*, %struct.st_rng_data** %10, align 8
  %58 = getelementptr inbounds %struct.st_rng_data, %struct.st_rng_data* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @ST_RNG_DATA_REG, align 8
  %61 = add nsw i64 %59, %60
  %62 = call i8* @readl_relaxed(i64 %61)
  %63 = load i8*, i8** %7, align 8
  %64 = load i32, i32* %12, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr i8, i8* %63, i64 %65
  %67 = bitcast i8* %66 to i8**
  store i8* %62, i8** %67, align 8
  br label %68

68:                                               ; preds = %56
  %69 = load i32, i32* %12, align 4
  %70 = add nsw i32 %69, 2
  store i32 %70, i32* %12, align 4
  br label %45

71:                                               ; preds = %54
  %72 = load i32, i32* %12, align 4
  store i32 %72, i32* %5, align 4
  br label %73

73:                                               ; preds = %71, %43
  %74 = load i32, i32* %5, align 4
  ret i32 %74
}

declare dso_local i8* @readl_relaxed(i64) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
