; ModuleID = '/home/carl/AnghaBench/jemalloc/src/extr_prof.c_prof_thread_name_alloc.c'
source_filename = "/home/carl/AnghaBench/jemalloc/src/extr_prof.c_prof_thread_name_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@TSDN_NULL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32*, i8*)* @prof_thread_name_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @prof_thread_name_alloc(i32* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = icmp eq i8* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  store i8* null, i8** %3, align 8
  br label %36

11:                                               ; preds = %2
  %12 = load i8*, i8** %5, align 8
  %13 = call i32 @strlen(i8* %12)
  %14 = add nsw i32 %13, 1
  %15 = sext i32 %14 to i64
  store i64 %15, i64* %7, align 8
  %16 = load i64, i64* %7, align 8
  %17 = icmp eq i64 %16, 1
  br i1 %17, label %18, label %19

18:                                               ; preds = %11
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %3, align 8
  br label %36

19:                                               ; preds = %11
  %20 = load i32*, i32** %4, align 8
  %21 = load i64, i64* %7, align 8
  %22 = load i64, i64* %7, align 8
  %23 = call i32 @sz_size2index(i64 %22)
  %24 = load i32, i32* @TSDN_NULL, align 4
  %25 = call i32 @arena_get(i32 %24, i32 0, i32 1)
  %26 = call i8* @iallocztm(i32* %20, i64 %21, i32 %23, i32 0, i32* null, i32 1, i32 %25, i32 1)
  store i8* %26, i8** %6, align 8
  %27 = load i8*, i8** %6, align 8
  %28 = icmp eq i8* %27, null
  br i1 %28, label %29, label %30

29:                                               ; preds = %19
  store i8* null, i8** %3, align 8
  br label %36

30:                                               ; preds = %19
  %31 = load i8*, i8** %6, align 8
  %32 = load i8*, i8** %5, align 8
  %33 = load i64, i64* %7, align 8
  %34 = call i32 @memcpy(i8* %31, i8* %32, i64 %33)
  %35 = load i8*, i8** %6, align 8
  store i8* %35, i8** %3, align 8
  br label %36

36:                                               ; preds = %30, %29, %18, %10
  %37 = load i8*, i8** %3, align 8
  ret i8* %37
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @iallocztm(i32*, i64, i32, i32, i32*, i32, i32, i32) #1

declare dso_local i32 @sz_size2index(i64) #1

declare dso_local i32 @arena_get(i32, i32, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
