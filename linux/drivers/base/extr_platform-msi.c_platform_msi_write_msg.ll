; ModuleID = '/home/carl/AnghaBench/linux/drivers/base/extr_platform-msi.c_platform_msi_write_msg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/base/extr_platform-msi.c_platform_msi_write_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_data = type { i32 }
%struct.msi_msg = type { i32 }
%struct.msi_desc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.platform_msi_priv_data* }
%struct.platform_msi_priv_data = type { i32 (%struct.msi_desc.0*, %struct.msi_msg.1*)* }
%struct.msi_desc.0 = type opaque
%struct.msi_msg.1 = type opaque

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.irq_data*, %struct.msi_msg*)* @platform_msi_write_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @platform_msi_write_msg(%struct.irq_data* %0, %struct.msi_msg* %1) #0 {
  %3 = alloca %struct.irq_data*, align 8
  %4 = alloca %struct.msi_msg*, align 8
  %5 = alloca %struct.msi_desc*, align 8
  %6 = alloca %struct.platform_msi_priv_data*, align 8
  store %struct.irq_data* %0, %struct.irq_data** %3, align 8
  store %struct.msi_msg* %1, %struct.msi_msg** %4, align 8
  %7 = load %struct.irq_data*, %struct.irq_data** %3, align 8
  %8 = call %struct.msi_desc* @irq_data_get_msi_desc(%struct.irq_data* %7)
  store %struct.msi_desc* %8, %struct.msi_desc** %5, align 8
  %9 = load %struct.msi_desc*, %struct.msi_desc** %5, align 8
  %10 = getelementptr inbounds %struct.msi_desc, %struct.msi_desc* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load %struct.platform_msi_priv_data*, %struct.platform_msi_priv_data** %11, align 8
  store %struct.platform_msi_priv_data* %12, %struct.platform_msi_priv_data** %6, align 8
  %13 = load %struct.platform_msi_priv_data*, %struct.platform_msi_priv_data** %6, align 8
  %14 = getelementptr inbounds %struct.platform_msi_priv_data, %struct.platform_msi_priv_data* %13, i32 0, i32 0
  %15 = load i32 (%struct.msi_desc.0*, %struct.msi_msg.1*)*, i32 (%struct.msi_desc.0*, %struct.msi_msg.1*)** %14, align 8
  %16 = load %struct.msi_desc*, %struct.msi_desc** %5, align 8
  %17 = bitcast %struct.msi_desc* %16 to %struct.msi_desc.0*
  %18 = load %struct.msi_msg*, %struct.msi_msg** %4, align 8
  %19 = bitcast %struct.msi_msg* %18 to %struct.msi_msg.1*
  %20 = call i32 %15(%struct.msi_desc.0* %17, %struct.msi_msg.1* %19)
  ret void
}

declare dso_local %struct.msi_desc* @irq_data_get_msi_desc(%struct.irq_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
