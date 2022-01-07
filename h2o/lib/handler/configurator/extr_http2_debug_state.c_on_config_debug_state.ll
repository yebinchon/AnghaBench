; ModuleID = '/home/carl/AnghaBench/h2o/lib/handler/configurator/extr_http2_debug_state.c_on_config_debug_state.c'
source_filename = "/home/carl/AnghaBench/h2o/lib/handler/configurator/extr_http2_debug_state.c_on_config_debug_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [14 x i8] c"minimum,hpack\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_3__*, i32*)* @on_config_debug_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @on_config_debug_state(i32* %0, %struct.TYPE_3__* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %6, align 8
  store i32* %2, i32** %7, align 8
  %8 = load i32*, i32** %5, align 8
  %9 = load i32*, i32** %7, align 8
  %10 = call i32 @h2o_configurator_get_one_of(i32* %8, i32* %9, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  switch i32 %10, label %21 [
    i32 0, label %11
    i32 1, label %16
  ]

11:                                               ; preds = %3
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @h2o_http2_debug_state_register(i32 %14, i32 0)
  store i32 0, i32* %4, align 4
  br label %22

16:                                               ; preds = %3
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @h2o_http2_debug_state_register(i32 %19, i32 1)
  store i32 0, i32* %4, align 4
  br label %22

21:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %22

22:                                               ; preds = %21, %16, %11
  %23 = load i32, i32* %4, align 4
  ret i32 %23
}

declare dso_local i32 @h2o_configurator_get_one_of(i32*, i32*, i8*) #1

declare dso_local i32 @h2o_http2_debug_state_register(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
