; ModuleID = '/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-engine.c_prepare_long_query_stats.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-engine.c_prepare_long_query_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stats_buff = common dso_local global i8* null, align 8
@long_query_buff_ptr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"%.3lf %.6lf %d %.120s\0A\00", align 1
@last_long_query_utime = common dso_local global i32* null, align 8
@last_long_query_time = common dso_local global i32* null, align 8
@last_long_query_found = common dso_local global i32* null, align 8
@last_long_query_buff = common dso_local global i32* null, align 8
@SAVED_LONG_QUERIES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @prepare_long_query_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @prepare_long_query_stats() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i32, align 4
  %3 = load i8*, i8** @stats_buff, align 8
  store i8* %3, i8** %1, align 8
  %4 = load i32, i32* @long_query_buff_ptr, align 4
  %5 = sub nsw i32 %4, 1
  store i32 %5, i32* %2, align 4
  br label %6

6:                                                ; preds = %35, %0
  %7 = load i32, i32* %2, align 4
  %8 = icmp sge i32 %7, 0
  br i1 %8, label %9, label %38

9:                                                ; preds = %6
  %10 = load i8*, i8** %1, align 8
  %11 = load i32*, i32** @last_long_query_utime, align 8
  %12 = load i32, i32* %2, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i32, i32* %11, i64 %13
  %15 = load i32, i32* %14, align 4
  %16 = load i32*, i32** @last_long_query_time, align 8
  %17 = load i32, i32* %2, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i32, i32* %16, i64 %18
  %20 = load i32, i32* %19, align 4
  %21 = load i32*, i32** @last_long_query_found, align 8
  %22 = load i32, i32* %2, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %21, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = load i32*, i32** @last_long_query_buff, align 8
  %27 = load i32, i32* %2, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @sprintf(i8* %10, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %15, i32 %20, i32 %25, i32 %30)
  %32 = load i8*, i8** %1, align 8
  %33 = sext i32 %31 to i64
  %34 = getelementptr inbounds i8, i8* %32, i64 %33
  store i8* %34, i8** %1, align 8
  br label %35

35:                                               ; preds = %9
  %36 = load i32, i32* %2, align 4
  %37 = add nsw i32 %36, -1
  store i32 %37, i32* %2, align 4
  br label %6

38:                                               ; preds = %6
  %39 = load i32, i32* @SAVED_LONG_QUERIES, align 4
  %40 = sub nsw i32 %39, 1
  store i32 %40, i32* %2, align 4
  br label %41

41:                                               ; preds = %71, %38
  %42 = load i32, i32* %2, align 4
  %43 = load i32, i32* @long_query_buff_ptr, align 4
  %44 = icmp sge i32 %42, %43
  br i1 %44, label %45, label %74

45:                                               ; preds = %41
  %46 = load i8*, i8** %1, align 8
  %47 = load i32*, i32** @last_long_query_utime, align 8
  %48 = load i32, i32* %2, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = load i32*, i32** @last_long_query_time, align 8
  %53 = load i32, i32* %2, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = load i32*, i32** @last_long_query_found, align 8
  %58 = load i32, i32* %2, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = load i32*, i32** @last_long_query_buff, align 8
  %63 = load i32, i32* %2, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %62, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @sprintf(i8* %46, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %51, i32 %56, i32 %61, i32 %66)
  %68 = load i8*, i8** %1, align 8
  %69 = sext i32 %67 to i64
  %70 = getelementptr inbounds i8, i8* %68, i64 %69
  store i8* %70, i8** %1, align 8
  br label %71

71:                                               ; preds = %45
  %72 = load i32, i32* %2, align 4
  %73 = add nsw i32 %72, -1
  store i32 %73, i32* %2, align 4
  br label %41

74:                                               ; preds = %41
  %75 = load i8*, i8** %1, align 8
  %76 = load i8*, i8** @stats_buff, align 8
  %77 = ptrtoint i8* %75 to i64
  %78 = ptrtoint i8* %76 to i64
  %79 = sub i64 %77, %78
  %80 = trunc i64 %79 to i32
  ret i32 %80
}

declare dso_local i32 @sprintf(i8*, i8*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
