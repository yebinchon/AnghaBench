; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-omap1/extr_clock.c_omap1_round_to_table_rate.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-omap1/extr_clock.c_omap1_round_to_table_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.mpu_rate = type { i64, i32, i64 }
%struct.clk = type { i32 }

@ck_ref_p = common dso_local global %struct.TYPE_2__* null, align 8
@EINVAL = common dso_local global i64 0, align 8
@omap1_rate_table = common dso_local global %struct.mpu_rate* null, align 8
@cpu_mask = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @omap1_round_to_table_rate(%struct.clk* %0, i64 %1) #0 {
  %3 = alloca %struct.clk*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.mpu_rate*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.clk* %0, %struct.clk** %3, align 8
  store i64 %1, i64* %4, align 8
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ck_ref_p, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  store i64 %10, i64* %7, align 8
  %11 = load i64, i64* @EINVAL, align 8
  %12 = sub nsw i64 0, %11
  store i64 %12, i64* %6, align 8
  %13 = load %struct.mpu_rate*, %struct.mpu_rate** @omap1_rate_table, align 8
  store %struct.mpu_rate* %13, %struct.mpu_rate** %5, align 8
  br label %14

14:                                               ; preds = %45, %2
  %15 = load %struct.mpu_rate*, %struct.mpu_rate** %5, align 8
  %16 = getelementptr inbounds %struct.mpu_rate, %struct.mpu_rate* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %48

19:                                               ; preds = %14
  %20 = load %struct.mpu_rate*, %struct.mpu_rate** %5, align 8
  %21 = getelementptr inbounds %struct.mpu_rate, %struct.mpu_rate* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @cpu_mask, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %19
  br label %45

27:                                               ; preds = %19
  %28 = load %struct.mpu_rate*, %struct.mpu_rate** %5, align 8
  %29 = getelementptr inbounds %struct.mpu_rate, %struct.mpu_rate* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* %7, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %27
  br label %45

34:                                               ; preds = %27
  %35 = load %struct.mpu_rate*, %struct.mpu_rate** %5, align 8
  %36 = getelementptr inbounds %struct.mpu_rate, %struct.mpu_rate* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  store i64 %37, i64* %6, align 8
  %38 = load %struct.mpu_rate*, %struct.mpu_rate** %5, align 8
  %39 = getelementptr inbounds %struct.mpu_rate, %struct.mpu_rate* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* %4, align 8
  %42 = icmp ule i64 %40, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %34
  br label %48

44:                                               ; preds = %34
  br label %45

45:                                               ; preds = %44, %33, %26
  %46 = load %struct.mpu_rate*, %struct.mpu_rate** %5, align 8
  %47 = getelementptr inbounds %struct.mpu_rate, %struct.mpu_rate* %46, i32 1
  store %struct.mpu_rate* %47, %struct.mpu_rate** %5, align 8
  br label %14

48:                                               ; preds = %43, %14
  %49 = load i64, i64* %6, align 8
  ret i64 %49
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
