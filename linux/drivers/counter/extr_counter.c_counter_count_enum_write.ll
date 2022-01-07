; ModuleID = '/home/carl/AnghaBench/linux/drivers/counter/extr_counter.c_counter_count_enum_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/counter/extr_counter.c_counter_count_enum_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.counter_device = type { i32 }
%struct.counter_count = type { i32 }
%struct.counter_count_enum_ext = type { i32 (%struct.counter_device*, %struct.counter_count.0*, i64)*, i32, i32 }
%struct.counter_count.0 = type opaque

@EINVAL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @counter_count_enum_write(%struct.counter_device* %0, %struct.counter_count* %1, i8* %2, i8* %3, i64 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.counter_device*, align 8
  %8 = alloca %struct.counter_count*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.counter_count_enum_ext*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.counter_device* %0, %struct.counter_device** %7, align 8
  store %struct.counter_count* %1, %struct.counter_count** %8, align 8
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store i64 %4, i64* %11, align 8
  %15 = load i8*, i8** %9, align 8
  %16 = bitcast i8* %15 to %struct.counter_count_enum_ext*
  store %struct.counter_count_enum_ext* %16, %struct.counter_count_enum_ext** %12, align 8
  %17 = load %struct.counter_count_enum_ext*, %struct.counter_count_enum_ext** %12, align 8
  %18 = getelementptr inbounds %struct.counter_count_enum_ext, %struct.counter_count_enum_ext* %17, i32 0, i32 0
  %19 = load i32 (%struct.counter_device*, %struct.counter_count.0*, i64)*, i32 (%struct.counter_device*, %struct.counter_count.0*, i64)** %18, align 8
  %20 = icmp ne i32 (%struct.counter_device*, %struct.counter_count.0*, i64)* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %5
  %22 = load i64, i64* @EINVAL, align 8
  %23 = sub nsw i64 0, %22
  store i64 %23, i64* %6, align 8
  br label %53

24:                                               ; preds = %5
  %25 = load %struct.counter_count_enum_ext*, %struct.counter_count_enum_ext** %12, align 8
  %26 = getelementptr inbounds %struct.counter_count_enum_ext, %struct.counter_count_enum_ext* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.counter_count_enum_ext*, %struct.counter_count_enum_ext** %12, align 8
  %29 = getelementptr inbounds %struct.counter_count_enum_ext, %struct.counter_count_enum_ext* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = load i8*, i8** %10, align 8
  %32 = call i64 @__sysfs_match_string(i32 %27, i32 %30, i8* %31)
  store i64 %32, i64* %13, align 8
  %33 = load i64, i64* %13, align 8
  %34 = icmp slt i64 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %24
  %36 = load i64, i64* %13, align 8
  store i64 %36, i64* %6, align 8
  br label %53

37:                                               ; preds = %24
  %38 = load %struct.counter_count_enum_ext*, %struct.counter_count_enum_ext** %12, align 8
  %39 = getelementptr inbounds %struct.counter_count_enum_ext, %struct.counter_count_enum_ext* %38, i32 0, i32 0
  %40 = load i32 (%struct.counter_device*, %struct.counter_count.0*, i64)*, i32 (%struct.counter_device*, %struct.counter_count.0*, i64)** %39, align 8
  %41 = load %struct.counter_device*, %struct.counter_device** %7, align 8
  %42 = load %struct.counter_count*, %struct.counter_count** %8, align 8
  %43 = bitcast %struct.counter_count* %42 to %struct.counter_count.0*
  %44 = load i64, i64* %13, align 8
  %45 = call i32 %40(%struct.counter_device* %41, %struct.counter_count.0* %43, i64 %44)
  store i32 %45, i32* %14, align 4
  %46 = load i32, i32* %14, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %37
  %49 = load i32, i32* %14, align 4
  %50 = sext i32 %49 to i64
  store i64 %50, i64* %6, align 8
  br label %53

51:                                               ; preds = %37
  %52 = load i64, i64* %11, align 8
  store i64 %52, i64* %6, align 8
  br label %53

53:                                               ; preds = %51, %48, %35, %21
  %54 = load i64, i64* %6, align 8
  ret i64 %54
}

declare dso_local i64 @__sysfs_match_string(i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
