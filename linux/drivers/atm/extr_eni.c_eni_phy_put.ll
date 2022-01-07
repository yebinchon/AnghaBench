; ModuleID = '/home/carl/AnghaBench/linux/drivers/atm/extr_eni.c_eni_phy_put.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/atm/extr_eni.c_eni_phy_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atm_dev = type { i32 }
%struct.TYPE_2__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.atm_dev*, i8, i64)* @eni_phy_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @eni_phy_put(%struct.atm_dev* %0, i8 zeroext %1, i64 %2) #0 {
  %4 = alloca %struct.atm_dev*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i64, align 8
  store %struct.atm_dev* %0, %struct.atm_dev** %4, align 8
  store i8 %1, i8* %5, align 1
  store i64 %2, i64* %6, align 8
  %7 = load i8, i8* %5, align 1
  %8 = load %struct.atm_dev*, %struct.atm_dev** %4, align 8
  %9 = call %struct.TYPE_2__* @ENI_DEV(%struct.atm_dev* %8)
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* %6, align 8
  %13 = mul i64 %12, 4
  %14 = add i64 %11, %13
  %15 = call i32 @writel(i8 zeroext %7, i64 %14)
  ret void
}

declare dso_local i32 @writel(i8 zeroext, i64) #1

declare dso_local %struct.TYPE_2__* @ENI_DEV(%struct.atm_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
