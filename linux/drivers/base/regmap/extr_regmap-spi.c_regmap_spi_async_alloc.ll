; ModuleID = '/home/carl/AnghaBench/linux/drivers/base/regmap/extr_regmap-spi.c_regmap_spi_async_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/base/regmap/extr_regmap-spi.c_regmap_spi_async_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regmap_async = type { i32 }
%struct.regmap_async_spi = type { %struct.regmap_async }

@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.regmap_async* ()* @regmap_spi_async_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.regmap_async* @regmap_spi_async_alloc() #0 {
  %1 = alloca %struct.regmap_async*, align 8
  %2 = alloca %struct.regmap_async_spi*, align 8
  %3 = load i32, i32* @GFP_KERNEL, align 4
  %4 = call %struct.regmap_async_spi* @kzalloc(i32 4, i32 %3)
  store %struct.regmap_async_spi* %4, %struct.regmap_async_spi** %2, align 8
  %5 = load %struct.regmap_async_spi*, %struct.regmap_async_spi** %2, align 8
  %6 = icmp ne %struct.regmap_async_spi* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %0
  store %struct.regmap_async* null, %struct.regmap_async** %1, align 8
  br label %11

8:                                                ; preds = %0
  %9 = load %struct.regmap_async_spi*, %struct.regmap_async_spi** %2, align 8
  %10 = getelementptr inbounds %struct.regmap_async_spi, %struct.regmap_async_spi* %9, i32 0, i32 0
  store %struct.regmap_async* %10, %struct.regmap_async** %1, align 8
  br label %11

11:                                               ; preds = %8, %7
  %12 = load %struct.regmap_async*, %struct.regmap_async** %1, align 8
  ret %struct.regmap_async* %12
}

declare dso_local %struct.regmap_async_spi* @kzalloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
