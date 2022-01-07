; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_pata_mpc52xx.c_mpc52xx_ata_compute_mdma_timings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_pata_mpc52xx.c_mpc52xx_ata_compute_mdma_timings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpc52xx_ata_priv = type { %struct.mdmaspec*, %struct.mpc52xx_ata_timings* }
%struct.mdmaspec = type { i32, i64, i64, i64, i64, i64, i64 }
%struct.mpc52xx_ata_timings = type { i32, i32, i64 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mpc52xx_ata_priv*, i32, i32)* @mpc52xx_ata_compute_mdma_timings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mpc52xx_ata_compute_mdma_timings(%struct.mpc52xx_ata_priv* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mpc52xx_ata_priv*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.mpc52xx_ata_timings*, align 8
  %9 = alloca %struct.mdmaspec*, align 8
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
  %18 = load %struct.mdmaspec*, %struct.mdmaspec** %17, align 8
  %19 = load i32, i32* %7, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.mdmaspec, %struct.mdmaspec* %18, i64 %20
  store %struct.mdmaspec* %21, %struct.mdmaspec** %9, align 8
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
  br label %75

30:                                               ; preds = %24
  %31 = load %struct.mdmaspec*, %struct.mdmaspec** %9, align 8
  %32 = getelementptr inbounds %struct.mdmaspec, %struct.mdmaspec* %31, i32 0, i32 6
  %33 = load i64, i64* %32, align 8
  %34 = trunc i64 %33 to i32
  %35 = shl i32 %34, 24
  %36 = load %struct.mdmaspec*, %struct.mdmaspec** %9, align 8
  %37 = getelementptr inbounds %struct.mdmaspec, %struct.mdmaspec* %36, i32 0, i32 5
  %38 = load i64, i64* %37, align 8
  %39 = trunc i64 %38 to i32
  %40 = shl i32 %39, 16
  %41 = or i32 %35, %40
  %42 = load %struct.mdmaspec*, %struct.mdmaspec** %9, align 8
  %43 = getelementptr inbounds %struct.mdmaspec, %struct.mdmaspec* %42, i32 0, i32 4
  %44 = load i64, i64* %43, align 8
  %45 = trunc i64 %44 to i32
  %46 = shl i32 %45, 8
  %47 = or i32 %41, %46
  %48 = load %struct.mdmaspec*, %struct.mdmaspec** %9, align 8
  %49 = getelementptr inbounds %struct.mdmaspec, %struct.mdmaspec* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = or i32 %47, %50
  %52 = load %struct.mpc52xx_ata_timings*, %struct.mpc52xx_ata_timings** %8, align 8
  %53 = getelementptr inbounds %struct.mpc52xx_ata_timings, %struct.mpc52xx_ata_timings* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 8
  %54 = load %struct.mdmaspec*, %struct.mdmaspec** %9, align 8
  %55 = getelementptr inbounds %struct.mdmaspec, %struct.mdmaspec* %54, i32 0, i32 3
  %56 = load i64, i64* %55, align 8
  %57 = trunc i64 %56 to i32
  %58 = shl i32 %57, 24
  %59 = load %struct.mdmaspec*, %struct.mdmaspec** %9, align 8
  %60 = getelementptr inbounds %struct.mdmaspec, %struct.mdmaspec* %59, i32 0, i32 2
  %61 = load i64, i64* %60, align 8
  %62 = trunc i64 %61 to i32
  %63 = shl i32 %62, 16
  %64 = or i32 %58, %63
  %65 = load %struct.mdmaspec*, %struct.mdmaspec** %9, align 8
  %66 = getelementptr inbounds %struct.mdmaspec, %struct.mdmaspec* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = trunc i64 %67 to i32
  %69 = shl i32 %68, 8
  %70 = or i32 %64, %69
  %71 = load %struct.mpc52xx_ata_timings*, %struct.mpc52xx_ata_timings** %8, align 8
  %72 = getelementptr inbounds %struct.mpc52xx_ata_timings, %struct.mpc52xx_ata_timings* %71, i32 0, i32 1
  store i32 %70, i32* %72, align 4
  %73 = load %struct.mpc52xx_ata_timings*, %struct.mpc52xx_ata_timings** %8, align 8
  %74 = getelementptr inbounds %struct.mpc52xx_ata_timings, %struct.mpc52xx_ata_timings* %73, i32 0, i32 2
  store i64 0, i64* %74, align 8
  store i32 0, i32* %4, align 4
  br label %75

75:                                               ; preds = %30, %27
  %76 = load i32, i32* %4, align 4
  ret i32 %76
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
