; ModuleID = '/home/carl/AnghaBench/lede/target/linux/generic/files/drivers/net/phy/extr_rtl8366_smi.c_rtl8366_smi_mii_cleanup.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/generic/files/drivers/net/phy/extr_rtl8366_smi.c_rtl8366_smi_mii_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtl8366_smi = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtl8366_smi*)* @rtl8366_smi_mii_cleanup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtl8366_smi_mii_cleanup(%struct.rtl8366_smi* %0) #0 {
  %2 = alloca %struct.rtl8366_smi*, align 8
  store %struct.rtl8366_smi* %0, %struct.rtl8366_smi** %2, align 8
  %3 = load %struct.rtl8366_smi*, %struct.rtl8366_smi** %2, align 8
  %4 = getelementptr inbounds %struct.rtl8366_smi, %struct.rtl8366_smi* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = call i32 @mdiobus_unregister(i32 %5)
  %7 = load %struct.rtl8366_smi*, %struct.rtl8366_smi** %2, align 8
  %8 = getelementptr inbounds %struct.rtl8366_smi, %struct.rtl8366_smi* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @mdiobus_free(i32 %9)
  ret void
}

declare dso_local i32 @mdiobus_unregister(i32) #1

declare dso_local i32 @mdiobus_free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
