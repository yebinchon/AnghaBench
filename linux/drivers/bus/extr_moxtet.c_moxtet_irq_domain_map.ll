; ModuleID = '/home/carl/AnghaBench/linux/drivers/bus/extr_moxtet.c_moxtet_irq_domain_map.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bus/extr_moxtet.c_moxtet_irq_domain_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_domain = type { %struct.moxtet* }
%struct.moxtet = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@MOXTET_NIRQS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [23 x i8] c"Invalid hw irq number\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@handle_level_irq = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.irq_domain*, i32, i64)* @moxtet_irq_domain_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @moxtet_irq_domain_map(%struct.irq_domain* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.irq_domain*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.moxtet*, align 8
  store %struct.irq_domain* %0, %struct.irq_domain** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %9 = load %struct.irq_domain*, %struct.irq_domain** %5, align 8
  %10 = getelementptr inbounds %struct.irq_domain, %struct.irq_domain* %9, i32 0, i32 0
  %11 = load %struct.moxtet*, %struct.moxtet** %10, align 8
  store %struct.moxtet* %11, %struct.moxtet** %8, align 8
  %12 = load i64, i64* %7, align 8
  %13 = load i64, i64* @MOXTET_NIRQS, align 8
  %14 = icmp sge i64 %12, %13
  br i1 %14, label %24, label %15

15:                                               ; preds = %3
  %16 = load %struct.moxtet*, %struct.moxtet** %8, align 8
  %17 = getelementptr inbounds %struct.moxtet, %struct.moxtet* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i64, i64* %7, align 8
  %21 = call i32 @BIT(i64 %20)
  %22 = and i32 %19, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %31, label %24

24:                                               ; preds = %15, %3
  %25 = load %struct.moxtet*, %struct.moxtet** %8, align 8
  %26 = getelementptr inbounds %struct.moxtet, %struct.moxtet* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @dev_err(i32 %27, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %4, align 4
  br label %43

31:                                               ; preds = %15
  %32 = load i32, i32* %6, align 4
  %33 = load %struct.irq_domain*, %struct.irq_domain** %5, align 8
  %34 = getelementptr inbounds %struct.irq_domain, %struct.irq_domain* %33, i32 0, i32 0
  %35 = load %struct.moxtet*, %struct.moxtet** %34, align 8
  %36 = call i32 @irq_set_chip_data(i32 %32, %struct.moxtet* %35)
  %37 = load i32, i32* %6, align 4
  %38 = load %struct.moxtet*, %struct.moxtet** %8, align 8
  %39 = getelementptr inbounds %struct.moxtet, %struct.moxtet* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  %41 = load i32, i32* @handle_level_irq, align 4
  %42 = call i32 @irq_set_chip_and_handler(i32 %37, i32* %40, i32 %41)
  store i32 0, i32* %4, align 4
  br label %43

43:                                               ; preds = %31, %24
  %44 = load i32, i32* %4, align 4
  ret i32 %44
}

declare dso_local i32 @BIT(i64) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @irq_set_chip_data(i32, %struct.moxtet*) #1

declare dso_local i32 @irq_set_chip_and_handler(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
