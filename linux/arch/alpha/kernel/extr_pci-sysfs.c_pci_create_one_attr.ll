; ModuleID = '/home/carl/AnghaBench/linux/arch/alpha/kernel/extr_pci-sysfs.c_pci_create_one_attr.c'
source_filename = "/home/carl/AnghaBench/linux/arch/alpha/kernel/extr_pci-sysfs.c_pci_create_one_attr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { %struct.TYPE_4__, i32* }
%struct.TYPE_4__ = type { i32 }
%struct.bin_attribute = type { i64, i32*, %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i8*, i32 }

@.str = private unnamed_addr constant [13 x i8] c"resource%d%s\00", align 1
@pci_mmap_resource_sparse = common dso_local global i32 0, align 4
@pci_mmap_resource_dense = common dso_local global i32 0, align 4
@S_IRUSR = common dso_local global i32 0, align 4
@S_IWUSR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, i32, i8*, i8*, %struct.bin_attribute*, i64)* @pci_create_one_attr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pci_create_one_attr(%struct.pci_dev* %0, i32 %1, i8* %2, i8* %3, %struct.bin_attribute* %4, i64 %5) #0 {
  %7 = alloca %struct.pci_dev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.bin_attribute*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store %struct.bin_attribute* %4, %struct.bin_attribute** %11, align 8
  store i64 %5, i64* %12, align 8
  %14 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %15 = load i32, i32* %8, align 4
  %16 = call i64 @pci_resource_len(%struct.pci_dev* %14, i32 %15)
  store i64 %16, i64* %13, align 8
  %17 = load i8*, i8** %9, align 8
  %18 = load i32, i32* %8, align 4
  %19 = load i8*, i8** %10, align 8
  %20 = call i32 @sprintf(i8* %17, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %18, i8* %19)
  %21 = load i64, i64* %12, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %6
  %24 = load i32, i32* @pci_mmap_resource_sparse, align 4
  br label %27

25:                                               ; preds = %6
  %26 = load i32, i32* @pci_mmap_resource_dense, align 4
  br label %27

27:                                               ; preds = %25, %23
  %28 = phi i32 [ %24, %23 ], [ %26, %25 ]
  %29 = load %struct.bin_attribute*, %struct.bin_attribute** %11, align 8
  %30 = getelementptr inbounds %struct.bin_attribute, %struct.bin_attribute* %29, i32 0, i32 3
  store i32 %28, i32* %30, align 8
  %31 = load i8*, i8** %9, align 8
  %32 = load %struct.bin_attribute*, %struct.bin_attribute** %11, align 8
  %33 = getelementptr inbounds %struct.bin_attribute, %struct.bin_attribute* %32, i32 0, i32 2
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  store i8* %31, i8** %34, align 8
  %35 = load i32, i32* @S_IRUSR, align 4
  %36 = load i32, i32* @S_IWUSR, align 4
  %37 = or i32 %35, %36
  %38 = load %struct.bin_attribute*, %struct.bin_attribute** %11, align 8
  %39 = getelementptr inbounds %struct.bin_attribute, %struct.bin_attribute* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 1
  store i32 %37, i32* %40, align 8
  %41 = load i64, i64* %12, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %27
  %44 = load i64, i64* %13, align 8
  %45 = shl i64 %44, 5
  br label %48

46:                                               ; preds = %27
  %47 = load i64, i64* %13, align 8
  br label %48

48:                                               ; preds = %46, %43
  %49 = phi i64 [ %45, %43 ], [ %47, %46 ]
  %50 = load %struct.bin_attribute*, %struct.bin_attribute** %11, align 8
  %51 = getelementptr inbounds %struct.bin_attribute, %struct.bin_attribute* %50, i32 0, i32 0
  store i64 %49, i64* %51, align 8
  %52 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %53 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %52, i32 0, i32 1
  %54 = load i32*, i32** %53, align 8
  %55 = load i32, i32* %8, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %54, i64 %56
  %58 = load %struct.bin_attribute*, %struct.bin_attribute** %11, align 8
  %59 = getelementptr inbounds %struct.bin_attribute, %struct.bin_attribute* %58, i32 0, i32 1
  store i32* %57, i32** %59, align 8
  %60 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %61 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = load %struct.bin_attribute*, %struct.bin_attribute** %11, align 8
  %64 = call i32 @sysfs_create_bin_file(i32* %62, %struct.bin_attribute* %63)
  ret i32 %64
}

declare dso_local i64 @pci_resource_len(%struct.pci_dev*, i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i32, i8*) #1

declare dso_local i32 @sysfs_create_bin_file(i32*, %struct.bin_attribute*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
