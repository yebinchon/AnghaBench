; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/common/extr_sa1111.c___sa1111_pll_clock.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/common/extr_sa1111.c___sa1111_pll_clock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sa1111 = type { i64 }

@SA1111_SKCDR = common dso_local global i64 0, align 8
@opdiv_table = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sa1111*)* @__sa1111_pll_clock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__sa1111_pll_clock(%struct.sa1111* %0) #0 {
  %2 = alloca %struct.sa1111*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.sa1111* %0, %struct.sa1111** %2, align 8
  %7 = load %struct.sa1111*, %struct.sa1111** %2, align 8
  %8 = getelementptr inbounds %struct.sa1111, %struct.sa1111* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @SA1111_SKCDR, align 8
  %11 = add nsw i64 %9, %10
  %12 = call i32 @readl_relaxed(i64 %11)
  store i32 %12, i32* %3, align 4
  %13 = load i32, i32* %3, align 4
  %14 = and i32 %13, 127
  %15 = add i32 %14, 2
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* %3, align 4
  %17 = and i32 %16, 3968
  %18 = lshr i32 %17, 7
  %19 = add i32 %18, 2
  store i32 %19, i32* %5, align 4
  %20 = load i32*, i32** @opdiv_table, align 8
  %21 = load i32, i32* %3, align 4
  %22 = and i32 %21, 12288
  %23 = lshr i32 %22, 12
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %20, i64 %24
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %4, align 4
  %28 = mul i32 3686400, %27
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* %6, align 4
  %31 = mul i32 %29, %30
  %32 = udiv i32 %28, %31
  ret i32 %32
}

declare dso_local i32 @readl_relaxed(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
