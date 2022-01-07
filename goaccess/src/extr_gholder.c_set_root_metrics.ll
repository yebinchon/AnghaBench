; ModuleID = '/home/carl/AnghaBench/goaccess/src/extr_gholder.c_set_root_metrics.c'
source_filename = "/home/carl/AnghaBench/goaccess/src/extr_gholder.c_set_root_metrics.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i8*, i32, i32, %struct.TYPE_14__, %struct.TYPE_13__, %struct.TYPE_12__, %struct.TYPE_11__ }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_15__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, %struct.TYPE_16__**)* @set_root_metrics to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_root_metrics(i32 %0, i32 %1, i32 %2, %struct.TYPE_16__** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_15__, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_16__**, align 8
  %10 = alloca %struct.TYPE_16__*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %6, i32 0, i32 0
  store i32 %0, i32* %17, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.TYPE_16__** %3, %struct.TYPE_16__*** %9, align 8
  store i8* null, i8** %11, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %18 = load i32, i32* %8, align 4
  %19 = load i32, i32* %7, align 4
  %20 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %6, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @set_data_hits_keys(i32 %18, i32 %21, i32 %19, i8** %11, i32* %15)
  %23 = icmp eq i32 %22, 1
  br i1 %23, label %24, label %25

24:                                               ; preds = %4
  store i32 1, i32* %5, align 4
  br label %72

25:                                               ; preds = %4
  %26 = load i32, i32* %8, align 4
  %27 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %6, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @ht_get_bw(i32 %26, i32 %28)
  store i32 %29, i32* %12, align 4
  %30 = load i32, i32* %8, align 4
  %31 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %6, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @ht_get_cumts(i32 %30, i32 %32)
  store i32 %33, i32* %13, align 4
  %34 = load i32, i32* %8, align 4
  %35 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %6, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @ht_get_maxts(i32 %34, i32 %36)
  store i32 %37, i32* %14, align 4
  %38 = load i32, i32* %8, align 4
  %39 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %6, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @ht_get_visitors(i32 %38, i32 %40)
  store i32 %41, i32* %16, align 4
  %42 = call %struct.TYPE_16__* (...) @new_gmetrics()
  store %struct.TYPE_16__* %42, %struct.TYPE_16__** %10, align 8
  %43 = load i32, i32* %13, align 4
  %44 = load i32, i32* %15, align 4
  %45 = sdiv i32 %43, %44
  %46 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %47 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %46, i32 0, i32 6
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i32 0, i32 0
  store i32 %45, i32* %48, align 4
  %49 = load i32, i32* %13, align 4
  %50 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %51 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %50, i32 0, i32 5
  %52 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %51, i32 0, i32 0
  store i32 %49, i32* %52, align 8
  %53 = load i32, i32* %14, align 4
  %54 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %55 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %54, i32 0, i32 4
  %56 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %55, i32 0, i32 0
  store i32 %53, i32* %56, align 4
  %57 = load i32, i32* %12, align 4
  %58 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %59 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %58, i32 0, i32 3
  %60 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %59, i32 0, i32 0
  store i32 %57, i32* %60, align 8
  %61 = load i8*, i8** %11, align 8
  %62 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %63 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %62, i32 0, i32 0
  store i8* %61, i8** %63, align 8
  %64 = load i32, i32* %15, align 4
  %65 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %66 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %65, i32 0, i32 1
  store i32 %64, i32* %66, align 8
  %67 = load i32, i32* %16, align 4
  %68 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %69 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %68, i32 0, i32 2
  store i32 %67, i32* %69, align 4
  %70 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %71 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %9, align 8
  store %struct.TYPE_16__* %70, %struct.TYPE_16__** %71, align 8
  store i32 0, i32* %5, align 4
  br label %72

72:                                               ; preds = %25, %24
  %73 = load i32, i32* %5, align 4
  ret i32 %73
}

declare dso_local i32 @set_data_hits_keys(i32, i32, i32, i8**, i32*) #1

declare dso_local i32 @ht_get_bw(i32, i32) #1

declare dso_local i32 @ht_get_cumts(i32, i32) #1

declare dso_local i32 @ht_get_maxts(i32, i32) #1

declare dso_local i32 @ht_get_visitors(i32, i32) #1

declare dso_local %struct.TYPE_16__* @new_gmetrics(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
