; ModuleID = '/home/carl/AnghaBench/h2o/deps/mruby/mrbgems/mruby-fiber/src/extr_fiber.c_fiber_check.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/mruby/mrbgems/mruby-fiber/src/extr_fiber.c_fiber_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mrb_context = type { i32 }
%struct.RFiber = type { i64, %struct.mrb_context* }

@MRB_TT_FIBER = common dso_local global i64 0, align 8
@E_FIBER_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"uninitialized Fiber\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mrb_context* (i32*, i32)* @fiber_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mrb_context* @fiber_check(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.RFiber*, align 8
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = call %struct.RFiber* @fiber_ptr(i32 %6)
  store %struct.RFiber* %7, %struct.RFiber** %5, align 8
  %8 = load %struct.RFiber*, %struct.RFiber** %5, align 8
  %9 = getelementptr inbounds %struct.RFiber, %struct.RFiber* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @MRB_TT_FIBER, align 8
  %12 = icmp eq i64 %10, %11
  %13 = zext i1 %12 to i32
  %14 = call i32 @mrb_assert(i32 %13)
  %15 = load %struct.RFiber*, %struct.RFiber** %5, align 8
  %16 = getelementptr inbounds %struct.RFiber, %struct.RFiber* %15, i32 0, i32 1
  %17 = load %struct.mrb_context*, %struct.mrb_context** %16, align 8
  %18 = icmp ne %struct.mrb_context* %17, null
  br i1 %18, label %23, label %19

19:                                               ; preds = %2
  %20 = load i32*, i32** %3, align 8
  %21 = load i32, i32* @E_FIBER_ERROR, align 4
  %22 = call i32 @mrb_raise(i32* %20, i32 %21, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  br label %23

23:                                               ; preds = %19, %2
  %24 = load %struct.RFiber*, %struct.RFiber** %5, align 8
  %25 = getelementptr inbounds %struct.RFiber, %struct.RFiber* %24, i32 0, i32 1
  %26 = load %struct.mrb_context*, %struct.mrb_context** %25, align 8
  ret %struct.mrb_context* %26
}

declare dso_local %struct.RFiber* @fiber_ptr(i32) #1

declare dso_local i32 @mrb_assert(i32) #1

declare dso_local i32 @mrb_raise(i32*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
