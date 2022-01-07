; ModuleID = '/home/carl/AnghaBench/linux/drivers/bluetooth/extr_btmrvl_debugfs.c_btmrvl_debugfs_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bluetooth/extr_btmrvl_debugfs.c_btmrvl_debugfs_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_dev = type { i32 }
%struct.btmrvl_private = type { %struct.btmrvl_debugfs_data* }
%struct.btmrvl_debugfs_data = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @btmrvl_debugfs_remove(%struct.hci_dev* %0) #0 {
  %2 = alloca %struct.hci_dev*, align 8
  %3 = alloca %struct.btmrvl_private*, align 8
  %4 = alloca %struct.btmrvl_debugfs_data*, align 8
  store %struct.hci_dev* %0, %struct.hci_dev** %2, align 8
  %5 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %6 = call %struct.btmrvl_private* @hci_get_drvdata(%struct.hci_dev* %5)
  store %struct.btmrvl_private* %6, %struct.btmrvl_private** %3, align 8
  %7 = load %struct.btmrvl_private*, %struct.btmrvl_private** %3, align 8
  %8 = getelementptr inbounds %struct.btmrvl_private, %struct.btmrvl_private* %7, i32 0, i32 0
  %9 = load %struct.btmrvl_debugfs_data*, %struct.btmrvl_debugfs_data** %8, align 8
  store %struct.btmrvl_debugfs_data* %9, %struct.btmrvl_debugfs_data** %4, align 8
  %10 = load %struct.btmrvl_debugfs_data*, %struct.btmrvl_debugfs_data** %4, align 8
  %11 = icmp ne %struct.btmrvl_debugfs_data* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  br label %24

13:                                               ; preds = %1
  %14 = load %struct.btmrvl_debugfs_data*, %struct.btmrvl_debugfs_data** %4, align 8
  %15 = getelementptr inbounds %struct.btmrvl_debugfs_data, %struct.btmrvl_debugfs_data* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @debugfs_remove_recursive(i32 %16)
  %18 = load %struct.btmrvl_debugfs_data*, %struct.btmrvl_debugfs_data** %4, align 8
  %19 = getelementptr inbounds %struct.btmrvl_debugfs_data, %struct.btmrvl_debugfs_data* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @debugfs_remove_recursive(i32 %20)
  %22 = load %struct.btmrvl_debugfs_data*, %struct.btmrvl_debugfs_data** %4, align 8
  %23 = call i32 @kfree(%struct.btmrvl_debugfs_data* %22)
  br label %24

24:                                               ; preds = %13, %12
  ret void
}

declare dso_local %struct.btmrvl_private* @hci_get_drvdata(%struct.hci_dev*) #1

declare dso_local i32 @debugfs_remove_recursive(i32) #1

declare dso_local i32 @kfree(%struct.btmrvl_debugfs_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
