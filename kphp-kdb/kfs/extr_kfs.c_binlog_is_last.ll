; ModuleID = '/home/carl/AnghaBench/kphp-kdb/kfs/extr_kfs.c_binlog_is_last.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/kfs/extr_kfs.c_binlog_is_last.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { %struct.kfs_file_info* }
%struct.kfs_file_info = type { i64, i64, %struct.kfs_replica* }
%struct.kfs_replica = type { i32, %struct.kfs_file_info** }

@kfs_binlog = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @binlog_is_last(%struct.TYPE_3__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca %struct.kfs_file_info*, align 8
  %5 = alloca %struct.kfs_replica*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  %6 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %7 = icmp ne %struct.TYPE_3__* %6, null
  br i1 %7, label %8, label %35

8:                                                ; preds = %1
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load %struct.kfs_file_info*, %struct.kfs_file_info** %10, align 8
  %12 = icmp ne %struct.kfs_file_info* %11, null
  br i1 %12, label %13, label %35

13:                                               ; preds = %8
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load %struct.kfs_file_info*, %struct.kfs_file_info** %15, align 8
  %17 = getelementptr inbounds %struct.kfs_file_info, %struct.kfs_file_info* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp sge i64 %18, 0
  br i1 %19, label %20, label %35

20:                                               ; preds = %13
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load %struct.kfs_file_info*, %struct.kfs_file_info** %22, align 8
  %24 = getelementptr inbounds %struct.kfs_file_info, %struct.kfs_file_info* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @kfs_binlog, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %35

28:                                               ; preds = %20
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load %struct.kfs_file_info*, %struct.kfs_file_info** %30, align 8
  %32 = getelementptr inbounds %struct.kfs_file_info, %struct.kfs_file_info* %31, i32 0, i32 2
  %33 = load %struct.kfs_replica*, %struct.kfs_replica** %32, align 8
  %34 = icmp ne %struct.kfs_replica* %33, null
  br label %35

35:                                               ; preds = %28, %20, %13, %8, %1
  %36 = phi i1 [ false, %20 ], [ false, %13 ], [ false, %8 ], [ false, %1 ], [ %34, %28 ]
  %37 = zext i1 %36 to i32
  %38 = call i32 @assert(i32 %37)
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load %struct.kfs_file_info*, %struct.kfs_file_info** %40, align 8
  store %struct.kfs_file_info* %41, %struct.kfs_file_info** %4, align 8
  %42 = load %struct.kfs_file_info*, %struct.kfs_file_info** %4, align 8
  %43 = getelementptr inbounds %struct.kfs_file_info, %struct.kfs_file_info* %42, i32 0, i32 2
  %44 = load %struct.kfs_replica*, %struct.kfs_replica** %43, align 8
  store %struct.kfs_replica* %44, %struct.kfs_replica** %5, align 8
  %45 = load %struct.kfs_replica*, %struct.kfs_replica** %5, align 8
  %46 = icmp ne %struct.kfs_replica* %45, null
  br i1 %46, label %47, label %66

47:                                               ; preds = %35
  %48 = load %struct.kfs_replica*, %struct.kfs_replica** %5, align 8
  %49 = getelementptr inbounds %struct.kfs_replica, %struct.kfs_replica* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %65

52:                                               ; preds = %47
  %53 = load %struct.kfs_replica*, %struct.kfs_replica** %5, align 8
  %54 = getelementptr inbounds %struct.kfs_replica, %struct.kfs_replica* %53, i32 0, i32 1
  %55 = load %struct.kfs_file_info**, %struct.kfs_file_info*** %54, align 8
  %56 = load %struct.kfs_replica*, %struct.kfs_replica** %5, align 8
  %57 = getelementptr inbounds %struct.kfs_replica, %struct.kfs_replica* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = sub nsw i32 %58, 1
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.kfs_file_info*, %struct.kfs_file_info** %55, i64 %60
  %62 = load %struct.kfs_file_info*, %struct.kfs_file_info** %61, align 8
  %63 = load %struct.kfs_file_info*, %struct.kfs_file_info** %4, align 8
  %64 = icmp ne %struct.kfs_file_info* %62, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %52, %47
  store i32 0, i32* %2, align 4
  br label %67

66:                                               ; preds = %52, %35
  store i32 1, i32* %2, align 4
  br label %67

67:                                               ; preds = %66, %65
  %68 = load i32, i32* %2, align 4
  ret i32 %68
}

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
