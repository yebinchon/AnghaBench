; ModuleID = '/home/carl/AnghaBench/kphp-kdb/lists/extr_lists-binlog.c_lists_le_start.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/lists/extr_lists-binlog.c_lists_le_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lev_start = type { i64, i64, i64, i64, i32, i32* }
%struct.lev_lists_start_ext = type { i32, i64, i32, i32, i32, i32 }

@LISTS_SCHEMA_CUR = common dso_local global i64 0, align 8
@log_split_min = common dso_local global i64 0, align 8
@log_split_max = common dso_local global i64 0, align 8
@log_split_mod = common dso_local global i64 0, align 8
@list_id_ints = common dso_local global i32 0, align 4
@object_id_ints = common dso_local global i32 0, align 4
@LISTS_SCHEMA_V3 = common dso_local global i64 0, align 8
@LIST_ID_INTS = common dso_local global i32 0, align 4
@OBJECT_ID_INTS = common dso_local global i32 0, align 4
@LISTS_SCHEMA_V1 = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lev_start*)* @lists_le_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lists_le_start(%struct.lev_start* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.lev_start*, align 8
  %4 = alloca %struct.lev_lists_start_ext*, align 8
  store %struct.lev_start* %0, %struct.lev_start** %3, align 8
  %5 = load %struct.lev_start*, %struct.lev_start** %3, align 8
  %6 = getelementptr inbounds %struct.lev_start, %struct.lev_start* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @LISTS_SCHEMA_CUR, align 8
  %9 = icmp ne i64 %7, %8
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %111

11:                                               ; preds = %1
  %12 = load %struct.lev_start*, %struct.lev_start** %3, align 8
  %13 = getelementptr inbounds %struct.lev_start, %struct.lev_start* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  store i64 %14, i64* @log_split_min, align 8
  %15 = load %struct.lev_start*, %struct.lev_start** %3, align 8
  %16 = getelementptr inbounds %struct.lev_start, %struct.lev_start* %15, i32 0, i32 2
  %17 = load i64, i64* %16, align 8
  store i64 %17, i64* @log_split_max, align 8
  %18 = load %struct.lev_start*, %struct.lev_start** %3, align 8
  %19 = getelementptr inbounds %struct.lev_start, %struct.lev_start* %18, i32 0, i32 3
  %20 = load i64, i64* %19, align 8
  store i64 %20, i64* @log_split_mod, align 8
  %21 = load i64, i64* @log_split_mod, align 8
  %22 = icmp sgt i64 %21, 0
  br i1 %22, label %23, label %35

23:                                               ; preds = %11
  %24 = load i64, i64* @log_split_min, align 8
  %25 = icmp sge i64 %24, 0
  br i1 %25, label %26, label %35

26:                                               ; preds = %23
  %27 = load i64, i64* @log_split_min, align 8
  %28 = add nsw i64 %27, 1
  %29 = load i64, i64* @log_split_max, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %35

31:                                               ; preds = %26
  %32 = load i64, i64* @log_split_max, align 8
  %33 = load i64, i64* @log_split_mod, align 8
  %34 = icmp sle i64 %32, %33
  br label %35

35:                                               ; preds = %31, %26, %23, %11
  %36 = phi i1 [ false, %26 ], [ false, %23 ], [ false, %11 ], [ %34, %31 ]
  %37 = zext i1 %36 to i32
  %38 = call i32 @assert(i32 %37)
  %39 = load i32, i32* @list_id_ints, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %45, label %41

41:                                               ; preds = %35
  %42 = load i32, i32* @object_id_ints, align 4
  %43 = icmp ne i32 %42, 0
  %44 = xor i1 %43, true
  br label %45

45:                                               ; preds = %41, %35
  %46 = phi i1 [ false, %35 ], [ %44, %41 ]
  %47 = zext i1 %46 to i32
  %48 = call i32 @assert(i32 %47)
  %49 = load %struct.lev_start*, %struct.lev_start** %3, align 8
  %50 = getelementptr inbounds %struct.lev_start, %struct.lev_start* %49, i32 0, i32 4
  %51 = load i32, i32* %50, align 8
  %52 = icmp sge i32 %51, 6
  br i1 %52, label %53, label %97

53:                                               ; preds = %45
  %54 = load %struct.lev_start*, %struct.lev_start** %3, align 8
  %55 = getelementptr inbounds %struct.lev_start, %struct.lev_start* %54, i32 0, i32 5
  %56 = load i32*, i32** %55, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 0
  %58 = load i32, i32* %57, align 4
  %59 = icmp eq i32 %58, 1
  br i1 %59, label %60, label %97

60:                                               ; preds = %53
  %61 = load %struct.lev_start*, %struct.lev_start** %3, align 8
  %62 = bitcast %struct.lev_start* %61 to %struct.lev_lists_start_ext*
  store %struct.lev_lists_start_ext* %62, %struct.lev_lists_start_ext** %4, align 8
  %63 = load %struct.lev_lists_start_ext*, %struct.lev_lists_start_ext** %4, align 8
  %64 = getelementptr inbounds %struct.lev_lists_start_ext, %struct.lev_lists_start_ext* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = icmp eq i32 %65, 1
  br i1 %66, label %67, label %73

67:                                               ; preds = %60
  %68 = load %struct.lev_lists_start_ext*, %struct.lev_lists_start_ext** %4, align 8
  %69 = getelementptr inbounds %struct.lev_lists_start_ext, %struct.lev_lists_start_ext* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @LISTS_SCHEMA_V3, align 8
  %72 = icmp eq i64 %70, %71
  br label %73

73:                                               ; preds = %67, %60
  %74 = phi i1 [ false, %60 ], [ %72, %67 ]
  %75 = zext i1 %74 to i32
  %76 = call i32 @assert(i32 %75)
  %77 = load %struct.lev_lists_start_ext*, %struct.lev_lists_start_ext** %4, align 8
  %78 = getelementptr inbounds %struct.lev_lists_start_ext, %struct.lev_lists_start_ext* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 8
  store i32 %79, i32* @list_id_ints, align 4
  %80 = load %struct.lev_lists_start_ext*, %struct.lev_lists_start_ext** %4, align 8
  %81 = getelementptr inbounds %struct.lev_lists_start_ext, %struct.lev_lists_start_ext* %80, i32 0, i32 3
  %82 = load i32, i32* %81, align 4
  store i32 %82, i32* @object_id_ints, align 4
  %83 = load %struct.lev_lists_start_ext*, %struct.lev_lists_start_ext** %4, align 8
  %84 = getelementptr inbounds %struct.lev_lists_start_ext, %struct.lev_lists_start_ext* %83, i32 0, i32 4
  %85 = load i32, i32* %84, align 8
  %86 = sext i32 %85 to i64
  %87 = icmp eq i64 %86, 1
  %88 = zext i1 %87 to i32
  %89 = call i32 @assert(i32 %88)
  %90 = load %struct.lev_lists_start_ext*, %struct.lev_lists_start_ext** %4, align 8
  %91 = getelementptr inbounds %struct.lev_lists_start_ext, %struct.lev_lists_start_ext* %90, i32 0, i32 5
  %92 = load i32, i32* %91, align 4
  %93 = icmp ne i32 %92, 0
  %94 = xor i1 %93, true
  %95 = zext i1 %94 to i32
  %96 = call i32 @assert(i32 %95)
  br label %100

97:                                               ; preds = %53, %45
  %98 = load i32, i32* @LIST_ID_INTS, align 4
  store i32 %98, i32* @list_id_ints, align 4
  %99 = load i32, i32* @OBJECT_ID_INTS, align 4
  store i32 %99, i32* @object_id_ints, align 4
  br label %100

100:                                              ; preds = %97, %73
  %101 = load i32, i32* @list_id_ints, align 4
  %102 = icmp eq i32 %101, 1
  br i1 %102, label %103, label %106

103:                                              ; preds = %100
  %104 = load i32, i32* @object_id_ints, align 4
  %105 = icmp eq i32 %104, 1
  br label %106

106:                                              ; preds = %103, %100
  %107 = phi i1 [ false, %100 ], [ %105, %103 ]
  %108 = zext i1 %107 to i32
  %109 = call i32 @assert(i32 %108)
  %110 = call i32 (...) @compute_struct_sizes()
  store i32 0, i32* %2, align 4
  br label %111

111:                                              ; preds = %106, %10
  %112 = load i32, i32* %2, align 4
  ret i32 %112
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @compute_struct_sizes(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
