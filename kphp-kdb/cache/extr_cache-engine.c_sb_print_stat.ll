; ModuleID = '/home/carl/AnghaBench/kphp-kdb/cache/extr_cache-engine.c_sb_print_stat.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/cache/extr_cache-engine.c_sb_print_stat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.query_stat = type { i64, i64, i32 }

@.str = private unnamed_addr constant [30 x i8] c"%s_queries\09%lld\0Aqps_%s\09%.3lf\0A\00", align 1
@now = common dso_local global i64 0, align 8
@start_time = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [26 x i8] c"%s_max_query_time\09%.3lfs\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"%s_avg_query_time\09%.3lfs\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sb_print_stat(i32* %0, %struct.query_stat* %1, i8* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.query_stat*, align 8
  %6 = alloca i8*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.query_stat* %1, %struct.query_stat** %5, align 8
  store i8* %2, i8** %6, align 8
  %7 = load i32*, i32** %4, align 8
  %8 = load i8*, i8** %6, align 8
  %9 = load %struct.query_stat*, %struct.query_stat** %5, align 8
  %10 = getelementptr inbounds %struct.query_stat, %struct.query_stat* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = trunc i64 %11 to i32
  %13 = load i8*, i8** %6, align 8
  %14 = load %struct.query_stat*, %struct.query_stat** %5, align 8
  %15 = getelementptr inbounds %struct.query_stat, %struct.query_stat* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @now, align 8
  %18 = load i64, i64* @start_time, align 8
  %19 = sub nsw i64 %17, %18
  %20 = call i32 @safe_div(i64 %16, i64 %19)
  %21 = call i32 (i32*, i8*, i8*, i32, ...) @sb_printf(i32* %7, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i8* %8, i32 %12, i8* %13, i32 %20)
  %22 = load i32*, i32** %4, align 8
  %23 = load i8*, i8** %6, align 8
  %24 = load %struct.query_stat*, %struct.query_stat** %5, align 8
  %25 = getelementptr inbounds %struct.query_stat, %struct.query_stat* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = call i32 (i32*, i8*, i8*, i32, ...) @sb_printf(i32* %22, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i8* %23, i32 %26)
  %28 = load i32*, i32** %4, align 8
  %29 = load i8*, i8** %6, align 8
  %30 = load %struct.query_stat*, %struct.query_stat** %5, align 8
  %31 = getelementptr inbounds %struct.query_stat, %struct.query_stat* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.query_stat*, %struct.query_stat** %5, align 8
  %34 = getelementptr inbounds %struct.query_stat, %struct.query_stat* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = call i32 @safe_div(i64 %32, i64 %35)
  %37 = call i32 (i32*, i8*, i8*, i32, ...) @sb_printf(i32* %28, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i8* %29, i32 %36)
  ret void
}

declare dso_local i32 @sb_printf(i32*, i8*, i8*, i32, ...) #1

declare dso_local i32 @safe_div(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
