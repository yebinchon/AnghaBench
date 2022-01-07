; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/arm64/extr_iort.c_iort_register_domain_token.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/arm64/extr_iort.c_iort_register_domain_token.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fwnode_handle = type { i32 }
%struct.iort_its_msi_chip = type { i32, i32, i32, %struct.fwnode_handle* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@iort_msi_chip_lock = common dso_local global i32 0, align 4
@iort_msi_chip_list = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iort_register_domain_token(i32 %0, i32 %1, %struct.fwnode_handle* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.fwnode_handle*, align 8
  %8 = alloca %struct.iort_its_msi_chip*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store %struct.fwnode_handle* %2, %struct.fwnode_handle** %7, align 8
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.iort_its_msi_chip* @kzalloc(i32 24, i32 %9)
  store %struct.iort_its_msi_chip* %10, %struct.iort_its_msi_chip** %8, align 8
  %11 = load %struct.iort_its_msi_chip*, %struct.iort_its_msi_chip** %8, align 8
  %12 = icmp ne %struct.iort_its_msi_chip* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %3
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %4, align 4
  br label %31

16:                                               ; preds = %3
  %17 = load %struct.fwnode_handle*, %struct.fwnode_handle** %7, align 8
  %18 = load %struct.iort_its_msi_chip*, %struct.iort_its_msi_chip** %8, align 8
  %19 = getelementptr inbounds %struct.iort_its_msi_chip, %struct.iort_its_msi_chip* %18, i32 0, i32 3
  store %struct.fwnode_handle* %17, %struct.fwnode_handle** %19, align 8
  %20 = load i32, i32* %5, align 4
  %21 = load %struct.iort_its_msi_chip*, %struct.iort_its_msi_chip** %8, align 8
  %22 = getelementptr inbounds %struct.iort_its_msi_chip, %struct.iort_its_msi_chip* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 8
  %23 = load i32, i32* %6, align 4
  %24 = load %struct.iort_its_msi_chip*, %struct.iort_its_msi_chip** %8, align 8
  %25 = getelementptr inbounds %struct.iort_its_msi_chip, %struct.iort_its_msi_chip* %24, i32 0, i32 2
  store i32 %23, i32* %25, align 8
  %26 = call i32 @spin_lock(i32* @iort_msi_chip_lock)
  %27 = load %struct.iort_its_msi_chip*, %struct.iort_its_msi_chip** %8, align 8
  %28 = getelementptr inbounds %struct.iort_its_msi_chip, %struct.iort_its_msi_chip* %27, i32 0, i32 1
  %29 = call i32 @list_add(i32* %28, i32* @iort_msi_chip_list)
  %30 = call i32 @spin_unlock(i32* @iort_msi_chip_lock)
  store i32 0, i32* %4, align 4
  br label %31

31:                                               ; preds = %16, %13
  %32 = load i32, i32* %4, align 4
  ret i32 %32
}

declare dso_local %struct.iort_its_msi_chip* @kzalloc(i32, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
