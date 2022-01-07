; ModuleID = '/home/carl/AnghaBench/linux/drivers/bluetooth/extr_btintel.c_btintel_version_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bluetooth/extr_btintel.c_btintel_version_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_dev = type { i32 }
%struct.intel_version = type { i32, i32, i64, i32, i32 }

@.str = private unnamed_addr constant [11 x i8] c"Bootloader\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"Firmware\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"%s revision %u.%u build %u week %u %u\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @btintel_version_info(%struct.hci_dev* %0, %struct.intel_version* %1) #0 {
  %3 = alloca %struct.hci_dev*, align 8
  %4 = alloca %struct.intel_version*, align 8
  %5 = alloca i8*, align 8
  store %struct.hci_dev* %0, %struct.hci_dev** %3, align 8
  store %struct.intel_version* %1, %struct.intel_version** %4, align 8
  %6 = load %struct.intel_version*, %struct.intel_version** %4, align 8
  %7 = getelementptr inbounds %struct.intel_version, %struct.intel_version* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  switch i32 %8, label %11 [
    i32 6, label %9
    i32 35, label %10
  ]

9:                                                ; preds = %2
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8** %5, align 8
  br label %12

10:                                               ; preds = %2
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8** %5, align 8
  br label %12

11:                                               ; preds = %2
  br label %34

12:                                               ; preds = %10, %9
  %13 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = load %struct.intel_version*, %struct.intel_version** %4, align 8
  %16 = getelementptr inbounds %struct.intel_version, %struct.intel_version* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = ashr i32 %17, 4
  %19 = load %struct.intel_version*, %struct.intel_version** %4, align 8
  %20 = getelementptr inbounds %struct.intel_version, %struct.intel_version* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = and i32 %21, 15
  %23 = load %struct.intel_version*, %struct.intel_version** %4, align 8
  %24 = getelementptr inbounds %struct.intel_version, %struct.intel_version* %23, i32 0, i32 4
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.intel_version*, %struct.intel_version** %4, align 8
  %27 = getelementptr inbounds %struct.intel_version, %struct.intel_version* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.intel_version*, %struct.intel_version** %4, align 8
  %30 = getelementptr inbounds %struct.intel_version, %struct.intel_version* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = add nsw i64 2000, %31
  %33 = call i32 @bt_dev_info(%struct.hci_dev* %13, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i8* %14, i32 %18, i32 %22, i32 %25, i32 %28, i64 %32)
  br label %34

34:                                               ; preds = %12, %11
  ret void
}

declare dso_local i32 @bt_dev_info(%struct.hci_dev*, i8*, i8*, i32, i32, i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
