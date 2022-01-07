; ModuleID = '/home/carl/AnghaBench/linux/drivers/bus/fsl-mc/extr_fsl-mc-bus.c_fsl_mc_get_root_dprc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bus/fsl-mc/extr_fsl-mc-bus.c_fsl_mc_get_root_dprc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { %struct.device* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device*, %struct.device**)* @fsl_mc_get_root_dprc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fsl_mc_get_root_dprc(%struct.device* %0, %struct.device** %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.device**, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  store %struct.device** %1, %struct.device*** %4, align 8
  %5 = load %struct.device*, %struct.device** %3, align 8
  %6 = icmp ne %struct.device* %5, null
  br i1 %6, label %9, label %7

7:                                                ; preds = %2
  %8 = load %struct.device**, %struct.device*** %4, align 8
  store %struct.device* null, %struct.device** %8, align 8
  br label %33

9:                                                ; preds = %2
  %10 = load %struct.device*, %struct.device** %3, align 8
  %11 = call i64 @dev_is_fsl_mc(%struct.device* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %9
  %14 = load %struct.device**, %struct.device*** %4, align 8
  store %struct.device* null, %struct.device** %14, align 8
  br label %32

15:                                               ; preds = %9
  %16 = load %struct.device*, %struct.device** %3, align 8
  %17 = load %struct.device**, %struct.device*** %4, align 8
  store %struct.device* %16, %struct.device** %17, align 8
  br label %18

18:                                               ; preds = %25, %15
  %19 = load %struct.device**, %struct.device*** %4, align 8
  %20 = load %struct.device*, %struct.device** %19, align 8
  %21 = getelementptr inbounds %struct.device, %struct.device* %20, i32 0, i32 0
  %22 = load %struct.device*, %struct.device** %21, align 8
  %23 = call i64 @dev_is_fsl_mc(%struct.device* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %18
  %26 = load %struct.device**, %struct.device*** %4, align 8
  %27 = load %struct.device*, %struct.device** %26, align 8
  %28 = getelementptr inbounds %struct.device, %struct.device* %27, i32 0, i32 0
  %29 = load %struct.device*, %struct.device** %28, align 8
  %30 = load %struct.device**, %struct.device*** %4, align 8
  store %struct.device* %29, %struct.device** %30, align 8
  br label %18

31:                                               ; preds = %18
  br label %32

32:                                               ; preds = %31, %13
  br label %33

33:                                               ; preds = %32, %7
  ret void
}

declare dso_local i64 @dev_is_fsl_mc(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
