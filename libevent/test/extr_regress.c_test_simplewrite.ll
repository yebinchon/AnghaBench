; ModuleID = '/home/carl/AnghaBench/libevent/test/extr_regress.c_test_simplewrite.c'
source_filename = "/home/carl/AnghaBench/libevent/test/extr_regress.c_test_simplewrite.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.event = type { i32 }

@.str = private unnamed_addr constant [15 x i8] c"Simple write: \00", align 1
@pair = common dso_local global i32* null, align 8
@EV_WRITE = common dso_local global i32 0, align 4
@simple_write_cb = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_simplewrite to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_simplewrite() #0 {
  %1 = alloca %struct.event, align 4
  %2 = call i32 @setup_test(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %3 = load i32*, i32** @pair, align 8
  %4 = getelementptr inbounds i32, i32* %3, i64 0
  %5 = load i32, i32* %4, align 4
  %6 = load i32, i32* @EV_WRITE, align 4
  %7 = load i32, i32* @simple_write_cb, align 4
  %8 = call i32 @event_set(%struct.event* %1, i32 %5, i32 %6, i32 %7, %struct.event* %1)
  %9 = call i32 @event_add(%struct.event* %1, i32* null)
  %10 = icmp eq i32 %9, -1
  br i1 %10, label %11, label %13

11:                                               ; preds = %0
  %12 = call i32 @exit(i32 1) #3
  unreachable

13:                                               ; preds = %0
  %14 = call i32 (...) @event_dispatch()
  %15 = call i32 (...) @cleanup_test()
  ret void
}

declare dso_local i32 @setup_test(i8*) #1

declare dso_local i32 @event_set(%struct.event*, i32, i32, i32, %struct.event*) #1

declare dso_local i32 @event_add(%struct.event*, i32*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @event_dispatch(...) #1

declare dso_local i32 @cleanup_test(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
