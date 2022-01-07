; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/nfit/extr_core.c_read_blk_stat.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/nfit/extr_core.c_read_blk_stat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfit_blk = type { i64, %struct.nfit_blk_mmio* }
%struct.nfit_blk_mmio = type { i32, %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i64 }

@DCR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfit_blk*, i32)* @read_blk_stat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_blk_stat(%struct.nfit_blk* %0, i32 %1) #0 {
  %3 = alloca %struct.nfit_blk*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.nfit_blk_mmio*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.nfit_blk* %0, %struct.nfit_blk** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.nfit_blk*, %struct.nfit_blk** %3, align 8
  %9 = getelementptr inbounds %struct.nfit_blk, %struct.nfit_blk* %8, i32 0, i32 1
  %10 = load %struct.nfit_blk_mmio*, %struct.nfit_blk_mmio** %9, align 8
  %11 = load i64, i64* @DCR, align 8
  %12 = getelementptr inbounds %struct.nfit_blk_mmio, %struct.nfit_blk_mmio* %10, i64 %11
  store %struct.nfit_blk_mmio* %12, %struct.nfit_blk_mmio** %5, align 8
  %13 = load %struct.nfit_blk*, %struct.nfit_blk** %3, align 8
  %14 = getelementptr inbounds %struct.nfit_blk, %struct.nfit_blk* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.nfit_blk_mmio*, %struct.nfit_blk_mmio** %5, align 8
  %17 = getelementptr inbounds %struct.nfit_blk_mmio, %struct.nfit_blk_mmio* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* %4, align 4
  %20 = mul i32 %18, %19
  %21 = zext i32 %20 to i64
  %22 = add nsw i64 %15, %21
  store i64 %22, i64* %6, align 8
  store i32 -2147483593, i32* %7, align 4
  %23 = load %struct.nfit_blk_mmio*, %struct.nfit_blk_mmio** %5, align 8
  %24 = getelementptr inbounds %struct.nfit_blk_mmio, %struct.nfit_blk_mmio* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %2
  %28 = load i64, i64* %6, align 8
  %29 = load %struct.nfit_blk_mmio*, %struct.nfit_blk_mmio** %5, align 8
  %30 = call i64 @to_interleave_offset(i64 %28, %struct.nfit_blk_mmio* %29)
  store i64 %30, i64* %6, align 8
  br label %31

31:                                               ; preds = %27, %2
  %32 = load %struct.nfit_blk_mmio*, %struct.nfit_blk_mmio** %5, align 8
  %33 = getelementptr inbounds %struct.nfit_blk_mmio, %struct.nfit_blk_mmio* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* %6, align 8
  %37 = add nsw i64 %35, %36
  %38 = call i32 @readl(i64 %37)
  %39 = and i32 %38, -2147483593
  ret i32 %39
}

declare dso_local i64 @to_interleave_offset(i64, %struct.nfit_blk_mmio*) #1

declare dso_local i32 @readl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
