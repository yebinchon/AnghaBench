; ModuleID = '/home/carl/AnghaBench/linux/drivers/counter/extr_counter.c_counter_signal_enum_available_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/counter/extr_counter.c_counter_signal_enum_available_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.counter_device = type { i32 }
%struct.counter_signal = type { i32 }
%struct.counter_signal_enum_ext = type { i64, i8** }

@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @counter_signal_enum_available_read(%struct.counter_device* %0, %struct.counter_signal* %1, i8* %2, i8* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.counter_device*, align 8
  %7 = alloca %struct.counter_signal*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.counter_signal_enum_ext*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.counter_device* %0, %struct.counter_device** %6, align 8
  store %struct.counter_signal* %1, %struct.counter_signal** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  %13 = load i8*, i8** %8, align 8
  %14 = bitcast i8* %13 to %struct.counter_signal_enum_ext*
  store %struct.counter_signal_enum_ext* %14, %struct.counter_signal_enum_ext** %10, align 8
  store i64 0, i64* %12, align 8
  %15 = load %struct.counter_signal_enum_ext*, %struct.counter_signal_enum_ext** %10, align 8
  %16 = getelementptr inbounds %struct.counter_signal_enum_ext, %struct.counter_signal_enum_ext* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %4
  store i64 0, i64* %5, align 8
  br label %45

20:                                               ; preds = %4
  store i64 0, i64* %11, align 8
  br label %21

21:                                               ; preds = %40, %20
  %22 = load i64, i64* %11, align 8
  %23 = load %struct.counter_signal_enum_ext*, %struct.counter_signal_enum_ext** %10, align 8
  %24 = getelementptr inbounds %struct.counter_signal_enum_ext, %struct.counter_signal_enum_ext* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ult i64 %22, %25
  br i1 %26, label %27, label %43

27:                                               ; preds = %21
  %28 = load i8*, i8** %9, align 8
  %29 = load i64, i64* %12, align 8
  %30 = getelementptr inbounds i8, i8* %28, i64 %29
  %31 = load %struct.counter_signal_enum_ext*, %struct.counter_signal_enum_ext** %10, align 8
  %32 = getelementptr inbounds %struct.counter_signal_enum_ext, %struct.counter_signal_enum_ext* %31, i32 0, i32 1
  %33 = load i8**, i8*** %32, align 8
  %34 = load i64, i64* %11, align 8
  %35 = getelementptr inbounds i8*, i8** %33, i64 %34
  %36 = load i8*, i8** %35, align 8
  %37 = call i64 @sprintf(i8* %30, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %36)
  %38 = load i64, i64* %12, align 8
  %39 = add i64 %38, %37
  store i64 %39, i64* %12, align 8
  br label %40

40:                                               ; preds = %27
  %41 = load i64, i64* %11, align 8
  %42 = add i64 %41, 1
  store i64 %42, i64* %11, align 8
  br label %21

43:                                               ; preds = %21
  %44 = load i64, i64* %12, align 8
  store i64 %44, i64* %5, align 8
  br label %45

45:                                               ; preds = %43, %19
  %46 = load i64, i64* %5, align 8
  ret i64 %46
}

declare dso_local i64 @sprintf(i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
