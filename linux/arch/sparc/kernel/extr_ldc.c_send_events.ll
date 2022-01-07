; ModuleID = '/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_ldc.c_send_events.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_ldc.c_send_events.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ldc_channel = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 (i32, i32)* }

@LDC_EVENT_RESET = common dso_local global i32 0, align 4
@LDC_EVENT_UP = common dso_local global i32 0, align 4
@LDC_EVENT_DATA_READY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ldc_channel*, i32)* @send_events to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @send_events(%struct.ldc_channel* %0, i32 %1) #0 {
  %3 = alloca %struct.ldc_channel*, align 8
  %4 = alloca i32, align 4
  store %struct.ldc_channel* %0, %struct.ldc_channel** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = load i32, i32* @LDC_EVENT_RESET, align 4
  %7 = and i32 %5, %6
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %19

9:                                                ; preds = %2
  %10 = load %struct.ldc_channel*, %struct.ldc_channel** %3, align 8
  %11 = getelementptr inbounds %struct.ldc_channel, %struct.ldc_channel* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32 (i32, i32)*, i32 (i32, i32)** %12, align 8
  %14 = load %struct.ldc_channel*, %struct.ldc_channel** %3, align 8
  %15 = getelementptr inbounds %struct.ldc_channel, %struct.ldc_channel* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @LDC_EVENT_RESET, align 4
  %18 = call i32 %13(i32 %16, i32 %17)
  br label %19

19:                                               ; preds = %9, %2
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* @LDC_EVENT_UP, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %34

24:                                               ; preds = %19
  %25 = load %struct.ldc_channel*, %struct.ldc_channel** %3, align 8
  %26 = getelementptr inbounds %struct.ldc_channel, %struct.ldc_channel* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32 (i32, i32)*, i32 (i32, i32)** %27, align 8
  %29 = load %struct.ldc_channel*, %struct.ldc_channel** %3, align 8
  %30 = getelementptr inbounds %struct.ldc_channel, %struct.ldc_channel* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @LDC_EVENT_UP, align 4
  %33 = call i32 %28(i32 %31, i32 %32)
  br label %34

34:                                               ; preds = %24, %19
  %35 = load i32, i32* %4, align 4
  %36 = load i32, i32* @LDC_EVENT_DATA_READY, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %49

39:                                               ; preds = %34
  %40 = load %struct.ldc_channel*, %struct.ldc_channel** %3, align 8
  %41 = getelementptr inbounds %struct.ldc_channel, %struct.ldc_channel* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32 (i32, i32)*, i32 (i32, i32)** %42, align 8
  %44 = load %struct.ldc_channel*, %struct.ldc_channel** %3, align 8
  %45 = getelementptr inbounds %struct.ldc_channel, %struct.ldc_channel* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @LDC_EVENT_DATA_READY, align 4
  %48 = call i32 %43(i32 %46, i32 %47)
  br label %49

49:                                               ; preds = %39, %34
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
