; ModuleID = '/home/carl/AnghaBench/linux/drivers/bus/fsl-mc/extr_fsl-mc-bus.c___fsl_mc_driver_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bus/fsl-mc/extr_fsl-mc-bus.c___fsl_mc_driver_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsl_mc_driver = type { %struct.TYPE_2__, i64, i64, i64 }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32*, %struct.module* }
%struct.module = type { i32 }

@fsl_mc_bus_type = common dso_local global i32 0, align 4
@fsl_mc_driver_probe = common dso_local global i32 0, align 4
@fsl_mc_driver_remove = common dso_local global i32 0, align 4
@fsl_mc_driver_shutdown = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"driver_register() failed for %s: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__fsl_mc_driver_register(%struct.fsl_mc_driver* %0, %struct.module* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fsl_mc_driver*, align 8
  %5 = alloca %struct.module*, align 8
  %6 = alloca i32, align 4
  store %struct.fsl_mc_driver* %0, %struct.fsl_mc_driver** %4, align 8
  store %struct.module* %1, %struct.module** %5, align 8
  %7 = load %struct.module*, %struct.module** %5, align 8
  %8 = load %struct.fsl_mc_driver*, %struct.fsl_mc_driver** %4, align 8
  %9 = getelementptr inbounds %struct.fsl_mc_driver, %struct.fsl_mc_driver* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 5
  store %struct.module* %7, %struct.module** %10, align 8
  %11 = load %struct.fsl_mc_driver*, %struct.fsl_mc_driver** %4, align 8
  %12 = getelementptr inbounds %struct.fsl_mc_driver, %struct.fsl_mc_driver* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 4
  store i32* @fsl_mc_bus_type, i32** %13, align 8
  %14 = load %struct.fsl_mc_driver*, %struct.fsl_mc_driver** %4, align 8
  %15 = getelementptr inbounds %struct.fsl_mc_driver, %struct.fsl_mc_driver* %14, i32 0, i32 3
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %2
  %19 = load i32, i32* @fsl_mc_driver_probe, align 4
  %20 = load %struct.fsl_mc_driver*, %struct.fsl_mc_driver** %4, align 8
  %21 = getelementptr inbounds %struct.fsl_mc_driver, %struct.fsl_mc_driver* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 3
  store i32 %19, i32* %22, align 4
  br label %23

23:                                               ; preds = %18, %2
  %24 = load %struct.fsl_mc_driver*, %struct.fsl_mc_driver** %4, align 8
  %25 = getelementptr inbounds %struct.fsl_mc_driver, %struct.fsl_mc_driver* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %23
  %29 = load i32, i32* @fsl_mc_driver_remove, align 4
  %30 = load %struct.fsl_mc_driver*, %struct.fsl_mc_driver** %4, align 8
  %31 = getelementptr inbounds %struct.fsl_mc_driver, %struct.fsl_mc_driver* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 2
  store i32 %29, i32* %32, align 8
  br label %33

33:                                               ; preds = %28, %23
  %34 = load %struct.fsl_mc_driver*, %struct.fsl_mc_driver** %4, align 8
  %35 = getelementptr inbounds %struct.fsl_mc_driver, %struct.fsl_mc_driver* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %33
  %39 = load i32, i32* @fsl_mc_driver_shutdown, align 4
  %40 = load %struct.fsl_mc_driver*, %struct.fsl_mc_driver** %4, align 8
  %41 = getelementptr inbounds %struct.fsl_mc_driver, %struct.fsl_mc_driver* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 1
  store i32 %39, i32* %42, align 4
  br label %43

43:                                               ; preds = %38, %33
  %44 = load %struct.fsl_mc_driver*, %struct.fsl_mc_driver** %4, align 8
  %45 = getelementptr inbounds %struct.fsl_mc_driver, %struct.fsl_mc_driver* %44, i32 0, i32 0
  %46 = call i32 @driver_register(%struct.TYPE_2__* %45)
  store i32 %46, i32* %6, align 4
  %47 = load i32, i32* %6, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %57

49:                                               ; preds = %43
  %50 = load %struct.fsl_mc_driver*, %struct.fsl_mc_driver** %4, align 8
  %51 = getelementptr inbounds %struct.fsl_mc_driver, %struct.fsl_mc_driver* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* %6, align 4
  %55 = call i32 @pr_err(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %53, i32 %54)
  %56 = load i32, i32* %6, align 4
  store i32 %56, i32* %3, align 4
  br label %58

57:                                               ; preds = %43
  store i32 0, i32* %3, align 4
  br label %58

58:                                               ; preds = %57, %49
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

declare dso_local i32 @driver_register(%struct.TYPE_2__*) #1

declare dso_local i32 @pr_err(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
