; ModuleID = '/home/carl/AnghaBench/linux/drivers/atm/extr_firestream.c_firestream_init_one.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/atm/extr_firestream.c_firestream_init_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fs_dev = type { %struct.fs_dev*, i32, %struct.atm_dev*, %struct.pci_dev* }
%struct.atm_dev = type { i32 }
%struct.pci_dev = type { i32 }
%struct.pci_device_id = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@FS_DEBUG_ALLOC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Alloc fs-dev: %p(%zd)\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"fs\00", align 1
@ops = common dso_local global i32 0, align 4
@fs_boards = common dso_local global %struct.fs_dev* null, align 8
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, %struct.pci_device_id*)* @firestream_init_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @firestream_init_one(%struct.pci_dev* %0, %struct.pci_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.pci_device_id*, align 8
  %6 = alloca %struct.atm_dev*, align 8
  %7 = alloca %struct.fs_dev*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store %struct.pci_device_id* %1, %struct.pci_device_id** %5, align 8
  %8 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %9 = call i64 @pci_enable_device(%struct.pci_dev* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  br label %55

12:                                               ; preds = %2
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.fs_dev* @kzalloc(i32 32, i32 %13)
  store %struct.fs_dev* %14, %struct.fs_dev** %7, align 8
  %15 = load i32, i32* @FS_DEBUG_ALLOC, align 4
  %16 = load %struct.fs_dev*, %struct.fs_dev** %7, align 8
  %17 = call i32 @fs_dprintk(i32 %15, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), %struct.fs_dev* %16, i32 32)
  %18 = load %struct.fs_dev*, %struct.fs_dev** %7, align 8
  %19 = icmp ne %struct.fs_dev* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %12
  br label %55

21:                                               ; preds = %12
  %22 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %23 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %22, i32 0, i32 0
  %24 = call %struct.atm_dev* @atm_dev_register(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %23, i32* @ops, i32 -1, i32* null)
  store %struct.atm_dev* %24, %struct.atm_dev** %6, align 8
  %25 = load %struct.atm_dev*, %struct.atm_dev** %6, align 8
  %26 = icmp ne %struct.atm_dev* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %21
  br label %52

28:                                               ; preds = %21
  %29 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %30 = load %struct.fs_dev*, %struct.fs_dev** %7, align 8
  %31 = getelementptr inbounds %struct.fs_dev, %struct.fs_dev* %30, i32 0, i32 3
  store %struct.pci_dev* %29, %struct.pci_dev** %31, align 8
  %32 = load %struct.atm_dev*, %struct.atm_dev** %6, align 8
  %33 = load %struct.fs_dev*, %struct.fs_dev** %7, align 8
  %34 = getelementptr inbounds %struct.fs_dev, %struct.fs_dev* %33, i32 0, i32 2
  store %struct.atm_dev* %32, %struct.atm_dev** %34, align 8
  %35 = load %struct.pci_device_id*, %struct.pci_device_id** %5, align 8
  %36 = getelementptr inbounds %struct.pci_device_id, %struct.pci_device_id* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.fs_dev*, %struct.fs_dev** %7, align 8
  %39 = getelementptr inbounds %struct.fs_dev, %struct.fs_dev* %38, i32 0, i32 1
  store i32 %37, i32* %39, align 8
  %40 = load %struct.fs_dev*, %struct.fs_dev** %7, align 8
  %41 = call i64 @fs_init(%struct.fs_dev* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %28
  br label %49

44:                                               ; preds = %28
  %45 = load %struct.fs_dev*, %struct.fs_dev** @fs_boards, align 8
  %46 = load %struct.fs_dev*, %struct.fs_dev** %7, align 8
  %47 = getelementptr inbounds %struct.fs_dev, %struct.fs_dev* %46, i32 0, i32 0
  store %struct.fs_dev* %45, %struct.fs_dev** %47, align 8
  %48 = load %struct.fs_dev*, %struct.fs_dev** %7, align 8
  store %struct.fs_dev* %48, %struct.fs_dev** @fs_boards, align 8
  store i32 0, i32* %3, align 4
  br label %58

49:                                               ; preds = %43
  %50 = load %struct.atm_dev*, %struct.atm_dev** %6, align 8
  %51 = call i32 @atm_dev_deregister(%struct.atm_dev* %50)
  br label %52

52:                                               ; preds = %49, %27
  %53 = load %struct.fs_dev*, %struct.fs_dev** %7, align 8
  %54 = call i32 @kfree(%struct.fs_dev* %53)
  br label %55

55:                                               ; preds = %52, %20, %11
  %56 = load i32, i32* @ENODEV, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %3, align 4
  br label %58

58:                                               ; preds = %55, %44
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

declare dso_local i64 @pci_enable_device(%struct.pci_dev*) #1

declare dso_local %struct.fs_dev* @kzalloc(i32, i32) #1

declare dso_local i32 @fs_dprintk(i32, i8*, %struct.fs_dev*, i32) #1

declare dso_local %struct.atm_dev* @atm_dev_register(i8*, i32*, i32*, i32, i32*) #1

declare dso_local i64 @fs_init(%struct.fs_dev*) #1

declare dso_local i32 @atm_dev_deregister(%struct.atm_dev*) #1

declare dso_local i32 @kfree(%struct.fs_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
