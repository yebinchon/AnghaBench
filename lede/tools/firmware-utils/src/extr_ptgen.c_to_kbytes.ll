; ModuleID = '/home/carl/AnghaBench/lede/tools/firmware-utils/src/extr_ptgen.c_to_kbytes.c'
source_filename = "/home/carl/AnghaBench/lede/tools/firmware-utils/src/extr_ptgen.c_to_kbytes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"garbage after end of number\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*)* @to_kbytes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @to_kbytes(i8* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i32 0, i32* %4, align 4
  %7 = load i8*, i8** %3, align 8
  %8 = call i64 @strtoul(i8* %7, i8** %6, i32 0)
  store i64 %8, i64* %5, align 8
  %9 = load i8*, i8** %6, align 8
  %10 = load i8, i8* %9, align 1
  %11 = call i32 @tolower(i8 signext %10)
  switch i32 %11, label %15 [
    i32 107, label %12
    i32 0, label %12
    i32 109, label %13
    i32 103, label %14
  ]

12:                                               ; preds = %1, %1
  store i32 0, i32* %4, align 4
  br label %16

13:                                               ; preds = %1
  store i32 1, i32* %4, align 4
  br label %16

14:                                               ; preds = %1
  store i32 2, i32* %4, align 4
  br label %16

15:                                               ; preds = %1
  store i64 0, i64* %2, align 8
  br label %43

16:                                               ; preds = %14, %13, %12
  %17 = load i8*, i8** %6, align 8
  %18 = load i8, i8* %17, align 1
  %19 = icmp ne i8 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %16
  %21 = load i8*, i8** %6, align 8
  %22 = getelementptr inbounds i8, i8* %21, i32 1
  store i8* %22, i8** %6, align 8
  br label %23

23:                                               ; preds = %20, %16
  %24 = load i8*, i8** %6, align 8
  %25 = load i8, i8* %24, align 1
  %26 = icmp ne i8 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %23
  %28 = load i32, i32* @stderr, align 4
  %29 = call i32 @fprintf(i32 %28, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  store i64 0, i64* %2, align 8
  br label %43

30:                                               ; preds = %23
  %31 = load i32, i32* %4, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %30
  %34 = load i64, i64* %5, align 8
  store i64 %34, i64* %2, align 8
  br label %43

35:                                               ; preds = %30
  %36 = load i64, i64* %5, align 8
  %37 = load i32, i32* %4, align 4
  %38 = mul nsw i32 10, %37
  %39 = sub nsw i32 %38, 1
  %40 = shl i32 2, %39
  %41 = sext i32 %40 to i64
  %42 = mul nsw i64 %36, %41
  store i64 %42, i64* %2, align 8
  br label %43

43:                                               ; preds = %35, %33, %27, %15
  %44 = load i64, i64* %2, align 8
  ret i64 %44
}

declare dso_local i64 @strtoul(i8*, i8**, i32) #1

declare dso_local i32 @tolower(i8 signext) #1

declare dso_local i32 @fprintf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
