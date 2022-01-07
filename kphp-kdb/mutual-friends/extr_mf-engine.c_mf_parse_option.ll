; ModuleID = '/home/carl/AnghaBench/kphp-kdb/mutual-friends/extr_mf-engine.c_mf_parse_option.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/mutual-friends/extr_mf-engine.c_mf_parse_option.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@optarg = common dso_local global i8* null, align 8
@max_memory = common dso_local global i32 0, align 4
@suggname = common dso_local global i8* null, align 8
@newindexname = common dso_local global i8* null, align 8
@disable_crc32 = common dso_local global i32 0, align 4
@dump_mode = common dso_local global i32 0, align 4
@index_mode = common dso_local global i32 0, align 4
@MCL_CURRENT = common dso_local global i32 0, align 4
@MCL_FUTURE = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"error: fail to lock paged memory\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mf_parse_option(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  switch i32 %4, label %31 [
    i32 109, label %5
    i32 115, label %14
    i32 119, label %16
    i32 68, label %18
    i32 101, label %19
    i32 105, label %20
    i32 107, label %21
  ]

5:                                                ; preds = %1
  %6 = load i8*, i8** @optarg, align 8
  %7 = call i32 @atoi(i8* %6)
  store i32 %7, i32* @max_memory, align 4
  %8 = load i32, i32* @max_memory, align 4
  %9 = icmp slt i32 %8, 1
  br i1 %9, label %10, label %11

10:                                               ; preds = %5
  store i32 1, i32* @max_memory, align 4
  br label %11

11:                                               ; preds = %10, %5
  %12 = load i32, i32* @max_memory, align 4
  %13 = mul nsw i32 %12, 1048576
  store i32 %13, i32* @max_memory, align 4
  br label %32

14:                                               ; preds = %1
  %15 = load i8*, i8** @optarg, align 8
  store i8* %15, i8** @suggname, align 8
  br label %32

16:                                               ; preds = %1
  %17 = load i8*, i8** @optarg, align 8
  store i8* %17, i8** @newindexname, align 8
  br label %32

18:                                               ; preds = %1
  store i32 3, i32* @disable_crc32, align 4
  br label %32

19:                                               ; preds = %1
  store i32 1, i32* @dump_mode, align 4
  store i32 1, i32* @index_mode, align 4
  br label %32

20:                                               ; preds = %1
  store i32 1, i32* @index_mode, align 4
  br label %32

21:                                               ; preds = %1
  %22 = load i32, i32* @MCL_CURRENT, align 4
  %23 = load i32, i32* @MCL_FUTURE, align 4
  %24 = or i32 %22, %23
  %25 = call i32 @mlockall(i32 %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %21
  %28 = load i32, i32* @stderr, align 4
  %29 = call i32 @fprintf(i32 %28, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  br label %30

30:                                               ; preds = %27, %21
  br label %32

31:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %33

32:                                               ; preds = %30, %20, %19, %18, %16, %14, %11
  store i32 0, i32* %2, align 4
  br label %33

33:                                               ; preds = %32, %31
  %34 = load i32, i32* %2, align 4
  ret i32 %34
}

declare dso_local i32 @atoi(i8*) #1

declare dso_local i32 @mlockall(i32) #1

declare dso_local i32 @fprintf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
