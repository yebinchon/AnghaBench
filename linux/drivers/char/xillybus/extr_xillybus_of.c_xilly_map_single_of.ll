; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/xillybus/extr_xillybus_of.c_xilly_map_single_of.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/xillybus/extr_xillybus_of.c_xilly_map_single_of.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xilly_endpoint = type { i32 }
%struct.xilly_mapping = type { i64, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@xilly_of_unmap = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xilly_endpoint*, i8*, i64, i32, i32*)* @xilly_map_single_of to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xilly_map_single_of(%struct.xilly_endpoint* %0, i8* %1, i64 %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.xilly_endpoint*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.xilly_mapping*, align 8
  store %struct.xilly_endpoint* %0, %struct.xilly_endpoint** %7, align 8
  store i8* %1, i8** %8, align 8
  store i64 %2, i64* %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.xilly_mapping* @kzalloc(i32 24, i32 %14)
  store %struct.xilly_mapping* %15, %struct.xilly_mapping** %13, align 8
  %16 = load %struct.xilly_mapping*, %struct.xilly_mapping** %13, align 8
  %17 = icmp ne %struct.xilly_mapping* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %5
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %6, align 4
  br label %63

21:                                               ; preds = %5
  %22 = load %struct.xilly_endpoint*, %struct.xilly_endpoint** %7, align 8
  %23 = getelementptr inbounds %struct.xilly_endpoint, %struct.xilly_endpoint* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i8*, i8** %8, align 8
  %26 = load i64, i64* %9, align 8
  %27 = load i32, i32* %10, align 4
  %28 = call i32 @dma_map_single(i32 %24, i8* %25, i64 %26, i32 %27)
  store i32 %28, i32* %12, align 4
  %29 = load %struct.xilly_endpoint*, %struct.xilly_endpoint** %7, align 8
  %30 = getelementptr inbounds %struct.xilly_endpoint, %struct.xilly_endpoint* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %12, align 4
  %33 = call i64 @dma_mapping_error(i32 %31, i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %21
  %36 = load %struct.xilly_mapping*, %struct.xilly_mapping** %13, align 8
  %37 = call i32 @kfree(%struct.xilly_mapping* %36)
  %38 = load i32, i32* @ENODEV, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %6, align 4
  br label %63

40:                                               ; preds = %21
  %41 = load %struct.xilly_endpoint*, %struct.xilly_endpoint** %7, align 8
  %42 = getelementptr inbounds %struct.xilly_endpoint, %struct.xilly_endpoint* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.xilly_mapping*, %struct.xilly_mapping** %13, align 8
  %45 = getelementptr inbounds %struct.xilly_mapping, %struct.xilly_mapping* %44, i32 0, i32 3
  store i32 %43, i32* %45, align 8
  %46 = load i32, i32* %12, align 4
  %47 = load %struct.xilly_mapping*, %struct.xilly_mapping** %13, align 8
  %48 = getelementptr inbounds %struct.xilly_mapping, %struct.xilly_mapping* %47, i32 0, i32 2
  store i32 %46, i32* %48, align 4
  %49 = load i64, i64* %9, align 8
  %50 = load %struct.xilly_mapping*, %struct.xilly_mapping** %13, align 8
  %51 = getelementptr inbounds %struct.xilly_mapping, %struct.xilly_mapping* %50, i32 0, i32 0
  store i64 %49, i64* %51, align 8
  %52 = load i32, i32* %10, align 4
  %53 = load %struct.xilly_mapping*, %struct.xilly_mapping** %13, align 8
  %54 = getelementptr inbounds %struct.xilly_mapping, %struct.xilly_mapping* %53, i32 0, i32 1
  store i32 %52, i32* %54, align 8
  %55 = load i32, i32* %12, align 4
  %56 = load i32*, i32** %11, align 8
  store i32 %55, i32* %56, align 4
  %57 = load %struct.xilly_endpoint*, %struct.xilly_endpoint** %7, align 8
  %58 = getelementptr inbounds %struct.xilly_endpoint, %struct.xilly_endpoint* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @xilly_of_unmap, align 4
  %61 = load %struct.xilly_mapping*, %struct.xilly_mapping** %13, align 8
  %62 = call i32 @devm_add_action_or_reset(i32 %59, i32 %60, %struct.xilly_mapping* %61)
  store i32 %62, i32* %6, align 4
  br label %63

63:                                               ; preds = %40, %35, %18
  %64 = load i32, i32* %6, align 4
  ret i32 %64
}

declare dso_local %struct.xilly_mapping* @kzalloc(i32, i32) #1

declare dso_local i32 @dma_map_single(i32, i8*, i64, i32) #1

declare dso_local i64 @dma_mapping_error(i32, i32) #1

declare dso_local i32 @kfree(%struct.xilly_mapping*) #1

declare dso_local i32 @devm_add_action_or_reset(i32, i32, %struct.xilly_mapping*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
