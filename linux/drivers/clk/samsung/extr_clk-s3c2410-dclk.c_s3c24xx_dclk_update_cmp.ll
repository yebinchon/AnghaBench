; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/samsung/extr_clk-s3c2410-dclk.c_s3c24xx_dclk_update_cmp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/samsung/extr_clk-s3c2410-dclk.c_s3c24xx_dclk_update_cmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s3c24xx_dclk = type { i32, i32 }

@DCLKCON_DCLK_DIV_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.s3c24xx_dclk*, i32, i32)* @s3c24xx_dclk_update_cmp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @s3c24xx_dclk_update_cmp(%struct.s3c24xx_dclk* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.s3c24xx_dclk*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.s3c24xx_dclk* %0, %struct.s3c24xx_dclk** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i64 0, i64* %7, align 8
  %11 = load %struct.s3c24xx_dclk*, %struct.s3c24xx_dclk** %4, align 8
  %12 = getelementptr inbounds %struct.s3c24xx_dclk, %struct.s3c24xx_dclk* %11, i32 0, i32 0
  %13 = load i64, i64* %7, align 8
  %14 = call i32 @spin_lock_irqsave(i32* %12, i64 %13)
  %15 = load %struct.s3c24xx_dclk*, %struct.s3c24xx_dclk** %4, align 8
  %16 = getelementptr inbounds %struct.s3c24xx_dclk, %struct.s3c24xx_dclk* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @readl_relaxed(i32 %17)
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* %5, align 4
  %21 = ashr i32 %19, %20
  %22 = load i32, i32* @DCLKCON_DCLK_DIV_MASK, align 4
  %23 = and i32 %21, %22
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* %9, align 4
  %26 = add nsw i32 %25, 1
  %27 = sdiv i32 %26, 2
  %28 = sub nsw i32 %27, 1
  store i32 %28, i32* %10, align 4
  %29 = load i32, i32* @DCLKCON_DCLK_DIV_MASK, align 4
  %30 = load i32, i32* %6, align 4
  %31 = shl i32 %29, %30
  %32 = xor i32 %31, -1
  %33 = load i32, i32* %8, align 4
  %34 = and i32 %33, %32
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* %10, align 4
  %36 = load i32, i32* %6, align 4
  %37 = shl i32 %35, %36
  %38 = load i32, i32* %8, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %8, align 4
  %40 = load i32, i32* %8, align 4
  %41 = load %struct.s3c24xx_dclk*, %struct.s3c24xx_dclk** %4, align 8
  %42 = getelementptr inbounds %struct.s3c24xx_dclk, %struct.s3c24xx_dclk* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @writel_relaxed(i32 %40, i32 %43)
  %45 = load %struct.s3c24xx_dclk*, %struct.s3c24xx_dclk** %4, align 8
  %46 = getelementptr inbounds %struct.s3c24xx_dclk, %struct.s3c24xx_dclk* %45, i32 0, i32 0
  %47 = load i64, i64* %7, align 8
  %48 = call i32 @spin_unlock_irqrestore(i32* %46, i64 %47)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @readl_relaxed(i32) #1

declare dso_local i32 @writel_relaxed(i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
