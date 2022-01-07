; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/ipmi/extr_ipmi_si_intf.c_current_global_enables.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/ipmi/extr_ipmi_si_intf.c_current_global_enables.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smi_info = type { i32, i32, %struct.TYPE_2__, i64, i64 }
%struct.TYPE_2__ = type { i64 }

@IPMI_BMC_EVT_MSG_BUFF = common dso_local global i32 0, align 4
@IPMI_BMC_RCV_MSG_INTR = common dso_local global i32 0, align 4
@IPMI_BMC_EVT_MSG_INTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.smi_info*, i32, i32*)* @current_global_enables to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @current_global_enables(%struct.smi_info* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.smi_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store %struct.smi_info* %0, %struct.smi_info** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  store i32 0, i32* %7, align 4
  %8 = load %struct.smi_info*, %struct.smi_info** %4, align 8
  %9 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %8, i32 0, i32 3
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %3
  %13 = load i32, i32* @IPMI_BMC_EVT_MSG_BUFF, align 4
  %14 = load i32, i32* %7, align 4
  %15 = or i32 %14, %13
  store i32 %15, i32* %7, align 4
  br label %16

16:                                               ; preds = %12, %3
  %17 = load %struct.smi_info*, %struct.smi_info** %4, align 8
  %18 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %16
  %23 = load %struct.smi_info*, %struct.smi_info** %4, align 8
  %24 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %22, %16
  %28 = load %struct.smi_info*, %struct.smi_info** %4, align 8
  %29 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %28, i32 0, i32 4
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %41

32:                                               ; preds = %27, %22
  %33 = load %struct.smi_info*, %struct.smi_info** %4, align 8
  %34 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %41, label %37

37:                                               ; preds = %32
  %38 = load i32, i32* @IPMI_BMC_RCV_MSG_INTR, align 4
  %39 = load i32, i32* %7, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %7, align 4
  br label %41

41:                                               ; preds = %37, %32, %27
  %42 = load %struct.smi_info*, %struct.smi_info** %4, align 8
  %43 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %42, i32 0, i32 3
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %66

46:                                               ; preds = %41
  %47 = load %struct.smi_info*, %struct.smi_info** %4, align 8
  %48 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %47, i32 0, i32 2
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %66

52:                                               ; preds = %46
  %53 = load %struct.smi_info*, %struct.smi_info** %4, align 8
  %54 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %66, label %57

57:                                               ; preds = %52
  %58 = load %struct.smi_info*, %struct.smi_info** %4, align 8
  %59 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %66, label %62

62:                                               ; preds = %57
  %63 = load i32, i32* @IPMI_BMC_EVT_MSG_INTR, align 4
  %64 = load i32, i32* %7, align 4
  %65 = or i32 %64, %63
  store i32 %65, i32* %7, align 4
  br label %66

66:                                               ; preds = %62, %57, %52, %46, %41
  %67 = load i32, i32* %7, align 4
  %68 = load i32, i32* @IPMI_BMC_EVT_MSG_INTR, align 4
  %69 = load i32, i32* @IPMI_BMC_RCV_MSG_INTR, align 4
  %70 = or i32 %68, %69
  %71 = and i32 %67, %70
  %72 = load i32*, i32** %6, align 8
  store i32 %71, i32* %72, align 4
  %73 = load i32, i32* %7, align 4
  ret i32 %73
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
