; ModuleID = '/home/carl/AnghaBench/lede/target/linux/adm5120/files-3.18/drivers/usb/host/extr_adm5120.h_periodic_reinit.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/adm5120/files-3.18/drivers/usb/host/extr_adm5120.h_periodic_reinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.admhcd = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@FIT = common dso_local global i32 0, align 4
@ADMHC_SFI_FI_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.admhcd*)* @periodic_reinit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @periodic_reinit(%struct.admhcd* %0) #0 {
  %2 = alloca %struct.admhcd*, align 8
  %3 = alloca i32, align 4
  store %struct.admhcd* %0, %struct.admhcd** %2, align 8
  %4 = load %struct.admhcd*, %struct.admhcd** %2, align 8
  %5 = load %struct.admhcd*, %struct.admhcd** %2, align 8
  %6 = getelementptr inbounds %struct.admhcd, %struct.admhcd* %5, i32 0, i32 1
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = call i32 @admhc_readl(%struct.admhcd* %4, i32* %8)
  %10 = load i32, i32* @FIT, align 4
  %11 = and i32 %9, %10
  store i32 %11, i32* %3, align 4
  %12 = load %struct.admhcd*, %struct.admhcd** %2, align 8
  %13 = load i32, i32* %3, align 4
  %14 = load i32, i32* @FIT, align 4
  %15 = xor i32 %13, %14
  %16 = load %struct.admhcd*, %struct.admhcd** %2, align 8
  %17 = getelementptr inbounds %struct.admhcd, %struct.admhcd* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = or i32 %15, %18
  %20 = load %struct.admhcd*, %struct.admhcd** %2, align 8
  %21 = getelementptr inbounds %struct.admhcd, %struct.admhcd* %20, i32 0, i32 1
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = call i32 @admhc_writel(%struct.admhcd* %12, i32 %19, i32* %23)
  ret void
}

declare dso_local i32 @admhc_readl(%struct.admhcd*, i32*) #1

declare dso_local i32 @admhc_writel(%struct.admhcd*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
