; ModuleID = '/home/carl/AnghaBench/h2o/src/extr_main.c_on_config_listen_exit.c'
source_filename = "/home/carl/AnghaBench/h2o/src/extr_main.c_on_config_listen_exit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, %struct.TYPE_5__, %struct.listener_config_t** }
%struct.TYPE_5__ = type { i32* }
%struct.listener_config_t = type { i32* }
%struct.TYPE_6__ = type { i32*, i32* }

@conf = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@.str = private unnamed_addr constant [105 x i8] c"mandatory configuration directive `listen` does not exist, neither at global level or at this host level\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_6__*, i32*)* @on_config_listen_exit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @on_config_listen_exit(i32* %0, %struct.TYPE_6__* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.listener_config_t*, align 8
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %6, align 8
  store i32* %2, i32** %7, align 8
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  %13 = icmp ne i32* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  br label %57

15:                                               ; preds = %3
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 1
  %18 = load i32*, i32** %17, align 8
  %19 = icmp eq i32* %18, null
  br i1 %19, label %20, label %43

20:                                               ; preds = %15
  store i64 0, i64* %8, align 8
  br label %21

21:                                               ; preds = %39, %20
  %22 = load i64, i64* %8, align 8
  %23 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @conf, i32 0, i32 0), align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %42

25:                                               ; preds = %21
  %26 = load %struct.listener_config_t**, %struct.listener_config_t*** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @conf, i32 0, i32 2), align 8
  %27 = load i64, i64* %8, align 8
  %28 = getelementptr inbounds %struct.listener_config_t*, %struct.listener_config_t** %26, i64 %27
  %29 = load %struct.listener_config_t*, %struct.listener_config_t** %28, align 8
  store %struct.listener_config_t* %29, %struct.listener_config_t** %9, align 8
  %30 = load %struct.listener_config_t*, %struct.listener_config_t** %9, align 8
  %31 = getelementptr inbounds %struct.listener_config_t, %struct.listener_config_t* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = icmp eq i32* %32, null
  br i1 %33, label %34, label %38

34:                                               ; preds = %25
  %35 = load i32*, i32** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @conf, i32 0, i32 1, i32 0), align 8
  %36 = load %struct.listener_config_t*, %struct.listener_config_t** %9, align 8
  %37 = getelementptr inbounds %struct.listener_config_t, %struct.listener_config_t* %36, i32 0, i32 0
  store i32* %35, i32** %37, align 8
  br label %38

38:                                               ; preds = %34, %25
  br label %39

39:                                               ; preds = %38
  %40 = load i64, i64* %8, align 8
  %41 = add i64 %40, 1
  store i64 %41, i64* %8, align 8
  br label %21

42:                                               ; preds = %21
  br label %56

43:                                               ; preds = %15
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = icmp eq i32* %46, null
  br i1 %47, label %48, label %55

48:                                               ; preds = %43
  %49 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @conf, i32 0, i32 0), align 8
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %48
  %52 = load i32*, i32** %7, align 8
  %53 = call i32 @h2o_configurator_errprintf(i32* null, i32* %52, i8* getelementptr inbounds ([105 x i8], [105 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %58

54:                                               ; preds = %48
  br label %55

55:                                               ; preds = %54, %43
  br label %56

56:                                               ; preds = %55, %42
  br label %57

57:                                               ; preds = %56, %14
  store i32 0, i32* %4, align 4
  br label %58

58:                                               ; preds = %57, %51
  %59 = load i32, i32* %4, align 4
  ret i32 %59
}

declare dso_local i32 @h2o_configurator_errprintf(i32*, i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
