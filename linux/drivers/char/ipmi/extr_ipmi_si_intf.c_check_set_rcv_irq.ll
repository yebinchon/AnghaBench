; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/ipmi/extr_ipmi_si_intf.c_check_set_rcv_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/ipmi/extr_ipmi_si_intf.c_check_set_rcv_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smi_info = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@IPMI_BMC_RCV_MSG_INTR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Cannot check setting the rcv irq: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [97 x i8] c"The BMC does not support setting the recv irq bit, compensating, but the BMC needs to be fixed.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.smi_info*)* @check_set_rcv_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_set_rcv_irq(%struct.smi_info* %0) #0 {
  %2 = alloca %struct.smi_info*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.smi_info* %0, %struct.smi_info** %2, align 8
  store i32 0, i32* %3, align 4
  %5 = load %struct.smi_info*, %struct.smi_info** %2, align 8
  %6 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %5, i32 0, i32 2
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  br label %46

11:                                               ; preds = %1
  %12 = load %struct.smi_info*, %struct.smi_info** %2, align 8
  %13 = call i32 @get_global_enables(%struct.smi_info* %12, i32* %3)
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %4, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %23, label %16

16:                                               ; preds = %11
  %17 = load i32, i32* @IPMI_BMC_RCV_MSG_INTR, align 4
  %18 = load i32, i32* %3, align 4
  %19 = or i32 %18, %17
  store i32 %19, i32* %3, align 4
  %20 = load %struct.smi_info*, %struct.smi_info** %2, align 8
  %21 = load i32, i32* %3, align 4
  %22 = call i32 @set_global_enables(%struct.smi_info* %20, i32 %21)
  store i32 %22, i32* %4, align 4
  br label %23

23:                                               ; preds = %16, %11
  %24 = load i32, i32* %4, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %33

26:                                               ; preds = %23
  %27 = load %struct.smi_info*, %struct.smi_info** %2, align 8
  %28 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %4, align 4
  %32 = call i32 @dev_err(i32 %30, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %31)
  br label %46

33:                                               ; preds = %23
  %34 = load i32, i32* %4, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %46

36:                                               ; preds = %33
  %37 = load %struct.smi_info*, %struct.smi_info** %2, align 8
  %38 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @dev_warn(i32 %40, i8* getelementptr inbounds ([97 x i8], [97 x i8]* @.str.1, i64 0, i64 0))
  %42 = load %struct.smi_info*, %struct.smi_info** %2, align 8
  %43 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %42, i32 0, i32 0
  store i32 1, i32* %43, align 4
  %44 = load %struct.smi_info*, %struct.smi_info** %2, align 8
  %45 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %44, i32 0, i32 1
  store i32 1, i32* %45, align 4
  br label %46

46:                                               ; preds = %10, %26, %36, %33
  ret void
}

declare dso_local i32 @get_global_enables(%struct.smi_info*, i32*) #1

declare dso_local i32 @set_global_enables(%struct.smi_info*, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @dev_warn(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
