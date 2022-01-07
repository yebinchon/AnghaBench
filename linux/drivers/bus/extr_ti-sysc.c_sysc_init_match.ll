; ModuleID = '/home/carl/AnghaBench/linux/drivers/bus/extr_ti-sysc.c_sysc_init_match.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bus/extr_ti-sysc.c_sysc_init_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sysc = type { %struct.sysc_capabilities*, %struct.TYPE_2__, i32 }
%struct.sysc_capabilities = type { i32 }
%struct.TYPE_2__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sysc*)* @sysc_init_match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sysc_init_match(%struct.sysc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sysc*, align 8
  %4 = alloca %struct.sysc_capabilities*, align 8
  store %struct.sysc* %0, %struct.sysc** %3, align 8
  %5 = load %struct.sysc*, %struct.sysc** %3, align 8
  %6 = getelementptr inbounds %struct.sysc, %struct.sysc* %5, i32 0, i32 2
  %7 = load i32, i32* %6, align 4
  %8 = call %struct.sysc_capabilities* @of_device_get_match_data(i32 %7)
  store %struct.sysc_capabilities* %8, %struct.sysc_capabilities** %4, align 8
  %9 = load %struct.sysc_capabilities*, %struct.sysc_capabilities** %4, align 8
  %10 = icmp ne %struct.sysc_capabilities* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %1
  %12 = load i32, i32* @EINVAL, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %2, align 4
  br label %34

14:                                               ; preds = %1
  %15 = load %struct.sysc_capabilities*, %struct.sysc_capabilities** %4, align 8
  %16 = load %struct.sysc*, %struct.sysc** %3, align 8
  %17 = getelementptr inbounds %struct.sysc, %struct.sysc* %16, i32 0, i32 0
  store %struct.sysc_capabilities* %15, %struct.sysc_capabilities** %17, align 8
  %18 = load %struct.sysc*, %struct.sysc** %3, align 8
  %19 = getelementptr inbounds %struct.sysc, %struct.sysc* %18, i32 0, i32 0
  %20 = load %struct.sysc_capabilities*, %struct.sysc_capabilities** %19, align 8
  %21 = icmp ne %struct.sysc_capabilities* %20, null
  br i1 %21, label %22, label %33

22:                                               ; preds = %14
  %23 = load %struct.sysc*, %struct.sysc** %3, align 8
  %24 = getelementptr inbounds %struct.sysc, %struct.sysc* %23, i32 0, i32 0
  %25 = load %struct.sysc_capabilities*, %struct.sysc_capabilities** %24, align 8
  %26 = getelementptr inbounds %struct.sysc_capabilities, %struct.sysc_capabilities* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.sysc*, %struct.sysc** %3, align 8
  %29 = getelementptr inbounds %struct.sysc, %struct.sysc* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = or i32 %31, %27
  store i32 %32, i32* %30, align 8
  br label %33

33:                                               ; preds = %22, %14
  store i32 0, i32* %2, align 4
  br label %34

34:                                               ; preds = %33, %11
  %35 = load i32, i32* %2, align 4
  ret i32 %35
}

declare dso_local %struct.sysc_capabilities* @of_device_get_match_data(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
