; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/powernv/extr_opal-flash.c_image_data_write.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/powernv/extr_opal-flash.c_image_data_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i64, i64 }
%struct.TYPE_3__ = type { i64 }
%struct.file = type { i32 }
%struct.kobject = type { i32 }
%struct.bin_attribute = type { i32 }

@image_data_mutex = common dso_local global i32 0, align 4
@image_data = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@update_flash_data = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@FLASH_IMG_READY = common dso_local global i64 0, align 8
@FLASH_UPDATE_CANCEL = common dso_local global i32 0, align 4
@IMAGE_LOADING = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"FLASH: Candidate image loaded....\0A\00", align 1
@IMAGE_READY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)* @image_data_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @image_data_write(%struct.file* %0, %struct.kobject* %1, %struct.bin_attribute* %2, i8* %3, i64 %4, i64 %5) #0 {
  %7 = alloca %struct.file*, align 8
  %8 = alloca %struct.kobject*, align 8
  %9 = alloca %struct.bin_attribute*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %7, align 8
  store %struct.kobject* %1, %struct.kobject** %8, align 8
  store %struct.bin_attribute* %2, %struct.bin_attribute** %9, align 8
  store i8* %3, i8** %10, align 8
  store i64 %4, i64* %11, align 8
  store i64 %5, i64* %12, align 8
  %14 = call i32 @mutex_lock(i32* @image_data_mutex)
  %15 = load i64, i64* %11, align 8
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %37

17:                                               ; preds = %6
  %18 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @image_data, i32 0, i32 0), align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %17
  %21 = call i32 (...) @free_image_buf()
  br label %22

22:                                               ; preds = %20, %17
  %23 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @update_flash_data, i32 0, i32 0), align 8
  %24 = load i64, i64* @FLASH_IMG_READY, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %22
  %27 = load i32, i32* @FLASH_UPDATE_CANCEL, align 4
  %28 = call i32 @opal_flash_update(i32 %27)
  br label %29

29:                                               ; preds = %26, %22
  %30 = load i8*, i8** %10, align 8
  %31 = load i64, i64* %12, align 8
  %32 = call i32 @alloc_image_buf(i8* %30, i64 %31)
  store i32 %32, i32* %13, align 4
  %33 = load i32, i32* %13, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %29
  br label %71

36:                                               ; preds = %29
  br label %37

37:                                               ; preds = %36, %6
  %38 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @image_data, i32 0, i32 1), align 8
  %39 = load i64, i64* @IMAGE_LOADING, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %37
  %42 = load i32, i32* @ENOMEM, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %13, align 4
  br label %71

44:                                               ; preds = %37
  %45 = load i64, i64* %11, align 8
  %46 = load i64, i64* %12, align 8
  %47 = add i64 %45, %46
  %48 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @image_data, i32 0, i32 2), align 8
  %49 = icmp ugt i64 %47, %48
  br i1 %49, label %50, label %53

50:                                               ; preds = %44
  %51 = load i32, i32* @EINVAL, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %13, align 4
  br label %71

53:                                               ; preds = %44
  %54 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @image_data, i32 0, i32 0), align 8
  %55 = load i64, i64* %11, align 8
  %56 = add nsw i64 %54, %55
  %57 = load i8*, i8** %10, align 8
  %58 = load i64, i64* %12, align 8
  %59 = call i32 @memcpy(i64 %56, i8* %57, i64 %58)
  %60 = load i64, i64* %12, align 8
  %61 = trunc i64 %60 to i32
  store i32 %61, i32* %13, align 4
  %62 = load i64, i64* %11, align 8
  %63 = load i64, i64* %12, align 8
  %64 = add i64 %62, %63
  %65 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @image_data, i32 0, i32 2), align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %70

67:                                               ; preds = %53
  %68 = call i32 @pr_debug(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %69 = load i64, i64* @IMAGE_READY, align 8
  store i64 %69, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @image_data, i32 0, i32 1), align 8
  br label %70

70:                                               ; preds = %67, %53
  br label %71

71:                                               ; preds = %70, %50, %41, %35
  %72 = call i32 @mutex_unlock(i32* @image_data_mutex)
  %73 = load i32, i32* %13, align 4
  ret i32 %73
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @free_image_buf(...) #1

declare dso_local i32 @opal_flash_update(i32) #1

declare dso_local i32 @alloc_image_buf(i8*, i64) #1

declare dso_local i32 @memcpy(i64, i8*, i64) #1

declare dso_local i32 @pr_debug(i8*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
