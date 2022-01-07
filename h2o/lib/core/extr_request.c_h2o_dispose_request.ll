; ModuleID = '/home/carl/AnghaBench/h2o/lib/core/extr_request.c_h2o_dispose_request.c'
source_filename = "/home/carl/AnghaBench/h2o/lib/core/extr_request.c_h2o_dispose_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32*, %struct.TYPE_8__**, i32*, i32 }
%struct.TYPE_8__ = type { i32 (%struct.TYPE_8__*, %struct.TYPE_7__*)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @h2o_dispose_request(%struct.TYPE_7__* %0) #0 {
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca %struct.TYPE_8__**, align 8
  %4 = alloca %struct.TYPE_8__**, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %2, align 8
  %5 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %6 = call i32 @close_generator_and_filters(%struct.TYPE_7__* %5)
  %7 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 5
  %9 = call i32 @h2o_timer_unlink(i32* %8)
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 4
  %12 = load i32*, i32** %11, align 8
  %13 = icmp ne i32* %12, null
  br i1 %13, label %14, label %41

14:                                               ; preds = %1
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 3
  %17 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %16, align 8
  store %struct.TYPE_8__** %17, %struct.TYPE_8__*** %3, align 8
  %18 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %3, align 8
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %18, i64 %22
  store %struct.TYPE_8__** %23, %struct.TYPE_8__*** %4, align 8
  br label %24

24:                                               ; preds = %37, %14
  %25 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %3, align 8
  %26 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %4, align 8
  %27 = icmp ne %struct.TYPE_8__** %25, %26
  br i1 %27, label %28, label %40

28:                                               ; preds = %24
  %29 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %3, align 8
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  %32 = load i32 (%struct.TYPE_8__*, %struct.TYPE_7__*)*, i32 (%struct.TYPE_8__*, %struct.TYPE_7__*)** %31, align 8
  %33 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %3, align 8
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %33, align 8
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %36 = call i32 %32(%struct.TYPE_8__* %34, %struct.TYPE_7__* %35)
  br label %37

37:                                               ; preds = %28
  %38 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %38, i32 1
  store %struct.TYPE_8__** %39, %struct.TYPE_8__*** %3, align 8
  br label %24

40:                                               ; preds = %24
  br label %41

41:                                               ; preds = %40, %1
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 2
  %44 = load i32*, i32** %43, align 8
  %45 = icmp ne i32* %44, null
  br i1 %45, label %46, label %50

46:                                               ; preds = %41
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 2
  %49 = call i32 @h2o_buffer_dispose(i32** %48)
  br label %50

50:                                               ; preds = %46, %41
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 1
  %53 = call i32 @h2o_mem_clear_pool(i32* %52)
  ret void
}

declare dso_local i32 @close_generator_and_filters(%struct.TYPE_7__*) #1

declare dso_local i32 @h2o_timer_unlink(i32*) #1

declare dso_local i32 @h2o_buffer_dispose(i32**) #1

declare dso_local i32 @h2o_mem_clear_pool(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
