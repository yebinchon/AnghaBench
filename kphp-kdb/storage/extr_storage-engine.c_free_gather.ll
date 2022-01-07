; ModuleID = '/home/carl/AnghaBench/kphp-kdb/storage/extr_storage-engine.c_free_gather.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/storage/extr_storage-engine.c_free_gather.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gather_data = type { i64, i32*, i32*, i64, i32*, %struct.TYPE_2__*, %struct.gather_data* }
%struct.TYPE_2__ = type { %struct.gather_data* }

@active_write_threads = common dso_local global %struct.gather_data* null, align 8
@active_gathers = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @free_gather(%struct.gather_data* %0) #0 {
  %2 = alloca %struct.gather_data*, align 8
  store %struct.gather_data* %0, %struct.gather_data** %2, align 8
  %3 = load %struct.gather_data*, %struct.gather_data** @active_write_threads, align 8
  %4 = load %struct.gather_data*, %struct.gather_data** %2, align 8
  %5 = icmp eq %struct.gather_data* %3, %4
  br i1 %5, label %6, label %10

6:                                                ; preds = %1
  %7 = load %struct.gather_data*, %struct.gather_data** %2, align 8
  %8 = getelementptr inbounds %struct.gather_data, %struct.gather_data* %7, i32 0, i32 6
  %9 = load %struct.gather_data*, %struct.gather_data** %8, align 8
  store %struct.gather_data* %9, %struct.gather_data** @active_write_threads, align 8
  br label %10

10:                                               ; preds = %6, %1
  %11 = load %struct.gather_data*, %struct.gather_data** %2, align 8
  %12 = getelementptr inbounds %struct.gather_data, %struct.gather_data* %11, i32 0, i32 5
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = icmp ne %struct.TYPE_2__* %13, null
  br i1 %14, label %15, label %23

15:                                               ; preds = %10
  %16 = load %struct.gather_data*, %struct.gather_data** %2, align 8
  %17 = getelementptr inbounds %struct.gather_data, %struct.gather_data* %16, i32 0, i32 6
  %18 = load %struct.gather_data*, %struct.gather_data** %17, align 8
  %19 = load %struct.gather_data*, %struct.gather_data** %2, align 8
  %20 = getelementptr inbounds %struct.gather_data, %struct.gather_data* %19, i32 0, i32 5
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  store %struct.gather_data* %18, %struct.gather_data** %22, align 8
  br label %23

23:                                               ; preds = %15, %10
  %24 = load %struct.gather_data*, %struct.gather_data** %2, align 8
  %25 = getelementptr inbounds %struct.gather_data, %struct.gather_data* %24, i32 0, i32 6
  %26 = load %struct.gather_data*, %struct.gather_data** %25, align 8
  %27 = icmp ne %struct.gather_data* %26, null
  br i1 %27, label %28, label %36

28:                                               ; preds = %23
  %29 = load %struct.gather_data*, %struct.gather_data** %2, align 8
  %30 = getelementptr inbounds %struct.gather_data, %struct.gather_data* %29, i32 0, i32 5
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = load %struct.gather_data*, %struct.gather_data** %2, align 8
  %33 = getelementptr inbounds %struct.gather_data, %struct.gather_data* %32, i32 0, i32 6
  %34 = load %struct.gather_data*, %struct.gather_data** %33, align 8
  %35 = getelementptr inbounds %struct.gather_data, %struct.gather_data* %34, i32 0, i32 5
  store %struct.TYPE_2__* %31, %struct.TYPE_2__** %35, align 8
  br label %36

36:                                               ; preds = %28, %23
  %37 = load %struct.gather_data*, %struct.gather_data** %2, align 8
  %38 = getelementptr inbounds %struct.gather_data, %struct.gather_data* %37, i32 0, i32 4
  %39 = load i32*, i32** %38, align 8
  %40 = icmp ne i32* %39, null
  br i1 %40, label %41, label %50

41:                                               ; preds = %36
  %42 = load %struct.gather_data*, %struct.gather_data** %2, align 8
  %43 = getelementptr inbounds %struct.gather_data, %struct.gather_data* %42, i32 0, i32 4
  %44 = load i32*, i32** %43, align 8
  %45 = load %struct.gather_data*, %struct.gather_data** %2, align 8
  %46 = getelementptr inbounds %struct.gather_data, %struct.gather_data* %45, i32 0, i32 3
  %47 = load i64, i64* %46, align 8
  %48 = add nsw i64 %47, 1
  %49 = call i32 @tszfree(i32* %44, i64 %48)
  br label %50

50:                                               ; preds = %41, %36
  %51 = load %struct.gather_data*, %struct.gather_data** %2, align 8
  %52 = getelementptr inbounds %struct.gather_data, %struct.gather_data* %51, i32 0, i32 2
  %53 = load i32*, i32** %52, align 8
  %54 = icmp ne i32* %53, null
  br i1 %54, label %55, label %65

55:                                               ; preds = %50
  %56 = load %struct.gather_data*, %struct.gather_data** %2, align 8
  %57 = getelementptr inbounds %struct.gather_data, %struct.gather_data* %56, i32 0, i32 2
  %58 = load i32*, i32** %57, align 8
  %59 = load %struct.gather_data*, %struct.gather_data** %2, align 8
  %60 = getelementptr inbounds %struct.gather_data, %struct.gather_data* %59, i32 0, i32 2
  %61 = load i32*, i32** %60, align 8
  %62 = call i64 @strlen(i32* %61)
  %63 = add nsw i64 %62, 1
  %64 = call i32 @tszfree(i32* %58, i64 %63)
  br label %65

65:                                               ; preds = %55, %50
  %66 = load %struct.gather_data*, %struct.gather_data** %2, align 8
  %67 = getelementptr inbounds %struct.gather_data, %struct.gather_data* %66, i32 0, i32 1
  %68 = load i32*, i32** %67, align 8
  %69 = icmp ne i32* %68, null
  br i1 %69, label %70, label %78

70:                                               ; preds = %65
  %71 = load %struct.gather_data*, %struct.gather_data** %2, align 8
  %72 = getelementptr inbounds %struct.gather_data, %struct.gather_data* %71, i32 0, i32 1
  %73 = load i32*, i32** %72, align 8
  %74 = load %struct.gather_data*, %struct.gather_data** %2, align 8
  %75 = getelementptr inbounds %struct.gather_data, %struct.gather_data* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = call i32 @tszfree(i32* %73, i64 %76)
  br label %78

78:                                               ; preds = %70, %65
  %79 = load %struct.gather_data*, %struct.gather_data** %2, align 8
  %80 = call i32 @zfree(%struct.gather_data* %79, i32 56)
  %81 = load i32, i32* @active_gathers, align 4
  %82 = add nsw i32 %81, -1
  store i32 %82, i32* @active_gathers, align 4
  ret void
}

declare dso_local i32 @tszfree(i32*, i64) #1

declare dso_local i64 @strlen(i32*) #1

declare dso_local i32 @zfree(%struct.gather_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
