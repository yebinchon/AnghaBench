; ModuleID = '/home/carl/AnghaBench/h2o/lib/handler/configurator/extr_expires.c_on_config_exit.c'
source_filename = "/home/carl/AnghaBench/h2o/lib/handler/configurator/extr_expires.c_on_config_exit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32* }
%struct.expires_configurator_t = type { %struct.TYPE_6__** }
%struct.TYPE_6__ = type { i64 }

@H2O_EXPIRES_MODE_MAX_AGE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_5__*, i32*)* @on_config_exit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @on_config_exit(i32* %0, %struct.TYPE_5__* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.expires_configurator_t*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %5, align 8
  store i32* %2, i32** %6, align 8
  %8 = load i32*, i32** %4, align 8
  %9 = bitcast i32* %8 to i8*
  %10 = bitcast i8* %9 to %struct.expires_configurator_t*
  store %struct.expires_configurator_t* %10, %struct.expires_configurator_t** %7, align 8
  %11 = load %struct.expires_configurator_t*, %struct.expires_configurator_t** %7, align 8
  %12 = getelementptr inbounds %struct.expires_configurator_t, %struct.expires_configurator_t* %11, i32 0, i32 0
  %13 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %12, align 8
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %15 = icmp ne %struct.TYPE_6__* %14, null
  br i1 %15, label %16, label %49

16:                                               ; preds = %3
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %21, label %30

21:                                               ; preds = %16
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = load %struct.expires_configurator_t*, %struct.expires_configurator_t** %7, align 8
  %26 = getelementptr inbounds %struct.expires_configurator_t, %struct.expires_configurator_t* %25, i32 0, i32 0
  %27 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %26, align 8
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %27, align 8
  %29 = call i32 @h2o_expires_register(i32* %24, %struct.TYPE_6__* %28)
  br label %30

30:                                               ; preds = %21, %16
  %31 = load %struct.expires_configurator_t*, %struct.expires_configurator_t** %7, align 8
  %32 = getelementptr inbounds %struct.expires_configurator_t, %struct.expires_configurator_t* %31, i32 0, i32 0
  %33 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %32, align 8
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @H2O_EXPIRES_MODE_MAX_AGE, align 8
  %38 = icmp eq i64 %36, %37
  %39 = zext i1 %38 to i32
  %40 = call i32 @assert(i32 %39)
  %41 = load %struct.expires_configurator_t*, %struct.expires_configurator_t** %7, align 8
  %42 = getelementptr inbounds %struct.expires_configurator_t, %struct.expires_configurator_t* %41, i32 0, i32 0
  %43 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %42, align 8
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %43, align 8
  %45 = call i32 @free(%struct.TYPE_6__* %44)
  %46 = load %struct.expires_configurator_t*, %struct.expires_configurator_t** %7, align 8
  %47 = getelementptr inbounds %struct.expires_configurator_t, %struct.expires_configurator_t* %46, i32 0, i32 0
  %48 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %47, align 8
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %48, align 8
  br label %49

49:                                               ; preds = %30, %3
  %50 = load %struct.expires_configurator_t*, %struct.expires_configurator_t** %7, align 8
  %51 = getelementptr inbounds %struct.expires_configurator_t, %struct.expires_configurator_t* %50, i32 0, i32 0
  %52 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %52, i32 -1
  store %struct.TYPE_6__** %53, %struct.TYPE_6__*** %51, align 8
  ret i32 0
}

declare dso_local i32 @h2o_expires_register(i32*, %struct.TYPE_6__*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @free(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
