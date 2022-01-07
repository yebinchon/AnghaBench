; ModuleID = '/home/carl/AnghaBench/linux/arch/ia64/hp/common/extr_sba_iommu.c_ptr_to_pide.c'
source_filename = "/home/carl/AnghaBench/linux/arch/ia64/hp/common/extr_sba_iommu.c_ptr_to_pide.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ioc = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.ioc*, i64*, i32)* @ptr_to_pide to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ptr_to_pide(%struct.ioc* %0, i64* %1, i32 %2) #0 {
  %4 = alloca %struct.ioc*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i32, align 4
  store %struct.ioc* %0, %struct.ioc** %4, align 8
  store i64* %1, i64** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load i64*, i64** %5, align 8
  %8 = ptrtoint i64* %7 to i64
  %9 = load %struct.ioc*, %struct.ioc** %4, align 8
  %10 = getelementptr inbounds %struct.ioc, %struct.ioc* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = sub i64 %8, %11
  %13 = shl i64 %12, 3
  %14 = load i32, i32* %6, align 4
  %15 = zext i32 %14 to i64
  %16 = add i64 %13, %15
  ret i64 %16
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
