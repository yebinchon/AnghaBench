; ModuleID = '/home/carl/AnghaBench/linux/drivers/counter/extr_counter.c_counter_count_enum_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/counter/extr_counter.c_counter_count_enum_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.counter_device = type { i32 }
%struct.counter_count = type { i32 }
%struct.counter_count_enum_ext = type { i32 (%struct.counter_device*, %struct.counter_count.0*, i64*)*, i64, i8** }
%struct.counter_count.0 = type opaque

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @counter_count_enum_read(%struct.counter_device* %0, %struct.counter_count* %1, i8* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.counter_device*, align 8
  %7 = alloca %struct.counter_count*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.counter_count_enum_ext*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store %struct.counter_device* %0, %struct.counter_device** %6, align 8
  store %struct.counter_count* %1, %struct.counter_count** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  %13 = load i8*, i8** %8, align 8
  %14 = bitcast i8* %13 to %struct.counter_count_enum_ext*
  store %struct.counter_count_enum_ext* %14, %struct.counter_count_enum_ext** %10, align 8
  %15 = load %struct.counter_count_enum_ext*, %struct.counter_count_enum_ext** %10, align 8
  %16 = getelementptr inbounds %struct.counter_count_enum_ext, %struct.counter_count_enum_ext* %15, i32 0, i32 0
  %17 = load i32 (%struct.counter_device*, %struct.counter_count.0*, i64*)*, i32 (%struct.counter_device*, %struct.counter_count.0*, i64*)** %16, align 8
  %18 = icmp ne i32 (%struct.counter_device*, %struct.counter_count.0*, i64*)* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %4
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %5, align 4
  br label %52

22:                                               ; preds = %4
  %23 = load %struct.counter_count_enum_ext*, %struct.counter_count_enum_ext** %10, align 8
  %24 = getelementptr inbounds %struct.counter_count_enum_ext, %struct.counter_count_enum_ext* %23, i32 0, i32 0
  %25 = load i32 (%struct.counter_device*, %struct.counter_count.0*, i64*)*, i32 (%struct.counter_device*, %struct.counter_count.0*, i64*)** %24, align 8
  %26 = load %struct.counter_device*, %struct.counter_device** %6, align 8
  %27 = load %struct.counter_count*, %struct.counter_count** %7, align 8
  %28 = bitcast %struct.counter_count* %27 to %struct.counter_count.0*
  %29 = call i32 %25(%struct.counter_device* %26, %struct.counter_count.0* %28, i64* %12)
  store i32 %29, i32* %11, align 4
  %30 = load i32, i32* %11, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %22
  %33 = load i32, i32* %11, align 4
  store i32 %33, i32* %5, align 4
  br label %52

34:                                               ; preds = %22
  %35 = load i64, i64* %12, align 8
  %36 = load %struct.counter_count_enum_ext*, %struct.counter_count_enum_ext** %10, align 8
  %37 = getelementptr inbounds %struct.counter_count_enum_ext, %struct.counter_count_enum_ext* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = icmp uge i64 %35, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %34
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %5, align 4
  br label %52

43:                                               ; preds = %34
  %44 = load i8*, i8** %9, align 8
  %45 = load %struct.counter_count_enum_ext*, %struct.counter_count_enum_ext** %10, align 8
  %46 = getelementptr inbounds %struct.counter_count_enum_ext, %struct.counter_count_enum_ext* %45, i32 0, i32 2
  %47 = load i8**, i8*** %46, align 8
  %48 = load i64, i64* %12, align 8
  %49 = getelementptr inbounds i8*, i8** %47, i64 %48
  %50 = load i8*, i8** %49, align 8
  %51 = call i32 @sprintf(i8* %44, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %50)
  store i32 %51, i32* %5, align 4
  br label %52

52:                                               ; preds = %43, %40, %32, %19
  %53 = load i32, i32* %5, align 4
  ret i32 %53
}

declare dso_local i32 @sprintf(i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
