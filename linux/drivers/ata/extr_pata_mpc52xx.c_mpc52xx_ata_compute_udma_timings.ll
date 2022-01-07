; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_pata_mpc52xx.c_mpc52xx_ata_compute_udma_timings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_pata_mpc52xx.c_mpc52xx_ata_compute_udma_timings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpc52xx_ata_priv = type { %struct.udmaspec*, %struct.mpc52xx_ata_timings* }
%struct.udmaspec = type { i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.mpc52xx_ata_timings = type { i32, i32, i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mpc52xx_ata_priv*, i32, i32)* @mpc52xx_ata_compute_udma_timings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mpc52xx_ata_compute_udma_timings(%struct.mpc52xx_ata_priv* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mpc52xx_ata_priv*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.mpc52xx_ata_timings*, align 8
  %9 = alloca %struct.udmaspec*, align 8
  store %struct.mpc52xx_ata_priv* %0, %struct.mpc52xx_ata_priv** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load %struct.mpc52xx_ata_priv*, %struct.mpc52xx_ata_priv** %5, align 8
  %11 = getelementptr inbounds %struct.mpc52xx_ata_priv, %struct.mpc52xx_ata_priv* %10, i32 0, i32 1
  %12 = load %struct.mpc52xx_ata_timings*, %struct.mpc52xx_ata_timings** %11, align 8
  %13 = load i32, i32* %6, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.mpc52xx_ata_timings, %struct.mpc52xx_ata_timings* %12, i64 %14
  store %struct.mpc52xx_ata_timings* %15, %struct.mpc52xx_ata_timings** %8, align 8
  %16 = load %struct.mpc52xx_ata_priv*, %struct.mpc52xx_ata_priv** %5, align 8
  %17 = getelementptr inbounds %struct.mpc52xx_ata_priv, %struct.mpc52xx_ata_priv* %16, i32 0, i32 0
  %18 = load %struct.udmaspec*, %struct.udmaspec** %17, align 8
  %19 = load i32, i32* %7, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.udmaspec, %struct.udmaspec* %18, i64 %20
  store %struct.udmaspec* %21, %struct.udmaspec** %9, align 8
  %22 = load i32, i32* %7, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %3
  %25 = load i32, i32* %7, align 4
  %26 = icmp sgt i32 %25, 2
  br i1 %26, label %27, label %30

27:                                               ; preds = %24, %3
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %4, align 4
  br label %132

30:                                               ; preds = %24
  %31 = load %struct.udmaspec*, %struct.udmaspec** %9, align 8
  %32 = getelementptr inbounds %struct.udmaspec, %struct.udmaspec* %31, i32 0, i32 16
  %33 = load i64, i64* %32, align 8
  %34 = trunc i64 %33 to i32
  %35 = shl i32 %34, 24
  %36 = load %struct.udmaspec*, %struct.udmaspec** %9, align 8
  %37 = getelementptr inbounds %struct.udmaspec, %struct.udmaspec* %36, i32 0, i32 15
  %38 = load i64, i64* %37, align 8
  %39 = trunc i64 %38 to i32
  %40 = shl i32 %39, 16
  %41 = or i32 %35, %40
  %42 = load %struct.udmaspec*, %struct.udmaspec** %9, align 8
  %43 = getelementptr inbounds %struct.udmaspec, %struct.udmaspec* %42, i32 0, i32 14
  %44 = load i64, i64* %43, align 8
  %45 = trunc i64 %44 to i32
  %46 = shl i32 %45, 8
  %47 = or i32 %41, %46
  %48 = load %struct.udmaspec*, %struct.udmaspec** %9, align 8
  %49 = getelementptr inbounds %struct.udmaspec, %struct.udmaspec* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = or i32 %47, %50
  %52 = load %struct.mpc52xx_ata_timings*, %struct.mpc52xx_ata_timings** %8, align 8
  %53 = getelementptr inbounds %struct.mpc52xx_ata_timings, %struct.mpc52xx_ata_timings* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 4
  %54 = load %struct.udmaspec*, %struct.udmaspec** %9, align 8
  %55 = getelementptr inbounds %struct.udmaspec, %struct.udmaspec* %54, i32 0, i32 13
  %56 = load i64, i64* %55, align 8
  %57 = trunc i64 %56 to i32
  %58 = shl i32 %57, 24
  %59 = load %struct.udmaspec*, %struct.udmaspec** %9, align 8
  %60 = getelementptr inbounds %struct.udmaspec, %struct.udmaspec* %59, i32 0, i32 12
  %61 = load i64, i64* %60, align 8
  %62 = trunc i64 %61 to i32
  %63 = shl i32 %62, 16
  %64 = or i32 %58, %63
  %65 = load %struct.udmaspec*, %struct.udmaspec** %9, align 8
  %66 = getelementptr inbounds %struct.udmaspec, %struct.udmaspec* %65, i32 0, i32 11
  %67 = load i64, i64* %66, align 8
  %68 = trunc i64 %67 to i32
  %69 = shl i32 %68, 8
  %70 = or i32 %64, %69
  %71 = load %struct.udmaspec*, %struct.udmaspec** %9, align 8
  %72 = getelementptr inbounds %struct.udmaspec, %struct.udmaspec* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = or i32 %70, %73
  %75 = load %struct.mpc52xx_ata_timings*, %struct.mpc52xx_ata_timings** %8, align 8
  %76 = getelementptr inbounds %struct.mpc52xx_ata_timings, %struct.mpc52xx_ata_timings* %75, i32 0, i32 1
  store i32 %74, i32* %76, align 4
  %77 = load %struct.udmaspec*, %struct.udmaspec** %9, align 8
  %78 = getelementptr inbounds %struct.udmaspec, %struct.udmaspec* %77, i32 0, i32 10
  %79 = load i64, i64* %78, align 8
  %80 = trunc i64 %79 to i32
  %81 = shl i32 %80, 24
  %82 = load %struct.udmaspec*, %struct.udmaspec** %9, align 8
  %83 = getelementptr inbounds %struct.udmaspec, %struct.udmaspec* %82, i32 0, i32 9
  %84 = load i64, i64* %83, align 8
  %85 = trunc i64 %84 to i32
  %86 = shl i32 %85, 16
  %87 = or i32 %81, %86
  %88 = load %struct.udmaspec*, %struct.udmaspec** %9, align 8
  %89 = getelementptr inbounds %struct.udmaspec, %struct.udmaspec* %88, i32 0, i32 8
  %90 = load i64, i64* %89, align 8
  %91 = trunc i64 %90 to i32
  %92 = shl i32 %91, 8
  %93 = or i32 %87, %92
  %94 = load %struct.udmaspec*, %struct.udmaspec** %9, align 8
  %95 = getelementptr inbounds %struct.udmaspec, %struct.udmaspec* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 8
  %97 = or i32 %93, %96
  %98 = load %struct.mpc52xx_ata_timings*, %struct.mpc52xx_ata_timings** %8, align 8
  %99 = getelementptr inbounds %struct.mpc52xx_ata_timings, %struct.mpc52xx_ata_timings* %98, i32 0, i32 2
  store i32 %97, i32* %99, align 4
  %100 = load %struct.udmaspec*, %struct.udmaspec** %9, align 8
  %101 = getelementptr inbounds %struct.udmaspec, %struct.udmaspec* %100, i32 0, i32 7
  %102 = load i64, i64* %101, align 8
  %103 = trunc i64 %102 to i32
  %104 = shl i32 %103, 24
  %105 = load %struct.udmaspec*, %struct.udmaspec** %9, align 8
  %106 = getelementptr inbounds %struct.udmaspec, %struct.udmaspec* %105, i32 0, i32 6
  %107 = load i64, i64* %106, align 8
  %108 = trunc i64 %107 to i32
  %109 = shl i32 %108, 16
  %110 = or i32 %104, %109
  %111 = load %struct.udmaspec*, %struct.udmaspec** %9, align 8
  %112 = getelementptr inbounds %struct.udmaspec, %struct.udmaspec* %111, i32 0, i32 5
  %113 = load i64, i64* %112, align 8
  %114 = trunc i64 %113 to i32
  %115 = shl i32 %114, 8
  %116 = or i32 %110, %115
  %117 = load %struct.udmaspec*, %struct.udmaspec** %9, align 8
  %118 = getelementptr inbounds %struct.udmaspec, %struct.udmaspec* %117, i32 0, i32 3
  %119 = load i32, i32* %118, align 4
  %120 = or i32 %116, %119
  %121 = load %struct.mpc52xx_ata_timings*, %struct.mpc52xx_ata_timings** %8, align 8
  %122 = getelementptr inbounds %struct.mpc52xx_ata_timings, %struct.mpc52xx_ata_timings* %121, i32 0, i32 3
  store i32 %120, i32* %122, align 4
  %123 = load %struct.udmaspec*, %struct.udmaspec** %9, align 8
  %124 = getelementptr inbounds %struct.udmaspec, %struct.udmaspec* %123, i32 0, i32 4
  %125 = load i64, i64* %124, align 8
  %126 = trunc i64 %125 to i32
  %127 = shl i32 %126, 24
  %128 = load %struct.mpc52xx_ata_timings*, %struct.mpc52xx_ata_timings** %8, align 8
  %129 = getelementptr inbounds %struct.mpc52xx_ata_timings, %struct.mpc52xx_ata_timings* %128, i32 0, i32 4
  store i32 %127, i32* %129, align 4
  %130 = load %struct.mpc52xx_ata_timings*, %struct.mpc52xx_ata_timings** %8, align 8
  %131 = getelementptr inbounds %struct.mpc52xx_ata_timings, %struct.mpc52xx_ata_timings* %130, i32 0, i32 5
  store i32 1, i32* %131, align 4
  store i32 0, i32* %4, align 4
  br label %132

132:                                              ; preds = %30, %27
  %133 = load i32, i32* %4, align 4
  ret i32 %133
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
