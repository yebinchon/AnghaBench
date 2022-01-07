; ModuleID = '/home/carl/AnghaBench/h2o/lib/handler/configurator/extr_errordoc.c_on_config_exit.c'
source_filename = "/home/carl/AnghaBench/h2o/lib/handler/configurator/extr_errordoc.c_on_config_exit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32* }
%struct.errordoc_configurator_t = type { i32, %struct.TYPE_4__*, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_5__*, i32*)* @on_config_exit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @on_config_exit(i32* %0, %struct.TYPE_5__* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.errordoc_configurator_t*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %5, align 8
  store i32* %2, i32** %6, align 8
  %8 = load i32*, i32** %4, align 8
  %9 = bitcast i32* %8 to i8*
  %10 = bitcast i8* %9 to %struct.errordoc_configurator_t*
  store %struct.errordoc_configurator_t* %10, %struct.errordoc_configurator_t** %7, align 8
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %15, label %37

15:                                               ; preds = %3
  %16 = load %struct.errordoc_configurator_t*, %struct.errordoc_configurator_t** %7, align 8
  %17 = getelementptr inbounds %struct.errordoc_configurator_t, %struct.errordoc_configurator_t* %16, i32 0, i32 2
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %37

22:                                               ; preds = %15
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = load %struct.errordoc_configurator_t*, %struct.errordoc_configurator_t** %7, align 8
  %27 = getelementptr inbounds %struct.errordoc_configurator_t, %struct.errordoc_configurator_t* %26, i32 0, i32 2
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.errordoc_configurator_t*, %struct.errordoc_configurator_t** %7, align 8
  %32 = getelementptr inbounds %struct.errordoc_configurator_t, %struct.errordoc_configurator_t* %31, i32 0, i32 2
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = call i32 @h2o_errordoc_register(i32* %25, i32 %30, i64 %35)
  br label %37

37:                                               ; preds = %22, %15, %3
  %38 = load %struct.errordoc_configurator_t*, %struct.errordoc_configurator_t** %7, align 8
  %39 = getelementptr inbounds %struct.errordoc_configurator_t, %struct.errordoc_configurator_t* %38, i32 0, i32 2
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 -1
  store %struct.TYPE_4__* %41, %struct.TYPE_4__** %39, align 8
  %42 = load %struct.errordoc_configurator_t*, %struct.errordoc_configurator_t** %7, align 8
  %43 = getelementptr inbounds %struct.errordoc_configurator_t, %struct.errordoc_configurator_t* %42, i32 0, i32 2
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %43, align 8
  %45 = load %struct.errordoc_configurator_t*, %struct.errordoc_configurator_t** %7, align 8
  %46 = getelementptr inbounds %struct.errordoc_configurator_t, %struct.errordoc_configurator_t* %45, i32 0, i32 1
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  %48 = icmp eq %struct.TYPE_4__* %44, %47
  br i1 %48, label %49, label %53

49:                                               ; preds = %37
  %50 = load %struct.errordoc_configurator_t*, %struct.errordoc_configurator_t** %7, align 8
  %51 = getelementptr inbounds %struct.errordoc_configurator_t, %struct.errordoc_configurator_t* %50, i32 0, i32 0
  %52 = call i32 @h2o_mem_clear_pool(i32* %51)
  br label %53

53:                                               ; preds = %49, %37
  ret i32 0
}

declare dso_local i32 @h2o_errordoc_register(i32*, i32, i64) #1

declare dso_local i32 @h2o_mem_clear_pool(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
