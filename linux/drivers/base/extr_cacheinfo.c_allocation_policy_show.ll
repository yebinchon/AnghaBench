; ModuleID = '/home/carl/AnghaBench/linux/drivers/base/extr_cacheinfo.c_allocation_policy_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/base/extr_cacheinfo.c_allocation_policy_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.cacheinfo = type { i32 }

@CACHE_READ_ALLOCATE = common dso_local global i32 0, align 4
@CACHE_WRITE_ALLOCATE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"ReadWriteAllocate\0A\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"ReadAllocate\0A\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"WriteAllocate\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @allocation_policy_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @allocation_policy_show(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_attribute*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.cacheinfo*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %5, align 8
  store i8* %2, i8** %6, align 8
  %10 = load %struct.device*, %struct.device** %4, align 8
  %11 = call %struct.cacheinfo* @dev_get_drvdata(%struct.device* %10)
  store %struct.cacheinfo* %11, %struct.cacheinfo** %7, align 8
  %12 = load %struct.cacheinfo*, %struct.cacheinfo** %7, align 8
  %13 = getelementptr inbounds %struct.cacheinfo, %struct.cacheinfo* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %15 = load i32, i32* %8, align 4
  %16 = load i32, i32* @CACHE_READ_ALLOCATE, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %27

19:                                               ; preds = %3
  %20 = load i32, i32* %8, align 4
  %21 = load i32, i32* @CACHE_WRITE_ALLOCATE, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %19
  %25 = load i8*, i8** %6, align 8
  %26 = call i32 @sprintf(i8* %25, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  store i32 %26, i32* %9, align 4
  br label %45

27:                                               ; preds = %19, %3
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* @CACHE_READ_ALLOCATE, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %27
  %33 = load i8*, i8** %6, align 8
  %34 = call i32 @sprintf(i8* %33, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  store i32 %34, i32* %9, align 4
  br label %44

35:                                               ; preds = %27
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* @CACHE_WRITE_ALLOCATE, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %35
  %41 = load i8*, i8** %6, align 8
  %42 = call i32 @sprintf(i8* %41, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  store i32 %42, i32* %9, align 4
  br label %43

43:                                               ; preds = %40, %35
  br label %44

44:                                               ; preds = %43, %32
  br label %45

45:                                               ; preds = %44, %24
  %46 = load i32, i32* %9, align 4
  ret i32 %46
}

declare dso_local %struct.cacheinfo* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @sprintf(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
