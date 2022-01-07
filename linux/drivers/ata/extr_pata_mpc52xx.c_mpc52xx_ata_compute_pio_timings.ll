; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_pata_mpc52xx.c_mpc52xx_ata_compute_pio_timings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_pata_mpc52xx.c_mpc52xx_ata_compute_pio_timings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpc52xx_ata_priv = type { i32, %struct.mpc52xx_ata_timings* }
%struct.mpc52xx_ata_timings = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@ataspec_t0 = common dso_local global i32* null, align 8
@ataspec_t1 = common dso_local global i32* null, align 8
@ataspec_t2_8 = common dso_local global i32* null, align 8
@ataspec_t2_16 = common dso_local global i32* null, align 8
@ataspec_t2i = common dso_local global i32* null, align 8
@ataspec_t4 = common dso_local global i32* null, align 8
@ataspec_ta = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mpc52xx_ata_priv*, i32, i32)* @mpc52xx_ata_compute_pio_timings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mpc52xx_ata_compute_pio_timings(%struct.mpc52xx_ata_priv* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mpc52xx_ata_priv*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.mpc52xx_ata_timings*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.mpc52xx_ata_priv* %0, %struct.mpc52xx_ata_priv** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %17 = load %struct.mpc52xx_ata_priv*, %struct.mpc52xx_ata_priv** %5, align 8
  %18 = getelementptr inbounds %struct.mpc52xx_ata_priv, %struct.mpc52xx_ata_priv* %17, i32 0, i32 1
  %19 = load %struct.mpc52xx_ata_timings*, %struct.mpc52xx_ata_timings** %18, align 8
  %20 = load i32, i32* %6, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.mpc52xx_ata_timings, %struct.mpc52xx_ata_timings* %19, i64 %21
  store %struct.mpc52xx_ata_timings* %22, %struct.mpc52xx_ata_timings** %8, align 8
  %23 = load %struct.mpc52xx_ata_priv*, %struct.mpc52xx_ata_priv** %5, align 8
  %24 = getelementptr inbounds %struct.mpc52xx_ata_priv, %struct.mpc52xx_ata_priv* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  store i32 %25, i32* %9, align 4
  %26 = load i32, i32* %7, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %3
  %29 = load i32, i32* %7, align 4
  %30 = icmp sgt i32 %29, 4
  br i1 %30, label %31, label %34

31:                                               ; preds = %28, %3
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %4, align 4
  br label %113

34:                                               ; preds = %28
  %35 = load i32, i32* %9, align 4
  %36 = load i32*, i32** @ataspec_t0, align 8
  %37 = load i32, i32* %7, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = mul nsw i32 1000, %40
  %42 = call i32 @CALC_CLKCYC(i32 %35, i32 %41)
  store i32 %42, i32* %10, align 4
  %43 = load i32, i32* %9, align 4
  %44 = load i32*, i32** @ataspec_t1, align 8
  %45 = load i32, i32* %7, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = mul nsw i32 1000, %48
  %50 = call i32 @CALC_CLKCYC(i32 %43, i32 %49)
  store i32 %50, i32* %11, align 4
  %51 = load i32, i32* %9, align 4
  %52 = load i32*, i32** @ataspec_t2_8, align 8
  %53 = load i32, i32* %7, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = mul nsw i32 1000, %56
  %58 = call i32 @CALC_CLKCYC(i32 %51, i32 %57)
  store i32 %58, i32* %12, align 4
  %59 = load i32, i32* %9, align 4
  %60 = load i32*, i32** @ataspec_t2_16, align 8
  %61 = load i32, i32* %7, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = mul nsw i32 1000, %64
  %66 = call i32 @CALC_CLKCYC(i32 %59, i32 %65)
  store i32 %66, i32* %13, align 4
  %67 = load i32, i32* %9, align 4
  %68 = load i32*, i32** @ataspec_t2i, align 8
  %69 = load i32, i32* %7, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %68, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = mul nsw i32 1000, %72
  %74 = call i32 @CALC_CLKCYC(i32 %67, i32 %73)
  store i32 %74, i32* %14, align 4
  %75 = load i32, i32* %9, align 4
  %76 = load i32*, i32** @ataspec_t4, align 8
  %77 = load i32, i32* %7, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %76, i64 %78
  %80 = load i32, i32* %79, align 4
  %81 = mul nsw i32 1000, %80
  %82 = call i32 @CALC_CLKCYC(i32 %75, i32 %81)
  store i32 %82, i32* %15, align 4
  %83 = load i32, i32* %9, align 4
  %84 = load i32*, i32** @ataspec_ta, align 8
  %85 = load i32, i32* %7, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %84, i64 %86
  %88 = load i32, i32* %87, align 4
  %89 = mul nsw i32 1000, %88
  %90 = call i32 @CALC_CLKCYC(i32 %83, i32 %89)
  store i32 %90, i32* %16, align 4
  %91 = load i32, i32* %10, align 4
  %92 = shl i32 %91, 24
  %93 = load i32, i32* %12, align 4
  %94 = shl i32 %93, 16
  %95 = or i32 %92, %94
  %96 = load i32, i32* %13, align 4
  %97 = shl i32 %96, 8
  %98 = or i32 %95, %97
  %99 = load i32, i32* %14, align 4
  %100 = or i32 %98, %99
  %101 = load %struct.mpc52xx_ata_timings*, %struct.mpc52xx_ata_timings** %8, align 8
  %102 = getelementptr inbounds %struct.mpc52xx_ata_timings, %struct.mpc52xx_ata_timings* %101, i32 0, i32 0
  store i32 %100, i32* %102, align 4
  %103 = load i32, i32* %15, align 4
  %104 = shl i32 %103, 24
  %105 = load i32, i32* %11, align 4
  %106 = shl i32 %105, 16
  %107 = or i32 %104, %106
  %108 = load i32, i32* %16, align 4
  %109 = shl i32 %108, 8
  %110 = or i32 %107, %109
  %111 = load %struct.mpc52xx_ata_timings*, %struct.mpc52xx_ata_timings** %8, align 8
  %112 = getelementptr inbounds %struct.mpc52xx_ata_timings, %struct.mpc52xx_ata_timings* %111, i32 0, i32 1
  store i32 %110, i32* %112, align 4
  store i32 0, i32* %4, align 4
  br label %113

113:                                              ; preds = %34, %31
  %114 = load i32, i32* %4, align 4
  ret i32 %114
}

declare dso_local i32 @CALC_CLKCYC(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
