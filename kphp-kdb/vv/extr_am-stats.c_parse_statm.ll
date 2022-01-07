; ModuleID = '/home/carl/AnghaBench/kphp-kdb/vv/extr_am-stats.c_parse_statm.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/vv/extr_am-stats.c_parse_statm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@parse_statm.page_size = internal global i64 -1, align 8
@_SC_PAGESIZE = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64*, i32)* @parse_statm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_statm(i8* %0, i64* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i64* %1, i64** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load i64, i64* @parse_statm.page_size, align 8
  %12 = icmp slt i64 %11, 0
  br i1 %12, label %13, label %20

13:                                               ; preds = %3
  %14 = load i32, i32* @_SC_PAGESIZE, align 4
  %15 = call i64 @sysconf(i32 %14)
  store i64 %15, i64* @parse_statm.page_size, align 8
  %16 = load i64, i64* @parse_statm.page_size, align 8
  %17 = icmp sgt i64 %16, 0
  %18 = zext i1 %17 to i32
  %19 = call i32 @assert(i32 %18)
  br label %20

20:                                               ; preds = %13, %3
  %21 = load i32, i32* %7, align 4
  %22 = icmp sgt i32 %21, 7
  br i1 %22, label %23, label %24

23:                                               ; preds = %20
  store i32 7, i32* %7, align 4
  br label %24

24:                                               ; preds = %23, %20
  %25 = load i8*, i8** %5, align 8
  store i8* %25, i8** %9, align 8
  store i64 0, i64* @errno, align 8
  store i32 0, i32* %8, align 4
  br label %26

26:                                               ; preds = %53, %24
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* %7, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %56

30:                                               ; preds = %26
  %31 = load i8*, i8** %9, align 8
  %32 = call i64 @strtoll(i8* %31, i8** %10, i32 10)
  %33 = load i64*, i64** %6, align 8
  %34 = load i32, i32* %8, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i64, i64* %33, i64 %35
  store i64 %32, i64* %36, align 8
  %37 = load i8*, i8** %9, align 8
  %38 = load i8*, i8** %10, align 8
  %39 = icmp eq i8* %37, %38
  br i1 %39, label %43, label %40

40:                                               ; preds = %30
  %41 = load i64, i64* @errno, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %40, %30
  store i32 -1, i32* %4, align 4
  br label %57

44:                                               ; preds = %40
  %45 = load i64, i64* @parse_statm.page_size, align 8
  %46 = load i64*, i64** %6, align 8
  %47 = load i32, i32* %8, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i64, i64* %46, i64 %48
  %50 = load i64, i64* %49, align 8
  %51 = mul nsw i64 %50, %45
  store i64 %51, i64* %49, align 8
  %52 = load i8*, i8** %10, align 8
  store i8* %52, i8** %9, align 8
  br label %53

53:                                               ; preds = %44
  %54 = load i32, i32* %8, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %8, align 4
  br label %26

56:                                               ; preds = %26
  store i32 0, i32* %4, align 4
  br label %57

57:                                               ; preds = %56, %43
  %58 = load i32, i32* %4, align 4
  ret i32 %58
}

declare dso_local i64 @sysconf(i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @strtoll(i8*, i8**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
