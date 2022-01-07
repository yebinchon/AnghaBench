; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/cavium-octeon/executive/extr_cvmx-spi.c_cvmx_spi_restart_interface.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/cavium-octeon/executive/extr_cvmx-spi.c_cvmx_spi_restart_interface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32, i32 }

@OCTEON_CN38XX = common dso_local global i32 0, align 4
@OCTEON_CN58XX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"SPI%d: Restart %s\0A\00", align 1
@modes = common dso_local global i32* null, align 8
@cvmx_spi_callbacks = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cvmx_spi_restart_interface(i32 %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 -1, i32* %8, align 4
  %9 = load i32, i32* @OCTEON_CN38XX, align 4
  %10 = call i64 @OCTEON_IS_MODEL(i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %18, label %12

12:                                               ; preds = %3
  %13 = load i32, i32* @OCTEON_CN58XX, align 4
  %14 = call i64 @OCTEON_IS_MODEL(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %12
  %17 = load i32, i32* %8, align 4
  store i32 %17, i32* %4, align 4
  br label %49

18:                                               ; preds = %12, %3
  %19 = load i32, i32* %5, align 4
  %20 = load i32*, i32** @modes, align 8
  %21 = load i64, i64* %6, align 8
  %22 = getelementptr inbounds i32, i32* %20, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @cvmx_dprintf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %19, i32 %23)
  %25 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cvmx_spi_callbacks, i32 0, i32 4), align 4
  %26 = load i32, i32* %5, align 4
  %27 = load i64, i64* %6, align 8
  %28 = call i32 (i32, i32, i64, ...) @INVOKE_CB(i32 %25, i32 %26, i64 %27)
  %29 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cvmx_spi_callbacks, i32 0, i32 3), align 4
  %30 = load i32, i32* %5, align 4
  %31 = load i64, i64* %6, align 8
  %32 = load i32, i32* %7, align 4
  %33 = call i32 (i32, i32, i64, ...) @INVOKE_CB(i32 %29, i32 %30, i64 %31, i32 %32)
  %34 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cvmx_spi_callbacks, i32 0, i32 2), align 4
  %35 = load i32, i32* %5, align 4
  %36 = load i64, i64* %6, align 8
  %37 = load i32, i32* %7, align 4
  %38 = call i32 (i32, i32, i64, ...) @INVOKE_CB(i32 %34, i32 %35, i64 %36, i32 %37)
  %39 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cvmx_spi_callbacks, i32 0, i32 1), align 4
  %40 = load i32, i32* %5, align 4
  %41 = load i64, i64* %6, align 8
  %42 = load i32, i32* %7, align 4
  %43 = call i32 (i32, i32, i64, ...) @INVOKE_CB(i32 %39, i32 %40, i64 %41, i32 %42)
  %44 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cvmx_spi_callbacks, i32 0, i32 0), align 4
  %45 = load i32, i32* %5, align 4
  %46 = load i64, i64* %6, align 8
  %47 = call i32 (i32, i32, i64, ...) @INVOKE_CB(i32 %44, i32 %45, i64 %46)
  %48 = load i32, i32* %8, align 4
  store i32 %48, i32* %4, align 4
  br label %49

49:                                               ; preds = %18, %16
  %50 = load i32, i32* %4, align 4
  ret i32 %50
}

declare dso_local i64 @OCTEON_IS_MODEL(i32) #1

declare dso_local i32 @cvmx_dprintf(i8*, i32, i32) #1

declare dso_local i32 @INVOKE_CB(i32, i32, i64, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
