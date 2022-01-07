; ModuleID = '/home/carl/AnghaBench/kphp-kdb/vv/extr_vv-tl-parse.c_tl_result_get_header_len.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/vv/extr_vv-tl-parse.c_tl_result_get_header_len.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tl_query_header = type { i32 }

@TL_QUERY_HEADER_FLAG_RETURN_BINLOG_POS = common dso_local global i32 0, align 4
@TL_QUERY_HEADER_FLAG_RETURN_BINLOG_TIME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tl_result_get_header_len(%struct.tl_query_header* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tl_query_header*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.tl_query_header* %0, %struct.tl_query_header** %3, align 8
  %6 = load %struct.tl_query_header*, %struct.tl_query_header** %3, align 8
  %7 = getelementptr inbounds %struct.tl_query_header, %struct.tl_query_header* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %33

11:                                               ; preds = %1
  %12 = load %struct.tl_query_header*, %struct.tl_query_header** %3, align 8
  %13 = getelementptr inbounds %struct.tl_query_header, %struct.tl_query_header* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @tl_result_new_flags(i32 %14)
  store i32 %15, i32* %4, align 4
  store i32 8, i32* %5, align 4
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* @TL_QUERY_HEADER_FLAG_RETURN_BINLOG_POS, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %11
  %21 = load i32, i32* %5, align 4
  %22 = add nsw i32 %21, 8
  store i32 %22, i32* %5, align 4
  br label %23

23:                                               ; preds = %20, %11
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* @TL_QUERY_HEADER_FLAG_RETURN_BINLOG_TIME, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %23
  %29 = load i32, i32* %5, align 4
  %30 = add nsw i32 %29, 8
  store i32 %30, i32* %5, align 4
  br label %31

31:                                               ; preds = %28, %23
  %32 = load i32, i32* %5, align 4
  store i32 %32, i32* %2, align 4
  br label %33

33:                                               ; preds = %31, %10
  %34 = load i32, i32* %2, align 4
  ret i32 %34
}

declare dso_local i32 @tl_result_new_flags(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
