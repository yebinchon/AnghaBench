; ModuleID = '/home/carl/AnghaBench/linux/drivers/base/power/extr_trace.c_show_trace_dev_match.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/base/power/extr_trace.c_show_trace_dev_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.list_head = type { %struct.list_head* }
%struct.device = type { i32 }

@hash_value_early_read = common dso_local global i32 0, align 4
@USERHASH = common dso_local global i32 0, align 4
@FILEHASH = common dso_local global i32 0, align 4
@dpm_list = common dso_local global %struct.list_head zeroinitializer, align 8
@DEVSEED = common dso_local global i32 0, align 4
@DEVHASH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @show_trace_dev_match(i8* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.list_head*, align 8
  %8 = alloca %struct.device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i64 %1, i64* %4, align 8
  %11 = load i32, i32* @hash_value_early_read, align 4
  %12 = load i32, i32* @USERHASH, align 4
  %13 = load i32, i32* @FILEHASH, align 4
  %14 = mul i32 %12, %13
  %15 = udiv i32 %11, %14
  store i32 %15, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %16 = call i32 (...) @device_pm_lock()
  %17 = load %struct.list_head*, %struct.list_head** getelementptr inbounds (%struct.list_head, %struct.list_head* @dpm_list, i32 0, i32 0), align 8
  store %struct.list_head* %17, %struct.list_head** %7, align 8
  br label %18

18:                                               ; preds = %62, %2
  %19 = load i64, i64* %4, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %18
  %22 = load %struct.list_head*, %struct.list_head** %7, align 8
  %23 = icmp ne %struct.list_head* %22, @dpm_list
  br label %24

24:                                               ; preds = %21, %18
  %25 = phi i1 [ false, %18 ], [ %23, %21 ]
  br i1 %25, label %26, label %66

26:                                               ; preds = %24
  %27 = load %struct.list_head*, %struct.list_head** %7, align 8
  %28 = call %struct.device* @to_device(%struct.list_head* %27)
  store %struct.device* %28, %struct.device** %8, align 8
  %29 = load i32, i32* @DEVSEED, align 4
  %30 = load %struct.device*, %struct.device** %8, align 8
  %31 = call i32 @dev_name(%struct.device* %30)
  %32 = load i32, i32* @DEVHASH, align 4
  %33 = call i32 @hash_string(i32 %29, i32 %31, i32 %32)
  store i32 %33, i32* %9, align 4
  %34 = load i32, i32* %9, align 4
  %35 = load i32, i32* %5, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %62

37:                                               ; preds = %26
  %38 = load i8*, i8** %3, align 8
  %39 = load i64, i64* %4, align 8
  %40 = load %struct.device*, %struct.device** %8, align 8
  %41 = call i8* @dev_driver_string(%struct.device* %40)
  %42 = call i32 @snprintf(i8* %38, i64 %39, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %41)
  store i32 %42, i32* %10, align 4
  %43 = load i32, i32* %10, align 4
  %44 = sext i32 %43 to i64
  %45 = load i64, i64* %4, align 8
  %46 = icmp ugt i64 %44, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %37
  %48 = load i64, i64* %4, align 8
  %49 = trunc i64 %48 to i32
  store i32 %49, i32* %10, align 4
  br label %50

50:                                               ; preds = %47, %37
  %51 = load i32, i32* %10, align 4
  %52 = load i8*, i8** %3, align 8
  %53 = sext i32 %51 to i64
  %54 = getelementptr inbounds i8, i8* %52, i64 %53
  store i8* %54, i8** %3, align 8
  %55 = load i32, i32* %10, align 4
  %56 = load i32, i32* %6, align 4
  %57 = add nsw i32 %56, %55
  store i32 %57, i32* %6, align 4
  %58 = load i32, i32* %10, align 4
  %59 = sext i32 %58 to i64
  %60 = load i64, i64* %4, align 8
  %61 = sub i64 %60, %59
  store i64 %61, i64* %4, align 8
  br label %62

62:                                               ; preds = %50, %26
  %63 = load %struct.list_head*, %struct.list_head** %7, align 8
  %64 = getelementptr inbounds %struct.list_head, %struct.list_head* %63, i32 0, i32 0
  %65 = load %struct.list_head*, %struct.list_head** %64, align 8
  store %struct.list_head* %65, %struct.list_head** %7, align 8
  br label %18

66:                                               ; preds = %24
  %67 = call i32 (...) @device_pm_unlock()
  %68 = load i32, i32* %6, align 4
  ret i32 %68
}

declare dso_local i32 @device_pm_lock(...) #1

declare dso_local %struct.device* @to_device(%struct.list_head*) #1

declare dso_local i32 @hash_string(i32, i32, i32) #1

declare dso_local i32 @dev_name(%struct.device*) #1

declare dso_local i32 @snprintf(i8*, i64, i8*, i8*) #1

declare dso_local i8* @dev_driver_string(%struct.device*) #1

declare dso_local i32 @device_pm_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
