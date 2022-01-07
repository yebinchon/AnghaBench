; ModuleID = '/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-engine.c_register_long_query.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-engine.c_register_long_query.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@long_query_buff_ptr = common dso_local global i32 0, align 4
@SAVED_LONG_QUERIES = common dso_local global i32 0, align 4
@CLOCK_MONOTONIC = common dso_local global i32 0, align 4
@last_long_query_utime = common dso_local global i32* null, align 8
@SAVED_LONG_QUERY_BUF_LEN = common dso_local global i32 0, align 4
@last_long_query_buff = common dso_local global i64** null, align 8
@tot_long_queries = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @register_long_query to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @register_long_query(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* @long_query_buff_ptr, align 4
  %6 = sub nsw i32 %5, 1
  %7 = load i32, i32* @SAVED_LONG_QUERIES, align 4
  %8 = sub nsw i32 %7, 1
  %9 = and i32 %6, %8
  store i32 %9, i32* @long_query_buff_ptr, align 4
  %10 = load i32, i32* @CLOCK_MONOTONIC, align 4
  %11 = call i32 @get_utime(i32 %10)
  %12 = load i32*, i32** @last_long_query_utime, align 8
  %13 = load i32, i32* @long_query_buff_ptr, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i32, i32* %12, i64 %14
  store i32 %11, i32* %15, align 4
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* @SAVED_LONG_QUERY_BUF_LEN, align 4
  %18 = sub nsw i32 %17, 8
  %19 = icmp slt i32 %16, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %2
  %21 = load i32, i32* %4, align 4
  br label %25

22:                                               ; preds = %2
  %23 = load i32, i32* @SAVED_LONG_QUERY_BUF_LEN, align 4
  %24 = sub nsw i32 %23, 8
  br label %25

25:                                               ; preds = %22, %20
  %26 = phi i32 [ %21, %20 ], [ %24, %22 ]
  store i32 %26, i32* %4, align 4
  %27 = load i64**, i64*** @last_long_query_buff, align 8
  %28 = load i32, i32* @long_query_buff_ptr, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i64*, i64** %27, i64 %29
  %31 = load i64*, i64** %30, align 8
  %32 = load i8*, i8** %3, align 8
  %33 = load i32, i32* %4, align 4
  %34 = call i32 @memcpy(i64* %31, i8* %32, i32 %33)
  %35 = load i64**, i64*** @last_long_query_buff, align 8
  %36 = load i32, i32* @long_query_buff_ptr, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i64*, i64** %35, i64 %37
  %39 = load i64*, i64** %38, align 8
  %40 = load i32, i32* %4, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i64, i64* %39, i64 %41
  store i64 0, i64* %42, align 8
  %43 = load i32, i32* @tot_long_queries, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* @tot_long_queries, align 4
  ret void
}

declare dso_local i32 @get_utime(i32) #1

declare dso_local i32 @memcpy(i64*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
