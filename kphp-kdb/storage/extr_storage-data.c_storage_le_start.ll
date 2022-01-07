; ModuleID = '/home/carl/AnghaBench/kphp-kdb/storage/extr_storage-data.c_storage_le_start.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/storage/extr_storage-data.c_storage_le_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64, i64, i8, i8 }
%struct.lev_start = type { i64, i32, i64, i64, i64, i8* }

@STORAGE_SCHEMA_V1 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [18 x i8] c"V->md5_mode = %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @storage_le_start(%struct.TYPE_3__* %0, %struct.lev_start* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca %struct.lev_start*, align 8
  %6 = alloca [12 x i8], align 1
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store %struct.lev_start* %1, %struct.lev_start** %5, align 8
  %7 = load %struct.lev_start*, %struct.lev_start** %5, align 8
  %8 = getelementptr inbounds %struct.lev_start, %struct.lev_start* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @STORAGE_SCHEMA_V1, align 8
  %11 = icmp ne i64 %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %83

13:                                               ; preds = %2
  %14 = load %struct.lev_start*, %struct.lev_start** %5, align 8
  %15 = getelementptr inbounds %struct.lev_start, %struct.lev_start* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = icmp ne i32 %16, 12
  br i1 %17, label %18, label %19

18:                                               ; preds = %13
  store i32 -2, i32* %3, align 4
  br label %83

19:                                               ; preds = %13
  %20 = load %struct.lev_start*, %struct.lev_start** %5, align 8
  %21 = getelementptr inbounds %struct.lev_start, %struct.lev_start* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  store i64 %22, i64* %24, align 8
  %25 = load %struct.lev_start*, %struct.lev_start** %5, align 8
  %26 = getelementptr inbounds %struct.lev_start, %struct.lev_start* %25, i32 0, i32 3
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 1
  store i64 %27, i64* %29, align 8
  %30 = load %struct.lev_start*, %struct.lev_start** %5, align 8
  %31 = getelementptr inbounds %struct.lev_start, %struct.lev_start* %30, i32 0, i32 4
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 2
  store i64 %32, i64* %34, align 8
  %35 = getelementptr inbounds [12 x i8], [12 x i8]* %6, i64 0, i64 0
  %36 = load %struct.lev_start*, %struct.lev_start** %5, align 8
  %37 = getelementptr inbounds %struct.lev_start, %struct.lev_start* %36, i32 0, i32 5
  %38 = load i8*, i8** %37, align 8
  %39 = getelementptr inbounds i8, i8* %38, i64 0
  %40 = call i32 @memcpy(i8* %35, i8* %39, i32 12)
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 3
  %43 = getelementptr inbounds [12 x i8], [12 x i8]* %6, i64 0, i64 0
  %44 = call i32 @memcpy(i8* %42, i8* %43, i32 8)
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 4
  %47 = getelementptr inbounds [12 x i8], [12 x i8]* %6, i64 0, i64 8
  %48 = call i32 @memcpy(i8* %46, i8* %47, i32 4)
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 4
  %51 = load i8, i8* %50, align 1
  %52 = call i32 @vkprintf(i32 3, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i8 zeroext %51)
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 2
  %55 = load i64, i64* %54, align 8
  %56 = icmp sgt i64 %55, 0
  br i1 %56, label %57, label %79

57:                                               ; preds = %19
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = icmp sge i64 %60, 0
  br i1 %61, label %62, label %79

62:                                               ; preds = %57
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = add nsw i64 %65, 1
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = icmp eq i64 %66, %69
  br i1 %70, label %71, label %79

71:                                               ; preds = %62
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 2
  %77 = load i64, i64* %76, align 8
  %78 = icmp sle i64 %74, %77
  br label %79

79:                                               ; preds = %71, %62, %57, %19
  %80 = phi i1 [ false, %62 ], [ false, %57 ], [ false, %19 ], [ %78, %71 ]
  %81 = zext i1 %80 to i32
  %82 = call i32 @assert(i32 %81)
  store i32 0, i32* %3, align 4
  br label %83

83:                                               ; preds = %79, %18, %12
  %84 = load i32, i32* %3, align 4
  ret i32 %84
}

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @vkprintf(i32, i8*, i8 zeroext) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
