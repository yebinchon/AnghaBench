; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_sata_highbank.c_sgpio_bit_shift.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_sata_highbank.c_sgpio_bit_shift.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecx_plat_data = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ecx_plat_data*, i64, i64)* @sgpio_bit_shift to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sgpio_bit_shift(%struct.ecx_plat_data* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.ecx_plat_data*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.ecx_plat_data* %0, %struct.ecx_plat_data** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load %struct.ecx_plat_data*, %struct.ecx_plat_data** %4, align 8
  %8 = getelementptr inbounds %struct.ecx_plat_data, %struct.ecx_plat_data* %7, i32 0, i32 0
  %9 = load i32*, i32** %8, align 8
  %10 = load i64, i64* %5, align 8
  %11 = getelementptr inbounds i32, i32* %9, i64 %10
  %12 = load i32, i32* %11, align 4
  %13 = mul nsw i32 3, %12
  %14 = sext i32 %13 to i64
  %15 = load i64, i64* %6, align 8
  %16 = add i64 %14, %15
  %17 = trunc i64 %16 to i32
  %18 = shl i32 1, %17
  ret i32 %18
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
