; ModuleID = '/home/carl/AnghaBench/kphp-kdb/bayes/extr_bayes-data.c_add_kludge.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/bayes/extr_bayes-data.c_add_kludge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@debug = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"KLUDGE %d %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"KLUDGE %d %d | %lld\0A\00", align 1
@KLUDGE = common dso_local global i64 0, align 8
@HASH_MUL = common dso_local global i32 0, align 4
@words = common dso_local global i32* null, align 8
@words_len = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @add_kludge(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i64, i64* @debug, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %12

7:                                                ; preds = %2
  %8 = load i32, i32* @stderr, align 4
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* %4, align 4
  %11 = call i32 @fprintf(i32 %8, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %9, i32 %10)
  br label %12

12:                                               ; preds = %7, %2
  %13 = load i32, i32* %3, align 4
  %14 = load i32, i32* %4, align 4
  %15 = load i64, i64* @KLUDGE, align 8
  %16 = load i32, i32* %3, align 4
  %17 = sext i32 %16 to i64
  %18 = add nsw i64 %15, %17
  %19 = trunc i64 %18 to i32
  %20 = load i32, i32* @HASH_MUL, align 4
  %21 = mul nsw i32 %19, %20
  %22 = load i32, i32* %4, align 4
  %23 = add nsw i32 %21, %22
  %24 = sext i32 %23 to i64
  %25 = call i32 @debugp(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %13, i32 %14, i64 %24)
  %26 = load i64, i64* @KLUDGE, align 8
  %27 = load i32, i32* %3, align 4
  %28 = sext i32 %27 to i64
  %29 = add nsw i64 %26, %28
  %30 = trunc i64 %29 to i32
  %31 = load i32, i32* @HASH_MUL, align 4
  %32 = mul nsw i32 %30, %31
  %33 = load i32, i32* %4, align 4
  %34 = add nsw i32 %32, %33
  %35 = load i32*, i32** @words, align 8
  %36 = load i32, i32* @words_len, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* @words_len, align 4
  %38 = sext i32 %36 to i64
  %39 = getelementptr inbounds i32, i32* %35, i64 %38
  store i32 %34, i32* %39, align 4
  ret void
}

declare dso_local i32 @fprintf(i32, i8*, i32, i32) #1

declare dso_local i32 @debugp(i8*, i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
