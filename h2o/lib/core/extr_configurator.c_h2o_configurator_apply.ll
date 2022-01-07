; ModuleID = '/home/carl/AnghaBench/h2o/lib/core/extr_configurator.c_h2o_configurator_apply.c'
source_filename = "/home/carl/AnghaBench/h2o/lib/core/extr_configurator.c_h2o_configurator_apply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32**, i32 }
%struct.TYPE_8__ = type { i32, %struct.TYPE_7__*, i32* }

@H2O_CONFIGURATOR_FLAG_GLOBAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"mandatory configuration directive `hosts` is missing\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @h2o_configurator_apply(%struct.TYPE_7__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = call %struct.TYPE_8__* @create_context(i32* null, i32 0)
  store %struct.TYPE_8__* %10, %struct.TYPE_8__** %8, align 8
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 1
  store %struct.TYPE_7__* %11, %struct.TYPE_7__** %13, align 8
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 1
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 1
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 2
  store i32* %17, i32** %19, align 8
  %20 = load i32, i32* %7, align 4
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 8
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %24 = load i32*, i32** %6, align 8
  %25 = load i32, i32* @H2O_CONFIGURATOR_FLAG_GLOBAL, align 4
  %26 = call i32 @h2o_configurator_apply_commands(%struct.TYPE_8__* %23, i32* %24, i32 %25, i32* null)
  store i32 %26, i32* %9, align 4
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %28 = call i32 @destroy_context(%struct.TYPE_8__* %27)
  %29 = load i32, i32* %9, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %3
  %32 = load i32, i32* %9, align 4
  store i32 %32, i32* %4, align 4
  br label %44

33:                                               ; preds = %3
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  %36 = load i32**, i32*** %35, align 8
  %37 = getelementptr inbounds i32*, i32** %36, i64 0
  %38 = load i32*, i32** %37, align 8
  %39 = icmp eq i32* %38, null
  br i1 %39, label %40, label %43

40:                                               ; preds = %33
  %41 = load i32*, i32** %6, align 8
  %42 = call i32 @h2o_configurator_errprintf(i32* null, i32* %41, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %44

43:                                               ; preds = %33
  store i32 0, i32* %4, align 4
  br label %44

44:                                               ; preds = %43, %40, %31
  %45 = load i32, i32* %4, align 4
  ret i32 %45
}

declare dso_local %struct.TYPE_8__* @create_context(i32*, i32) #1

declare dso_local i32 @h2o_configurator_apply_commands(%struct.TYPE_8__*, i32*, i32, i32*) #1

declare dso_local i32 @destroy_context(%struct.TYPE_8__*) #1

declare dso_local i32 @h2o_configurator_errprintf(i32*, i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
