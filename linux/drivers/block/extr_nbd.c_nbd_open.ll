; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_nbd.c_nbd_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_nbd.c_nbd_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.block_device = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.nbd_device* }
%struct.nbd_device = type { %struct.nbd_config*, i32, i32, i32 }
%struct.nbd_config = type { i32 }

@nbd_index_mutex = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.block_device*, i32)* @nbd_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nbd_open(%struct.block_device* %0, i32 %1) #0 {
  %3 = alloca %struct.block_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.nbd_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.nbd_config*, align 8
  store %struct.block_device* %0, %struct.block_device** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %6, align 4
  %8 = call i32 @mutex_lock(i32* @nbd_index_mutex)
  %9 = load %struct.block_device*, %struct.block_device** %3, align 8
  %10 = getelementptr inbounds %struct.block_device, %struct.block_device* %9, i32 0, i32 1
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load %struct.nbd_device*, %struct.nbd_device** %12, align 8
  store %struct.nbd_device* %13, %struct.nbd_device** %5, align 8
  %14 = load %struct.nbd_device*, %struct.nbd_device** %5, align 8
  %15 = icmp ne %struct.nbd_device* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* @ENXIO, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %6, align 4
  br label %79

19:                                               ; preds = %2
  %20 = load %struct.nbd_device*, %struct.nbd_device** %5, align 8
  %21 = getelementptr inbounds %struct.nbd_device, %struct.nbd_device* %20, i32 0, i32 2
  %22 = call i64 @refcount_inc_not_zero(i32* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %19
  %25 = load i32, i32* @ENXIO, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %6, align 4
  br label %79

27:                                               ; preds = %19
  %28 = load %struct.nbd_device*, %struct.nbd_device** %5, align 8
  %29 = getelementptr inbounds %struct.nbd_device, %struct.nbd_device* %28, i32 0, i32 3
  %30 = call i64 @refcount_inc_not_zero(i32* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %68, label %32

32:                                               ; preds = %27
  %33 = load %struct.nbd_device*, %struct.nbd_device** %5, align 8
  %34 = getelementptr inbounds %struct.nbd_device, %struct.nbd_device* %33, i32 0, i32 1
  %35 = call i32 @mutex_lock(i32* %34)
  %36 = load %struct.nbd_device*, %struct.nbd_device** %5, align 8
  %37 = getelementptr inbounds %struct.nbd_device, %struct.nbd_device* %36, i32 0, i32 3
  %38 = call i64 @refcount_inc_not_zero(i32* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %32
  %41 = load %struct.nbd_device*, %struct.nbd_device** %5, align 8
  %42 = getelementptr inbounds %struct.nbd_device, %struct.nbd_device* %41, i32 0, i32 1
  %43 = call i32 @mutex_unlock(i32* %42)
  br label %79

44:                                               ; preds = %32
  %45 = call %struct.nbd_config* (...) @nbd_alloc_config()
  %46 = load %struct.nbd_device*, %struct.nbd_device** %5, align 8
  %47 = getelementptr inbounds %struct.nbd_device, %struct.nbd_device* %46, i32 0, i32 0
  store %struct.nbd_config* %45, %struct.nbd_config** %47, align 8
  store %struct.nbd_config* %45, %struct.nbd_config** %7, align 8
  %48 = load %struct.nbd_config*, %struct.nbd_config** %7, align 8
  %49 = icmp ne %struct.nbd_config* %48, null
  br i1 %49, label %56, label %50

50:                                               ; preds = %44
  %51 = load i32, i32* @ENOMEM, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %6, align 4
  %53 = load %struct.nbd_device*, %struct.nbd_device** %5, align 8
  %54 = getelementptr inbounds %struct.nbd_device, %struct.nbd_device* %53, i32 0, i32 1
  %55 = call i32 @mutex_unlock(i32* %54)
  br label %79

56:                                               ; preds = %44
  %57 = load %struct.nbd_device*, %struct.nbd_device** %5, align 8
  %58 = getelementptr inbounds %struct.nbd_device, %struct.nbd_device* %57, i32 0, i32 3
  %59 = call i32 @refcount_set(i32* %58, i32 1)
  %60 = load %struct.nbd_device*, %struct.nbd_device** %5, align 8
  %61 = getelementptr inbounds %struct.nbd_device, %struct.nbd_device* %60, i32 0, i32 2
  %62 = call i32 @refcount_inc(i32* %61)
  %63 = load %struct.nbd_device*, %struct.nbd_device** %5, align 8
  %64 = getelementptr inbounds %struct.nbd_device, %struct.nbd_device* %63, i32 0, i32 1
  %65 = call i32 @mutex_unlock(i32* %64)
  %66 = load %struct.block_device*, %struct.block_device** %3, align 8
  %67 = getelementptr inbounds %struct.block_device, %struct.block_device* %66, i32 0, i32 0
  store i32 1, i32* %67, align 8
  br label %78

68:                                               ; preds = %27
  %69 = load %struct.nbd_device*, %struct.nbd_device** %5, align 8
  %70 = getelementptr inbounds %struct.nbd_device, %struct.nbd_device* %69, i32 0, i32 0
  %71 = load %struct.nbd_config*, %struct.nbd_config** %70, align 8
  %72 = call i64 @nbd_disconnected(%struct.nbd_config* %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %68
  %75 = load %struct.block_device*, %struct.block_device** %3, align 8
  %76 = getelementptr inbounds %struct.block_device, %struct.block_device* %75, i32 0, i32 0
  store i32 1, i32* %76, align 8
  br label %77

77:                                               ; preds = %74, %68
  br label %78

78:                                               ; preds = %77, %56
  br label %79

79:                                               ; preds = %78, %50, %40, %24, %16
  %80 = call i32 @mutex_unlock(i32* @nbd_index_mutex)
  %81 = load i32, i32* %6, align 4
  ret i32 %81
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @refcount_inc_not_zero(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local %struct.nbd_config* @nbd_alloc_config(...) #1

declare dso_local i32 @refcount_set(i32*, i32) #1

declare dso_local i32 @refcount_inc(i32*) #1

declare dso_local i64 @nbd_disconnected(%struct.nbd_config*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
