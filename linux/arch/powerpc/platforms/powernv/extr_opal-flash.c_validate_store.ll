; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/powernv/extr_opal-flash.c_validate_store.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/powernv/extr_opal-flash.c_validate_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.validate_flash_t = type { i64, i32, i32, i32 }
%struct.TYPE_2__ = type { i64, i64, i32 }
%struct.kobject = type { i32 }
%struct.kobj_attribute = type { i32 }

@validate_flash_data = common dso_local global %struct.validate_flash_t zeroinitializer, align 8
@EINVAL = common dso_local global i64 0, align 8
@image_data_mutex = common dso_local global i32 0, align 4
@image_data = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@IMAGE_READY = common dso_local global i64 0, align 8
@VALIDATE_BUF_SIZE = common dso_local global i64 0, align 8
@VALIDATE_INVALID_IMG = common dso_local global i32 0, align 4
@VALIDATE_IMG_INCOMPLETE = common dso_local global i32 0, align 4
@VALIDATE_IMG_READY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.kobject*, %struct.kobj_attribute*, i8*, i64)* @validate_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @validate_store(%struct.kobject* %0, %struct.kobj_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.kobject*, align 8
  %7 = alloca %struct.kobj_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.validate_flash_t*, align 8
  store %struct.kobject* %0, %struct.kobject** %6, align 8
  store %struct.kobj_attribute* %1, %struct.kobj_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  store %struct.validate_flash_t* @validate_flash_data, %struct.validate_flash_t** %10, align 8
  %11 = load i8*, i8** %8, align 8
  %12 = getelementptr inbounds i8, i8* %11, i64 0
  %13 = load i8, i8* %12, align 1
  %14 = sext i8 %13 to i32
  %15 = icmp ne i32 %14, 49
  br i1 %15, label %16, label %19

16:                                               ; preds = %4
  %17 = load i64, i64* @EINVAL, align 8
  %18 = sub i64 0, %17
  store i64 %18, i64* %5, align 8
  br label %52

19:                                               ; preds = %4
  %20 = call i32 @mutex_lock(i32* @image_data_mutex)
  %21 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @image_data, i32 0, i32 0), align 8
  %22 = load i64, i64* @IMAGE_READY, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %28, label %24

24:                                               ; preds = %19
  %25 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @image_data, i32 0, i32 1), align 8
  %26 = load i64, i64* @VALIDATE_BUF_SIZE, align 8
  %27 = icmp slt i64 %25, %26
  br i1 %27, label %28, label %35

28:                                               ; preds = %24, %19
  %29 = load i32, i32* @VALIDATE_INVALID_IMG, align 4
  %30 = load %struct.validate_flash_t*, %struct.validate_flash_t** %10, align 8
  %31 = getelementptr inbounds %struct.validate_flash_t, %struct.validate_flash_t* %30, i32 0, i32 3
  store i32 %29, i32* %31, align 8
  %32 = load i32, i32* @VALIDATE_IMG_INCOMPLETE, align 4
  %33 = load %struct.validate_flash_t*, %struct.validate_flash_t** %10, align 8
  %34 = getelementptr inbounds %struct.validate_flash_t, %struct.validate_flash_t* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 8
  br label %49

35:                                               ; preds = %24
  %36 = load %struct.validate_flash_t*, %struct.validate_flash_t** %10, align 8
  %37 = getelementptr inbounds %struct.validate_flash_t, %struct.validate_flash_t* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @image_data, i32 0, i32 2), align 8
  %40 = load i64, i64* @VALIDATE_BUF_SIZE, align 8
  %41 = call i32 @memcpy(i32 %38, i32 %39, i64 %40)
  %42 = load i32, i32* @VALIDATE_IMG_READY, align 4
  %43 = load %struct.validate_flash_t*, %struct.validate_flash_t** %10, align 8
  %44 = getelementptr inbounds %struct.validate_flash_t, %struct.validate_flash_t* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 8
  %45 = load i64, i64* @VALIDATE_BUF_SIZE, align 8
  %46 = load %struct.validate_flash_t*, %struct.validate_flash_t** %10, align 8
  %47 = getelementptr inbounds %struct.validate_flash_t, %struct.validate_flash_t* %46, i32 0, i32 0
  store i64 %45, i64* %47, align 8
  %48 = call i32 (...) @opal_flash_validate()
  br label %49

49:                                               ; preds = %35, %28
  %50 = call i32 @mutex_unlock(i32* @image_data_mutex)
  %51 = load i64, i64* %9, align 8
  store i64 %51, i64* %5, align 8
  br label %52

52:                                               ; preds = %49, %16
  %53 = load i64, i64* %5, align 8
  ret i64 %53
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @memcpy(i32, i32, i64) #1

declare dso_local i32 @opal_flash_validate(...) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
