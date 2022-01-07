; ModuleID = '/home/carl/AnghaBench/kphp-kdb/statsx/extr_statsx-engine.c_f_parse_option.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/statsx/extr_statsx-engine.c_f_parse_option.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@memcache_auto_answer_mode = common dso_local global i32 0, align 4
@test_mode = common dso_local global i32 0, align 4
@mode_ignore_user_id = common dso_local global i32 0, align 4
@index_mode = common dso_local global i32 0, align 4
@optarg = common dso_local global i32 0, align 4
@memory_to_index = common dso_local global i64 0, align 8
@auto_create_new_versions = common dso_local global i32 0, align 4
@custom_version_names = common dso_local global i32 0, align 4
@monthly_stat = common dso_local global i32 0, align 4
@ignore_set_timezone = common dso_local global i32 0, align 4
@create_day_start = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%lf\00", align 1
@max_counters_growth_percent = common dso_local global double 0.000000e+00, align 8
@.str.1 = private unnamed_addr constant [23 x i8] c"Illegal -P option: %s\0A\00", align 1
@default_timezone = common dso_local global i64 0, align 8
@binlog_cyclic_mode = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @f_parse_option(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  switch i32 %4, label %45 [
    i32 102, label %5
    i32 84, label %8
    i32 109, label %11
    i32 105, label %12
    i32 77, label %13
    i32 121, label %18
    i32 120, label %19
    i32 69, label %20
    i32 116, label %23
    i32 68, label %26
    i32 80, label %29
    i32 83, label %41
    i32 1000, label %44
  ]

5:                                                ; preds = %1
  %6 = load i32, i32* @memcache_auto_answer_mode, align 4
  %7 = add nsw i32 %6, 1
  store i32 %7, i32* @memcache_auto_answer_mode, align 4
  br label %46

8:                                                ; preds = %1
  %9 = load i32, i32* @test_mode, align 4
  %10 = add nsw i32 %9, 1
  store i32 %10, i32* @test_mode, align 4
  br label %46

11:                                               ; preds = %1
  store i32 1, i32* @mode_ignore_user_id, align 4
  br label %46

12:                                               ; preds = %1
  store i32 1, i32* @index_mode, align 4
  br label %46

13:                                               ; preds = %1
  %14 = load i32, i32* @optarg, align 4
  %15 = call i64 @atoi(i32 %14)
  %16 = mul nsw i64 %15, 1024
  %17 = mul nsw i64 %16, 1024
  store i64 %17, i64* @memory_to_index, align 8
  br label %46

18:                                               ; preds = %1
  store i32 0, i32* @auto_create_new_versions, align 4
  br label %46

19:                                               ; preds = %1
  store i32 1, i32* @custom_version_names, align 4
  store i32 0, i32* @auto_create_new_versions, align 4
  br label %46

20:                                               ; preds = %1
  %21 = load i32, i32* @monthly_stat, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* @monthly_stat, align 4
  br label %46

23:                                               ; preds = %1
  %24 = load i32, i32* @ignore_set_timezone, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* @ignore_set_timezone, align 4
  br label %46

26:                                               ; preds = %1
  %27 = load i32, i32* @create_day_start, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* @create_day_start, align 4
  br label %46

29:                                               ; preds = %1
  %30 = load i32, i32* @optarg, align 4
  %31 = call i32 @sscanf(i32 %30, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), double* @max_counters_growth_percent)
  %32 = icmp ne i32 %31, 1
  br i1 %32, label %36, label %33

33:                                               ; preds = %29
  %34 = load double, double* @max_counters_growth_percent, align 8
  %35 = fcmp olt double %34, 1.000000e-01
  br i1 %35, label %36, label %40

36:                                               ; preds = %33, %29
  %37 = load i32, i32* @optarg, align 4
  %38 = call i32 @kprintf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %37)
  %39 = call i32 @exit(i32 1) #3
  unreachable

40:                                               ; preds = %33
  br label %46

41:                                               ; preds = %1
  %42 = load i32, i32* @optarg, align 4
  %43 = call i64 @atoi(i32 %42)
  store i64 %43, i64* @default_timezone, align 8
  br label %46

44:                                               ; preds = %1
  store i32 1, i32* @binlog_cyclic_mode, align 4
  br label %46

45:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %47

46:                                               ; preds = %44, %41, %40, %26, %23, %20, %19, %18, %13, %12, %11, %8, %5
  store i32 0, i32* %2, align 4
  br label %47

47:                                               ; preds = %46, %45
  %48 = load i32, i32* %2, align 4
  ret i32 %48
}

declare dso_local i64 @atoi(i32) #1

declare dso_local i32 @sscanf(i32, i8*, double*) #1

declare dso_local i32 @kprintf(i8*, i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
