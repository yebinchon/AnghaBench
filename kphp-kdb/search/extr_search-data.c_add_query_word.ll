; ModuleID = '/home/carl/AnghaBench/kphp-kdb/search/extr_search-data.c_add_query_word.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/search/extr_search-data.c_add_query_word.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@Q_words = common dso_local global i32 0, align 4
@QW = common dso_local global i64* null, align 8
@MAX_WORDS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"add_query_word (%llx, %d)\0A\00", align 1
@QT = common dso_local global i8* null, align 8
@IHE = common dso_local global %struct.TYPE_2__* null, align 8
@QOTW = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i8)* @add_query_word to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_query_word(i64 %0, i8 signext %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i8, align 1
  %6 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store i8 %1, i8* %5, align 1
  store i32 0, i32* %6, align 4
  br label %7

7:                                                ; preds = %22, %2
  %8 = load i32, i32* %6, align 4
  %9 = load i32, i32* @Q_words, align 4
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %25

11:                                               ; preds = %7
  %12 = load i64*, i64** @QW, align 8
  %13 = load i32, i32* %6, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i64, i64* %12, i64 %14
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* %4, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %11
  %20 = load i32, i32* %6, align 4
  store i32 %20, i32* %3, align 4
  br label %56

21:                                               ; preds = %11
  br label %22

22:                                               ; preds = %21
  %23 = load i32, i32* %6, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %6, align 4
  br label %7

25:                                               ; preds = %7
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* @MAX_WORDS, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %25
  store i32 -1, i32* %3, align 4
  br label %56

30:                                               ; preds = %25
  %31 = load i64, i64* %4, align 8
  %32 = load i8, i8* %5, align 1
  %33 = sext i8 %32 to i32
  %34 = call i32 @vkprintf(i32 3, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i64 %31, i32 %33)
  %35 = load i64, i64* %4, align 8
  %36 = load i64*, i64** @QW, align 8
  %37 = load i32, i32* %6, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i64, i64* %36, i64 %38
  store i64 %35, i64* %39, align 8
  %40 = load i8, i8* %5, align 1
  %41 = load i8*, i8** @QT, align 8
  %42 = load i32, i32* %6, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i8, i8* %41, i64 %43
  store i8 %40, i8* %44, align 1
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** @IHE, align 8
  %46 = load i32, i32* %6, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  store i32 -2, i32* %49, align 4
  %50 = load i32*, i32** @QOTW, align 8
  %51 = load i32, i32* %6, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %50, i64 %52
  store i32 1, i32* %53, align 4
  %54 = load i32, i32* @Q_words, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* @Q_words, align 4
  store i32 %54, i32* %3, align 4
  br label %56

56:                                               ; preds = %30, %29, %19
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

declare dso_local i32 @vkprintf(i32, i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
