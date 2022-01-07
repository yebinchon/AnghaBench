; ModuleID = '/home/carl/AnghaBench/h2o/lib/handler/configurator/extr_errordoc.c_on_config_errordoc.c'
source_filename = "/home/carl/AnghaBench/h2o/lib/handler/configurator/extr_errordoc.c_on_config_errordoc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64, %struct.TYPE_9__** }

@.str = private unnamed_addr constant [26 x i8] c"element must be a mapping\00", align 1
@.str.1 = private unnamed_addr constant [46 x i8] c"argument must be either of: sequence, mapping\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, %struct.TYPE_9__*)* @on_config_errordoc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @on_config_errordoc(i32* %0, i32* %1, %struct.TYPE_9__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_9__*, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.TYPE_9__* %2, %struct.TYPE_9__** %7, align 8
  %10 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %11 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  switch i32 %12, label %56 [
    i32 128, label %13
    i32 129, label %51
  ]

13:                                               ; preds = %3
  store i64 0, i64* %8, align 8
  br label %14

14:                                               ; preds = %47, %13
  %15 = load i64, i64* %8, align 8
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %15, %20
  br i1 %21, label %22, label %50

22:                                               ; preds = %14
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 1
  %27 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %26, align 8
  %28 = load i64, i64* %8, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %27, i64 %28
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %29, align 8
  store %struct.TYPE_9__* %30, %struct.TYPE_9__** %9, align 8
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp ne i32 %33, 129
  br i1 %34, label %35, label %39

35:                                               ; preds = %22
  %36 = load i32*, i32** %5, align 8
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %38 = call i32 @h2o_configurator_errprintf(i32* %36, %struct.TYPE_9__* %37, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %61

39:                                               ; preds = %22
  %40 = load i32*, i32** %5, align 8
  %41 = load i32*, i32** %6, align 8
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %43 = call i32 @register_errordoc(i32* %40, i32* %41, %struct.TYPE_9__* %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %39
  store i32 -1, i32* %4, align 4
  br label %61

46:                                               ; preds = %39
  br label %47

47:                                               ; preds = %46
  %48 = load i64, i64* %8, align 8
  %49 = add i64 %48, 1
  store i64 %49, i64* %8, align 8
  br label %14

50:                                               ; preds = %14
  store i32 0, i32* %4, align 4
  br label %61

51:                                               ; preds = %3
  %52 = load i32*, i32** %5, align 8
  %53 = load i32*, i32** %6, align 8
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %55 = call i32 @register_errordoc(i32* %52, i32* %53, %struct.TYPE_9__* %54)
  store i32 %55, i32* %4, align 4
  br label %61

56:                                               ; preds = %3
  br label %57

57:                                               ; preds = %56
  %58 = load i32*, i32** %5, align 8
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %60 = call i32 @h2o_configurator_errprintf(i32* %58, %struct.TYPE_9__* %59, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %61

61:                                               ; preds = %57, %51, %50, %45, %35
  %62 = load i32, i32* %4, align 4
  ret i32 %62
}

declare dso_local i32 @h2o_configurator_errprintf(i32*, %struct.TYPE_9__*, i8*) #1

declare dso_local i32 @register_errordoc(i32*, i32*, %struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
