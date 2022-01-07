; ModuleID = '/home/carl/AnghaBench/kphp-kdb/watchcat/extr_watchcat-engine.c_watchcat_parse_option.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/watchcat/extr_watchcat-engine.c_watchcat_parse_option.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@optarg = common dso_local global i32 0, align 4
@max_memory = common dso_local global i32 0, align 4
@queue_port = common dso_local global i8* null, align 8
@MCL_CURRENT = common dso_local global i32 0, align 4
@MCL_FUTURE = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"error: fail to lock paged memory\0A\00", align 1
@use_stemmer = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @watchcat_parse_option(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  switch i32 %4, label %29 [
    i32 109, label %5
    i32 80, label %15
    i32 107, label %18
    i32 83, label %28
  ]

5:                                                ; preds = %1
  %6 = load i32, i32* @optarg, align 4
  %7 = call i8* @atoi(i32 %6)
  %8 = ptrtoint i8* %7 to i32
  store i32 %8, i32* @max_memory, align 4
  %9 = load i32, i32* @max_memory, align 4
  %10 = icmp slt i32 %9, 1
  br i1 %10, label %11, label %12

11:                                               ; preds = %5
  store i32 1, i32* @max_memory, align 4
  br label %12

12:                                               ; preds = %11, %5
  %13 = load i32, i32* @max_memory, align 4
  %14 = mul nsw i32 %13, 1048576
  store i32 %14, i32* @max_memory, align 4
  br label %30

15:                                               ; preds = %1
  %16 = load i32, i32* @optarg, align 4
  %17 = call i8* @atoi(i32 %16)
  store i8* %17, i8** @queue_port, align 8
  br label %30

18:                                               ; preds = %1
  %19 = load i32, i32* @MCL_CURRENT, align 4
  %20 = load i32, i32* @MCL_FUTURE, align 4
  %21 = or i32 %19, %20
  %22 = call i32 @mlockall(i32 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %18
  %25 = load i32, i32* @stderr, align 4
  %26 = call i32 @fprintf(i32 %25, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  br label %27

27:                                               ; preds = %24, %18
  br label %30

28:                                               ; preds = %1
  store i32 1, i32* @use_stemmer, align 4
  br label %30

29:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %31

30:                                               ; preds = %28, %27, %15, %12
  store i32 0, i32* %2, align 4
  br label %31

31:                                               ; preds = %30, %29
  %32 = load i32, i32* %2, align 4
  ret i32 %32
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
