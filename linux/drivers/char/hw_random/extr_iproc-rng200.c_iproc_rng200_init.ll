; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/hw_random/extr_iproc-rng200.c_iproc_rng200_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/hw_random/extr_iproc-rng200.c_iproc_rng200_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hwrng = type { i32 }
%struct.iproc_rng200_dev = type { i64 }

@RNG_CTRL_OFFSET = common dso_local global i64 0, align 8
@RNG_CTRL_RNG_RBGEN_MASK = common dso_local global i32 0, align 4
@RNG_CTRL_RNG_RBGEN_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hwrng*)* @iproc_rng200_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iproc_rng200_init(%struct.hwrng* %0) #0 {
  %2 = alloca %struct.hwrng*, align 8
  %3 = alloca %struct.iproc_rng200_dev*, align 8
  %4 = alloca i32, align 4
  store %struct.hwrng* %0, %struct.hwrng** %2, align 8
  %5 = load %struct.hwrng*, %struct.hwrng** %2, align 8
  %6 = call %struct.iproc_rng200_dev* @to_rng_priv(%struct.hwrng* %5)
  store %struct.iproc_rng200_dev* %6, %struct.iproc_rng200_dev** %3, align 8
  %7 = load %struct.iproc_rng200_dev*, %struct.iproc_rng200_dev** %3, align 8
  %8 = getelementptr inbounds %struct.iproc_rng200_dev, %struct.iproc_rng200_dev* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @RNG_CTRL_OFFSET, align 8
  %11 = add nsw i64 %9, %10
  %12 = call i32 @ioread32(i64 %11)
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* @RNG_CTRL_RNG_RBGEN_MASK, align 4
  %14 = xor i32 %13, -1
  %15 = load i32, i32* %4, align 4
  %16 = and i32 %15, %14
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* @RNG_CTRL_RNG_RBGEN_ENABLE, align 4
  %18 = load i32, i32* %4, align 4
  %19 = or i32 %18, %17
  store i32 %19, i32* %4, align 4
  %20 = load i32, i32* %4, align 4
  %21 = load %struct.iproc_rng200_dev*, %struct.iproc_rng200_dev** %3, align 8
  %22 = getelementptr inbounds %struct.iproc_rng200_dev, %struct.iproc_rng200_dev* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @RNG_CTRL_OFFSET, align 8
  %25 = add nsw i64 %23, %24
  %26 = call i32 @iowrite32(i32 %20, i64 %25)
  ret i32 0
}

declare dso_local %struct.iproc_rng200_dev* @to_rng_priv(%struct.hwrng*) #1

declare dso_local i32 @ioread32(i64) #1

declare dso_local i32 @iowrite32(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
