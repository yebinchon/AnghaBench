; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/agp/extr_amd64-agp.c_amd8151_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/agp/extr_amd64-agp.c_amd8151_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32, i32 }
%struct.agp_bridge_data = type { i32, i64 }

@.str = private unnamed_addr constant [3 x i8] c"A0\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"A1\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"B0\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"B1\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"B2\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"B3\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"??\00", align 1
@.str.7 = private unnamed_addr constant [28 x i8] c"AMD 8151 AGP Bridge rev %s\0A\00", align 1
@.str.8 = private unnamed_addr constant [54 x i8] c"correcting AGP revision (reports 3.5, is really 3.0)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*, %struct.agp_bridge_data*)* @amd8151_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @amd8151_init(%struct.pci_dev* %0, %struct.agp_bridge_data* %1) #0 {
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca %struct.agp_bridge_data*, align 8
  %5 = alloca i8*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %3, align 8
  store %struct.agp_bridge_data* %1, %struct.agp_bridge_data** %4, align 8
  %6 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %7 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  switch i32 %8, label %15 [
    i32 1, label %9
    i32 2, label %10
    i32 17, label %11
    i32 18, label %12
    i32 19, label %13
    i32 20, label %14
  ]

9:                                                ; preds = %2
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8** %5, align 8
  br label %16

10:                                               ; preds = %2
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8** %5, align 8
  br label %16

11:                                               ; preds = %2
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8** %5, align 8
  br label %16

12:                                               ; preds = %2
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8** %5, align 8
  br label %16

13:                                               ; preds = %2
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8** %5, align 8
  br label %16

14:                                               ; preds = %2
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i8** %5, align 8
  br label %16

15:                                               ; preds = %2
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i8** %5, align 8
  br label %16

16:                                               ; preds = %15, %14, %13, %12, %11, %10, %9
  %17 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %18 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %17, i32 0, i32 1
  %19 = load i8*, i8** %5, align 8
  %20 = call i32 (i32*, i8*, ...) @dev_info(i32* %18, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i64 0, i64 0), i8* %19)
  %21 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %22 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp slt i32 %23, 19
  br i1 %24, label %25, label %33

25:                                               ; preds = %16
  %26 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %27 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %26, i32 0, i32 1
  %28 = call i32 (i32*, i8*, ...) @dev_info(i32* %27, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.8, i64 0, i64 0))
  %29 = load %struct.agp_bridge_data*, %struct.agp_bridge_data** %4, align 8
  %30 = getelementptr inbounds %struct.agp_bridge_data, %struct.agp_bridge_data* %29, i32 0, i32 0
  store i32 3, i32* %30, align 8
  %31 = load %struct.agp_bridge_data*, %struct.agp_bridge_data** %4, align 8
  %32 = getelementptr inbounds %struct.agp_bridge_data, %struct.agp_bridge_data* %31, i32 0, i32 1
  store i64 0, i64* %32, align 8
  br label %33

33:                                               ; preds = %25, %16
  ret void
}

declare dso_local i32 @dev_info(i32*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
