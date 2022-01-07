; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/nfit/extr_core.c_acpi_nfit_blk_region_do_io.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/nfit/extr_core.c_acpi_nfit_blk_region_do_io.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nd_blk_region = type { i32 }
%struct.nfit_blk = type { %struct.nd_region*, %struct.nfit_blk_mmio* }
%struct.nd_region = type { i32 }
%struct.nfit_blk_mmio = type { i32 }

@BDW = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nd_blk_region*, i64, i8*, i64, i32)* @acpi_nfit_blk_region_do_io to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_nfit_blk_region_do_io(%struct.nd_blk_region* %0, i64 %1, i8* %2, i64 %3, i32 %4) #0 {
  %6 = alloca %struct.nd_blk_region*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.nfit_blk*, align 8
  %12 = alloca %struct.nfit_blk_mmio*, align 8
  %13 = alloca %struct.nd_region*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  store %struct.nd_blk_region* %0, %struct.nd_blk_region** %6, align 8
  store i64 %1, i64* %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  store i32 %4, i32* %10, align 4
  %18 = load %struct.nd_blk_region*, %struct.nd_blk_region** %6, align 8
  %19 = call %struct.nfit_blk* @nd_blk_region_provider_data(%struct.nd_blk_region* %18)
  store %struct.nfit_blk* %19, %struct.nfit_blk** %11, align 8
  %20 = load %struct.nfit_blk*, %struct.nfit_blk** %11, align 8
  %21 = getelementptr inbounds %struct.nfit_blk, %struct.nfit_blk* %20, i32 0, i32 1
  %22 = load %struct.nfit_blk_mmio*, %struct.nfit_blk_mmio** %21, align 8
  %23 = load i64, i64* @BDW, align 8
  %24 = getelementptr inbounds %struct.nfit_blk_mmio, %struct.nfit_blk_mmio* %22, i64 %23
  store %struct.nfit_blk_mmio* %24, %struct.nfit_blk_mmio** %12, align 8
  %25 = load %struct.nfit_blk*, %struct.nfit_blk** %11, align 8
  %26 = getelementptr inbounds %struct.nfit_blk, %struct.nfit_blk* %25, i32 0, i32 0
  %27 = load %struct.nd_region*, %struct.nd_region** %26, align 8
  store %struct.nd_region* %27, %struct.nd_region** %13, align 8
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %28 = load %struct.nd_region*, %struct.nd_region** %13, align 8
  %29 = call i32 @nd_region_acquire_lane(%struct.nd_region* %28)
  store i32 %29, i32* %14, align 4
  br label %30

30:                                               ; preds = %55, %5
  %31 = load i64, i64* %9, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %64

33:                                               ; preds = %30
  %34 = load i64, i64* %9, align 8
  %35 = load %struct.nfit_blk_mmio*, %struct.nfit_blk_mmio** %12, align 8
  %36 = getelementptr inbounds %struct.nfit_blk_mmio, %struct.nfit_blk_mmio* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i64 @min(i64 %34, i32 %37)
  store i64 %38, i64* %17, align 8
  %39 = load %struct.nfit_blk*, %struct.nfit_blk** %11, align 8
  %40 = load i64, i64* %7, align 8
  %41 = load i32, i32* %15, align 4
  %42 = zext i32 %41 to i64
  %43 = add nsw i64 %40, %42
  %44 = load i8*, i8** %8, align 8
  %45 = load i32, i32* %15, align 4
  %46 = zext i32 %45 to i64
  %47 = getelementptr i8, i8* %44, i64 %46
  %48 = load i64, i64* %17, align 8
  %49 = load i32, i32* %10, align 4
  %50 = load i32, i32* %14, align 4
  %51 = call i32 @acpi_nfit_blk_single_io(%struct.nfit_blk* %39, i64 %43, i8* %47, i64 %48, i32 %49, i32 %50)
  store i32 %51, i32* %16, align 4
  %52 = load i32, i32* %16, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %33
  br label %64

55:                                               ; preds = %33
  %56 = load i64, i64* %17, align 8
  %57 = load i32, i32* %15, align 4
  %58 = zext i32 %57 to i64
  %59 = add nsw i64 %58, %56
  %60 = trunc i64 %59 to i32
  store i32 %60, i32* %15, align 4
  %61 = load i64, i64* %17, align 8
  %62 = load i64, i64* %9, align 8
  %63 = sub nsw i64 %62, %61
  store i64 %63, i64* %9, align 8
  br label %30

64:                                               ; preds = %54, %30
  %65 = load %struct.nd_region*, %struct.nd_region** %13, align 8
  %66 = load i32, i32* %14, align 4
  %67 = call i32 @nd_region_release_lane(%struct.nd_region* %65, i32 %66)
  %68 = load i32, i32* %16, align 4
  ret i32 %68
}

declare dso_local %struct.nfit_blk* @nd_blk_region_provider_data(%struct.nd_blk_region*) #1

declare dso_local i32 @nd_region_acquire_lane(%struct.nd_region*) #1

declare dso_local i64 @min(i64, i32) #1

declare dso_local i32 @acpi_nfit_blk_single_io(%struct.nfit_blk*, i64, i8*, i64, i32, i32) #1

declare dso_local i32 @nd_region_release_lane(%struct.nd_region*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
