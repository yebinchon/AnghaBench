; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/zram/extr_zram_drv.c_comp_algorithm_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/zram/extr_zram_drv.c_comp_algorithm_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.zram = type { i32, i32 }

@EINVAL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [47 x i8] c"Can't change algorithm for initialized device\0A\00", align 1
@EBUSY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @comp_algorithm_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @comp_algorithm_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.zram*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %15 = load %struct.device*, %struct.device** %6, align 8
  %16 = call %struct.zram* @dev_to_zram(%struct.device* %15)
  store %struct.zram* %16, %struct.zram** %10, align 8
  %17 = load %struct.zram*, %struct.zram** %10, align 8
  %18 = getelementptr inbounds %struct.zram, %struct.zram* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @ARRAY_SIZE(i32 %19)
  %21 = zext i32 %20 to i64
  %22 = call i8* @llvm.stacksave()
  store i8* %22, i8** %11, align 8
  %23 = alloca i8, i64 %21, align 16
  store i64 %21, i64* %12, align 8
  %24 = load i8*, i8** %8, align 8
  %25 = trunc i64 %21 to i32
  %26 = call i32 @strlcpy(i8* %23, i8* %24, i32 %25)
  %27 = call i64 @strlen(i8* %23)
  store i64 %27, i64* %13, align 8
  %28 = load i64, i64* %13, align 8
  %29 = icmp ugt i64 %28, 0
  br i1 %29, label %30, label %41

30:                                               ; preds = %4
  %31 = load i64, i64* %13, align 8
  %32 = sub i64 %31, 1
  %33 = getelementptr inbounds i8, i8* %23, i64 %32
  %34 = load i8, i8* %33, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp eq i32 %35, 10
  br i1 %36, label %37, label %41

37:                                               ; preds = %30
  %38 = load i64, i64* %13, align 8
  %39 = sub i64 %38, 1
  %40 = getelementptr inbounds i8, i8* %23, i64 %39
  store i8 0, i8* %40, align 1
  br label %41

41:                                               ; preds = %37, %30, %4
  %42 = call i32 @zcomp_available_algorithm(i8* %23)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %41
  %45 = load i64, i64* @EINVAL, align 8
  %46 = sub i64 0, %45
  store i64 %46, i64* %5, align 8
  store i32 1, i32* %14, align 4
  br label %70

47:                                               ; preds = %41
  %48 = load %struct.zram*, %struct.zram** %10, align 8
  %49 = getelementptr inbounds %struct.zram, %struct.zram* %48, i32 0, i32 0
  %50 = call i32 @down_write(i32* %49)
  %51 = load %struct.zram*, %struct.zram** %10, align 8
  %52 = call i64 @init_done(%struct.zram* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %61

54:                                               ; preds = %47
  %55 = load %struct.zram*, %struct.zram** %10, align 8
  %56 = getelementptr inbounds %struct.zram, %struct.zram* %55, i32 0, i32 0
  %57 = call i32 @up_write(i32* %56)
  %58 = call i32 @pr_info(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  %59 = load i64, i64* @EBUSY, align 8
  %60 = sub i64 0, %59
  store i64 %60, i64* %5, align 8
  store i32 1, i32* %14, align 4
  br label %70

61:                                               ; preds = %47
  %62 = load %struct.zram*, %struct.zram** %10, align 8
  %63 = getelementptr inbounds %struct.zram, %struct.zram* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @strcpy(i32 %64, i8* %23)
  %66 = load %struct.zram*, %struct.zram** %10, align 8
  %67 = getelementptr inbounds %struct.zram, %struct.zram* %66, i32 0, i32 0
  %68 = call i32 @up_write(i32* %67)
  %69 = load i64, i64* %9, align 8
  store i64 %69, i64* %5, align 8
  store i32 1, i32* %14, align 4
  br label %70

70:                                               ; preds = %61, %54, %44
  %71 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %71)
  %72 = load i64, i64* %5, align 8
  ret i64 %72
}

declare dso_local %struct.zram* @dev_to_zram(%struct.device*) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @strlcpy(i8*, i8*, i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @zcomp_available_algorithm(i8*) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local i64 @init_done(%struct.zram*) #1

declare dso_local i32 @up_write(i32*) #1

declare dso_local i32 @pr_info(i8*) #1

declare dso_local i32 @strcpy(i32, i8*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
