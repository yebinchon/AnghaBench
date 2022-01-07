; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/hw_random/extr_n2-drv.c_n2rng_control_swstate_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/hw_random/extr_n2-drv.c_n2rng_control_swstate_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.n2rng = type { i32, i32, %struct.n2rng_unit*, i32, i32, i32, i32 }
%struct.n2rng_unit = type { i8** }

@N2RNG_FLAG_CONTROL = common dso_local global i32 0, align 4
@N2RNG_HEALTH_CHECK_SEC_DEFAULT = common dso_local global i32 0, align 4
@N2RNG_ACCUM_CYCLES_DEFAULT = common dso_local global i32 0, align 4
@N2RNG_WD_TIMEO_DEFAULT = common dso_local global i32 0, align 4
@HV_RNG_STATE_UNCONFIGURED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.n2rng*)* @n2rng_control_swstate_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @n2rng_control_swstate_init(%struct.n2rng* %0) #0 {
  %2 = alloca %struct.n2rng*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.n2rng_unit*, align 8
  store %struct.n2rng* %0, %struct.n2rng** %2, align 8
  %5 = load i32, i32* @N2RNG_FLAG_CONTROL, align 4
  %6 = load %struct.n2rng*, %struct.n2rng** %2, align 8
  %7 = getelementptr inbounds %struct.n2rng, %struct.n2rng* %6, i32 0, i32 6
  %8 = load i32, i32* %7, align 4
  %9 = or i32 %8, %5
  store i32 %9, i32* %7, align 4
  %10 = load i32, i32* @N2RNG_HEALTH_CHECK_SEC_DEFAULT, align 4
  %11 = load %struct.n2rng*, %struct.n2rng** %2, align 8
  %12 = getelementptr inbounds %struct.n2rng, %struct.n2rng* %11, i32 0, i32 5
  store i32 %10, i32* %12, align 8
  %13 = load i32, i32* @N2RNG_ACCUM_CYCLES_DEFAULT, align 4
  %14 = load %struct.n2rng*, %struct.n2rng** %2, align 8
  %15 = getelementptr inbounds %struct.n2rng, %struct.n2rng* %14, i32 0, i32 4
  store i32 %13, i32* %15, align 4
  %16 = load i32, i32* @N2RNG_WD_TIMEO_DEFAULT, align 4
  %17 = load %struct.n2rng*, %struct.n2rng** %2, align 8
  %18 = getelementptr inbounds %struct.n2rng, %struct.n2rng* %17, i32 0, i32 3
  store i32 %16, i32* %18, align 8
  store i32 0, i32* %3, align 4
  br label %19

19:                                               ; preds = %56, %1
  %20 = load i32, i32* %3, align 4
  %21 = load %struct.n2rng*, %struct.n2rng** %2, align 8
  %22 = getelementptr inbounds %struct.n2rng, %struct.n2rng* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp slt i32 %20, %23
  br i1 %24, label %25, label %59

25:                                               ; preds = %19
  %26 = load %struct.n2rng*, %struct.n2rng** %2, align 8
  %27 = getelementptr inbounds %struct.n2rng, %struct.n2rng* %26, i32 0, i32 2
  %28 = load %struct.n2rng_unit*, %struct.n2rng_unit** %27, align 8
  %29 = load i32, i32* %3, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.n2rng_unit, %struct.n2rng_unit* %28, i64 %30
  store %struct.n2rng_unit* %31, %struct.n2rng_unit** %4, align 8
  %32 = load %struct.n2rng*, %struct.n2rng** %2, align 8
  %33 = call i8* @n2rng_control_default(%struct.n2rng* %32, i32 0)
  %34 = load %struct.n2rng_unit*, %struct.n2rng_unit** %4, align 8
  %35 = getelementptr inbounds %struct.n2rng_unit, %struct.n2rng_unit* %34, i32 0, i32 0
  %36 = load i8**, i8*** %35, align 8
  %37 = getelementptr inbounds i8*, i8** %36, i64 0
  store i8* %33, i8** %37, align 8
  %38 = load %struct.n2rng*, %struct.n2rng** %2, align 8
  %39 = call i8* @n2rng_control_default(%struct.n2rng* %38, i32 1)
  %40 = load %struct.n2rng_unit*, %struct.n2rng_unit** %4, align 8
  %41 = getelementptr inbounds %struct.n2rng_unit, %struct.n2rng_unit* %40, i32 0, i32 0
  %42 = load i8**, i8*** %41, align 8
  %43 = getelementptr inbounds i8*, i8** %42, i64 1
  store i8* %39, i8** %43, align 8
  %44 = load %struct.n2rng*, %struct.n2rng** %2, align 8
  %45 = call i8* @n2rng_control_default(%struct.n2rng* %44, i32 2)
  %46 = load %struct.n2rng_unit*, %struct.n2rng_unit** %4, align 8
  %47 = getelementptr inbounds %struct.n2rng_unit, %struct.n2rng_unit* %46, i32 0, i32 0
  %48 = load i8**, i8*** %47, align 8
  %49 = getelementptr inbounds i8*, i8** %48, i64 2
  store i8* %45, i8** %49, align 8
  %50 = load %struct.n2rng*, %struct.n2rng** %2, align 8
  %51 = call i8* @n2rng_control_default(%struct.n2rng* %50, i32 3)
  %52 = load %struct.n2rng_unit*, %struct.n2rng_unit** %4, align 8
  %53 = getelementptr inbounds %struct.n2rng_unit, %struct.n2rng_unit* %52, i32 0, i32 0
  %54 = load i8**, i8*** %53, align 8
  %55 = getelementptr inbounds i8*, i8** %54, i64 3
  store i8* %51, i8** %55, align 8
  br label %56

56:                                               ; preds = %25
  %57 = load i32, i32* %3, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %3, align 4
  br label %19

59:                                               ; preds = %19
  %60 = load i32, i32* @HV_RNG_STATE_UNCONFIGURED, align 4
  %61 = load %struct.n2rng*, %struct.n2rng** %2, align 8
  %62 = getelementptr inbounds %struct.n2rng, %struct.n2rng* %61, i32 0, i32 1
  store i32 %60, i32* %62, align 4
  ret void
}

declare dso_local i8* @n2rng_control_default(%struct.n2rng*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
