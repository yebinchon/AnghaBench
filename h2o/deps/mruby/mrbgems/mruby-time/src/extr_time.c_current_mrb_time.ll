; ModuleID = '/home/carl/AnghaBench/h2o/deps/mruby/mrbgems/mruby-time/src/extr_time.c_current_mrb_time.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/mruby/mrbgems/mruby-time/src/extr_time.c_current_mrb_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mrb_time = type { i64, i32, i32 }
%struct.timeval = type { i64, i32 }

@MRB_TIMEZONE_LOCAL = common dso_local global i32 0, align 4
@E_RUNTIME_ERROR = common dso_local global i32 0, align 4
@TIME_UTC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mrb_time* (i32*)* @current_mrb_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mrb_time* @current_mrb_time(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.mrb_time*, align 8
  %4 = alloca %struct.timeval, align 8
  store i32* %0, i32** %2, align 8
  %5 = load i32*, i32** %2, align 8
  %6 = call i64 @mrb_malloc(i32* %5, i32 16)
  %7 = inttoptr i64 %6 to %struct.mrb_time*
  store %struct.mrb_time* %7, %struct.mrb_time** %3, align 8
  %8 = call i32 @gettimeofday(%struct.timeval* %4, i32* null)
  %9 = getelementptr inbounds %struct.timeval, %struct.timeval* %4, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load %struct.mrb_time*, %struct.mrb_time** %3, align 8
  %12 = getelementptr inbounds %struct.mrb_time, %struct.mrb_time* %11, i32 0, i32 0
  store i64 %10, i64* %12, align 8
  %13 = getelementptr inbounds %struct.timeval, %struct.timeval* %4, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.mrb_time*, %struct.mrb_time** %3, align 8
  %16 = getelementptr inbounds %struct.mrb_time, %struct.mrb_time* %15, i32 0, i32 1
  store i32 %14, i32* %16, align 8
  %17 = load i32, i32* @MRB_TIMEZONE_LOCAL, align 4
  %18 = load %struct.mrb_time*, %struct.mrb_time** %3, align 8
  %19 = getelementptr inbounds %struct.mrb_time, %struct.mrb_time* %18, i32 0, i32 2
  store i32 %17, i32* %19, align 4
  %20 = load i32*, i32** %2, align 8
  %21 = load %struct.mrb_time*, %struct.mrb_time** %3, align 8
  %22 = call i32 @time_update_datetime(i32* %20, %struct.mrb_time* %21)
  %23 = load %struct.mrb_time*, %struct.mrb_time** %3, align 8
  ret %struct.mrb_time* %23
}

declare dso_local i64 @mrb_malloc(i32*, i32) #1

declare dso_local i32 @gettimeofday(%struct.timeval*, i32*) #1

declare dso_local i32 @time_update_datetime(i32*, %struct.mrb_time*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
