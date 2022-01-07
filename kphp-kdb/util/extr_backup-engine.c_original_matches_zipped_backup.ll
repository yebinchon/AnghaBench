; ModuleID = '/home/carl/AnghaBench/kphp-kdb/util/extr_backup-engine.c_original_matches_zipped_backup.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/util/extr_backup-engine.c_original_matches_zipped_backup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file_info = type { i32, i64, i32, i32, i64, i64 }
%struct.TYPE_2__ = type { i64, i64 }

@FIF_ZIPPED = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4
@Buffer = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file_info*, %struct.file_info*)* @original_matches_zipped_backup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @original_matches_zipped_backup(%struct.file_info* %0, %struct.file_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.file_info*, align 8
  %5 = alloca %struct.file_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_2__*, align 8
  store %struct.file_info* %0, %struct.file_info** %4, align 8
  store %struct.file_info* %1, %struct.file_info** %5, align 8
  %10 = load %struct.file_info*, %struct.file_info** %4, align 8
  %11 = getelementptr inbounds %struct.file_info, %struct.file_info* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @FIF_ZIPPED, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %23, label %16

16:                                               ; preds = %2
  %17 = load %struct.file_info*, %struct.file_info** %5, align 8
  %18 = getelementptr inbounds %struct.file_info, %struct.file_info* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @FIF_ZIPPED, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br label %23

23:                                               ; preds = %16, %2
  %24 = phi i1 [ false, %2 ], [ %22, %16 ]
  %25 = zext i1 %24 to i32
  %26 = call i32 @assert(i32 %25)
  %27 = load %struct.file_info*, %struct.file_info** %4, align 8
  %28 = getelementptr inbounds %struct.file_info, %struct.file_info* %27, i32 0, i32 5
  %29 = load i64, i64* %28, align 8
  %30 = call i32 @strlen(i64 %29)
  store i32 %30, i32* %7, align 4
  %31 = load %struct.file_info*, %struct.file_info** %5, align 8
  %32 = getelementptr inbounds %struct.file_info, %struct.file_info* %31, i32 0, i32 5
  %33 = load i64, i64* %32, align 8
  %34 = call i32 @strlen(i64 %33)
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* %8, align 4
  %36 = load i32, i32* %7, align 4
  %37 = add nsw i32 %36, 14
  %38 = icmp ne i32 %35, %37
  br i1 %38, label %57, label %39

39:                                               ; preds = %23
  %40 = load %struct.file_info*, %struct.file_info** %4, align 8
  %41 = getelementptr inbounds %struct.file_info, %struct.file_info* %40, i32 0, i32 5
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.file_info*, %struct.file_info** %5, align 8
  %44 = getelementptr inbounds %struct.file_info, %struct.file_info* %43, i32 0, i32 5
  %45 = load i64, i64* %44, align 8
  %46 = load i32, i32* %7, align 4
  %47 = call i64 @memcmp(i64 %42, i64 %45, i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %57, label %49

49:                                               ; preds = %39
  %50 = load %struct.file_info*, %struct.file_info** %4, align 8
  %51 = getelementptr inbounds %struct.file_info, %struct.file_info* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.file_info*, %struct.file_info** %5, align 8
  %54 = getelementptr inbounds %struct.file_info, %struct.file_info* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %52, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %49, %39, %23
  store i32 0, i32* %3, align 4
  br label %105

58:                                               ; preds = %49
  %59 = load %struct.file_info*, %struct.file_info** %5, align 8
  %60 = getelementptr inbounds %struct.file_info, %struct.file_info* %59, i32 0, i32 4
  %61 = load i64, i64* %60, align 8
  %62 = inttoptr i64 %61 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %62, %struct.TYPE_2__** %9, align 8
  %63 = load %struct.file_info*, %struct.file_info** %4, align 8
  %64 = getelementptr inbounds %struct.file_info, %struct.file_info* %63, i32 0, i32 4
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = call i64 @memcmp(i64 %65, i64 %68, i32 36)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %58
  store i32 0, i32* %3, align 4
  br label %105

72:                                               ; preds = %58
  %73 = load %struct.file_info*, %struct.file_info** %4, align 8
  %74 = getelementptr inbounds %struct.file_info, %struct.file_info* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.file_info*, %struct.file_info** %4, align 8
  %77 = getelementptr inbounds %struct.file_info, %struct.file_info* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 8
  %79 = sub nsw i32 %78, 36
  %80 = load i32, i32* @SEEK_SET, align 4
  %81 = call i32 @lseek(i32 %75, i32 %79, i32 %80)
  %82 = load %struct.file_info*, %struct.file_info** %4, align 8
  %83 = getelementptr inbounds %struct.file_info, %struct.file_info* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 8
  %85 = sub nsw i32 %84, 36
  %86 = icmp eq i32 %81, %85
  %87 = zext i1 %86 to i32
  %88 = call i32 @assert(i32 %87)
  %89 = load %struct.file_info*, %struct.file_info** %4, align 8
  %90 = getelementptr inbounds %struct.file_info, %struct.file_info* %89, i32 0, i32 3
  %91 = load i32, i32* %90, align 4
  %92 = load i64, i64* @Buffer, align 8
  %93 = call i32 @read(i32 %91, i64 %92, i32 36)
  store i32 %93, i32* %6, align 4
  %94 = load i32, i32* %6, align 4
  %95 = icmp ne i32 %94, 36
  br i1 %95, label %103, label %96

96:                                               ; preds = %72
  %97 = load i64, i64* @Buffer, align 8
  %98 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = call i64 @memcmp(i64 %97, i64 %100, i32 36)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %96, %72
  store i32 0, i32* %3, align 4
  br label %105

104:                                              ; preds = %96
  store i32 1, i32* %3, align 4
  br label %105

105:                                              ; preds = %104, %103, %71, %57
  %106 = load i32, i32* %3, align 4
  ret i32 %106
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @strlen(i64) #1

declare dso_local i64 @memcmp(i64, i64, i32) #1

declare dso_local i32 @lseek(i32, i32, i32) #1

declare dso_local i32 @read(i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
