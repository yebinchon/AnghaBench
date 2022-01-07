; ModuleID = '/home/carl/AnghaBench/libevent/test/extr_regress.c_test_free_active_base.c'
source_filename = "/home/carl/AnghaBench/libevent/test/extr_regress.c_test_free_active_base.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.basic_test_data = type { i32* }
%struct.event_base = type { i32 }
%struct.event = type { i32 }

@EV_READ = common dso_local global i32 0, align 4
@dummy_read_cb = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @test_free_active_base to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_free_active_base(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.basic_test_data*, align 8
  %4 = alloca %struct.event_base*, align 8
  %5 = alloca %struct.event, align 4
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = bitcast i8* %6 to %struct.basic_test_data*
  store %struct.basic_test_data* %7, %struct.basic_test_data** %3, align 8
  %8 = call %struct.event_base* (...) @event_init()
  store %struct.event_base* %8, %struct.event_base** %4, align 8
  %9 = load %struct.event_base*, %struct.event_base** %4, align 8
  %10 = call i32 @tt_assert(%struct.event_base* %9)
  %11 = load %struct.event_base*, %struct.event_base** %4, align 8
  %12 = load %struct.basic_test_data*, %struct.basic_test_data** %3, align 8
  %13 = getelementptr inbounds %struct.basic_test_data, %struct.basic_test_data* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 1
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @EV_READ, align 4
  %18 = load i32, i32* @dummy_read_cb, align 4
  %19 = call i32 @event_assign(%struct.event* %5, %struct.event_base* %11, i32 %16, i32 %17, i32 %18, i32* null)
  %20 = call i32 @event_add(%struct.event* %5, i32* null)
  %21 = load %struct.event_base*, %struct.event_base** %4, align 8
  %22 = call i32 @event_base_free(%struct.event_base* %21)
  %23 = call %struct.event_base* (...) @event_init()
  store %struct.event_base* %23, %struct.event_base** %4, align 8
  %24 = load %struct.event_base*, %struct.event_base** %4, align 8
  %25 = call i32 @tt_assert(%struct.event_base* %24)
  %26 = load %struct.event_base*, %struct.event_base** %4, align 8
  %27 = load %struct.basic_test_data*, %struct.basic_test_data** %3, align 8
  %28 = getelementptr inbounds %struct.basic_test_data, %struct.basic_test_data* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @dummy_read_cb, align 4
  %33 = call i32 @event_assign(%struct.event* %5, %struct.event_base* %26, i32 %31, i32 0, i32 %32, i32* null)
  %34 = load i32, i32* @EV_READ, align 4
  %35 = call i32 @event_active(%struct.event* %5, i32 %34, i32 1)
  %36 = load %struct.event_base*, %struct.event_base** %4, align 8
  %37 = call i32 @event_base_free(%struct.event_base* %36)
  br label %38

38:                                               ; preds = %1
  ret void
}

declare dso_local %struct.event_base* @event_init(...) #1

declare dso_local i32 @tt_assert(%struct.event_base*) #1

declare dso_local i32 @event_assign(%struct.event*, %struct.event_base*, i32, i32, i32, i32*) #1

declare dso_local i32 @event_add(%struct.event*, i32*) #1

declare dso_local i32 @event_base_free(%struct.event_base*) #1

declare dso_local i32 @event_active(%struct.event*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
