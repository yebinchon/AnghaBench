; ModuleID = '/home/carl/AnghaBench/linux/drivers/counter/extr_counter.c_counter_device_enum_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/counter/extr_counter.c_counter_device_enum_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.counter_device = type { i32 }
%struct.counter_device_enum_ext = type { i32 (%struct.counter_device.0*, i64*)*, i64, i8** }
%struct.counter_device.0 = type opaque

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @counter_device_enum_read(%struct.counter_device* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.counter_device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.counter_device_enum_ext*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.counter_device* %0, %struct.counter_device** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = bitcast i8* %11 to %struct.counter_device_enum_ext*
  store %struct.counter_device_enum_ext* %12, %struct.counter_device_enum_ext** %8, align 8
  %13 = load %struct.counter_device_enum_ext*, %struct.counter_device_enum_ext** %8, align 8
  %14 = getelementptr inbounds %struct.counter_device_enum_ext, %struct.counter_device_enum_ext* %13, i32 0, i32 0
  %15 = load i32 (%struct.counter_device.0*, i64*)*, i32 (%struct.counter_device.0*, i64*)** %14, align 8
  %16 = icmp ne i32 (%struct.counter_device.0*, i64*)* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %3
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %4, align 4
  br label %49

20:                                               ; preds = %3
  %21 = load %struct.counter_device_enum_ext*, %struct.counter_device_enum_ext** %8, align 8
  %22 = getelementptr inbounds %struct.counter_device_enum_ext, %struct.counter_device_enum_ext* %21, i32 0, i32 0
  %23 = load i32 (%struct.counter_device.0*, i64*)*, i32 (%struct.counter_device.0*, i64*)** %22, align 8
  %24 = load %struct.counter_device*, %struct.counter_device** %5, align 8
  %25 = bitcast %struct.counter_device* %24 to %struct.counter_device.0*
  %26 = call i32 %23(%struct.counter_device.0* %25, i64* %10)
  store i32 %26, i32* %9, align 4
  %27 = load i32, i32* %9, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %20
  %30 = load i32, i32* %9, align 4
  store i32 %30, i32* %4, align 4
  br label %49

31:                                               ; preds = %20
  %32 = load i64, i64* %10, align 8
  %33 = load %struct.counter_device_enum_ext*, %struct.counter_device_enum_ext** %8, align 8
  %34 = getelementptr inbounds %struct.counter_device_enum_ext, %struct.counter_device_enum_ext* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = icmp uge i64 %32, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %31
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %4, align 4
  br label %49

40:                                               ; preds = %31
  %41 = load i8*, i8** %7, align 8
  %42 = load %struct.counter_device_enum_ext*, %struct.counter_device_enum_ext** %8, align 8
  %43 = getelementptr inbounds %struct.counter_device_enum_ext, %struct.counter_device_enum_ext* %42, i32 0, i32 2
  %44 = load i8**, i8*** %43, align 8
  %45 = load i64, i64* %10, align 8
  %46 = getelementptr inbounds i8*, i8** %44, i64 %45
  %47 = load i8*, i8** %46, align 8
  %48 = call i32 @sprintf(i8* %41, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %47)
  store i32 %48, i32* %4, align 4
  br label %49

49:                                               ; preds = %40, %37, %29, %17
  %50 = load i32, i32* %4, align 4
  ret i32 %50
}

declare dso_local i32 @sprintf(i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
