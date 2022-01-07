; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/mtip32xx/extr_mtip32xx.c_mtip_hw_resume.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/mtip32xx/extr_mtip32xx.c_mtip_hw_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.driver_data = type { i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [25 x i8] c"Unable to reset the HBA\0A\00", align 1
@EFAULT = common dso_local global i32 0, align 4
@HOST_CTL = common dso_local global i64 0, align 8
@HOST_IRQ_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.driver_data*)* @mtip_hw_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtip_hw_resume(%struct.driver_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.driver_data*, align 8
  store %struct.driver_data* %0, %struct.driver_data** %3, align 8
  %4 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %5 = call i32 @hba_setup(%struct.driver_data* %4)
  %6 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %7 = call i64 @mtip_hba_reset(%struct.driver_data* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %17

9:                                                ; preds = %1
  %10 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %11 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %10, i32 0, i32 2
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = call i32 @dev_err(i32* %13, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %15 = load i32, i32* @EFAULT, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %40

17:                                               ; preds = %1
  %18 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %19 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @mtip_init_port(i32 %20)
  %22 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %23 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @mtip_start_port(i32 %24)
  %26 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %27 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @HOST_CTL, align 8
  %30 = add nsw i64 %28, %29
  %31 = call i32 @readl(i64 %30)
  %32 = load i32, i32* @HOST_IRQ_EN, align 4
  %33 = or i32 %31, %32
  %34 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %35 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @HOST_CTL, align 8
  %38 = add nsw i64 %36, %37
  %39 = call i32 @writel(i32 %33, i64 %38)
  store i32 0, i32* %2, align 4
  br label %40

40:                                               ; preds = %17, %9
  %41 = load i32, i32* %2, align 4
  ret i32 %41
}

declare dso_local i32 @hba_setup(%struct.driver_data*) #1

declare dso_local i64 @mtip_hba_reset(%struct.driver_data*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @mtip_init_port(i32) #1

declare dso_local i32 @mtip_start_port(i32) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @readl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
