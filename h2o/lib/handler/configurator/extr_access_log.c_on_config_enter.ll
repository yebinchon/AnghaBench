; ModuleID = '/home/carl/AnghaBench/h2o/lib/handler/configurator/extr_access_log.c_on_config_enter.c'
source_filename = "/home/carl/AnghaBench/h2o/lib/handler/configurator/extr_access_log.c_on_config_enter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.st_h2o_access_log_configurator_t = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32*)* @on_config_enter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @on_config_enter(i32* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.st_h2o_access_log_configurator_t*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %10 = load i32*, i32** %4, align 8
  %11 = bitcast i32* %10 to i8*
  %12 = bitcast i8* %11 to %struct.st_h2o_access_log_configurator_t*
  store %struct.st_h2o_access_log_configurator_t* %12, %struct.st_h2o_access_log_configurator_t** %7, align 8
  %13 = load %struct.st_h2o_access_log_configurator_t*, %struct.st_h2o_access_log_configurator_t** %7, align 8
  %14 = getelementptr inbounds %struct.st_h2o_access_log_configurator_t, %struct.st_h2o_access_log_configurator_t* %13, i32 0, i32 0
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 1
  store %struct.TYPE_3__* %16, %struct.TYPE_3__** %14, align 8
  %17 = load %struct.st_h2o_access_log_configurator_t*, %struct.st_h2o_access_log_configurator_t** %7, align 8
  %18 = getelementptr inbounds %struct.st_h2o_access_log_configurator_t, %struct.st_h2o_access_log_configurator_t* %17, i32 0, i32 0
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = call i32 @memset(%struct.TYPE_3__* %19, i32 0, i32 16)
  %21 = load %struct.st_h2o_access_log_configurator_t*, %struct.st_h2o_access_log_configurator_t** %7, align 8
  %22 = getelementptr inbounds %struct.st_h2o_access_log_configurator_t, %struct.st_h2o_access_log_configurator_t* %21, i32 0, i32 0
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = load %struct.st_h2o_access_log_configurator_t*, %struct.st_h2o_access_log_configurator_t** %7, align 8
  %25 = getelementptr inbounds %struct.st_h2o_access_log_configurator_t, %struct.st_h2o_access_log_configurator_t* %24, i32 0, i32 0
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i64 -1
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = add nsw i32 %29, 1
  %31 = call i32 @h2o_vector_reserve(i32* null, %struct.TYPE_3__* %23, i32 %30)
  store i64 0, i64* %8, align 8
  br label %32

32:                                               ; preds = %70, %3
  %33 = load i64, i64* %8, align 8
  %34 = load %struct.st_h2o_access_log_configurator_t*, %struct.st_h2o_access_log_configurator_t** %7, align 8
  %35 = getelementptr inbounds %struct.st_h2o_access_log_configurator_t, %struct.st_h2o_access_log_configurator_t* %34, i32 0, i32 0
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i64 -1
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = sext i32 %39 to i64
  %41 = icmp ne i64 %33, %40
  br i1 %41, label %42, label %73

42:                                               ; preds = %32
  %43 = load %struct.st_h2o_access_log_configurator_t*, %struct.st_h2o_access_log_configurator_t** %7, align 8
  %44 = getelementptr inbounds %struct.st_h2o_access_log_configurator_t, %struct.st_h2o_access_log_configurator_t* %43, i32 0, i32 0
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i64 -1
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 1
  %48 = load i32**, i32*** %47, align 8
  %49 = load i64, i64* %8, align 8
  %50 = getelementptr inbounds i32*, i32** %48, i64 %49
  %51 = load i32*, i32** %50, align 8
  store i32* %51, i32** %9, align 8
  %52 = load i32*, i32** %9, align 8
  %53 = load %struct.st_h2o_access_log_configurator_t*, %struct.st_h2o_access_log_configurator_t** %7, align 8
  %54 = getelementptr inbounds %struct.st_h2o_access_log_configurator_t, %struct.st_h2o_access_log_configurator_t* %53, i32 0, i32 0
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i64 0
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 1
  %58 = load i32**, i32*** %57, align 8
  %59 = load %struct.st_h2o_access_log_configurator_t*, %struct.st_h2o_access_log_configurator_t** %7, align 8
  %60 = getelementptr inbounds %struct.st_h2o_access_log_configurator_t, %struct.st_h2o_access_log_configurator_t* %59, i32 0, i32 0
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i64 0
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %63, align 8
  %66 = sext i32 %64 to i64
  %67 = getelementptr inbounds i32*, i32** %58, i64 %66
  store i32* %52, i32** %67, align 8
  %68 = load i32*, i32** %9, align 8
  %69 = call i32 @h2o_mem_addref_shared(i32* %68)
  br label %70

70:                                               ; preds = %42
  %71 = load i64, i64* %8, align 8
  %72 = add i64 %71, 1
  store i64 %72, i64* %8, align 8
  br label %32

73:                                               ; preds = %32
  ret i32 0
}

declare dso_local i32 @memset(%struct.TYPE_3__*, i32, i32) #1

declare dso_local i32 @h2o_vector_reserve(i32*, %struct.TYPE_3__*, i32) #1

declare dso_local i32 @h2o_mem_addref_shared(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
