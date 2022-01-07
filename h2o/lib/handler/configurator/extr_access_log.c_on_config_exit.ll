; ModuleID = '/home/carl/AnghaBench/h2o/lib/handler/configurator/extr_access_log.c_on_config_exit.c'
source_filename = "/home/carl/AnghaBench/h2o/lib/handler/configurator/extr_access_log.c_on_config_exit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32* }
%struct.st_h2o_access_log_configurator_t = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, i32** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_5__*, i32*)* @on_config_exit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @on_config_exit(i32* %0, %struct.TYPE_5__* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.st_h2o_access_log_configurator_t*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %5, align 8
  store i32* %2, i32** %6, align 8
  %10 = load i32*, i32** %4, align 8
  %11 = bitcast i32* %10 to i8*
  %12 = bitcast i8* %11 to %struct.st_h2o_access_log_configurator_t*
  store %struct.st_h2o_access_log_configurator_t* %12, %struct.st_h2o_access_log_configurator_t** %7, align 8
  store i64 0, i64* %8, align 8
  br label %13

13:                                               ; preds = %43, %3
  %14 = load i64, i64* %8, align 8
  %15 = load %struct.st_h2o_access_log_configurator_t*, %struct.st_h2o_access_log_configurator_t** %7, align 8
  %16 = getelementptr inbounds %struct.st_h2o_access_log_configurator_t, %struct.st_h2o_access_log_configurator_t* %15, i32 0, i32 0
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %14, %19
  br i1 %20, label %21, label %46

21:                                               ; preds = %13
  %22 = load %struct.st_h2o_access_log_configurator_t*, %struct.st_h2o_access_log_configurator_t** %7, align 8
  %23 = getelementptr inbounds %struct.st_h2o_access_log_configurator_t, %struct.st_h2o_access_log_configurator_t* %22, i32 0, i32 0
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 1
  %26 = load i32**, i32*** %25, align 8
  %27 = load i64, i64* %8, align 8
  %28 = getelementptr inbounds i32*, i32** %26, i64 %27
  %29 = load i32*, i32** %28, align 8
  store i32* %29, i32** %9, align 8
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = icmp ne i32* %32, null
  br i1 %33, label %34, label %40

34:                                               ; preds = %21
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = load i32*, i32** %9, align 8
  %39 = call i32 @h2o_access_log_register(i32* %37, i32* %38)
  br label %40

40:                                               ; preds = %34, %21
  %41 = load i32*, i32** %9, align 8
  %42 = call i32 @h2o_mem_release_shared(i32* %41)
  br label %43

43:                                               ; preds = %40
  %44 = load i64, i64* %8, align 8
  %45 = add i64 %44, 1
  store i64 %45, i64* %8, align 8
  br label %13

46:                                               ; preds = %13
  %47 = load %struct.st_h2o_access_log_configurator_t*, %struct.st_h2o_access_log_configurator_t** %7, align 8
  %48 = getelementptr inbounds %struct.st_h2o_access_log_configurator_t, %struct.st_h2o_access_log_configurator_t* %47, i32 0, i32 0
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 1
  %51 = load i32**, i32*** %50, align 8
  %52 = call i32 @free(i32** %51)
  %53 = load %struct.st_h2o_access_log_configurator_t*, %struct.st_h2o_access_log_configurator_t** %7, align 8
  %54 = getelementptr inbounds %struct.st_h2o_access_log_configurator_t, %struct.st_h2o_access_log_configurator_t* %53, i32 0, i32 0
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 -1
  store %struct.TYPE_4__* %56, %struct.TYPE_4__** %54, align 8
  ret i32 0
}

declare dso_local i32 @h2o_access_log_register(i32*, i32*) #1

declare dso_local i32 @h2o_mem_release_shared(i32*) #1

declare dso_local i32 @free(i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
