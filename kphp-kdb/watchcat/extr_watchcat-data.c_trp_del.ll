; ModuleID = '/home/carl/AnghaBench/kphp-kdb/watchcat/extr_watchcat-data.c_trp_del.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/watchcat/extr_watchcat-data.c_trp_del.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32, %struct.TYPE_9__*, %struct.TYPE_9__* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @trp_del(%struct.TYPE_8__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_9__**, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 1
  store %struct.TYPE_9__** %8, %struct.TYPE_9__*** %5, align 8
  br label %9

9:                                                ; preds = %61, %2
  %10 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %5, align 8
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %12 = icmp ne %struct.TYPE_9__* %11, null
  br i1 %12, label %13, label %62

13:                                               ; preds = %9
  %14 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %5, align 8
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* %4, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %37

20:                                               ; preds = %13
  %21 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %5, align 8
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %21, align 8
  store %struct.TYPE_9__* %22, %struct.TYPE_9__** %6, align 8
  %23 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %5, align 8
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 1
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %25, align 8
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 2
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %28, align 8
  %30 = call i32 @trp_merge(%struct.TYPE_9__** %23, %struct.TYPE_9__* %26, %struct.TYPE_9__* %29)
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %32 = call i32 @free_wkey(%struct.TYPE_9__* %31)
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = add nsw i32 %35, -1
  store i32 %36, i32* %34, align 8
  br label %64

37:                                               ; preds = %13
  %38 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %5, align 8
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* %4, align 4
  %43 = icmp sgt i32 %41, %42
  br i1 %43, label %44, label %48

44:                                               ; preds = %37
  %45 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %5, align 8
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 2
  store %struct.TYPE_9__** %47, %struct.TYPE_9__*** %5, align 8
  br label %60

48:                                               ; preds = %37
  %49 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %5, align 8
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* %4, align 4
  %54 = icmp slt i32 %52, %53
  br i1 %54, label %55, label %59

55:                                               ; preds = %48
  %56 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %5, align 8
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 1
  store %struct.TYPE_9__** %58, %struct.TYPE_9__*** %5, align 8
  br label %59

59:                                               ; preds = %55, %48
  br label %60

60:                                               ; preds = %59, %44
  br label %61

61:                                               ; preds = %60
  br label %9

62:                                               ; preds = %9
  %63 = call i32 @assert(i32 0)
  br label %64

64:                                               ; preds = %62, %20
  ret void
}

declare dso_local i32 @trp_merge(%struct.TYPE_9__**, %struct.TYPE_9__*, %struct.TYPE_9__*) #1

declare dso_local i32 @free_wkey(%struct.TYPE_9__*) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
