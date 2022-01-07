; ModuleID = '/home/carl/AnghaBench/linux/drivers/bus/extr_ti-sysc.c_sysc_check_quirk_16bit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bus/extr_ti-sysc.c_sysc_check_quirk_16bit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sysc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.resource = type { i32 }

@SYSC_QUIRK_16BIT = common dso_local global i32 0, align 4
@SYSC_QUIRK_USE_CLOCKACT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sysc*, %struct.resource*)* @sysc_check_quirk_16bit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sysc_check_quirk_16bit(%struct.sysc* %0, %struct.resource* %1) #0 {
  %3 = alloca %struct.sysc*, align 8
  %4 = alloca %struct.resource*, align 8
  store %struct.sysc* %0, %struct.sysc** %3, align 8
  store %struct.resource* %1, %struct.resource** %4, align 8
  %5 = load %struct.resource*, %struct.resource** %4, align 8
  %6 = call i32 @resource_size(%struct.resource* %5)
  %7 = icmp eq i32 %6, 8
  br i1 %7, label %8, label %17

8:                                                ; preds = %2
  %9 = load i32, i32* @SYSC_QUIRK_16BIT, align 4
  %10 = load i32, i32* @SYSC_QUIRK_USE_CLOCKACT, align 4
  %11 = or i32 %9, %10
  %12 = load %struct.sysc*, %struct.sysc** %3, align 8
  %13 = getelementptr inbounds %struct.sysc, %struct.sysc* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = or i32 %15, %11
  store i32 %16, i32* %14, align 4
  br label %17

17:                                               ; preds = %8, %2
  ret void
}

declare dso_local i32 @resource_size(%struct.resource*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
