; ModuleID = '/home/carl/AnghaBench/h2o/deps/mruby/mrbgems/mruby-time/src/extr_time.c_time_update_datetime.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/mruby/mrbgems/mruby-time/src/extr_time.c_time_update_datetime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mrb_time = type { i64, %struct.tm, i64 }
%struct.tm = type { i32 }

@MRB_TIMEZONE_UTC = common dso_local global i64 0, align 8
@E_ARGUMENT_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"%S out of Time range\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mrb_time* (i32*, %struct.mrb_time*)* @time_update_datetime to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mrb_time* @time_update_datetime(i32* %0, %struct.mrb_time* %1) #0 {
  %3 = alloca %struct.mrb_time*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.mrb_time*, align 8
  %6 = alloca %struct.tm*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.mrb_time* %1, %struct.mrb_time** %5, align 8
  %7 = load %struct.mrb_time*, %struct.mrb_time** %5, align 8
  %8 = getelementptr inbounds %struct.mrb_time, %struct.mrb_time* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @MRB_TIMEZONE_UTC, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %18

12:                                               ; preds = %2
  %13 = load %struct.mrb_time*, %struct.mrb_time** %5, align 8
  %14 = getelementptr inbounds %struct.mrb_time, %struct.mrb_time* %13, i32 0, i32 2
  %15 = load %struct.mrb_time*, %struct.mrb_time** %5, align 8
  %16 = getelementptr inbounds %struct.mrb_time, %struct.mrb_time* %15, i32 0, i32 1
  %17 = call %struct.tm* @gmtime_r(i64* %14, %struct.tm* %16)
  store %struct.tm* %17, %struct.tm** %6, align 8
  br label %24

18:                                               ; preds = %2
  %19 = load %struct.mrb_time*, %struct.mrb_time** %5, align 8
  %20 = getelementptr inbounds %struct.mrb_time, %struct.mrb_time* %19, i32 0, i32 2
  %21 = load %struct.mrb_time*, %struct.mrb_time** %5, align 8
  %22 = getelementptr inbounds %struct.mrb_time, %struct.mrb_time* %21, i32 0, i32 1
  %23 = call %struct.tm* @localtime_r(i64* %20, %struct.tm* %22)
  store %struct.tm* %23, %struct.tm** %6, align 8
  br label %24

24:                                               ; preds = %18, %12
  %25 = load %struct.tm*, %struct.tm** %6, align 8
  %26 = icmp ne %struct.tm* %25, null
  br i1 %26, label %37, label %27

27:                                               ; preds = %24
  %28 = load i32*, i32** %4, align 8
  %29 = load i32, i32* @E_ARGUMENT_ERROR, align 4
  %30 = load i32*, i32** %4, align 8
  %31 = load %struct.mrb_time*, %struct.mrb_time** %5, align 8
  %32 = getelementptr inbounds %struct.mrb_time, %struct.mrb_time* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = trunc i64 %33 to i32
  %35 = call i32 @mrb_float_value(i32* %30, i32 %34)
  %36 = call i32 @mrb_raisef(i32* %28, i32 %29, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %35)
  store %struct.mrb_time* null, %struct.mrb_time** %3, align 8
  br label %39

37:                                               ; preds = %24
  %38 = load %struct.mrb_time*, %struct.mrb_time** %5, align 8
  store %struct.mrb_time* %38, %struct.mrb_time** %3, align 8
  br label %39

39:                                               ; preds = %37, %27
  %40 = load %struct.mrb_time*, %struct.mrb_time** %3, align 8
  ret %struct.mrb_time* %40
}

declare dso_local %struct.tm* @gmtime_r(i64*, %struct.tm*) #1

declare dso_local %struct.tm* @localtime_r(i64*, %struct.tm*) #1

declare dso_local i32 @mrb_raisef(i32*, i32, i8*, i32) #1

declare dso_local i32 @mrb_float_value(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
