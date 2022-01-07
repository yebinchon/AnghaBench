; ModuleID = '/home/carl/AnghaBench/kphp-kdb/statsx/extr_statsx-binlog.c_load_index.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/statsx/extr_statsx-binlog.c_load_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.index_header_v2 = type { i64, i64, i64, i64 }

@jump_log_ts = common dso_local global i64 0, align 8
@jump_log_pos = common dso_local global i64 0, align 8
@jump_log_crc32 = common dso_local global i64 0, align 8
@STATSX_INDEX_MAGIC_V1 = common dso_local global i64 0, align 8
@STATSX_INDEX_MAGIC_OLD = common dso_local global i64 0, align 8
@STATSX_INDEX_MAGIC_V2 = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"index file is not for statsx\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @load_index(%struct.TYPE_3__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.index_header_v2, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  %6 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %7 = icmp eq %struct.TYPE_3__* %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store i64 0, i64* @jump_log_ts, align 8
  store i64 0, i64* @jump_log_pos, align 8
  store i64 0, i64* @jump_log_crc32, align 8
  store i32 0, i32* %2, align 4
  br label %50

9:                                                ; preds = %1
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = call i32 @read(i32 %13, %struct.index_header_v2* %5, i32 32)
  %15 = getelementptr inbounds %struct.index_header_v2, %struct.index_header_v2* %5, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @STATSX_INDEX_MAGIC_V1, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %43

19:                                               ; preds = %9
  %20 = getelementptr inbounds %struct.index_header_v2, %struct.index_header_v2* %5, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @STATSX_INDEX_MAGIC_OLD, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %43

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.index_header_v2, %struct.index_header_v2* %5, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @STATSX_INDEX_MAGIC_V1, align 8
  %28 = add nsw i64 %27, 1
  %29 = icmp ne i64 %26, %28
  br i1 %29, label %30, label %43

30:                                               ; preds = %24
  %31 = getelementptr inbounds %struct.index_header_v2, %struct.index_header_v2* %5, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @STATSX_INDEX_MAGIC_V2, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %43

35:                                               ; preds = %30
  %36 = getelementptr inbounds %struct.index_header_v2, %struct.index_header_v2* %5, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @STATSX_INDEX_MAGIC_V2, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %35
  %41 = load i32, i32* @stderr, align 4
  %42 = call i32 @fprintf(i32 %41, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %50

43:                                               ; preds = %35, %30, %24, %19, %9
  %44 = getelementptr inbounds %struct.index_header_v2, %struct.index_header_v2* %5, i32 0, i32 3
  %45 = load i64, i64* %44, align 8
  store i64 %45, i64* @jump_log_ts, align 8
  %46 = getelementptr inbounds %struct.index_header_v2, %struct.index_header_v2* %5, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  store i64 %47, i64* @jump_log_pos, align 8
  %48 = getelementptr inbounds %struct.index_header_v2, %struct.index_header_v2* %5, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  store i64 %49, i64* @jump_log_crc32, align 8
  store i32 1, i32* %2, align 4
  br label %50

50:                                               ; preds = %43, %40, %8
  %51 = load i32, i32* %2, align 4
  ret i32 %51
}

declare dso_local i32 @read(i32, %struct.index_header_v2*, i32) #1

declare dso_local i32 @fprintf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
