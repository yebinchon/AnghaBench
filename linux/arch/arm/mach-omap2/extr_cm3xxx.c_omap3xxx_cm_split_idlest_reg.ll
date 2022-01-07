; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-omap2/extr_cm3xxx.c_omap3xxx_cm_split_idlest_reg.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-omap2/extr_cm3xxx.c_omap3xxx_cm_split_idlest_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_omap_reg = type { i32 }

@omap3xxx_cm_idlest_offs = common dso_local global i32* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_omap_reg*, i64*, i32*)* @omap3xxx_cm_split_idlest_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omap3xxx_cm_split_idlest_reg(%struct.clk_omap_reg* %0, i64* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.clk_omap_reg*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.clk_omap_reg* %0, %struct.clk_omap_reg** %5, align 8
  store i64* %1, i64** %6, align 8
  store i32* %2, i32** %7, align 8
  %11 = load %struct.clk_omap_reg*, %struct.clk_omap_reg** %5, align 8
  %12 = getelementptr inbounds %struct.clk_omap_reg, %struct.clk_omap_reg* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = and i32 %13, 255
  store i32 %14, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %15

15:                                               ; preds = %33, %3
  %16 = load i32, i32* %10, align 4
  %17 = load i32*, i32** @omap3xxx_cm_idlest_offs, align 8
  %18 = call i32 @ARRAY_SIZE(i32* %17)
  %19 = icmp slt i32 %16, %18
  br i1 %19, label %20, label %36

20:                                               ; preds = %15
  %21 = load i32, i32* %9, align 4
  %22 = load i32*, i32** @omap3xxx_cm_idlest_offs, align 8
  %23 = load i32, i32* %10, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %22, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = icmp eq i32 %21, %26
  br i1 %27, label %28, label %32

28:                                               ; preds = %20
  %29 = load i32, i32* %10, align 4
  %30 = add nsw i32 %29, 1
  %31 = load i32*, i32** %7, align 8
  store i32 %30, i32* %31, align 4
  br label %36

32:                                               ; preds = %20
  br label %33

33:                                               ; preds = %32
  %34 = load i32, i32* %10, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %10, align 4
  br label %15

36:                                               ; preds = %28, %15
  %37 = load i32, i32* %10, align 4
  %38 = load i32*, i32** @omap3xxx_cm_idlest_offs, align 8
  %39 = call i32 @ARRAY_SIZE(i32* %38)
  %40 = icmp eq i32 %37, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %36
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %4, align 4
  br label %53

44:                                               ; preds = %36
  %45 = load %struct.clk_omap_reg*, %struct.clk_omap_reg** %5, align 8
  %46 = getelementptr inbounds %struct.clk_omap_reg, %struct.clk_omap_reg* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = sext i32 %47 to i64
  store i64 %48, i64* %8, align 8
  %49 = load i64, i64* %8, align 8
  %50 = and i64 %49, 65280
  store i64 %50, i64* %8, align 8
  %51 = load i64, i64* %8, align 8
  %52 = load i64*, i64** %6, align 8
  store i64 %51, i64* %52, align 8
  store i32 0, i32* %4, align 4
  br label %53

53:                                               ; preds = %44, %41
  %54 = load i32, i32* %4, align 4
  ret i32 %54
}

declare dso_local i32 @ARRAY_SIZE(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
