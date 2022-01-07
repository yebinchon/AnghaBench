; ModuleID = '/home/carl/AnghaBench/kphp-kdb/cache/extr_cache-engine.c_parse_memory_limit.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/cache/extr_cache-engine.c_parse_memory_limit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@optarg = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"%lld%c\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"Parsing limit for option '%c' fail: %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"Parsing limit fail. Unknown suffix '%c'.\0A\00", align 1
@.str.3 = private unnamed_addr constant [84 x i8] c"Parsing limit for option '%c' fail (limit is too big), limit: %s, min_limit: %lld.\0A\00", align 1
@.str.4 = private unnamed_addr constant [86 x i8] c"Parsing limit for option '%c' fail (limit is too small), limit: %s, max_limit: %lld.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @parse_memory_limit(i32 %0, i8* %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8, align 1
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  store i8 0, i8* %10, align 1
  %11 = load i32, i32* @optarg, align 4
  %12 = call i32 @sscanf(i32 %11, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i64* %9, i8* %10)
  %13 = icmp slt i32 %12, 1
  br i1 %13, label %14, label %19

14:                                               ; preds = %4
  %15 = load i32, i32* %5, align 4
  %16 = load i8*, i8** %6, align 8
  %17 = call i32 (i8*, i32, ...) @kprintf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %15, i8* %16)
  %18 = call i32 @exit(i32 1) #3
  unreachable

19:                                               ; preds = %4
  %20 = load i8, i8* %10, align 1
  %21 = sext i8 %20 to i32
  %22 = or i32 %21, 32
  switch i32 %22, label %36 [
    i32 32, label %23
    i32 107, label %24
    i32 109, label %27
    i32 103, label %30
    i32 116, label %33
  ]

23:                                               ; preds = %19
  br label %41

24:                                               ; preds = %19
  %25 = load i64, i64* %9, align 8
  %26 = shl i64 %25, 10
  store i64 %26, i64* %9, align 8
  br label %41

27:                                               ; preds = %19
  %28 = load i64, i64* %9, align 8
  %29 = shl i64 %28, 20
  store i64 %29, i64* %9, align 8
  br label %41

30:                                               ; preds = %19
  %31 = load i64, i64* %9, align 8
  %32 = shl i64 %31, 30
  store i64 %32, i64* %9, align 8
  br label %41

33:                                               ; preds = %19
  %34 = load i64, i64* %9, align 8
  %35 = shl i64 %34, 40
  store i64 %35, i64* %9, align 8
  br label %41

36:                                               ; preds = %19
  %37 = load i8, i8* %10, align 1
  %38 = sext i8 %37 to i32
  %39 = call i32 (i8*, i32, ...) @kprintf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i32 %38)
  %40 = call i32 @exit(i32 1) #3
  unreachable

41:                                               ; preds = %33, %30, %27, %24, %23
  %42 = load i64, i64* %9, align 8
  %43 = load i64, i64* %7, align 8
  %44 = icmp slt i64 %42, %43
  br i1 %44, label %45, label %51

45:                                               ; preds = %41
  %46 = load i32, i32* %5, align 4
  %47 = load i8*, i8** %6, align 8
  %48 = load i64, i64* %7, align 8
  %49 = call i32 (i8*, i32, ...) @kprintf(i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.3, i64 0, i64 0), i32 %46, i8* %47, i64 %48)
  %50 = call i32 @exit(i32 1) #3
  unreachable

51:                                               ; preds = %41
  %52 = load i64, i64* %9, align 8
  %53 = load i64, i64* %8, align 8
  %54 = icmp sgt i64 %52, %53
  br i1 %54, label %55, label %61

55:                                               ; preds = %51
  %56 = load i32, i32* %5, align 4
  %57 = load i8*, i8** %6, align 8
  %58 = load i64, i64* %8, align 8
  %59 = call i32 (i8*, i32, ...) @kprintf(i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str.4, i64 0, i64 0), i32 %56, i8* %57, i64 %58)
  %60 = call i32 @exit(i32 1) #3
  unreachable

61:                                               ; preds = %51
  %62 = load i64, i64* %9, align 8
  ret i64 %62
}

declare dso_local i32 @sscanf(i32, i8*, i64*, i8*) #1

declare dso_local i32 @kprintf(i8*, i32, ...) #1

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
