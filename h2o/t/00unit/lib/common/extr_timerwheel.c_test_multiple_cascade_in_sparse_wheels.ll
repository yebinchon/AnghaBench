; ModuleID = '/home/carl/AnghaBench/h2o/t/00unit/lib/common/extr_timerwheel.c_test_multiple_cascade_in_sparse_wheels.c'
source_filename = "/home/carl/AnghaBench/h2o/t/00unit/lib/common/extr_timerwheel.c_test_multiple_cascade_in_sparse_wheels.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@invokes = common dso_local global i32 0, align 4
@my_callback = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_multiple_cascade_in_sparse_wheels to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_multiple_cascade_in_sparse_wheels() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 -1810317312, i32* %1, align 4
  %5 = call i32* @h2o_timerwheel_create(i32 3, i32 -1810319360)
  store i32* %5, i32** %2, align 8
  store i32 0, i32* @invokes, align 4
  %6 = load i32, i32* @my_callback, align 4
  %7 = call i32 @h2o_timerwheel_init_entry(i32* %3, i32 %6)
  %8 = load i32*, i32** %2, align 8
  %9 = call i32 @h2o_timerwheel_link_abs(i32* %8, i32* %3, i32 -1810317312)
  %10 = load i32*, i32** %2, align 8
  %11 = call i32 @h2o_timerwheel_run(i32* %10, i32 -1810317412)
  %12 = load i32, i32* @invokes, align 4
  %13 = icmp eq i32 %12, 0
  %14 = zext i1 %13 to i32
  %15 = call i32 @ok(i32 %14)
  %16 = load i32, i32* @my_callback, align 4
  %17 = call i32 @h2o_timerwheel_init_entry(i32* %4, i32 %16)
  %18 = load i32*, i32** %2, align 8
  %19 = call i32 @h2o_timerwheel_link_abs(i32* %18, i32* %4, i32 -1810317312)
  %20 = load i32*, i32** %2, align 8
  %21 = call i32 @h2o_timerwheel_run(i32* %20, i32 -1810317412)
  %22 = load i32, i32* @invokes, align 4
  %23 = icmp eq i32 %22, 0
  %24 = zext i1 %23 to i32
  %25 = call i32 @ok(i32 %24)
  %26 = load i32*, i32** %2, align 8
  %27 = call i32 @h2o_timerwheel_run(i32* %26, i32 -1810317312)
  %28 = load i32, i32* @invokes, align 4
  %29 = icmp eq i32 %28, 2
  %30 = zext i1 %29 to i32
  %31 = call i32 @ok(i32 %30)
  %32 = load i32*, i32** %2, align 8
  %33 = call i32 @h2o_timerwheel_run(i32* %32, i32 -1810316288)
  %34 = load i32*, i32** %2, align 8
  %35 = call i32 @h2o_timerwheel_destroy(i32* %34)
  ret void
}

declare dso_local i32* @h2o_timerwheel_create(i32, i32) #1

declare dso_local i32 @h2o_timerwheel_init_entry(i32*, i32) #1

declare dso_local i32 @h2o_timerwheel_link_abs(i32*, i32*, i32) #1

declare dso_local i32 @h2o_timerwheel_run(i32*, i32) #1

declare dso_local i32 @ok(i32) #1

declare dso_local i32 @h2o_timerwheel_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
