; ModuleID = '/home/carl/AnghaBench/lede/target/linux/ar71xx/files/drivers/spi/extr_spi-rb4xx.c_rb4xx_spi_transfer.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/ar71xx/files/drivers/spi/extr_spi-rb4xx.c_rb4xx_spi_transfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { i32 }
%struct.spi_message = type { %struct.TYPE_2__*, i32, i32, i64 }
%struct.TYPE_2__ = type { i64 }
%struct.rb4xx_spi = type { i64, i32, i64, i32 }

@EINPROGRESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*, %struct.spi_message*)* @rb4xx_spi_transfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rb4xx_spi_transfer(%struct.spi_device* %0, %struct.spi_message* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.spi_device*, align 8
  %5 = alloca %struct.spi_message*, align 8
  %6 = alloca %struct.rb4xx_spi*, align 8
  %7 = alloca i64, align 8
  store %struct.spi_device* %0, %struct.spi_device** %4, align 8
  store %struct.spi_message* %1, %struct.spi_message** %5, align 8
  %8 = load %struct.spi_device*, %struct.spi_device** %4, align 8
  %9 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.rb4xx_spi* @spi_master_get_devdata(i32 %10)
  store %struct.rb4xx_spi* %11, %struct.rb4xx_spi** %6, align 8
  %12 = load %struct.spi_message*, %struct.spi_message** %5, align 8
  %13 = getelementptr inbounds %struct.spi_message, %struct.spi_message* %12, i32 0, i32 3
  store i64 0, i64* %13, align 8
  %14 = load i32, i32* @EINPROGRESS, align 4
  %15 = sub nsw i32 0, %14
  %16 = load %struct.spi_message*, %struct.spi_message** %5, align 8
  %17 = getelementptr inbounds %struct.spi_message, %struct.spi_message* %16, i32 0, i32 2
  store i32 %15, i32* %17, align 4
  %18 = load %struct.rb4xx_spi*, %struct.rb4xx_spi** %6, align 8
  %19 = getelementptr inbounds %struct.rb4xx_spi, %struct.rb4xx_spi* %18, i32 0, i32 1
  %20 = load i64, i64* %7, align 8
  %21 = call i32 @spin_lock_irqsave(i32* %19, i64 %20)
  %22 = load %struct.spi_message*, %struct.spi_message** %5, align 8
  %23 = getelementptr inbounds %struct.spi_message, %struct.spi_message* %22, i32 0, i32 1
  %24 = load %struct.rb4xx_spi*, %struct.rb4xx_spi** %6, align 8
  %25 = getelementptr inbounds %struct.rb4xx_spi, %struct.rb4xx_spi* %24, i32 0, i32 3
  %26 = call i32 @list_add_tail(i32* %23, i32* %25)
  %27 = load %struct.rb4xx_spi*, %struct.rb4xx_spi** %6, align 8
  %28 = getelementptr inbounds %struct.rb4xx_spi, %struct.rb4xx_spi* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %46, label %31

31:                                               ; preds = %2
  %32 = load %struct.rb4xx_spi*, %struct.rb4xx_spi** %6, align 8
  %33 = getelementptr inbounds %struct.rb4xx_spi, %struct.rb4xx_spi* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp sge i64 %34, 0
  br i1 %35, label %36, label %51

36:                                               ; preds = %31
  %37 = load %struct.rb4xx_spi*, %struct.rb4xx_spi** %6, align 8
  %38 = getelementptr inbounds %struct.rb4xx_spi, %struct.rb4xx_spi* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.spi_message*, %struct.spi_message** %5, align 8
  %41 = getelementptr inbounds %struct.spi_message, %struct.spi_message* %40, i32 0, i32 0
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %39, %44
  br i1 %45, label %46, label %51

46:                                               ; preds = %36, %2
  %47 = load %struct.rb4xx_spi*, %struct.rb4xx_spi** %6, align 8
  %48 = getelementptr inbounds %struct.rb4xx_spi, %struct.rb4xx_spi* %47, i32 0, i32 1
  %49 = load i64, i64* %7, align 8
  %50 = call i32 @spin_unlock_irqrestore(i32* %48, i64 %49)
  store i32 0, i32* %3, align 4
  br label %58

51:                                               ; preds = %36, %31
  %52 = load %struct.rb4xx_spi*, %struct.rb4xx_spi** %6, align 8
  %53 = call i32 @rb4xx_spi_process_queue_locked(%struct.rb4xx_spi* %52, i64* %7)
  %54 = load %struct.rb4xx_spi*, %struct.rb4xx_spi** %6, align 8
  %55 = getelementptr inbounds %struct.rb4xx_spi, %struct.rb4xx_spi* %54, i32 0, i32 1
  %56 = load i64, i64* %7, align 8
  %57 = call i32 @spin_unlock_irqrestore(i32* %55, i64 %56)
  store i32 0, i32* %3, align 4
  br label %58

58:                                               ; preds = %51, %46
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

declare dso_local %struct.rb4xx_spi* @spi_master_get_devdata(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @rb4xx_spi_process_queue_locked(%struct.rb4xx_spi*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
