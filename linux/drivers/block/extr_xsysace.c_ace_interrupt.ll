; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_xsysace.c_ace_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_xsysace.c_ace_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ace_device = type { i32, i64, i64, i32, i32, i32, i32, i32 }

@ACE_CTRL = common dso_local global i32 0, align 4
@ACE_CTRL_RESETIRQ = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"spurious irq; stat=%.8x ctrl=%.8x cmd=%.4x\0A\00", align 1
@ACE_STATUS = common dso_local global i32 0, align 4
@ACE_SECCNTCMD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"fsm_task=%i fsm_state=%i data_count=%i\0A\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @ace_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ace_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ace_device*, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to %struct.ace_device*
  store %struct.ace_device* %8, %struct.ace_device** %6, align 8
  %9 = load %struct.ace_device*, %struct.ace_device** %6, align 8
  %10 = getelementptr inbounds %struct.ace_device, %struct.ace_device* %9, i32 0, i32 5
  %11 = call i32 @spin_lock(i32* %10)
  %12 = load %struct.ace_device*, %struct.ace_device** %6, align 8
  %13 = getelementptr inbounds %struct.ace_device, %struct.ace_device* %12, i32 0, i32 0
  store i32 1, i32* %13, align 8
  %14 = load %struct.ace_device*, %struct.ace_device** %6, align 8
  %15 = load i32, i32* @ACE_CTRL, align 4
  %16 = call i32 @ace_in(%struct.ace_device* %14, i32 %15)
  store i32 %16, i32* %5, align 4
  %17 = load %struct.ace_device*, %struct.ace_device** %6, align 8
  %18 = load i32, i32* @ACE_CTRL, align 4
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @ACE_CTRL_RESETIRQ, align 4
  %21 = or i32 %19, %20
  %22 = call i32 @ace_out(%struct.ace_device* %17, i32 %18, i32 %21)
  %23 = load %struct.ace_device*, %struct.ace_device** %6, align 8
  %24 = load i32, i32* @ACE_CTRL, align 4
  %25 = load i32, i32* %5, align 4
  %26 = call i32 @ace_out(%struct.ace_device* %23, i32 %24, i32 %25)
  %27 = load %struct.ace_device*, %struct.ace_device** %6, align 8
  %28 = call i64 @ace_interrupt_checkstate(%struct.ace_device* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %2
  %31 = load i32, i32* @EIO, align 4
  %32 = sub nsw i32 0, %31
  %33 = load %struct.ace_device*, %struct.ace_device** %6, align 8
  %34 = getelementptr inbounds %struct.ace_device, %struct.ace_device* %33, i32 0, i32 7
  store i32 %32, i32* %34, align 8
  br label %35

35:                                               ; preds = %30, %2
  %36 = load %struct.ace_device*, %struct.ace_device** %6, align 8
  %37 = getelementptr inbounds %struct.ace_device, %struct.ace_device* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %67

40:                                               ; preds = %35
  %41 = load %struct.ace_device*, %struct.ace_device** %6, align 8
  %42 = getelementptr inbounds %struct.ace_device, %struct.ace_device* %41, i32 0, i32 6
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.ace_device*, %struct.ace_device** %6, align 8
  %45 = load i32, i32* @ACE_STATUS, align 4
  %46 = call i64 @ace_in32(%struct.ace_device* %44, i32 %45)
  %47 = load %struct.ace_device*, %struct.ace_device** %6, align 8
  %48 = load i32, i32* @ACE_CTRL, align 4
  %49 = call i64 @ace_in32(%struct.ace_device* %47, i32 %48)
  %50 = load %struct.ace_device*, %struct.ace_device** %6, align 8
  %51 = load i32, i32* @ACE_SECCNTCMD, align 4
  %52 = call i32 @ace_in(%struct.ace_device* %50, i32 %51)
  %53 = call i32 @dev_err(i32 %43, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i64 %46, i64 %49, i32 %52)
  %54 = load %struct.ace_device*, %struct.ace_device** %6, align 8
  %55 = getelementptr inbounds %struct.ace_device, %struct.ace_device* %54, i32 0, i32 6
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.ace_device*, %struct.ace_device** %6, align 8
  %58 = getelementptr inbounds %struct.ace_device, %struct.ace_device* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.ace_device*, %struct.ace_device** %6, align 8
  %61 = getelementptr inbounds %struct.ace_device, %struct.ace_device* %60, i32 0, i32 2
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.ace_device*, %struct.ace_device** %6, align 8
  %64 = getelementptr inbounds %struct.ace_device, %struct.ace_device* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @dev_err(i32 %56, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i64 %59, i64 %62, i32 %65)
  br label %67

67:                                               ; preds = %40, %35
  %68 = load %struct.ace_device*, %struct.ace_device** %6, align 8
  %69 = getelementptr inbounds %struct.ace_device, %struct.ace_device* %68, i32 0, i32 4
  store i32 1, i32* %69, align 4
  br label %70

70:                                               ; preds = %75, %67
  %71 = load %struct.ace_device*, %struct.ace_device** %6, align 8
  %72 = getelementptr inbounds %struct.ace_device, %struct.ace_device* %71, i32 0, i32 4
  %73 = load i32, i32* %72, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %70
  %76 = load %struct.ace_device*, %struct.ace_device** %6, align 8
  %77 = call i32 @ace_fsm_dostate(%struct.ace_device* %76)
  br label %70

78:                                               ; preds = %70
  %79 = load %struct.ace_device*, %struct.ace_device** %6, align 8
  %80 = getelementptr inbounds %struct.ace_device, %struct.ace_device* %79, i32 0, i32 0
  store i32 0, i32* %80, align 8
  %81 = load %struct.ace_device*, %struct.ace_device** %6, align 8
  %82 = getelementptr inbounds %struct.ace_device, %struct.ace_device* %81, i32 0, i32 5
  %83 = call i32 @spin_unlock(i32* %82)
  %84 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %84
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @ace_in(%struct.ace_device*, i32) #1

declare dso_local i32 @ace_out(%struct.ace_device*, i32, i32) #1

declare dso_local i64 @ace_interrupt_checkstate(%struct.ace_device*) #1

declare dso_local i32 @dev_err(i32, i8*, i64, i64, i32) #1

declare dso_local i64 @ace_in32(%struct.ace_device*, i32) #1

declare dso_local i32 @ace_fsm_dostate(%struct.ace_device*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
