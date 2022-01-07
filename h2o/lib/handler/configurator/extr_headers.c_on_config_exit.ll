; ModuleID = '/home/carl/AnghaBench/h2o/lib/handler/configurator/extr_headers.c_on_config_exit.c'
source_filename = "/home/carl/AnghaBench/h2o/lib/handler/configurator/extr_headers.c_on_config_exit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32* }
%struct.headers_configurator_t = type { i32** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_3__*, i32*)* @on_config_exit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @on_config_exit(i32* %0, %struct.TYPE_3__* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.headers_configurator_t*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %5, align 8
  store i32* %2, i32** %6, align 8
  %8 = load i32*, i32** %4, align 8
  %9 = bitcast i32* %8 to i8*
  %10 = bitcast i8* %9 to %struct.headers_configurator_t*
  store %struct.headers_configurator_t* %10, %struct.headers_configurator_t** %7, align 8
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %15, label %42

15:                                               ; preds = %3
  %16 = load %struct.headers_configurator_t*, %struct.headers_configurator_t** %7, align 8
  %17 = getelementptr inbounds %struct.headers_configurator_t, %struct.headers_configurator_t* %16, i32 0, i32 0
  %18 = load i32**, i32*** %17, align 8
  %19 = load i32*, i32** %18, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %21, label %42

21:                                               ; preds = %15
  %22 = load %struct.headers_configurator_t*, %struct.headers_configurator_t** %7, align 8
  %23 = getelementptr inbounds %struct.headers_configurator_t, %struct.headers_configurator_t* %22, i32 0, i32 0
  %24 = load i32**, i32*** %23, align 8
  %25 = load i32*, i32** %24, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %27, label %33

27:                                               ; preds = %21
  %28 = load %struct.headers_configurator_t*, %struct.headers_configurator_t** %7, align 8
  %29 = getelementptr inbounds %struct.headers_configurator_t, %struct.headers_configurator_t* %28, i32 0, i32 0
  %30 = load i32**, i32*** %29, align 8
  %31 = load i32*, i32** %30, align 8
  %32 = call i32 @h2o_mem_addref_shared(i32* %31)
  br label %33

33:                                               ; preds = %27, %21
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = load %struct.headers_configurator_t*, %struct.headers_configurator_t** %7, align 8
  %38 = getelementptr inbounds %struct.headers_configurator_t, %struct.headers_configurator_t* %37, i32 0, i32 0
  %39 = load i32**, i32*** %38, align 8
  %40 = load i32*, i32** %39, align 8
  %41 = call i32 @h2o_headers_register(i32* %36, i32* %40)
  br label %42

42:                                               ; preds = %33, %15, %3
  %43 = load %struct.headers_configurator_t*, %struct.headers_configurator_t** %7, align 8
  %44 = getelementptr inbounds %struct.headers_configurator_t, %struct.headers_configurator_t* %43, i32 0, i32 0
  %45 = load i32**, i32*** %44, align 8
  %46 = load i32*, i32** %45, align 8
  %47 = icmp ne i32* %46, null
  br i1 %47, label %48, label %54

48:                                               ; preds = %42
  %49 = load %struct.headers_configurator_t*, %struct.headers_configurator_t** %7, align 8
  %50 = getelementptr inbounds %struct.headers_configurator_t, %struct.headers_configurator_t* %49, i32 0, i32 0
  %51 = load i32**, i32*** %50, align 8
  %52 = load i32*, i32** %51, align 8
  %53 = call i32 @h2o_mem_release_shared(i32* %52)
  br label %54

54:                                               ; preds = %48, %42
  %55 = load %struct.headers_configurator_t*, %struct.headers_configurator_t** %7, align 8
  %56 = getelementptr inbounds %struct.headers_configurator_t, %struct.headers_configurator_t* %55, i32 0, i32 0
  %57 = load i32**, i32*** %56, align 8
  %58 = getelementptr inbounds i32*, i32** %57, i32 -1
  store i32** %58, i32*** %56, align 8
  ret i32 0
}

declare dso_local i32 @h2o_mem_addref_shared(i32*) #1

declare dso_local i32 @h2o_headers_register(i32*, i32*) #1

declare dso_local i32 @h2o_mem_release_shared(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
