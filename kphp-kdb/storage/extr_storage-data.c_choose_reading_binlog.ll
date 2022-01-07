; ModuleID = '/home/carl/AnghaBench/kphp-kdb/storage/extr_storage-data.c_choose_reading_binlog.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/storage/extr_storage-data.c_choose_reading_binlog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i64, i64 }
%struct.TYPE_12__ = type { i32, %struct.TYPE_13__** }

@CMP_IP = common dso_local global i64 0, align 8
@choose_reading_binlog_errors = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_13__* @choose_reading_binlog(%struct.TYPE_12__* %0, i64 %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_13__*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %10, align 8
  store i32 0, i32* %9, align 4
  br label %11

11:                                               ; preds = %94, %4
  %12 = load i32, i32* %9, align 4
  %13 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp slt i32 %12, %15
  br i1 %16, label %17, label %97

17:                                               ; preds = %11
  %18 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %18, i32 0, i32 1
  %20 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %19, align 8
  %21 = load i32, i32* %9, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %20, i64 %22
  %24 = load %struct.TYPE_13__*, %struct.TYPE_13__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = shl i32 1, %26
  %28 = load i32, i32* %8, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %93, label %31

31:                                               ; preds = %17
  %32 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %32, i32 0, i32 1
  %34 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %33, align 8
  %35 = load i32, i32* %9, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %34, i64 %36
  %38 = load %struct.TYPE_13__*, %struct.TYPE_13__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = icmp sge i64 %40, 0
  br i1 %41, label %42, label %93

42:                                               ; preds = %31
  %43 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %43, i32 0, i32 1
  %45 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %44, align 8
  %46 = load i32, i32* %9, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %45, i64 %47
  %49 = load %struct.TYPE_13__*, %struct.TYPE_13__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* %7, align 8
  %53 = icmp sge i64 %51, %52
  br i1 %53, label %54, label %93

54:                                               ; preds = %42
  %55 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %55, i32 0, i32 1
  %57 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %56, align 8
  %58 = load i32, i32* %9, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %57, i64 %59
  %61 = load %struct.TYPE_13__*, %struct.TYPE_13__** %60, align 8
  %62 = load i64, i64* %6, align 8
  %63 = call i32 @bad_image_cache_probe(%struct.TYPE_13__* %61, i64 %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %93, label %65

65:                                               ; preds = %54
  %66 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %67 = icmp ne %struct.TYPE_13__* %66, null
  br i1 %67, label %68, label %83

68:                                               ; preds = %65
  %69 = load i64, i64* @CMP_IP, align 8
  %70 = inttoptr i64 %69 to %struct.TYPE_13__* (i64, %struct.TYPE_13__*, %struct.TYPE_13__*)**
  %71 = load %struct.TYPE_13__* (i64, %struct.TYPE_13__*, %struct.TYPE_13__*)*, %struct.TYPE_13__* (i64, %struct.TYPE_13__*, %struct.TYPE_13__*)** %70, align 8
  %72 = load i64, i64* @CMP_IP, align 8
  %73 = add nsw i64 %72, 1
  %74 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %75 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %75, i32 0, i32 1
  %77 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %76, align 8
  %78 = load i32, i32* %9, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %77, i64 %79
  %81 = load %struct.TYPE_13__*, %struct.TYPE_13__** %80, align 8
  %82 = call %struct.TYPE_13__* %71(i64 %73, %struct.TYPE_13__* %74, %struct.TYPE_13__* %81)
  br label %91

83:                                               ; preds = %65
  %84 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %85 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %84, i32 0, i32 1
  %86 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %85, align 8
  %87 = load i32, i32* %9, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %86, i64 %88
  %90 = load %struct.TYPE_13__*, %struct.TYPE_13__** %89, align 8
  br label %91

91:                                               ; preds = %83, %68
  %92 = phi %struct.TYPE_13__* [ %82, %68 ], [ %90, %83 ]
  store %struct.TYPE_13__* %92, %struct.TYPE_13__** %10, align 8
  br label %93

93:                                               ; preds = %91, %54, %42, %31, %17
  br label %94

94:                                               ; preds = %93
  %95 = load i32, i32* %9, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %9, align 4
  br label %11

97:                                               ; preds = %11
  %98 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %99 = icmp eq %struct.TYPE_13__* %98, null
  br i1 %99, label %100, label %103

100:                                              ; preds = %97
  %101 = load i32, i32* @choose_reading_binlog_errors, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* @choose_reading_binlog_errors, align 4
  br label %103

103:                                              ; preds = %100, %97
  %104 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  ret %struct.TYPE_13__* %104
}

declare dso_local i32 @bad_image_cache_probe(%struct.TYPE_13__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
