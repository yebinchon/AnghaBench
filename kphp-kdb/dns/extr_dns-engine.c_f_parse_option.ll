; ModuleID = '/home/carl/AnghaBench/kphp-kdb/dns/extr_dns-engine.c_f_parse_option.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/dns/extr_dns-engine.c_f_parse_option.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@optarg = common dso_local global i32 0, align 4
@output_binlog_name = common dso_local global i32 0, align 4
@workers = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Too many additional workers\0A\00", align 1
@stats_port = common dso_local global i8* null, align 8
@DNS_MAX_RESPONSE_RECORDS = common dso_local global i32 0, align 4
@dns_max_response_records = common dso_local global i32 0, align 4
@keep_going = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"Unimplemented option '%c' (%d)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @f_parse_option(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  switch i32 %5, label %39 [
    i32 69, label %6
    i32 77, label %8
    i32 80, label %22
    i32 82, label %25
    i32 107, label %38
  ]

6:                                                ; preds = %1
  %7 = load i32, i32* @optarg, align 4
  store i32 %7, i32* @output_binlog_name, align 4
  br label %45

8:                                                ; preds = %1
  %9 = load i32, i32* @optarg, align 4
  %10 = call i8* @atoi(i32 %9)
  %11 = ptrtoint i8* %10 to i32
  store i32 %11, i32* @workers, align 4
  %12 = load i32, i32* @workers, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %8
  store i32 0, i32* @workers, align 4
  br label %15

15:                                               ; preds = %14, %8
  %16 = load i32, i32* @workers, align 4
  %17 = icmp sgt i32 %16, 16
  br i1 %17, label %18, label %21

18:                                               ; preds = %15
  %19 = call i32 @kprintf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %20 = call i32 @exit(i32 1) #3
  unreachable

21:                                               ; preds = %15
  br label %45

22:                                               ; preds = %1
  %23 = load i32, i32* @optarg, align 4
  %24 = call i8* @atoi(i32 %23)
  store i8* %24, i8** @stats_port, align 8
  br label %45

25:                                               ; preds = %1
  %26 = load i32, i32* @optarg, align 4
  %27 = call i8* @atoi(i32 %26)
  %28 = ptrtoint i8* %27 to i32
  store i32 %28, i32* %4, align 4
  %29 = load i32, i32* %4, align 4
  %30 = icmp sge i32 %29, 1
  br i1 %30, label %31, label %37

31:                                               ; preds = %25
  %32 = load i32, i32* %4, align 4
  %33 = load i32, i32* @DNS_MAX_RESPONSE_RECORDS, align 4
  %34 = icmp sle i32 %32, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %31
  %36 = load i32, i32* %4, align 4
  store i32 %36, i32* @dns_max_response_records, align 4
  br label %37

37:                                               ; preds = %35, %31, %25
  br label %45

38:                                               ; preds = %1
  store i32 1, i32* @keep_going, align 4
  br label %45

39:                                               ; preds = %1
  %40 = load i32, i32* @stderr, align 4
  %41 = load i32, i32* %3, align 4
  %42 = trunc i32 %41 to i8
  %43 = load i32, i32* %3, align 4
  %44 = call i32 @fprintf(i32 %40, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i8 signext %42, i32 %43)
  store i32 -1, i32* %2, align 4
  br label %46

45:                                               ; preds = %38, %37, %22, %21, %6
  store i32 0, i32* %2, align 4
  br label %46

46:                                               ; preds = %45, %39
  %47 = load i32, i32* %2, align 4
  ret i32 %47
}

declare dso_local i8* @atoi(i32) #1

declare dso_local i32 @kprintf(i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @fprintf(i32, i8*, i8 signext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
