; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/xillybus/extr_xillybus_pcie.c_xilly_map_single_pci.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/xillybus/extr_xillybus_pcie.c_xilly_map_single_pci.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xilly_endpoint = type { i32, i32 }
%struct.xilly_mapping = type { i64, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@xilly_pci_unmap = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xilly_endpoint*, i8*, i64, i32, i32*)* @xilly_map_single_pci to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xilly_map_single_pci(%struct.xilly_endpoint* %0, i8* %1, i64 %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.xilly_endpoint*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.xilly_mapping*, align 8
  store %struct.xilly_endpoint* %0, %struct.xilly_endpoint** %7, align 8
  store i8* %1, i8** %8, align 8
  store i64 %2, i64* %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call %struct.xilly_mapping* @kzalloc(i32 24, i32 %15)
  store %struct.xilly_mapping* %16, %struct.xilly_mapping** %14, align 8
  %17 = load %struct.xilly_mapping*, %struct.xilly_mapping** %14, align 8
  %18 = icmp ne %struct.xilly_mapping* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %5
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %6, align 4
  br label %66

22:                                               ; preds = %5
  %23 = load i32, i32* %10, align 4
  %24 = call i32 @xilly_pci_direction(i32 %23)
  store i32 %24, i32* %12, align 4
  %25 = load %struct.xilly_endpoint*, %struct.xilly_endpoint** %7, align 8
  %26 = getelementptr inbounds %struct.xilly_endpoint, %struct.xilly_endpoint* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load i8*, i8** %8, align 8
  %29 = load i64, i64* %9, align 8
  %30 = load i32, i32* %12, align 4
  %31 = call i32 @pci_map_single(i32 %27, i8* %28, i64 %29, i32 %30)
  store i32 %31, i32* %13, align 4
  %32 = load %struct.xilly_endpoint*, %struct.xilly_endpoint** %7, align 8
  %33 = getelementptr inbounds %struct.xilly_endpoint, %struct.xilly_endpoint* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %13, align 4
  %36 = call i64 @pci_dma_mapping_error(i32 %34, i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %22
  %39 = load %struct.xilly_mapping*, %struct.xilly_mapping** %14, align 8
  %40 = call i32 @kfree(%struct.xilly_mapping* %39)
  %41 = load i32, i32* @ENODEV, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %6, align 4
  br label %66

43:                                               ; preds = %22
  %44 = load %struct.xilly_endpoint*, %struct.xilly_endpoint** %7, align 8
  %45 = getelementptr inbounds %struct.xilly_endpoint, %struct.xilly_endpoint* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.xilly_mapping*, %struct.xilly_mapping** %14, align 8
  %48 = getelementptr inbounds %struct.xilly_mapping, %struct.xilly_mapping* %47, i32 0, i32 3
  store i32 %46, i32* %48, align 8
  %49 = load i32, i32* %13, align 4
  %50 = load %struct.xilly_mapping*, %struct.xilly_mapping** %14, align 8
  %51 = getelementptr inbounds %struct.xilly_mapping, %struct.xilly_mapping* %50, i32 0, i32 2
  store i32 %49, i32* %51, align 4
  %52 = load i64, i64* %9, align 8
  %53 = load %struct.xilly_mapping*, %struct.xilly_mapping** %14, align 8
  %54 = getelementptr inbounds %struct.xilly_mapping, %struct.xilly_mapping* %53, i32 0, i32 0
  store i64 %52, i64* %54, align 8
  %55 = load i32, i32* %12, align 4
  %56 = load %struct.xilly_mapping*, %struct.xilly_mapping** %14, align 8
  %57 = getelementptr inbounds %struct.xilly_mapping, %struct.xilly_mapping* %56, i32 0, i32 1
  store i32 %55, i32* %57, align 8
  %58 = load i32, i32* %13, align 4
  %59 = load i32*, i32** %11, align 8
  store i32 %58, i32* %59, align 4
  %60 = load %struct.xilly_endpoint*, %struct.xilly_endpoint** %7, align 8
  %61 = getelementptr inbounds %struct.xilly_endpoint, %struct.xilly_endpoint* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @xilly_pci_unmap, align 4
  %64 = load %struct.xilly_mapping*, %struct.xilly_mapping** %14, align 8
  %65 = call i32 @devm_add_action_or_reset(i32 %62, i32 %63, %struct.xilly_mapping* %64)
  store i32 %65, i32* %6, align 4
  br label %66

66:                                               ; preds = %43, %38, %19
  %67 = load i32, i32* %6, align 4
  ret i32 %67
}

declare dso_local %struct.xilly_mapping* @kzalloc(i32, i32) #1

declare dso_local i32 @xilly_pci_direction(i32) #1

declare dso_local i32 @pci_map_single(i32, i8*, i64, i32) #1

declare dso_local i64 @pci_dma_mapping_error(i32, i32) #1

declare dso_local i32 @kfree(%struct.xilly_mapping*) #1

declare dso_local i32 @devm_add_action_or_reset(i32, i32, %struct.xilly_mapping*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
