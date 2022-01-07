; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-omap1/extr_clock.c_omap1_select_table_rate.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-omap1/extr_clock.c_omap1_select_table_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }
%struct.mpu_rate = type { i64, i32, i64, i32, i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.clk = type { i32 }

@ck_ref_p = common dso_local global %struct.TYPE_3__* null, align 8
@omap1_rate_table = common dso_local global %struct.mpu_rate* null, align 8
@cpu_mask = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ck_dpll1_p = common dso_local global %struct.TYPE_4__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @omap1_select_table_rate(%struct.clk* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.clk*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.mpu_rate*, align 8
  %7 = alloca i64, align 8
  store %struct.clk* %0, %struct.clk** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** @ck_ref_p, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  store i64 %10, i64* %7, align 8
  %11 = load %struct.mpu_rate*, %struct.mpu_rate** @omap1_rate_table, align 8
  store %struct.mpu_rate* %11, %struct.mpu_rate** %6, align 8
  br label %12

12:                                               ; preds = %40, %2
  %13 = load %struct.mpu_rate*, %struct.mpu_rate** %6, align 8
  %14 = getelementptr inbounds %struct.mpu_rate, %struct.mpu_rate* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %43

17:                                               ; preds = %12
  %18 = load %struct.mpu_rate*, %struct.mpu_rate** %6, align 8
  %19 = getelementptr inbounds %struct.mpu_rate, %struct.mpu_rate* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @cpu_mask, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %17
  br label %40

25:                                               ; preds = %17
  %26 = load %struct.mpu_rate*, %struct.mpu_rate** %6, align 8
  %27 = getelementptr inbounds %struct.mpu_rate, %struct.mpu_rate* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* %7, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %25
  br label %40

32:                                               ; preds = %25
  %33 = load %struct.mpu_rate*, %struct.mpu_rate** %6, align 8
  %34 = getelementptr inbounds %struct.mpu_rate, %struct.mpu_rate* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* %5, align 8
  %37 = icmp ule i64 %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %32
  br label %43

39:                                               ; preds = %32
  br label %40

40:                                               ; preds = %39, %31, %24
  %41 = load %struct.mpu_rate*, %struct.mpu_rate** %6, align 8
  %42 = getelementptr inbounds %struct.mpu_rate, %struct.mpu_rate* %41, i32 1
  store %struct.mpu_rate* %42, %struct.mpu_rate** %6, align 8
  br label %12

43:                                               ; preds = %38, %12
  %44 = load %struct.mpu_rate*, %struct.mpu_rate** %6, align 8
  %45 = getelementptr inbounds %struct.mpu_rate, %struct.mpu_rate* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %51, label %48

48:                                               ; preds = %43
  %49 = load i32, i32* @EINVAL, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %3, align 4
  br label %64

51:                                               ; preds = %43
  %52 = load %struct.mpu_rate*, %struct.mpu_rate** %6, align 8
  %53 = getelementptr inbounds %struct.mpu_rate, %struct.mpu_rate* %52, i32 0, i32 5
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.mpu_rate*, %struct.mpu_rate** %6, align 8
  %56 = getelementptr inbounds %struct.mpu_rate, %struct.mpu_rate* %55, i32 0, i32 4
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @omap_sram_reprogram_clock(i32 %54, i32 %57)
  %59 = load %struct.mpu_rate*, %struct.mpu_rate** %6, align 8
  %60 = getelementptr inbounds %struct.mpu_rate, %struct.mpu_rate* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ck_dpll1_p, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  store i32 %61, i32* %63, align 4
  store i32 0, i32* %3, align 4
  br label %64

64:                                               ; preds = %51, %48
  %65 = load i32, i32* %3, align 4
  ret i32 %65
}

declare dso_local i32 @omap_sram_reprogram_clock(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
