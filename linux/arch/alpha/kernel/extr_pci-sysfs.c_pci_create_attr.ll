; ModuleID = '/home/carl/AnghaBench/linux/arch/alpha/kernel/extr_pci-sysfs.c_pci_create_attr.c'
source_filename = "/home/carl/AnghaBench/linux/arch/alpha/kernel/extr_pci-sysfs.c_pci_create_attr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { %struct.bin_attribute**, %struct.bin_attribute**, %struct.TYPE_2__*, %struct.pci_controller* }
%struct.bin_attribute = type { i32 }
%struct.TYPE_2__ = type { i32 }
%struct.pci_controller = type { i64, i64, i64, i64 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"_dense\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"_sparse\00", align 1
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, i32)* @pci_create_attr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pci_create_attr(%struct.pci_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.bin_attribute*, align 8
  %13 = alloca %struct.pci_controller*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %8, align 4
  store i32 1, i32* %9, align 4
  %16 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %17 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %16, i32 0, i32 3
  %18 = load %struct.pci_controller*, %struct.pci_controller** %17, align 8
  store %struct.pci_controller* %18, %struct.pci_controller** %13, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %14, align 8
  store i32 10, i32* %7, align 4
  %19 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %20 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %19, i32 0, i32 2
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = load i32, i32* %5, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @IORESOURCE_MEM, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %46

30:                                               ; preds = %2
  %31 = load %struct.pci_controller*, %struct.pci_controller** %13, align 8
  %32 = getelementptr inbounds %struct.pci_controller, %struct.pci_controller* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  store i64 %33, i64* %10, align 8
  %34 = load %struct.pci_controller*, %struct.pci_controller** %13, align 8
  %35 = getelementptr inbounds %struct.pci_controller, %struct.pci_controller* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  store i64 %36, i64* %11, align 8
  %37 = load i64, i64* %10, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %30
  %40 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %41 = load i32, i32* %5, align 4
  %42 = call i32 @sparse_mem_mmap_fits(%struct.pci_dev* %40, i32 %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %39
  store i64 0, i64* %10, align 8
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8** %14, align 8
  store i32 16, i32* %7, align 4
  br label %45

45:                                               ; preds = %44, %39, %30
  br label %53

46:                                               ; preds = %2
  %47 = load %struct.pci_controller*, %struct.pci_controller** %13, align 8
  %48 = getelementptr inbounds %struct.pci_controller, %struct.pci_controller* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  store i64 %49, i64* %10, align 8
  %50 = load %struct.pci_controller*, %struct.pci_controller** %13, align 8
  %51 = getelementptr inbounds %struct.pci_controller, %struct.pci_controller* %50, i32 0, i32 3
  %52 = load i64, i64* %51, align 8
  store i64 %52, i64* %11, align 8
  br label %53

53:                                               ; preds = %46, %45
  %54 = load i64, i64* %10, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %53
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8** %14, align 8
  store i32 17, i32* %7, align 4
  %57 = load i64, i64* %11, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %56
  store i32 16, i32* %8, align 4
  store i32 2, i32* %9, align 4
  br label %60

60:                                               ; preds = %59, %56
  br label %61

61:                                               ; preds = %60, %53
  %62 = load i32, i32* %9, align 4
  %63 = sext i32 %62 to i64
  %64 = mul i64 4, %63
  %65 = load i32, i32* %7, align 4
  %66 = sext i32 %65 to i64
  %67 = add i64 %64, %66
  %68 = load i32, i32* %8, align 4
  %69 = sext i32 %68 to i64
  %70 = add i64 %67, %69
  %71 = trunc i64 %70 to i32
  %72 = load i32, i32* @GFP_ATOMIC, align 4
  %73 = call %struct.bin_attribute* @kzalloc(i32 %71, i32 %72)
  store %struct.bin_attribute* %73, %struct.bin_attribute** %12, align 8
  %74 = load %struct.bin_attribute*, %struct.bin_attribute** %12, align 8
  %75 = icmp ne %struct.bin_attribute* %74, null
  br i1 %75, label %79, label %76

76:                                               ; preds = %61
  %77 = load i32, i32* @ENOMEM, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %3, align 4
  br label %125

79:                                               ; preds = %61
  %80 = load %struct.bin_attribute*, %struct.bin_attribute** %12, align 8
  %81 = load i32, i32* %9, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.bin_attribute, %struct.bin_attribute* %80, i64 %82
  %84 = bitcast %struct.bin_attribute* %83 to i8*
  store i8* %84, i8** %15, align 8
  %85 = load %struct.bin_attribute*, %struct.bin_attribute** %12, align 8
  %86 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %87 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %86, i32 0, i32 1
  %88 = load %struct.bin_attribute**, %struct.bin_attribute*** %87, align 8
  %89 = load i32, i32* %5, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.bin_attribute*, %struct.bin_attribute** %88, i64 %90
  store %struct.bin_attribute* %85, %struct.bin_attribute** %91, align 8
  %92 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %93 = load i32, i32* %5, align 4
  %94 = load i8*, i8** %15, align 8
  %95 = load i8*, i8** %14, align 8
  %96 = load %struct.bin_attribute*, %struct.bin_attribute** %12, align 8
  %97 = load i64, i64* %10, align 8
  %98 = call i32 @pci_create_one_attr(%struct.pci_dev* %92, i32 %93, i8* %94, i8* %95, %struct.bin_attribute* %96, i64 %97)
  store i32 %98, i32* %6, align 4
  %99 = load i32, i32* %6, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %104, label %101

101:                                              ; preds = %79
  %102 = load i32, i32* %9, align 4
  %103 = icmp eq i32 %102, 1
  br i1 %103, label %104, label %106

104:                                              ; preds = %101, %79
  %105 = load i32, i32* %6, align 4
  store i32 %105, i32* %3, align 4
  br label %125

106:                                              ; preds = %101
  %107 = load i32, i32* %7, align 4
  %108 = load i8*, i8** %15, align 8
  %109 = sext i32 %107 to i64
  %110 = getelementptr inbounds i8, i8* %108, i64 %109
  store i8* %110, i8** %15, align 8
  %111 = load %struct.bin_attribute*, %struct.bin_attribute** %12, align 8
  %112 = getelementptr inbounds %struct.bin_attribute, %struct.bin_attribute* %111, i32 1
  store %struct.bin_attribute* %112, %struct.bin_attribute** %12, align 8
  %113 = load %struct.bin_attribute*, %struct.bin_attribute** %12, align 8
  %114 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %115 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %114, i32 0, i32 0
  %116 = load %struct.bin_attribute**, %struct.bin_attribute*** %115, align 8
  %117 = load i32, i32* %5, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.bin_attribute*, %struct.bin_attribute** %116, i64 %118
  store %struct.bin_attribute* %113, %struct.bin_attribute** %119, align 8
  %120 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %121 = load i32, i32* %5, align 4
  %122 = load i8*, i8** %15, align 8
  %123 = load %struct.bin_attribute*, %struct.bin_attribute** %12, align 8
  %124 = call i32 @pci_create_one_attr(%struct.pci_dev* %120, i32 %121, i8* %122, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), %struct.bin_attribute* %123, i64 0)
  store i32 %124, i32* %3, align 4
  br label %125

125:                                              ; preds = %106, %104, %76
  %126 = load i32, i32* %3, align 4
  ret i32 %126
}

declare dso_local i32 @sparse_mem_mmap_fits(%struct.pci_dev*, i32) #1

declare dso_local %struct.bin_attribute* @kzalloc(i32, i32) #1

declare dso_local i32 @pci_create_one_attr(%struct.pci_dev*, i32, i8*, i8*, %struct.bin_attribute*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
