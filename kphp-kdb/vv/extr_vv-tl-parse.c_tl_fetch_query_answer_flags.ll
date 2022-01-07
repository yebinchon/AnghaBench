; ModuleID = '/home/carl/AnghaBench/kphp-kdb/vv/extr_vv-tl-parse.c_tl_fetch_query_answer_flags.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/vv/extr_vv-tl-parse.c_tl_fetch_query_answer_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tl_query_header = type { i32, i8*, i8* }

@TL_ERROR_HEADER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Duplicate flags in header 0x%08x\00", align 1
@TL_QUERY_RESULT_HEADER_FLAG_MASK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"Unsupported flags in header 0x%08x\00", align 1
@TL_QUERY_RESULT_HEADER_FLAG_BINLOG_POS = common dso_local global i32 0, align 4
@TL_QUERY_RESULT_HEADER_FLAG_BINLOG_TIME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tl_fetch_query_answer_flags(%struct.tl_query_header* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tl_query_header*, align 8
  %4 = alloca i32, align 4
  store %struct.tl_query_header* %0, %struct.tl_query_header** %3, align 8
  %5 = call i32 (...) @tl_fetch_int()
  store i32 %5, i32* %4, align 4
  %6 = call i64 (...) @tl_fetch_error()
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %69

9:                                                ; preds = %1
  %10 = load %struct.tl_query_header*, %struct.tl_query_header** %3, align 8
  %11 = getelementptr inbounds %struct.tl_query_header, %struct.tl_query_header* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* %4, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %24

16:                                               ; preds = %9
  %17 = load i32, i32* @TL_ERROR_HEADER, align 4
  %18 = load %struct.tl_query_header*, %struct.tl_query_header** %3, align 8
  %19 = getelementptr inbounds %struct.tl_query_header, %struct.tl_query_header* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* %4, align 4
  %22 = and i32 %20, %21
  %23 = call i32 @tl_fetch_set_error_format(i32 %17, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %22)
  store i32 -1, i32* %2, align 4
  br label %69

24:                                               ; preds = %9
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* @TL_QUERY_RESULT_HEADER_FLAG_MASK, align 4
  %27 = xor i32 %26, -1
  %28 = and i32 %25, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %37

30:                                               ; preds = %24
  %31 = load i32, i32* @TL_ERROR_HEADER, align 4
  %32 = load i32, i32* @TL_QUERY_RESULT_HEADER_FLAG_MASK, align 4
  %33 = xor i32 %32, -1
  %34 = load i32, i32* %4, align 4
  %35 = and i32 %33, %34
  %36 = call i32 @tl_fetch_set_error_format(i32 %31, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %35)
  store i32 -1, i32* %2, align 4
  br label %69

37:                                               ; preds = %24
  %38 = load i32, i32* %4, align 4
  %39 = load %struct.tl_query_header*, %struct.tl_query_header** %3, align 8
  %40 = getelementptr inbounds %struct.tl_query_header, %struct.tl_query_header* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = or i32 %41, %38
  store i32 %42, i32* %40, align 8
  %43 = load i32, i32* %4, align 4
  %44 = load i32, i32* @TL_QUERY_RESULT_HEADER_FLAG_BINLOG_POS, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %55

47:                                               ; preds = %37
  %48 = call i8* (...) @tl_fetch_long()
  %49 = load %struct.tl_query_header*, %struct.tl_query_header** %3, align 8
  %50 = getelementptr inbounds %struct.tl_query_header, %struct.tl_query_header* %49, i32 0, i32 2
  store i8* %48, i8** %50, align 8
  %51 = call i64 (...) @tl_fetch_error()
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %47
  store i32 -1, i32* %2, align 4
  br label %69

54:                                               ; preds = %47
  br label %55

55:                                               ; preds = %54, %37
  %56 = load i32, i32* %4, align 4
  %57 = load i32, i32* @TL_QUERY_RESULT_HEADER_FLAG_BINLOG_TIME, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %68

60:                                               ; preds = %55
  %61 = call i8* (...) @tl_fetch_long()
  %62 = load %struct.tl_query_header*, %struct.tl_query_header** %3, align 8
  %63 = getelementptr inbounds %struct.tl_query_header, %struct.tl_query_header* %62, i32 0, i32 1
  store i8* %61, i8** %63, align 8
  %64 = call i64 (...) @tl_fetch_error()
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %60
  store i32 -1, i32* %2, align 4
  br label %69

67:                                               ; preds = %60
  br label %68

68:                                               ; preds = %67, %55
  store i32 0, i32* %2, align 4
  br label %69

69:                                               ; preds = %68, %66, %53, %30, %16, %8
  %70 = load i32, i32* %2, align 4
  ret i32 %70
}

declare dso_local i32 @tl_fetch_int(...) #1

declare dso_local i64 @tl_fetch_error(...) #1

declare dso_local i32 @tl_fetch_set_error_format(i32, i8*, i32) #1

declare dso_local i8* @tl_fetch_long(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
