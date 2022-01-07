; ModuleID = '/home/carl/AnghaBench/linux/drivers/base/extr_platform-msi.c_platform_msi_domain_free_irqs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/base/extr_platform-msi.c_platform_msi_domain_free_irqs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.msi_desc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@MAX_DEV_MSIS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @platform_msi_domain_free_irqs(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.msi_desc*, align 8
  store %struct.device* %0, %struct.device** %2, align 8
  %4 = load %struct.device*, %struct.device** %2, align 8
  %5 = call i32 @dev_to_msi_list(%struct.device* %4)
  %6 = call i32 @list_empty(i32 %5)
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %16, label %8

8:                                                ; preds = %1
  %9 = load %struct.device*, %struct.device** %2, align 8
  %10 = call %struct.msi_desc* @first_msi_entry(%struct.device* %9)
  store %struct.msi_desc* %10, %struct.msi_desc** %3, align 8
  %11 = load %struct.msi_desc*, %struct.msi_desc** %3, align 8
  %12 = getelementptr inbounds %struct.msi_desc, %struct.msi_desc* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @platform_msi_free_priv_data(i32 %14)
  br label %16

16:                                               ; preds = %8, %1
  %17 = load %struct.device*, %struct.device** %2, align 8
  %18 = getelementptr inbounds %struct.device, %struct.device* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.device*, %struct.device** %2, align 8
  %21 = call i32 @msi_domain_free_irqs(i32 %19, %struct.device* %20)
  %22 = load %struct.device*, %struct.device** %2, align 8
  %23 = load i32, i32* @MAX_DEV_MSIS, align 4
  %24 = call i32 @platform_msi_free_descs(%struct.device* %22, i32 0, i32 %23)
  ret void
}

declare dso_local i32 @list_empty(i32) #1

declare dso_local i32 @dev_to_msi_list(%struct.device*) #1

declare dso_local %struct.msi_desc* @first_msi_entry(%struct.device*) #1

declare dso_local i32 @platform_msi_free_priv_data(i32) #1

declare dso_local i32 @msi_domain_free_irqs(i32, %struct.device*) #1

declare dso_local i32 @platform_msi_free_descs(%struct.device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
