; ModuleID = '/home/carl/AnghaBench/lede/target/linux/cns3xxx/files/drivers/spi/extr_spi-cns3xxx.c_cns3xxx_spi_setup.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/cns3xxx/files/drivers/spi/extr_spi-cns3xxx.c_cns3xxx_spi_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*)* @cns3xxx_spi_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cns3xxx_spi_setup(%struct.spi_device* %0) #0 {
  %2 = alloca %struct.spi_device*, align 8
  store %struct.spi_device* %0, %struct.spi_device** %2, align 8
  %3 = load %struct.spi_device*, %struct.spi_device** %2, align 8
  %4 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %1
  %8 = load %struct.spi_device*, %struct.spi_device** %2, align 8
  %9 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %8, i32 0, i32 0
  store i32 8, i32* %9, align 4
  br label %10

10:                                               ; preds = %7, %1
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
