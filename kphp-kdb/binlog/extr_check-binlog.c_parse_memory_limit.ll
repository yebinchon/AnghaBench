; ModuleID = '/home/carl/AnghaBench/kphp-kdb/binlog/extr_check-binlog.c_parse_memory_limit.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/binlog/extr_check-binlog.c_parse_memory_limit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@optarg = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"%lld%c\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"Parsing limit for option '%c' fail: %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"Parsing limit fail. Unknown suffix '%c'.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, i8*)* @parse_memory_limit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @parse_memory_limit(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8, align 1
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  store i8 0, i8* %6, align 1
  %7 = load i32, i32* @optarg, align 4
  %8 = call i32 @sscanf(i32 %7, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i64* %5, i8* %6)
  %9 = icmp slt i32 %8, 1
  br i1 %9, label %10, label %16

10:                                               ; preds = %2
  %11 = load i32, i32* %3, align 4
  %12 = trunc i32 %11 to i8
  %13 = load i8*, i8** %4, align 8
  %14 = call i32 (i8*, i8, ...) @kprintf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i8 signext %12, i8* %13)
  %15 = call i32 @exit(i32 1) #3
  unreachable

16:                                               ; preds = %2
  %17 = load i8, i8* %6, align 1
  %18 = sext i8 %17 to i32
  %19 = or i32 %18, 32
  switch i32 %19, label %33 [
    i32 32, label %20
    i32 107, label %21
    i32 109, label %24
    i32 103, label %27
    i32 116, label %30
  ]

20:                                               ; preds = %16
  br label %37

21:                                               ; preds = %16
  %22 = load i64, i64* %5, align 8
  %23 = shl i64 %22, 10
  store i64 %23, i64* %5, align 8
  br label %37

24:                                               ; preds = %16
  %25 = load i64, i64* %5, align 8
  %26 = shl i64 %25, 20
  store i64 %26, i64* %5, align 8
  br label %37

27:                                               ; preds = %16
  %28 = load i64, i64* %5, align 8
  %29 = shl i64 %28, 30
  store i64 %29, i64* %5, align 8
  br label %37

30:                                               ; preds = %16
  %31 = load i64, i64* %5, align 8
  %32 = shl i64 %31, 40
  store i64 %32, i64* %5, align 8
  br label %37

33:                                               ; preds = %16
  %34 = load i8, i8* %6, align 1
  %35 = call i32 (i8*, i8, ...) @kprintf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i8 signext %34)
  %36 = call i32 @exit(i32 1) #3
  unreachable

37:                                               ; preds = %30, %27, %24, %21, %20
  %38 = load i64, i64* %5, align 8
  ret i64 %38
}

declare dso_local i32 @sscanf(i32, i8*, i64*, i8*) #1

declare dso_local i32 @kprintf(i8*, i8 signext, ...) #1

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
