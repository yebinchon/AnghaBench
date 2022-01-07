; ModuleID = '/home/carl/AnghaBench/lede/target/linux/adm5120/files-3.18/drivers/usb/host/extr_adm5120-pm.c_admhc_root_hub_state_changes.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/adm5120/files-3.18/drivers/usb/host/extr_adm5120-pm.c_admhc_root_hub_state_changes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.admhcd = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@ADMHC_INTR_INSM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.admhcd*, i32, i32)* @admhc_root_hub_state_changes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @admhc_root_hub_state_changes(%struct.admhcd* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.admhcd*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.admhcd* %0, %struct.admhcd** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %8 = load %struct.admhcd*, %struct.admhcd** %5, align 8
  %9 = load %struct.admhcd*, %struct.admhcd** %5, align 8
  %10 = getelementptr inbounds %struct.admhcd, %struct.admhcd* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = call i32 @admhc_readl(%struct.admhcd* %8, i32* %12)
  %14 = load i32, i32* @ADMHC_INTR_INSM, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %26

18:                                               ; preds = %3
  %19 = load i32, i32* %6, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %18
  %22 = load %struct.admhcd*, %struct.admhcd** %5, align 8
  %23 = load i32, i32* @ADMHC_INTR_INSM, align 4
  %24 = call i32 @admhc_intr_enable(%struct.admhcd* %22, i32 %23)
  store i32 0, i32* %4, align 4
  br label %26

25:                                               ; preds = %18
  store i32 1, i32* %4, align 4
  br label %26

26:                                               ; preds = %25, %21, %17
  %27 = load i32, i32* %4, align 4
  ret i32 %27
}

declare dso_local i32 @admhc_readl(%struct.admhcd*, i32*) #1

declare dso_local i32 @admhc_intr_enable(%struct.admhcd*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
