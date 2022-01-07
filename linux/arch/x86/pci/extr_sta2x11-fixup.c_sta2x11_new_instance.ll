; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/pci/extr_sta2x11-fixup.c_sta2x11_new_instance.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/pci/extr_sta2x11-fixup.c_sta2x11_new_instance.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.sta2x11_instance = type { i32, i64 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@sta2x11_instance_list = common dso_local global i32 0, align 4
@STA2X11_SWIOTLB_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Using SWIOTLB (size %i)\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"init swiotlb failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*)* @sta2x11_new_instance to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sta2x11_new_instance(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca %struct.sta2x11_instance*, align 8
  %4 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %5 = load i32, i32* @GFP_ATOMIC, align 4
  %6 = call %struct.sta2x11_instance* @kzalloc(i32 16, i32 %5)
  store %struct.sta2x11_instance* %6, %struct.sta2x11_instance** %3, align 8
  %7 = load %struct.sta2x11_instance*, %struct.sta2x11_instance** %3, align 8
  %8 = icmp ne %struct.sta2x11_instance* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  br label %39

10:                                               ; preds = %1
  %11 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %12 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %11, i32 0, i32 1
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = add nsw i64 %15, 1
  %17 = load %struct.sta2x11_instance*, %struct.sta2x11_instance** %3, align 8
  %18 = getelementptr inbounds %struct.sta2x11_instance, %struct.sta2x11_instance* %17, i32 0, i32 1
  store i64 %16, i64* %18, align 8
  %19 = call i64 @list_empty(i32* @sta2x11_instance_list)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %35

21:                                               ; preds = %10
  %22 = load i32, i32* @STA2X11_SWIOTLB_SIZE, align 4
  store i32 %22, i32* %4, align 4
  %23 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %24 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %23, i32 0, i32 0
  %25 = load i32, i32* %4, align 4
  %26 = call i32 @dev_info(i32* %24, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %25)
  %27 = load i32, i32* %4, align 4
  %28 = call i64 @swiotlb_late_init_with_default_size(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %21
  %31 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %32 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %31, i32 0, i32 0
  %33 = call i32 @dev_emerg(i32* %32, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  br label %34

34:                                               ; preds = %30, %21
  br label %35

35:                                               ; preds = %34, %10
  %36 = load %struct.sta2x11_instance*, %struct.sta2x11_instance** %3, align 8
  %37 = getelementptr inbounds %struct.sta2x11_instance, %struct.sta2x11_instance* %36, i32 0, i32 0
  %38 = call i32 @list_add(i32* %37, i32* @sta2x11_instance_list)
  br label %39

39:                                               ; preds = %35, %9
  ret void
}

declare dso_local %struct.sta2x11_instance* @kzalloc(i32, i32) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i32 @dev_info(i32*, i8*, i32) #1

declare dso_local i64 @swiotlb_late_init_with_default_size(i32) #1

declare dso_local i32 @dev_emerg(i32*, i8*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
