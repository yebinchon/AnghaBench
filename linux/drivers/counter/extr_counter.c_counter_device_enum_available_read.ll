; ModuleID = '/home/carl/AnghaBench/linux/drivers/counter/extr_counter.c_counter_device_enum_available_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/counter/extr_counter.c_counter_device_enum_available_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.counter_device = type { i32 }
%struct.counter_device_enum_ext = type { i64, i8** }

@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @counter_device_enum_available_read(%struct.counter_device* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.counter_device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.counter_device_enum_ext*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.counter_device* %0, %struct.counter_device** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = bitcast i8* %11 to %struct.counter_device_enum_ext*
  store %struct.counter_device_enum_ext* %12, %struct.counter_device_enum_ext** %8, align 8
  store i64 0, i64* %10, align 8
  %13 = load %struct.counter_device_enum_ext*, %struct.counter_device_enum_ext** %8, align 8
  %14 = getelementptr inbounds %struct.counter_device_enum_ext, %struct.counter_device_enum_ext* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %3
  store i64 0, i64* %4, align 8
  br label %43

18:                                               ; preds = %3
  store i64 0, i64* %9, align 8
  br label %19

19:                                               ; preds = %38, %18
  %20 = load i64, i64* %9, align 8
  %21 = load %struct.counter_device_enum_ext*, %struct.counter_device_enum_ext** %8, align 8
  %22 = getelementptr inbounds %struct.counter_device_enum_ext, %struct.counter_device_enum_ext* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ult i64 %20, %23
  br i1 %24, label %25, label %41

25:                                               ; preds = %19
  %26 = load i8*, i8** %7, align 8
  %27 = load i64, i64* %10, align 8
  %28 = getelementptr inbounds i8, i8* %26, i64 %27
  %29 = load %struct.counter_device_enum_ext*, %struct.counter_device_enum_ext** %8, align 8
  %30 = getelementptr inbounds %struct.counter_device_enum_ext, %struct.counter_device_enum_ext* %29, i32 0, i32 1
  %31 = load i8**, i8*** %30, align 8
  %32 = load i64, i64* %9, align 8
  %33 = getelementptr inbounds i8*, i8** %31, i64 %32
  %34 = load i8*, i8** %33, align 8
  %35 = call i64 @sprintf(i8* %28, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %34)
  %36 = load i64, i64* %10, align 8
  %37 = add i64 %36, %35
  store i64 %37, i64* %10, align 8
  br label %38

38:                                               ; preds = %25
  %39 = load i64, i64* %9, align 8
  %40 = add i64 %39, 1
  store i64 %40, i64* %9, align 8
  br label %19

41:                                               ; preds = %19
  %42 = load i64, i64* %10, align 8
  store i64 %42, i64* %4, align 8
  br label %43

43:                                               ; preds = %41, %17
  %44 = load i64, i64* %4, align 8
  ret i64 %44
}

declare dso_local i64 @sprintf(i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
