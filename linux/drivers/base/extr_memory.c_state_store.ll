; ModuleID = '/home/carl/AnghaBench/linux/drivers/base/extr_memory.c_state_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/base/extr_memory.c_state_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.memory_block = type { i32, i32 }

@.str = private unnamed_addr constant [14 x i8] c"online_kernel\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"online_movable\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"online\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"offline\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @state_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @state_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.memory_block*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %13 = load %struct.device*, %struct.device** %6, align 8
  %14 = call %struct.memory_block* @to_memory_block(%struct.device* %13)
  store %struct.memory_block* %14, %struct.memory_block** %10, align 8
  %15 = call i32 (...) @lock_device_hotplug_sysfs()
  store i32 %15, i32* %11, align 4
  %16 = load i32, i32* %11, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %4
  %19 = load i32, i32* %11, align 4
  store i32 %19, i32* %5, align 4
  br label %78

20:                                               ; preds = %4
  %21 = load i8*, i8** %8, align 8
  %22 = call i64 @sysfs_streq(i8* %21, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %20
  store i32 129, i32* %12, align 4
  br label %46

25:                                               ; preds = %20
  %26 = load i8*, i8** %8, align 8
  %27 = call i64 @sysfs_streq(i8* %26, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %25
  store i32 128, i32* %12, align 4
  br label %45

30:                                               ; preds = %25
  %31 = load i8*, i8** %8, align 8
  %32 = call i64 @sysfs_streq(i8* %31, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %30
  store i32 130, i32* %12, align 4
  br label %44

35:                                               ; preds = %30
  %36 = load i8*, i8** %8, align 8
  %37 = call i64 @sysfs_streq(i8* %36, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %35
  store i32 131, i32* %12, align 4
  br label %43

40:                                               ; preds = %35
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %11, align 4
  br label %63

43:                                               ; preds = %39
  br label %44

44:                                               ; preds = %43, %34
  br label %45

45:                                               ; preds = %44, %29
  br label %46

46:                                               ; preds = %45, %24
  %47 = load i32, i32* %12, align 4
  switch i32 %47, label %59 [
    i32 129, label %48
    i32 128, label %48
    i32 130, label %48
    i32 131, label %55
  ]

48:                                               ; preds = %46, %46, %46
  %49 = load i32, i32* %12, align 4
  %50 = load %struct.memory_block*, %struct.memory_block** %10, align 8
  %51 = getelementptr inbounds %struct.memory_block, %struct.memory_block* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 4
  %52 = load %struct.memory_block*, %struct.memory_block** %10, align 8
  %53 = getelementptr inbounds %struct.memory_block, %struct.memory_block* %52, i32 0, i32 1
  %54 = call i32 @device_online(i32* %53)
  store i32 %54, i32* %11, align 4
  br label %62

55:                                               ; preds = %46
  %56 = load %struct.memory_block*, %struct.memory_block** %10, align 8
  %57 = getelementptr inbounds %struct.memory_block, %struct.memory_block* %56, i32 0, i32 1
  %58 = call i32 @device_offline(i32* %57)
  store i32 %58, i32* %11, align 4
  br label %62

59:                                               ; preds = %46
  %60 = load i32, i32* @EINVAL, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %11, align 4
  br label %62

62:                                               ; preds = %59, %55, %48
  br label %63

63:                                               ; preds = %62, %40
  %64 = call i32 (...) @unlock_device_hotplug()
  %65 = load i32, i32* %11, align 4
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %63
  %68 = load i32, i32* %11, align 4
  store i32 %68, i32* %5, align 4
  br label %78

69:                                               ; preds = %63
  %70 = load i32, i32* %11, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %69
  %73 = load i32, i32* @EINVAL, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %5, align 4
  br label %78

75:                                               ; preds = %69
  %76 = load i64, i64* %9, align 8
  %77 = trunc i64 %76 to i32
  store i32 %77, i32* %5, align 4
  br label %78

78:                                               ; preds = %75, %72, %67, %18
  %79 = load i32, i32* %5, align 4
  ret i32 %79
}

declare dso_local %struct.memory_block* @to_memory_block(%struct.device*) #1

declare dso_local i32 @lock_device_hotplug_sysfs(...) #1

declare dso_local i64 @sysfs_streq(i8*, i8*) #1

declare dso_local i32 @device_online(i32*) #1

declare dso_local i32 @device_offline(i32*) #1

declare dso_local i32 @unlock_device_hotplug(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
