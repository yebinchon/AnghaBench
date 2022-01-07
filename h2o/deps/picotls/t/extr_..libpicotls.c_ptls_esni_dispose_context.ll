; ModuleID = '/home/carl/AnghaBench/h2o/deps/picotls/t/extr_..libpicotls.c_ptls_esni_dispose_context.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/picotls/t/extr_..libpicotls.c_ptls_esni_dispose_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_6__**, %struct.TYPE_6__** }
%struct.TYPE_6__ = type { i32 (%struct.TYPE_6__**, i32, i32*, i32)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ptls_esni_dispose_context(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca i64, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  %4 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %5 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 1
  %6 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %5, align 8
  %7 = icmp ne %struct.TYPE_6__** %6, null
  br i1 %7, label %8, label %41

8:                                                ; preds = %1
  store i64 0, i64* %3, align 8
  br label %9

9:                                                ; preds = %33, %8
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 1
  %12 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %11, align 8
  %13 = load i64, i64* %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %12, i64 %13
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %16 = icmp ne %struct.TYPE_6__* %15, null
  br i1 %16, label %17, label %36

17:                                               ; preds = %9
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 1
  %20 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %19, align 8
  %21 = load i64, i64* %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %20, i64 %21
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load i32 (%struct.TYPE_6__**, i32, i32*, i32)*, i32 (%struct.TYPE_6__**, i32, i32*, i32)** %24, align 8
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 1
  %28 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %27, align 8
  %29 = load i64, i64* %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %28, i64 %29
  %31 = call i32 @ptls_iovec_init(i32* null, i32 0)
  %32 = call i32 %25(%struct.TYPE_6__** %30, i32 1, i32* null, i32 %31)
  br label %33

33:                                               ; preds = %17
  %34 = load i64, i64* %3, align 8
  %35 = add i64 %34, 1
  store i64 %35, i64* %3, align 8
  br label %9

36:                                               ; preds = %9
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 1
  %39 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %38, align 8
  %40 = call i32 @free(%struct.TYPE_6__** %39)
  br label %41

41:                                               ; preds = %36, %1
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %43, align 8
  %45 = call i32 @free(%struct.TYPE_6__** %44)
  ret void
}

declare dso_local i32 @ptls_iovec_init(i32*, i32) #1

declare dso_local i32 @free(%struct.TYPE_6__**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
