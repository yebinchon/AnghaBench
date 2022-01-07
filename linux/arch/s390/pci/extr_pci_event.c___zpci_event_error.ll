; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/pci/extr_pci_event.c___zpci_event_error.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/pci/extr_pci_event.c___zpci_event_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zpci_ccdf_err = type { i32, i32 }
%struct.zpci_dev = type { i32 }
%struct.pci_dev = type { i32 }

@.str = private unnamed_addr constant [13 x i8] c"error CCDF:\0A\00", align 1
@ZPCI_DEVFN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [55 x i8] c"%s: Event 0x%x reports an error for PCI function 0x%x\0A\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"n/a\00", align 1
@pci_channel_io_perm_failure = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.zpci_ccdf_err*)* @__zpci_event_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__zpci_event_error(%struct.zpci_ccdf_err* %0) #0 {
  %2 = alloca %struct.zpci_ccdf_err*, align 8
  %3 = alloca %struct.zpci_dev*, align 8
  %4 = alloca %struct.pci_dev*, align 8
  store %struct.zpci_ccdf_err* %0, %struct.zpci_ccdf_err** %2, align 8
  %5 = load %struct.zpci_ccdf_err*, %struct.zpci_ccdf_err** %2, align 8
  %6 = getelementptr inbounds %struct.zpci_ccdf_err, %struct.zpci_ccdf_err* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = call %struct.zpci_dev* @get_zdev_by_fid(i32 %7)
  store %struct.zpci_dev* %8, %struct.zpci_dev** %3, align 8
  store %struct.pci_dev* null, %struct.pci_dev** %4, align 8
  %9 = call i32 @zpci_err(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %10 = load %struct.zpci_ccdf_err*, %struct.zpci_ccdf_err** %2, align 8
  %11 = call i32 @zpci_err_hex(%struct.zpci_ccdf_err* %10, i32 8)
  %12 = load %struct.zpci_dev*, %struct.zpci_dev** %3, align 8
  %13 = icmp ne %struct.zpci_dev* %12, null
  br i1 %13, label %14, label %20

14:                                               ; preds = %1
  %15 = load %struct.zpci_dev*, %struct.zpci_dev** %3, align 8
  %16 = getelementptr inbounds %struct.zpci_dev, %struct.zpci_dev* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @ZPCI_DEVFN, align 4
  %19 = call %struct.pci_dev* @pci_get_slot(i32 %17, i32 %18)
  store %struct.pci_dev* %19, %struct.pci_dev** %4, align 8
  br label %20

20:                                               ; preds = %14, %1
  %21 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %22 = icmp ne %struct.pci_dev* %21, null
  br i1 %22, label %23, label %26

23:                                               ; preds = %20
  %24 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %25 = call i8* @pci_name(%struct.pci_dev* %24)
  br label %27

26:                                               ; preds = %20
  br label %27

27:                                               ; preds = %26, %23
  %28 = phi i8* [ %25, %23 ], [ getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), %26 ]
  %29 = load %struct.zpci_ccdf_err*, %struct.zpci_ccdf_err** %2, align 8
  %30 = getelementptr inbounds %struct.zpci_ccdf_err, %struct.zpci_ccdf_err* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.zpci_ccdf_err*, %struct.zpci_ccdf_err** %2, align 8
  %33 = getelementptr inbounds %struct.zpci_ccdf_err, %struct.zpci_ccdf_err* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @pr_err(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0), i8* %28, i32 %31, i32 %34)
  %36 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %37 = icmp ne %struct.pci_dev* %36, null
  br i1 %37, label %39, label %38

38:                                               ; preds = %27
  br label %45

39:                                               ; preds = %27
  %40 = load i32, i32* @pci_channel_io_perm_failure, align 4
  %41 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %42 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 4
  %43 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %44 = call i32 @pci_dev_put(%struct.pci_dev* %43)
  br label %45

45:                                               ; preds = %39, %38
  ret void
}

declare dso_local %struct.zpci_dev* @get_zdev_by_fid(i32) #1

declare dso_local i32 @zpci_err(i8*) #1

declare dso_local i32 @zpci_err_hex(%struct.zpci_ccdf_err*, i32) #1

declare dso_local %struct.pci_dev* @pci_get_slot(i32, i32) #1

declare dso_local i32 @pr_err(i8*, i8*, i32, i32) #1

declare dso_local i8* @pci_name(%struct.pci_dev*) #1

declare dso_local i32 @pci_dev_put(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
