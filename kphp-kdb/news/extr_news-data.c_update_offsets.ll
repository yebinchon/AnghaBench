; ModuleID = '/home/carl/AnghaBench/kphp-kdb/news/extr_news-data.c_update_offsets.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/news/extr_news-data.c_update_offsets.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@now = common dso_local global i32 0, align 4
@next_day_start = common dso_local global i32 0, align 4
@log_last_ts = common dso_local global i32 0, align 4
@log_crc32_complement = common dso_local global i32 0, align 4
@log_crc32_pos = common dso_local global i64 0, align 8
@last_day = common dso_local global i32 0, align 4
@days_log_offset = common dso_local global i64* null, align 8
@days_log_crc32 = common dso_local global i32* null, align 8
@days_log_ts = common dso_local global i32* null, align 8
@check_index_mode = common dso_local global i64 0, align 8
@next_check_day = common dso_local global i64 0, align 8
@next_check_day_start = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @update_offsets(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %8 = load i32, i32* @now, align 4
  %9 = load i32, i32* @next_day_start, align 4
  %10 = icmp sge i32 %8, %9
  br i1 %10, label %11, label %55

11:                                               ; preds = %1
  %12 = load i32, i32* @now, align 4
  %13 = sdiv i32 %12, 86400
  store i32 %13, i32* %3, align 4
  %14 = load i32, i32* @log_last_ts, align 4
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %2, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %11
  %18 = call i32 (...) @relax_write_log_crc32()
  br label %21

19:                                               ; preds = %11
  %20 = call i32 @relax_log_crc32(i32 0)
  br label %21

21:                                               ; preds = %19, %17
  %22 = load i32, i32* @log_crc32_complement, align 4
  %23 = xor i32 %22, -1
  store i32 %23, i32* %5, align 4
  %24 = load i64, i64* @log_crc32_pos, align 8
  store i64 %24, i64* %6, align 8
  %25 = load i32, i32* @last_day, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %7, align 4
  br label %27

27:                                               ; preds = %47, %21
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* %3, align 4
  %30 = icmp sle i32 %28, %29
  br i1 %30, label %31, label %50

31:                                               ; preds = %27
  %32 = load i64, i64* %6, align 8
  %33 = load i64*, i64** @days_log_offset, align 8
  %34 = load i32, i32* %7, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i64, i64* %33, i64 %35
  store i64 %32, i64* %36, align 8
  %37 = load i32, i32* %5, align 4
  %38 = load i32*, i32** @days_log_crc32, align 8
  %39 = load i32, i32* %7, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  store i32 %37, i32* %41, align 4
  %42 = load i32, i32* %4, align 4
  %43 = load i32*, i32** @days_log_ts, align 8
  %44 = load i32, i32* %7, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  store i32 %42, i32* %46, align 4
  br label %47

47:                                               ; preds = %31
  %48 = load i32, i32* %7, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %7, align 4
  br label %27

50:                                               ; preds = %27
  %51 = load i32, i32* %3, align 4
  store i32 %51, i32* @last_day, align 4
  %52 = load i32, i32* @last_day, align 4
  %53 = add nsw i32 %52, 1
  %54 = mul nsw i32 %53, 86400
  store i32 %54, i32* @next_day_start, align 4
  br label %99

55:                                               ; preds = %1
  %56 = load i64, i64* @check_index_mode, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %98

58:                                               ; preds = %55
  br label %59

59:                                               ; preds = %74, %58
  %60 = load i64*, i64** @days_log_offset, align 8
  %61 = load i64, i64* @next_check_day, align 8
  %62 = getelementptr inbounds i64, i64* %60, i64 %61
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %72

65:                                               ; preds = %59
  %66 = call i64 (...) @log_cur_pos()
  %67 = load i64*, i64** @days_log_offset, align 8
  %68 = load i64, i64* @next_check_day, align 8
  %69 = getelementptr inbounds i64, i64* %67, i64 %68
  %70 = load i64, i64* %69, align 8
  %71 = icmp sge i64 %66, %70
  br label %72

72:                                               ; preds = %65, %59
  %73 = phi i1 [ false, %59 ], [ %71, %65 ]
  br i1 %73, label %74, label %97

74:                                               ; preds = %72
  %75 = call i64 (...) @log_cur_pos()
  %76 = load i64*, i64** @days_log_offset, align 8
  %77 = load i64, i64* @next_check_day, align 8
  %78 = getelementptr inbounds i64, i64* %76, i64 %77
  %79 = load i64, i64* %78, align 8
  %80 = icmp eq i64 %75, %79
  %81 = zext i1 %80 to i32
  %82 = call i32 @assert(i32 %81)
  %83 = call i32 @relax_log_crc32(i32 0)
  %84 = load i32, i32* @log_crc32_complement, align 4
  %85 = xor i32 %84, -1
  %86 = load i32*, i32** @days_log_crc32, align 8
  %87 = load i64, i64* @next_check_day, align 8
  %88 = getelementptr inbounds i32, i32* %86, i64 %87
  %89 = load i32, i32* %88, align 4
  %90 = icmp eq i32 %85, %89
  %91 = zext i1 %90 to i32
  %92 = call i32 @assert(i32 %91)
  %93 = load i64, i64* @next_check_day, align 8
  %94 = add i64 %93, 1
  store i64 %94, i64* @next_check_day, align 8
  %95 = load i64, i64* @next_check_day, align 8
  %96 = mul i64 %95, 86400
  store i64 %96, i64* @next_check_day_start, align 8
  br label %59

97:                                               ; preds = %72
  br label %98

98:                                               ; preds = %97, %55
  br label %99

99:                                               ; preds = %98, %50
  ret void
}

declare dso_local i32 @relax_write_log_crc32(...) #1

declare dso_local i32 @relax_log_crc32(i32) #1

declare dso_local i64 @log_cur_pos(...) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
