; ModuleID = '/home/carl/AnghaBench/kphp-kdb/seqmap/extr_seqmap-data.c_do_store.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/seqmap/extr_seqmap-data.c_do_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.item = type { i32 }
%struct.lev_seq_store_inf = type { i32, i64 }
%struct.lev_seq_store_time = type { i32, i32, i64 }

@now = common dso_local global i32 0, align 4
@LEV_SEQ_STORE_INF = common dso_local global i64 0, align 8
@LEV_SEQ_STORE_TIME = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @do_store(i32 %0, i32 %1, i32* %2, i32 %3, i32* %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.item*, align 8
  %17 = alloca %struct.lev_seq_store_inf*, align 8
  %18 = alloca %struct.lev_seq_store_time*, align 8
  store i32 %0, i32* %9, align 4
  store i32 %1, i32* %10, align 4
  store i32* %2, i32** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32* %4, i32** %13, align 8
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %19 = load i32, i32* %14, align 4
  %20 = load i32, i32* @now, align 4
  %21 = icmp sle i32 %19, %20
  br i1 %21, label %22, label %26

22:                                               ; preds = %7
  %23 = load i32, i32* %14, align 4
  %24 = icmp sgt i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %22
  store i32 0, i32* %8, align 4
  br label %137

26:                                               ; preds = %22, %7
  %27 = load i32, i32* %10, align 4
  %28 = load i32*, i32** %11, align 8
  %29 = load i32, i32* %15, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %26
  %32 = load i32, i32* %9, align 4
  %33 = icmp ne i32 %32, 3
  br label %34

34:                                               ; preds = %31, %26
  %35 = phi i1 [ false, %26 ], [ %33, %31 ]
  %36 = zext i1 %35 to i32
  %37 = call %struct.item* @preload_key(i32 %27, i32* %28, i32 %36)
  store %struct.item* %37, %struct.item** %16, align 8
  %38 = load %struct.item*, %struct.item** %16, align 8
  %39 = getelementptr inbounds %struct.item, %struct.item* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = icmp eq i32 %40, -2
  br i1 %41, label %42, label %43

42:                                               ; preds = %34
  store i32 -2, i32* %8, align 4
  br label %137

43:                                               ; preds = %34
  %44 = load i32, i32* %10, align 4
  %45 = icmp sle i32 %44, 255
  %46 = zext i1 %45 to i32
  %47 = call i32 @assert(i32 %46)
  %48 = load i32, i32* %14, align 4
  %49 = icmp sle i32 %48, 0
  br i1 %49, label %50, label %92

50:                                               ; preds = %43
  %51 = load i64, i64* @LEV_SEQ_STORE_INF, align 8
  %52 = load i32, i32* %9, align 4
  %53 = mul nsw i32 %52, 256
  %54 = sext i32 %53 to i64
  %55 = add nsw i64 %51, %54
  %56 = load i32, i32* %10, align 4
  %57 = sext i32 %56 to i64
  %58 = add nsw i64 %55, %57
  %59 = load i32, i32* %10, align 4
  %60 = mul nsw i32 %59, 4
  %61 = sext i32 %60 to i64
  %62 = add i64 16, %61
  %63 = load i32, i32* %12, align 4
  %64 = mul nsw i32 %63, 4
  %65 = sext i32 %64 to i64
  %66 = add i64 %62, %65
  %67 = trunc i64 %66 to i32
  %68 = call i8* @alloc_log_event(i64 %58, i32 %67, i32 0)
  %69 = bitcast i8* %68 to %struct.lev_seq_store_inf*
  store %struct.lev_seq_store_inf* %69, %struct.lev_seq_store_inf** %17, align 8
  %70 = load i32, i32* %12, align 4
  %71 = load %struct.lev_seq_store_inf*, %struct.lev_seq_store_inf** %17, align 8
  %72 = getelementptr inbounds %struct.lev_seq_store_inf, %struct.lev_seq_store_inf* %71, i32 0, i32 0
  store i32 %70, i32* %72, align 8
  %73 = load %struct.lev_seq_store_inf*, %struct.lev_seq_store_inf** %17, align 8
  %74 = getelementptr inbounds %struct.lev_seq_store_inf, %struct.lev_seq_store_inf* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = load i32*, i32** %11, align 8
  %77 = load i32, i32* %10, align 4
  %78 = mul nsw i32 4, %77
  %79 = call i32 @memcpy(i64 %75, i32* %76, i32 %78)
  %80 = load %struct.lev_seq_store_inf*, %struct.lev_seq_store_inf** %17, align 8
  %81 = getelementptr inbounds %struct.lev_seq_store_inf, %struct.lev_seq_store_inf* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = load i32, i32* %10, align 4
  %84 = sext i32 %83 to i64
  %85 = add nsw i64 %82, %84
  %86 = load i32*, i32** %13, align 8
  %87 = load i32, i32* %12, align 4
  %88 = mul nsw i32 4, %87
  %89 = call i32 @memcpy(i64 %85, i32* %86, i32 %88)
  %90 = load %struct.lev_seq_store_inf*, %struct.lev_seq_store_inf** %17, align 8
  %91 = call i32 @store_inf(%struct.lev_seq_store_inf* %90)
  store i32 %91, i32* %8, align 4
  br label %137

92:                                               ; preds = %43
  %93 = load i64, i64* @LEV_SEQ_STORE_TIME, align 8
  %94 = load i32, i32* %9, align 4
  %95 = mul nsw i32 %94, 256
  %96 = sext i32 %95 to i64
  %97 = add nsw i64 %93, %96
  %98 = load i32, i32* %10, align 4
  %99 = sext i32 %98 to i64
  %100 = add nsw i64 %97, %99
  %101 = load i32, i32* %10, align 4
  %102 = mul nsw i32 %101, 4
  %103 = sext i32 %102 to i64
  %104 = add i64 16, %103
  %105 = load i32, i32* %12, align 4
  %106 = mul nsw i32 %105, 4
  %107 = sext i32 %106 to i64
  %108 = add i64 %104, %107
  %109 = trunc i64 %108 to i32
  %110 = call i8* @alloc_log_event(i64 %100, i32 %109, i32 0)
  %111 = bitcast i8* %110 to %struct.lev_seq_store_time*
  store %struct.lev_seq_store_time* %111, %struct.lev_seq_store_time** %18, align 8
  %112 = load i32, i32* %14, align 4
  %113 = load %struct.lev_seq_store_time*, %struct.lev_seq_store_time** %18, align 8
  %114 = getelementptr inbounds %struct.lev_seq_store_time, %struct.lev_seq_store_time* %113, i32 0, i32 0
  store i32 %112, i32* %114, align 8
  %115 = load i32, i32* %12, align 4
  %116 = load %struct.lev_seq_store_time*, %struct.lev_seq_store_time** %18, align 8
  %117 = getelementptr inbounds %struct.lev_seq_store_time, %struct.lev_seq_store_time* %116, i32 0, i32 1
  store i32 %115, i32* %117, align 4
  %118 = load %struct.lev_seq_store_time*, %struct.lev_seq_store_time** %18, align 8
  %119 = getelementptr inbounds %struct.lev_seq_store_time, %struct.lev_seq_store_time* %118, i32 0, i32 2
  %120 = load i64, i64* %119, align 8
  %121 = load i32*, i32** %11, align 8
  %122 = load i32, i32* %10, align 4
  %123 = mul nsw i32 4, %122
  %124 = call i32 @memcpy(i64 %120, i32* %121, i32 %123)
  %125 = load %struct.lev_seq_store_time*, %struct.lev_seq_store_time** %18, align 8
  %126 = getelementptr inbounds %struct.lev_seq_store_time, %struct.lev_seq_store_time* %125, i32 0, i32 2
  %127 = load i64, i64* %126, align 8
  %128 = load i32, i32* %10, align 4
  %129 = sext i32 %128 to i64
  %130 = add nsw i64 %127, %129
  %131 = load i32*, i32** %13, align 8
  %132 = load i32, i32* %12, align 4
  %133 = mul nsw i32 4, %132
  %134 = call i32 @memcpy(i64 %130, i32* %131, i32 %133)
  %135 = load %struct.lev_seq_store_time*, %struct.lev_seq_store_time** %18, align 8
  %136 = call i32 @store_time(%struct.lev_seq_store_time* %135)
  store i32 %136, i32* %8, align 4
  br label %137

137:                                              ; preds = %92, %50, %42, %25
  %138 = load i32, i32* %8, align 4
  ret i32 %138
}

declare dso_local %struct.item* @preload_key(i32, i32*, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i8* @alloc_log_event(i64, i32, i32) #1

declare dso_local i32 @memcpy(i64, i32*, i32) #1

declare dso_local i32 @store_inf(%struct.lev_seq_store_inf*) #1

declare dso_local i32 @store_time(%struct.lev_seq_store_time*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
