; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/powernv/extr_opal-flash.c_update_store.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/powernv/extr_opal-flash.c_update_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.update_flash_t = type { i32 }
%struct.TYPE_2__ = type { i32 }
%struct.kobject = type { i32 }
%struct.kobj_attribute = type { i32 }

@update_flash_data = common dso_local global %struct.update_flash_t zeroinitializer, align 4
@image_data_mutex = common dso_local global i32 0, align 4
@FLASH_IMG_READY = common dso_local global i32 0, align 4
@FLASH_UPDATE_CANCEL = common dso_local global i32 0, align 4
@FLASH_NO_OP = common dso_local global i32 0, align 4
@image_data = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@IMAGE_READY = common dso_local global i32 0, align 4
@FLASH_UPDATE_INIT = common dso_local global i32 0, align 4
@FLASH_INVALID_IMG = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kobject*, %struct.kobj_attribute*, i8*, i64)* @update_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @update_store(%struct.kobject* %0, %struct.kobj_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca %struct.kobject*, align 8
  %6 = alloca %struct.kobj_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.update_flash_t*, align 8
  %10 = alloca i32, align 4
  store %struct.kobject* %0, %struct.kobject** %5, align 8
  store %struct.kobj_attribute* %1, %struct.kobj_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  store %struct.update_flash_t* @update_flash_data, %struct.update_flash_t** %9, align 8
  %11 = load i64, i64* %8, align 8
  %12 = trunc i64 %11 to i32
  store i32 %12, i32* %10, align 4
  %13 = call i32 @mutex_lock(i32* @image_data_mutex)
  %14 = load i8*, i8** %7, align 8
  %15 = getelementptr inbounds i8, i8* %14, i64 0
  %16 = load i8, i8* %15, align 1
  %17 = sext i8 %16 to i32
  switch i32 %17, label %37 [
    i32 48, label %18
    i32 49, label %27
  ]

18:                                               ; preds = %4
  %19 = load i32, i32* getelementptr inbounds (%struct.update_flash_t, %struct.update_flash_t* @update_flash_data, i32 0, i32 0), align 4
  %20 = load i32, i32* @FLASH_IMG_READY, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %18
  %23 = load i32, i32* @FLASH_UPDATE_CANCEL, align 4
  %24 = call i32 @opal_flash_update(i32 %23)
  br label %25

25:                                               ; preds = %22, %18
  %26 = load i32, i32* @FLASH_NO_OP, align 4
  store i32 %26, i32* getelementptr inbounds (%struct.update_flash_t, %struct.update_flash_t* @update_flash_data, i32 0, i32 0), align 4
  br label %40

27:                                               ; preds = %4
  %28 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @image_data, i32 0, i32 0), align 4
  %29 = load i32, i32* @IMAGE_READY, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %27
  %32 = load i32, i32* @FLASH_UPDATE_INIT, align 4
  %33 = call i32 @opal_flash_update(i32 %32)
  store i32 %33, i32* getelementptr inbounds (%struct.update_flash_t, %struct.update_flash_t* @update_flash_data, i32 0, i32 0), align 4
  br label %36

34:                                               ; preds = %27
  %35 = load i32, i32* @FLASH_INVALID_IMG, align 4
  store i32 %35, i32* getelementptr inbounds (%struct.update_flash_t, %struct.update_flash_t* @update_flash_data, i32 0, i32 0), align 4
  br label %36

36:                                               ; preds = %34, %31
  br label %40

37:                                               ; preds = %4
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %10, align 4
  br label %40

40:                                               ; preds = %37, %36, %25
  %41 = call i32 @mutex_unlock(i32* @image_data_mutex)
  %42 = load i32, i32* %10, align 4
  ret i32 %42
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @opal_flash_update(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
