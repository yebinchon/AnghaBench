; ModuleID = '/home/carl/AnghaBench/h2o/lib/core/extr_request.c_close_generator_and_filters.c'
source_filename = "/home/carl/AnghaBench/h2o/lib/core/extr_request.c_close_generator_and_filters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_8__*, %struct.TYPE_9__* }
%struct.TYPE_8__ = type { %struct.TYPE_8__*, i32 (%struct.TYPE_8__*, %struct.TYPE_7__*)* }
%struct.TYPE_9__ = type { i32 (%struct.TYPE_9__*, %struct.TYPE_7__*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*)* @close_generator_and_filters to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @close_generator_and_filters(%struct.TYPE_7__* %0) #0 {
  %2 = alloca %struct.TYPE_7__*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %2, align 8
  %3 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %4 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %3, i32 0, i32 1
  %5 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %6 = icmp ne %struct.TYPE_9__* %5, null
  br i1 %6, label %7, label %28

7:                                                ; preds = %1
  %8 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 1
  %10 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 0
  %12 = load i32 (%struct.TYPE_9__*, %struct.TYPE_7__*)*, i32 (%struct.TYPE_9__*, %struct.TYPE_7__*)** %11, align 8
  %13 = icmp ne i32 (%struct.TYPE_9__*, %struct.TYPE_7__*)* %12, null
  br i1 %13, label %14, label %25

14:                                               ; preds = %7
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 1
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 0
  %19 = load i32 (%struct.TYPE_9__*, %struct.TYPE_7__*)*, i32 (%struct.TYPE_9__*, %struct.TYPE_7__*)** %18, align 8
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 1
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %21, align 8
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %24 = call i32 %19(%struct.TYPE_9__* %22, %struct.TYPE_7__* %23)
  br label %25

25:                                               ; preds = %14, %7
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 1
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %27, align 8
  br label %28

28:                                               ; preds = %25, %1
  br label %29

29:                                               ; preds = %54, %28
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %33, align 8
  %35 = icmp ne %struct.TYPE_8__* %34, null
  br i1 %35, label %36, label %62

36:                                               ; preds = %29
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 1
  %41 = load i32 (%struct.TYPE_8__*, %struct.TYPE_7__*)*, i32 (%struct.TYPE_8__*, %struct.TYPE_7__*)** %40, align 8
  %42 = icmp ne i32 (%struct.TYPE_8__*, %struct.TYPE_7__*)* %41, null
  br i1 %42, label %43, label %54

43:                                               ; preds = %36
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 1
  %48 = load i32 (%struct.TYPE_8__*, %struct.TYPE_7__*)*, i32 (%struct.TYPE_8__*, %struct.TYPE_7__*)** %47, align 8
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 0
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %50, align 8
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %53 = call i32 %48(%struct.TYPE_8__* %51, %struct.TYPE_7__* %52)
  br label %54

54:                                               ; preds = %43, %36
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 0
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 0
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %58, align 8
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 0
  store %struct.TYPE_8__* %59, %struct.TYPE_8__** %61, align 8
  br label %29

62:                                               ; preds = %29
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
