; ModuleID = '/home/carl/AnghaBench/kphp-kdb/magus/extr_magus-engine.c_magus_parse_option.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/magus/extr_magus-engine.c_magus_parse_option.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@optarg = common dso_local global i32 0, align 4
@max_memory = common dso_local global i32 0, align 4
@types = common dso_local global i32* null, align 8
@index_mode = common dso_local global i32 0, align 4
@MCL_CURRENT = common dso_local global i32 0, align 4
@MCL_FUTURE = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"error: fail to lock paged memory\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @magus_parse_option(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  switch i32 %5, label %44 [
    i32 109, label %6
    i32 84, label %15
    i32 105, label %33
    i32 107, label %34
  ]

6:                                                ; preds = %1
  %7 = load i32, i32* @optarg, align 4
  %8 = call i32 @atoi(i32 %7)
  store i32 %8, i32* @max_memory, align 4
  %9 = load i32, i32* @max_memory, align 4
  %10 = icmp slt i32 %9, 1
  br i1 %10, label %11, label %12

11:                                               ; preds = %6
  store i32 1, i32* @max_memory, align 4
  br label %12

12:                                               ; preds = %11, %6
  %13 = load i32, i32* @max_memory, align 4
  %14 = mul nsw i32 %13, 1048576
  store i32 %14, i32* @max_memory, align 4
  br label %45

15:                                               ; preds = %1
  %16 = load i32, i32* @optarg, align 4
  %17 = call i32 @atoi(i32 %16)
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* %4, align 4
  %19 = icmp slt i32 0, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %15
  %21 = load i32, i32* %4, align 4
  %22 = icmp slt i32 %21, 256
  br label %23

23:                                               ; preds = %20, %15
  %24 = phi i1 [ false, %15 ], [ %22, %20 ]
  %25 = zext i1 %24 to i32
  %26 = call i32 @assert(i32 %25)
  %27 = load i32*, i32** @types, align 8
  %28 = load i32, i32* %4, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %30, align 4
  br label %45

33:                                               ; preds = %1
  store i32 1, i32* @index_mode, align 4
  br label %45

34:                                               ; preds = %1
  %35 = load i32, i32* @MCL_CURRENT, align 4
  %36 = load i32, i32* @MCL_FUTURE, align 4
  %37 = or i32 %35, %36
  %38 = call i32 @mlockall(i32 %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %34
  %41 = load i32, i32* @stderr, align 4
  %42 = call i32 @fprintf(i32 %41, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  br label %43

43:                                               ; preds = %40, %34
  br label %45

44:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %46

45:                                               ; preds = %43, %33, %23, %12
  store i32 0, i32* %2, align 4
  br label %46

46:                                               ; preds = %45, %44
  %47 = load i32, i32* %2, align 4
  ret i32 %47
}

declare dso_local i32 @atoi(i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @mlockall(i32) #1

declare dso_local i32 @fprintf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
