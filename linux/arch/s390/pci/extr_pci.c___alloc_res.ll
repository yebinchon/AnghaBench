; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/pci/extr_pci.c___alloc_res.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/pci/extr_pci.c___alloc_res.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.resource = type { i64, i64, i64, i32 }
%struct.zpci_dev = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@iomem_resource = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.resource* (%struct.zpci_dev*, i64, i64, i64)* @__alloc_res to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.resource* @__alloc_res(%struct.zpci_dev* %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.resource*, align 8
  %6 = alloca %struct.zpci_dev*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.resource*, align 8
  store %struct.zpci_dev* %0, %struct.zpci_dev** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.resource* @kzalloc(i32 32, i32 %11)
  store %struct.resource* %12, %struct.resource** %10, align 8
  %13 = load %struct.resource*, %struct.resource** %10, align 8
  %14 = icmp ne %struct.resource* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %4
  store %struct.resource* null, %struct.resource** %5, align 8
  br label %44

16:                                               ; preds = %4
  %17 = load i64, i64* %7, align 8
  %18 = load %struct.resource*, %struct.resource** %10, align 8
  %19 = getelementptr inbounds %struct.resource, %struct.resource* %18, i32 0, i32 0
  store i64 %17, i64* %19, align 8
  %20 = load %struct.resource*, %struct.resource** %10, align 8
  %21 = getelementptr inbounds %struct.resource, %struct.resource* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* %8, align 8
  %24 = add i64 %22, %23
  %25 = sub i64 %24, 1
  %26 = load %struct.resource*, %struct.resource** %10, align 8
  %27 = getelementptr inbounds %struct.resource, %struct.resource* %26, i32 0, i32 1
  store i64 %25, i64* %27, align 8
  %28 = load i64, i64* %9, align 8
  %29 = load %struct.resource*, %struct.resource** %10, align 8
  %30 = getelementptr inbounds %struct.resource, %struct.resource* %29, i32 0, i32 2
  store i64 %28, i64* %30, align 8
  %31 = load %struct.zpci_dev*, %struct.zpci_dev** %6, align 8
  %32 = getelementptr inbounds %struct.zpci_dev, %struct.zpci_dev* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.resource*, %struct.resource** %10, align 8
  %35 = getelementptr inbounds %struct.resource, %struct.resource* %34, i32 0, i32 3
  store i32 %33, i32* %35, align 8
  %36 = load %struct.resource*, %struct.resource** %10, align 8
  %37 = call i64 @request_resource(i32* @iomem_resource, %struct.resource* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %16
  %40 = load %struct.resource*, %struct.resource** %10, align 8
  %41 = call i32 @kfree(%struct.resource* %40)
  store %struct.resource* null, %struct.resource** %5, align 8
  br label %44

42:                                               ; preds = %16
  %43 = load %struct.resource*, %struct.resource** %10, align 8
  store %struct.resource* %43, %struct.resource** %5, align 8
  br label %44

44:                                               ; preds = %42, %39, %15
  %45 = load %struct.resource*, %struct.resource** %5, align 8
  ret %struct.resource* %45
}

declare dso_local %struct.resource* @kzalloc(i32, i32) #1

declare dso_local i64 @request_resource(i32*, %struct.resource*) #1

declare dso_local i32 @kfree(%struct.resource*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
