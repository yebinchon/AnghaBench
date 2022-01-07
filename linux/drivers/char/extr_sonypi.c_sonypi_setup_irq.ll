; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/extr_sonypi.c_sonypi_setup_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/extr_sonypi.c_sonypi_setup_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sonypi_device = type { i32, i64 }
%struct.sonypi_irq_list = type { i32, i64 }

@sonypi_irq = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"sonypi\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sonypi_device*, %struct.sonypi_irq_list*)* @sonypi_setup_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sonypi_setup_irq(%struct.sonypi_device* %0, %struct.sonypi_irq_list* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sonypi_device*, align 8
  %5 = alloca %struct.sonypi_irq_list*, align 8
  store %struct.sonypi_device* %0, %struct.sonypi_device** %4, align 8
  store %struct.sonypi_irq_list* %1, %struct.sonypi_irq_list** %5, align 8
  br label %6

6:                                                ; preds = %31, %2
  %7 = load %struct.sonypi_irq_list*, %struct.sonypi_irq_list** %5, align 8
  %8 = getelementptr inbounds %struct.sonypi_irq_list, %struct.sonypi_irq_list* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %34

11:                                               ; preds = %6
  %12 = load %struct.sonypi_irq_list*, %struct.sonypi_irq_list** %5, align 8
  %13 = getelementptr inbounds %struct.sonypi_irq_list, %struct.sonypi_irq_list* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = load i32, i32* @sonypi_irq, align 4
  %16 = load i32, i32* @IRQF_SHARED, align 4
  %17 = load i32, i32* @sonypi_irq, align 4
  %18 = call i32 @request_irq(i64 %14, i32 %15, i32 %16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %31, label %20

20:                                               ; preds = %11
  %21 = load %struct.sonypi_irq_list*, %struct.sonypi_irq_list** %5, align 8
  %22 = getelementptr inbounds %struct.sonypi_irq_list, %struct.sonypi_irq_list* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.sonypi_device*, %struct.sonypi_device** %4, align 8
  %25 = getelementptr inbounds %struct.sonypi_device, %struct.sonypi_device* %24, i32 0, i32 1
  store i64 %23, i64* %25, align 8
  %26 = load %struct.sonypi_irq_list*, %struct.sonypi_irq_list** %5, align 8
  %27 = getelementptr inbounds %struct.sonypi_irq_list, %struct.sonypi_irq_list* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.sonypi_device*, %struct.sonypi_device** %4, align 8
  %30 = getelementptr inbounds %struct.sonypi_device, %struct.sonypi_device* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 8
  store i32 0, i32* %3, align 4
  br label %37

31:                                               ; preds = %11
  %32 = load %struct.sonypi_irq_list*, %struct.sonypi_irq_list** %5, align 8
  %33 = getelementptr inbounds %struct.sonypi_irq_list, %struct.sonypi_irq_list* %32, i32 1
  store %struct.sonypi_irq_list* %33, %struct.sonypi_irq_list** %5, align 8
  br label %6

34:                                               ; preds = %6
  %35 = load i32, i32* @EBUSY, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %3, align 4
  br label %37

37:                                               ; preds = %34, %20
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

declare dso_local i32 @request_irq(i64, i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
