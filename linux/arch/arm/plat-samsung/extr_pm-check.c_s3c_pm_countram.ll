; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/plat-samsung/extr_pm-check.c_s3c_pm_countram.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/plat-samsung/extr_pm-check.c_s3c_pm_countram.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.resource = type { i64, i64 }

@CHECK_CHUNKSIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Area %08lx..%08lx, %d blocks\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.resource*, i32*)* @s3c_pm_countram to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @s3c_pm_countram(%struct.resource* %0, i32* %1) #0 {
  %3 = alloca %struct.resource*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store %struct.resource* %0, %struct.resource** %3, align 8
  store i32* %1, i32** %4, align 8
  %6 = load %struct.resource*, %struct.resource** %3, align 8
  %7 = call i32 @resource_size(%struct.resource* %6)
  store i32 %7, i32* %5, align 4
  %8 = load i32, i32* @CHECK_CHUNKSIZE, align 4
  %9 = sub nsw i32 %8, 1
  %10 = load i32, i32* %5, align 4
  %11 = add nsw i32 %10, %9
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* @CHECK_CHUNKSIZE, align 4
  %13 = load i32, i32* %5, align 4
  %14 = sdiv i32 %13, %12
  store i32 %14, i32* %5, align 4
  %15 = load %struct.resource*, %struct.resource** %3, align 8
  %16 = getelementptr inbounds %struct.resource, %struct.resource* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.resource*, %struct.resource** %3, align 8
  %19 = getelementptr inbounds %struct.resource, %struct.resource* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i32, i32* %5, align 4
  %22 = call i32 @S3C_PMDBG(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i64 %17, i64 %20, i32 %21)
  %23 = load i32, i32* %5, align 4
  %24 = sext i32 %23 to i64
  %25 = mul i64 %24, 4
  %26 = load i32*, i32** %4, align 8
  %27 = load i32, i32* %26, align 4
  %28 = sext i32 %27 to i64
  %29 = add i64 %28, %25
  %30 = trunc i64 %29 to i32
  store i32 %30, i32* %26, align 4
  %31 = load i32*, i32** %4, align 8
  ret i32* %31
}

declare dso_local i32 @resource_size(%struct.resource*) #1

declare dso_local i32 @S3C_PMDBG(i8*, i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
