; ModuleID = '/home/carl/AnghaBench/h2o/lib/handler/configurator/extr_mruby.c_get_mrb.c'
source_filename = "/home/carl/AnghaBench/h2o/lib/handler/configurator/extr_mruby.c_get_mrb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mruby_configurator_t = type { i32* }

@.str = private unnamed_addr constant [15 x i8] c"%s: no memory\0A\00", align 1
@H2O_MRUBY_MODULE_NAME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.mruby_configurator_t*)* @get_mrb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @get_mrb(%struct.mruby_configurator_t* %0) #0 {
  %2 = alloca %struct.mruby_configurator_t*, align 8
  store %struct.mruby_configurator_t* %0, %struct.mruby_configurator_t** %2, align 8
  %3 = load %struct.mruby_configurator_t*, %struct.mruby_configurator_t** %2, align 8
  %4 = getelementptr inbounds %struct.mruby_configurator_t, %struct.mruby_configurator_t* %3, i32 0, i32 0
  %5 = load i32*, i32** %4, align 8
  %6 = icmp eq i32* %5, null
  br i1 %6, label %7, label %23

7:                                                ; preds = %1
  %8 = call i32* (...) @mrb_open()
  %9 = load %struct.mruby_configurator_t*, %struct.mruby_configurator_t** %2, align 8
  %10 = getelementptr inbounds %struct.mruby_configurator_t, %struct.mruby_configurator_t* %9, i32 0, i32 0
  store i32* %8, i32** %10, align 8
  %11 = load %struct.mruby_configurator_t*, %struct.mruby_configurator_t** %2, align 8
  %12 = getelementptr inbounds %struct.mruby_configurator_t, %struct.mruby_configurator_t* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = icmp eq i32* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %7
  %16 = load i32, i32* @H2O_MRUBY_MODULE_NAME, align 4
  %17 = call i32 @h2o_fatal(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %16)
  br label %18

18:                                               ; preds = %15, %7
  %19 = load %struct.mruby_configurator_t*, %struct.mruby_configurator_t** %2, align 8
  %20 = getelementptr inbounds %struct.mruby_configurator_t, %struct.mruby_configurator_t* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = call i32 @h2o_mruby_setup_globals(i32* %21)
  br label %23

23:                                               ; preds = %18, %1
  %24 = load %struct.mruby_configurator_t*, %struct.mruby_configurator_t** %2, align 8
  %25 = getelementptr inbounds %struct.mruby_configurator_t, %struct.mruby_configurator_t* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  ret i32* %26
}

declare dso_local i32* @mrb_open(...) #1

declare dso_local i32 @h2o_fatal(i8*, i32) #1

declare dso_local i32 @h2o_mruby_setup_globals(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
