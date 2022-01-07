; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-imx/extr_cpu-imx31.c_mx31_read_cpu_rev.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-imx/extr_cpu-imx31.c_mx31_read_cpu_rev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i8*, i32 }

@MX31_IIM_BASE_ADDR = common dso_local global i64 0, align 8
@MXC_IIMSREV = common dso_local global i64 0, align 8
@mx31_cpu_type = common dso_local global %struct.TYPE_3__* null, align 8
@.str = private unnamed_addr constant [7 x i8] c"i.MX31\00", align 1
@IMX_CHIP_REVISION_UNKNOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @mx31_read_cpu_rev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mx31_read_cpu_rev() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = load i64, i64* @MX31_IIM_BASE_ADDR, align 8
  %5 = load i64, i64* @MXC_IIMSREV, align 8
  %6 = add nsw i64 %4, %5
  %7 = call i32 @MX31_IO_ADDRESS(i64 %6)
  %8 = call i32 @imx_readl(i32 %7)
  store i32 %8, i32* %3, align 4
  %9 = load i32, i32* %3, align 4
  %10 = and i32 %9, 255
  store i32 %10, i32* %3, align 4
  store i32 0, i32* %2, align 4
  br label %11

11:                                               ; preds = %46, %0
  %12 = load i32, i32* %2, align 4
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** @mx31_cpu_type, align 8
  %14 = call i32 @ARRAY_SIZE(%struct.TYPE_3__* %13)
  %15 = icmp slt i32 %12, %14
  br i1 %15, label %16, label %49

16:                                               ; preds = %11
  %17 = load i32, i32* %3, align 4
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** @mx31_cpu_type, align 8
  %19 = load i32, i32* %2, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp eq i32 %17, %23
  br i1 %24, label %25, label %45

25:                                               ; preds = %16
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** @mx31_cpu_type, align 8
  %27 = load i32, i32* %2, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 1
  %31 = load i8*, i8** %30, align 8
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** @mx31_cpu_type, align 8
  %33 = load i32, i32* %2, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @imx_print_silicon_rev(i8* %31, i32 %37)
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** @mx31_cpu_type, align 8
  %40 = load i32, i32* %2, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  store i32 %44, i32* %1, align 4
  br label %53

45:                                               ; preds = %16
  br label %46

46:                                               ; preds = %45
  %47 = load i32, i32* %2, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %2, align 4
  br label %11

49:                                               ; preds = %11
  %50 = load i32, i32* @IMX_CHIP_REVISION_UNKNOWN, align 4
  %51 = call i32 @imx_print_silicon_rev(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %50)
  %52 = load i32, i32* @IMX_CHIP_REVISION_UNKNOWN, align 4
  store i32 %52, i32* %1, align 4
  br label %53

53:                                               ; preds = %49, %25
  %54 = load i32, i32* %1, align 4
  ret i32 %54
}

declare dso_local i32 @imx_readl(i32) #1

declare dso_local i32 @MX31_IO_ADDRESS(i64) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_3__*) #1

declare dso_local i32 @imx_print_silicon_rev(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
