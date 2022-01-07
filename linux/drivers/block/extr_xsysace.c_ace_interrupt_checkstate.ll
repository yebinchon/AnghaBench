; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_xsysace.c_ace_interrupt_checkstate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_xsysace.c_ace_interrupt_checkstate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ace_device = type { i32 }

@ACE_STATUS = common dso_local global i32 0, align 4
@ACE_CTRL = common dso_local global i32 0, align 4
@ACE_STATUS_CFGERROR = common dso_local global i32 0, align 4
@ACE_STATUS_CFCERROR = common dso_local global i32 0, align 4
@ACE_CTRL_ERRORIRQ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"transfer failure\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ace_device*)* @ace_interrupt_checkstate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ace_interrupt_checkstate(%struct.ace_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ace_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ace_device* %0, %struct.ace_device** %3, align 8
  %6 = load %struct.ace_device*, %struct.ace_device** %3, align 8
  %7 = load i32, i32* @ACE_STATUS, align 4
  %8 = call i32 @ace_in32(%struct.ace_device* %6, i32 %7)
  store i32 %8, i32* %4, align 4
  %9 = load %struct.ace_device*, %struct.ace_device** %3, align 8
  %10 = load i32, i32* @ACE_CTRL, align 4
  %11 = call i32 @ace_in(%struct.ace_device* %9, i32 %10)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* @ACE_STATUS_CFGERROR, align 4
  %14 = load i32, i32* @ACE_STATUS_CFCERROR, align 4
  %15 = or i32 %13, %14
  %16 = and i32 %12, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %32

18:                                               ; preds = %1
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @ACE_CTRL_ERRORIRQ, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %32

23:                                               ; preds = %18
  %24 = load %struct.ace_device*, %struct.ace_device** %3, align 8
  %25 = getelementptr inbounds %struct.ace_device, %struct.ace_device* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @dev_err(i32 %26, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %28 = load %struct.ace_device*, %struct.ace_device** %3, align 8
  %29 = call i32 @ace_dump_regs(%struct.ace_device* %28)
  %30 = load i32, i32* @EIO, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %2, align 4
  br label %33

32:                                               ; preds = %18, %1
  store i32 0, i32* %2, align 4
  br label %33

33:                                               ; preds = %32, %23
  %34 = load i32, i32* %2, align 4
  ret i32 %34
}

declare dso_local i32 @ace_in32(%struct.ace_device*, i32) #1

declare dso_local i32 @ace_in(%struct.ace_device*, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @ace_dump_regs(%struct.ace_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
