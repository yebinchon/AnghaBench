; ModuleID = '/home/carl/AnghaBench/kphp-kdb/common/extr_server-functions.c_parse_memory_limit.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/common/extr_server-functions.c_parse_memory_limit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"%lld%c\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"Parsing limit for option fail: %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"Parsing limit fail. Unknown suffix '%c'.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*)* @parse_memory_limit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @parse_memory_limit(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i8, align 1
  store i8* %0, i8** %2, align 8
  store i8 0, i8* %4, align 1
  %5 = load i8*, i8** %2, align 8
  %6 = call i32 @sscanf(i8* %5, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i64* %3, i8* %4)
  %7 = icmp slt i32 %6, 1
  br i1 %7, label %8, label %13

8:                                                ; preds = %1
  %9 = load i8*, i8** %2, align 8
  %10 = call i32 (i8*, ...) @kprintf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i8* %9)
  %11 = call i32 (...) @usage()
  %12 = call i32 @exit(i32 1) #3
  unreachable

13:                                               ; preds = %1
  %14 = load i8, i8* %4, align 1
  %15 = sext i8 %14 to i32
  %16 = or i32 %15, 32
  switch i32 %16, label %30 [
    i32 32, label %17
    i32 107, label %18
    i32 109, label %21
    i32 103, label %24
    i32 116, label %27
  ]

17:                                               ; preds = %13
  br label %36

18:                                               ; preds = %13
  %19 = load i64, i64* %3, align 8
  %20 = shl i64 %19, 10
  store i64 %20, i64* %3, align 8
  br label %36

21:                                               ; preds = %13
  %22 = load i64, i64* %3, align 8
  %23 = shl i64 %22, 20
  store i64 %23, i64* %3, align 8
  br label %36

24:                                               ; preds = %13
  %25 = load i64, i64* %3, align 8
  %26 = shl i64 %25, 30
  store i64 %26, i64* %3, align 8
  br label %36

27:                                               ; preds = %13
  %28 = load i64, i64* %3, align 8
  %29 = shl i64 %28, 40
  store i64 %29, i64* %3, align 8
  br label %36

30:                                               ; preds = %13
  %31 = load i8, i8* %4, align 1
  %32 = sext i8 %31 to i32
  %33 = call i32 (i8*, ...) @kprintf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i32 %32)
  %34 = call i32 (...) @usage()
  %35 = call i32 @exit(i32 1) #3
  unreachable

36:                                               ; preds = %27, %24, %21, %18, %17
  %37 = load i64, i64* %3, align 8
  ret i64 %37
}

declare dso_local i32 @sscanf(i8*, i8*, i64*, i8*) #1

declare dso_local i32 @kprintf(i8*, ...) #1

declare dso_local i32 @usage(...) #1

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
