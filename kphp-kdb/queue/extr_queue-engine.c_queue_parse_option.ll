; ModuleID = '/home/carl/AnghaBench/kphp-kdb/queue/extr_queue-engine.c_queue_parse_option.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/queue/extr_queue-engine.c_queue_parse_option.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@optarg = common dso_local global i32 0, align 4
@config_filename = common dso_local global i32 0, align 4
@engine_n = common dso_local global i8* null, align 8
@http_port = common dso_local global i8* null, align 8
@max_memory = common dso_local global i32 0, align 4
@news_port = common dso_local global i8* null, align 8
@watchcat_port = common dso_local global i8* null, align 8
@engine_id = common dso_local global i8* null, align 8
@MCL_CURRENT = common dso_local global i32 0, align 4
@MCL_FUTURE = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"error: fail to lock paged memory\0A\00", align 1
@use_stemmer = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @queue_parse_option(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  switch i32 %4, label %43 [
    i32 67, label %5
    i32 101, label %7
    i32 72, label %10
    i32 109, label %13
    i32 78, label %23
    i32 80, label %26
    i32 113, label %29
    i32 107, label %32
    i32 83, label %42
  ]

5:                                                ; preds = %1
  %6 = load i32, i32* @optarg, align 4
  store i32 %6, i32* @config_filename, align 4
  br label %44

7:                                                ; preds = %1
  %8 = load i32, i32* @optarg, align 4
  %9 = call i8* @atoi(i32 %8)
  store i8* %9, i8** @engine_n, align 8
  br label %44

10:                                               ; preds = %1
  %11 = load i32, i32* @optarg, align 4
  %12 = call i8* @atoi(i32 %11)
  store i8* %12, i8** @http_port, align 8
  br label %44

13:                                               ; preds = %1
  %14 = load i32, i32* @optarg, align 4
  %15 = call i8* @atoi(i32 %14)
  %16 = ptrtoint i8* %15 to i32
  store i32 %16, i32* @max_memory, align 4
  %17 = load i32, i32* @max_memory, align 4
  %18 = icmp slt i32 %17, 1
  br i1 %18, label %19, label %20

19:                                               ; preds = %13
  store i32 1, i32* @max_memory, align 4
  br label %20

20:                                               ; preds = %19, %13
  %21 = load i32, i32* @max_memory, align 4
  %22 = mul nsw i32 %21, 1048576
  store i32 %22, i32* @max_memory, align 4
  br label %44

23:                                               ; preds = %1
  %24 = load i32, i32* @optarg, align 4
  %25 = call i8* @atoi(i32 %24)
  store i8* %25, i8** @news_port, align 8
  br label %44

26:                                               ; preds = %1
  %27 = load i32, i32* @optarg, align 4
  %28 = call i8* @atoi(i32 %27)
  store i8* %28, i8** @watchcat_port, align 8
  br label %44

29:                                               ; preds = %1
  %30 = load i32, i32* @optarg, align 4
  %31 = call i8* @atoi(i32 %30)
  store i8* %31, i8** @engine_id, align 8
  br label %44

32:                                               ; preds = %1
  %33 = load i32, i32* @MCL_CURRENT, align 4
  %34 = load i32, i32* @MCL_FUTURE, align 4
  %35 = or i32 %33, %34
  %36 = call i32 @mlockall(i32 %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %32
  %39 = load i32, i32* @stderr, align 4
  %40 = call i32 @fprintf(i32 %39, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  br label %41

41:                                               ; preds = %38, %32
  br label %44

42:                                               ; preds = %1
  store i32 1, i32* @use_stemmer, align 4
  br label %44

43:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %45

44:                                               ; preds = %42, %41, %29, %26, %23, %20, %10, %7, %5
  store i32 0, i32* %2, align 4
  br label %45

45:                                               ; preds = %44, %43
  %46 = load i32, i32* %2, align 4
  ret i32 %46
}

declare dso_local i8* @atoi(i32) #1

declare dso_local i32 @mlockall(i32) #1

declare dso_local i32 @fprintf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
