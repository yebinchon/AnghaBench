; ModuleID = '/home/carl/AnghaBench/kphp-kdb/kfs/extr_kfs.c_get_binlog_start_pos.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/kfs/extr_kfs.c_get_binlog_start_pos.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, %struct.kfs_file_info** }
%struct.kfs_file_info = type { i64, i64, i64 }

@kfs_binlog = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @get_binlog_start_pos(%struct.TYPE_3__* %0, i32 %1, i64* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.kfs_file_info*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64* %2, i64** %7, align 8
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %11 = icmp ne %struct.TYPE_3__* %10, null
  br i1 %11, label %12, label %21

12:                                               ; preds = %3
  %13 = load i32, i32* %6, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %21, label %15

15:                                               ; preds = %12
  %16 = load i32, i32* %6, align 4
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp sge i32 %16, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %15, %12, %3
  store i64 -1, i64* %4, align 8
  br label %84

22:                                               ; preds = %15
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 1
  %25 = load %struct.kfs_file_info**, %struct.kfs_file_info*** %24, align 8
  %26 = load i32, i32* %6, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.kfs_file_info*, %struct.kfs_file_info** %25, i64 %27
  %29 = load %struct.kfs_file_info*, %struct.kfs_file_info** %28, align 8
  %30 = call i32 @preload_file_info(%struct.kfs_file_info* %29)
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* %8, align 4
  %32 = icmp eq i32 %31, -2
  br i1 %32, label %33, label %34

33:                                               ; preds = %22
  store i64 -1, i64* %4, align 8
  br label %84

34:                                               ; preds = %22
  %35 = load i32, i32* %8, align 4
  %36 = icmp sge i32 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %34
  %38 = load i32, i32* %8, align 4
  %39 = call i64 @close(i32 %38)
  %40 = icmp sge i64 %39, 0
  %41 = zext i1 %40 to i32
  %42 = call i32 @assert(i32 %41)
  br label %43

43:                                               ; preds = %37, %34
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 1
  %46 = load %struct.kfs_file_info**, %struct.kfs_file_info*** %45, align 8
  %47 = load i32, i32* %6, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.kfs_file_info*, %struct.kfs_file_info** %46, i64 %48
  %50 = load %struct.kfs_file_info*, %struct.kfs_file_info** %49, align 8
  store %struct.kfs_file_info* %50, %struct.kfs_file_info** %9, align 8
  %51 = load %struct.kfs_file_info*, %struct.kfs_file_info** %9, align 8
  %52 = getelementptr inbounds %struct.kfs_file_info, %struct.kfs_file_info* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @kfs_binlog, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %66

56:                                               ; preds = %43
  %57 = load %struct.kfs_file_info*, %struct.kfs_file_info** %9, align 8
  %58 = getelementptr inbounds %struct.kfs_file_info, %struct.kfs_file_info* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = icmp sge i64 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %56
  %62 = load %struct.kfs_file_info*, %struct.kfs_file_info** %9, align 8
  %63 = getelementptr inbounds %struct.kfs_file_info, %struct.kfs_file_info* %62, i32 0, i32 2
  %64 = load i64, i64* %63, align 8
  %65 = icmp sge i64 %64, 0
  br label %66

66:                                               ; preds = %61, %56, %43
  %67 = phi i1 [ false, %56 ], [ false, %43 ], [ %65, %61 ]
  %68 = zext i1 %67 to i32
  %69 = call i32 @assert(i32 %68)
  %70 = load i64*, i64** %7, align 8
  %71 = icmp ne i64* %70, null
  br i1 %71, label %72, label %80

72:                                               ; preds = %66
  %73 = load %struct.kfs_file_info*, %struct.kfs_file_info** %9, align 8
  %74 = getelementptr inbounds %struct.kfs_file_info, %struct.kfs_file_info* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = load %struct.kfs_file_info*, %struct.kfs_file_info** %9, align 8
  %77 = call i64 @kfs_get_binlog_file_size(%struct.kfs_file_info* %76)
  %78 = add nsw i64 %75, %77
  %79 = load i64*, i64** %7, align 8
  store i64 %78, i64* %79, align 8
  br label %80

80:                                               ; preds = %72, %66
  %81 = load %struct.kfs_file_info*, %struct.kfs_file_info** %9, align 8
  %82 = getelementptr inbounds %struct.kfs_file_info, %struct.kfs_file_info* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  store i64 %83, i64* %4, align 8
  br label %84

84:                                               ; preds = %80, %33, %21
  %85 = load i64, i64* %4, align 8
  ret i64 %85
}

declare dso_local i32 @preload_file_info(%struct.kfs_file_info*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @close(i32) #1

declare dso_local i64 @kfs_get_binlog_file_size(%struct.kfs_file_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
