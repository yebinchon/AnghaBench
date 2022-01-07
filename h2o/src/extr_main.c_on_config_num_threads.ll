; ModuleID = '/home/carl/AnghaBench/h2o/src/extr_main.c_on_config_num_threads.c'
source_filename = "/home/carl/AnghaBench/h2o/src/extr_main.c_on_config_num_threads.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i64, i32* }
%struct.TYPE_11__ = type { i64, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64, i32* }

@conf = common dso_local global %struct.TYPE_13__ zeroinitializer, align 8
@YOML_TYPE_SCALAR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [4 x i8] c"%zu\00", align 1
@YOML_TYPE_SEQUENCE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [99 x i8] c"Can't handle a CPU list, this platform doesn't support thread pinning via `pthread_setaffinity_np`\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"num-threads must be >=1\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, %struct.TYPE_11__*)* @on_config_num_threads to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @on_config_num_threads(i32* %0, i32* %1, %struct.TYPE_11__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.TYPE_11__* %2, %struct.TYPE_11__** %7, align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @conf, i32 0, i32 0, i32 0), align 8
  %10 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %11 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @YOML_TYPE_SCALAR, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %37

15:                                               ; preds = %3
  store i64 0, i64* %9, align 8
  %16 = load i32*, i32** %5, align 8
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %18 = call i64 @h2o_configurator_scanf(i32* %16, %struct.TYPE_11__* %17, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i64* %9)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %15
  store i32 -1, i32* %4, align 4
  br label %56

21:                                               ; preds = %15
  %22 = load i64, i64* %9, align 8
  %23 = call i32 @h2o_vector_reserve(i32* null, %struct.TYPE_12__* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @conf, i32 0, i32 0), i64 %22)
  store i64 0, i64* %8, align 8
  br label %24

24:                                               ; preds = %33, %21
  %25 = load i64, i64* %8, align 8
  %26 = load i64, i64* %9, align 8
  %27 = icmp ult i64 %25, %26
  br i1 %27, label %28, label %36

28:                                               ; preds = %24
  %29 = load i32*, i32** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @conf, i32 0, i32 0, i32 1), align 8
  %30 = load i64, i64* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @conf, i32 0, i32 0, i32 0), align 8
  %31 = add nsw i64 %30, 1
  store i64 %31, i64* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @conf, i32 0, i32 0, i32 0), align 8
  %32 = getelementptr inbounds i32, i32* %29, i64 %30
  store i32 -1, i32* %32, align 4
  br label %33

33:                                               ; preds = %28
  %34 = load i64, i64* %8, align 8
  %35 = add i64 %34, 1
  store i64 %35, i64* %8, align 8
  br label %24

36:                                               ; preds = %24
  br label %48

37:                                               ; preds = %3
  %38 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @YOML_TYPE_SEQUENCE, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %47

43:                                               ; preds = %37
  %44 = load i32*, i32** %5, align 8
  %45 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %46 = call i32 @h2o_configurator_errprintf(i32* %44, %struct.TYPE_11__* %45, i8* getelementptr inbounds ([99 x i8], [99 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %56

47:                                               ; preds = %37
  br label %48

48:                                               ; preds = %47, %36
  %49 = load i64, i64* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @conf, i32 0, i32 0, i32 0), align 8
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %48
  %52 = load i32*, i32** %5, align 8
  %53 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %54 = call i32 @h2o_configurator_errprintf(i32* %52, %struct.TYPE_11__* %53, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %56

55:                                               ; preds = %48
  store i32 0, i32* %4, align 4
  br label %56

56:                                               ; preds = %55, %51, %43, %20
  %57 = load i32, i32* %4, align 4
  ret i32 %57
}

declare dso_local i64 @h2o_configurator_scanf(i32*, %struct.TYPE_11__*, i8*, i64*) #1

declare dso_local i32 @h2o_vector_reserve(i32*, %struct.TYPE_12__*, i64) #1

declare dso_local i32 @h2o_configurator_errprintf(i32*, %struct.TYPE_11__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
