; ModuleID = '/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-engine.c_f_parse_option.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-engine.c_f_parse_option.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@targeting_disabled = common dso_local global i32 0, align 4
@index_mode = common dso_local global i32 0, align 4
@binlog_check_mode = common dso_local global i32 0, align 4
@use_stemmer = common dso_local global i32 0, align 4
@delay_targeting = common dso_local global i32 0, align 4
@optarg = common dso_local global i8* null, align 8
@read_stats_filename = common dso_local global i8* null, align 8
@write_stats_filename = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [7 x i8] c"%lld%c\00", align 1
@dynamic_data_buffer_size = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @f_parse_option(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i8, align 1
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  switch i32 %6, label %59 [
    i32 105, label %7
    i32 73, label %8
    i32 67, label %9
    i32 83, label %12
    i32 68, label %15
    i32 82, label %16
    i32 87, label %18
    i32 72, label %20
  ]

7:                                                ; preds = %1
  store i32 1, i32* @targeting_disabled, align 4
  br label %60

8:                                                ; preds = %1
  store i32 1, i32* @index_mode, align 4
  br label %60

9:                                                ; preds = %1
  %10 = load i32, i32* @binlog_check_mode, align 4
  %11 = add nsw i32 %10, 1
  store i32 %11, i32* @binlog_check_mode, align 4
  br label %60

12:                                               ; preds = %1
  %13 = load i32, i32* @use_stemmer, align 4
  %14 = xor i32 %13, 1
  store i32 %14, i32* @use_stemmer, align 4
  br label %60

15:                                               ; preds = %1
  store i32 0, i32* @delay_targeting, align 4
  br label %60

16:                                               ; preds = %1
  %17 = load i8*, i8** @optarg, align 8
  store i8* %17, i8** @read_stats_filename, align 8
  br label %60

18:                                               ; preds = %1
  %19 = load i8*, i8** @optarg, align 8
  store i8* %19, i8** @write_stats_filename, align 8
  br label %60

20:                                               ; preds = %1
  store i8 0, i8* %5, align 1
  %21 = load i8*, i8** @optarg, align 8
  %22 = call i32 @sscanf(i8* %21, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i64* %4, i8* %5)
  %23 = icmp sge i32 %22, 1
  %24 = zext i1 %23 to i32
  %25 = call i32 @assert(i32 %24)
  %26 = load i8, i8* %5, align 1
  %27 = sext i8 %26 to i32
  %28 = or i32 %27, 32
  switch i32 %28, label %41 [
    i32 107, label %29
    i32 109, label %32
    i32 103, label %35
    i32 116, label %38
  ]

29:                                               ; preds = %20
  %30 = load i64, i64* %4, align 8
  %31 = shl i64 %30, 10
  store i64 %31, i64* %4, align 8
  br label %47

32:                                               ; preds = %20
  %33 = load i64, i64* %4, align 8
  %34 = shl i64 %33, 20
  store i64 %34, i64* %4, align 8
  br label %47

35:                                               ; preds = %20
  %36 = load i64, i64* %4, align 8
  %37 = shl i64 %36, 30
  store i64 %37, i64* %4, align 8
  br label %47

38:                                               ; preds = %20
  %39 = load i64, i64* %4, align 8
  %40 = shl i64 %39, 40
  store i64 %40, i64* %4, align 8
  br label %47

41:                                               ; preds = %20
  %42 = load i8, i8* %5, align 1
  %43 = sext i8 %42 to i32
  %44 = icmp eq i32 %43, 32
  %45 = zext i1 %44 to i32
  %46 = call i32 @assert(i32 %45)
  br label %47

47:                                               ; preds = %41, %38, %35, %32, %29
  %48 = load i32, i32* %3, align 4
  %49 = icmp eq i32 %48, 72
  br i1 %49, label %50, label %58

50:                                               ; preds = %47
  %51 = load i64, i64* %4, align 8
  %52 = icmp sge i64 %51, 1048576
  br i1 %52, label %53, label %58

53:                                               ; preds = %50
  %54 = load i64, i64* %4, align 8
  %55 = icmp sle i64 %54, 107374182400
  br i1 %55, label %56, label %58

56:                                               ; preds = %53
  %57 = load i64, i64* %4, align 8
  store i64 %57, i64* @dynamic_data_buffer_size, align 8
  br label %58

58:                                               ; preds = %56, %53, %50, %47
  br label %60

59:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %61

60:                                               ; preds = %58, %18, %16, %15, %12, %9, %8, %7
  store i32 0, i32* %2, align 4
  br label %61

61:                                               ; preds = %60, %59
  %62 = load i32, i32* %2, align 4
  ret i32 %62
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @sscanf(i8*, i8*, i64*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
