; ModuleID = '/home/carl/AnghaBench/h2o/lib/handler/configurator/extr_headers.c_on_config_enter.c'
source_filename = "/home/carl/AnghaBench/h2o/lib/handler/configurator/extr_headers.c_on_config_enter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.headers_configurator_t = type { i32** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32*)* @on_config_enter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @on_config_enter(i32* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.headers_configurator_t*, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %8 = load i32*, i32** %4, align 8
  %9 = bitcast i32* %8 to i8*
  %10 = bitcast i8* %9 to %struct.headers_configurator_t*
  store %struct.headers_configurator_t* %10, %struct.headers_configurator_t** %7, align 8
  %11 = load %struct.headers_configurator_t*, %struct.headers_configurator_t** %7, align 8
  %12 = getelementptr inbounds %struct.headers_configurator_t, %struct.headers_configurator_t* %11, i32 0, i32 0
  %13 = load i32**, i32*** %12, align 8
  %14 = getelementptr inbounds i32*, i32** %13, i64 0
  %15 = load i32*, i32** %14, align 8
  %16 = load %struct.headers_configurator_t*, %struct.headers_configurator_t** %7, align 8
  %17 = getelementptr inbounds %struct.headers_configurator_t, %struct.headers_configurator_t* %16, i32 0, i32 0
  %18 = load i32**, i32*** %17, align 8
  %19 = getelementptr inbounds i32*, i32** %18, i64 1
  store i32* %15, i32** %19, align 8
  %20 = load %struct.headers_configurator_t*, %struct.headers_configurator_t** %7, align 8
  %21 = getelementptr inbounds %struct.headers_configurator_t, %struct.headers_configurator_t* %20, i32 0, i32 0
  %22 = load i32**, i32*** %21, align 8
  %23 = getelementptr inbounds i32*, i32** %22, i64 1
  %24 = load i32*, i32** %23, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %26, label %33

26:                                               ; preds = %3
  %27 = load %struct.headers_configurator_t*, %struct.headers_configurator_t** %7, align 8
  %28 = getelementptr inbounds %struct.headers_configurator_t, %struct.headers_configurator_t* %27, i32 0, i32 0
  %29 = load i32**, i32*** %28, align 8
  %30 = getelementptr inbounds i32*, i32** %29, i64 1
  %31 = load i32*, i32** %30, align 8
  %32 = call i32 @h2o_mem_addref_shared(i32* %31)
  br label %33

33:                                               ; preds = %26, %3
  %34 = load %struct.headers_configurator_t*, %struct.headers_configurator_t** %7, align 8
  %35 = getelementptr inbounds %struct.headers_configurator_t, %struct.headers_configurator_t* %34, i32 0, i32 0
  %36 = load i32**, i32*** %35, align 8
  %37 = getelementptr inbounds i32*, i32** %36, i32 1
  store i32** %37, i32*** %35, align 8
  ret i32 0
}

declare dso_local i32 @h2o_mem_addref_shared(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
