; ModuleID = '/home/carl/AnghaBench/h2o/lib/common/extr_filecache.c_h2o_filecache_compare_etag_strong.c'
source_filename = "/home/carl/AnghaBench/h2o/lib/common/extr_filecache.c_h2o_filecache_compare_etag_strong.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @h2o_filecache_compare_etag_strong(i8* %0, i64 %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store i8* %0, i8** %6, align 8
  store i64 %1, i64* %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %11 = load i64, i64* %7, align 8
  %12 = icmp ult i64 %11, 3
  br i1 %12, label %13, label %14

13:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %60

14:                                               ; preds = %4
  %15 = load i8*, i8** %6, align 8
  %16 = getelementptr inbounds i8, i8* %15, i64 0
  %17 = load i8, i8* %16, align 1
  %18 = sext i8 %17 to i32
  %19 = icmp ne i32 %18, 34
  br i1 %19, label %28, label %20

20:                                               ; preds = %14
  %21 = load i8*, i8** %6, align 8
  %22 = load i64, i64* %7, align 8
  %23 = sub i64 %22, 1
  %24 = getelementptr inbounds i8, i8* %21, i64 %23
  %25 = load i8, i8* %24, align 1
  %26 = sext i8 %25 to i32
  %27 = icmp ne i32 %26, 34
  br i1 %27, label %28, label %29

28:                                               ; preds = %20, %14
  store i32 0, i32* %5, align 4
  br label %60

29:                                               ; preds = %20
  store i64 1, i64* %10, align 8
  br label %30

30:                                               ; preds = %51, %29
  %31 = load i64, i64* %10, align 8
  %32 = load i64, i64* %7, align 8
  %33 = sub i64 %32, 1
  %34 = icmp ult i64 %31, %33
  br i1 %34, label %35, label %54

35:                                               ; preds = %30
  %36 = load i8*, i8** %6, align 8
  %37 = load i64, i64* %10, align 8
  %38 = getelementptr inbounds i8, i8* %36, i64 %37
  %39 = load i8, i8* %38, align 1
  %40 = sext i8 %39 to i32
  %41 = icmp slt i32 %40, 33
  br i1 %41, label %49, label %42

42:                                               ; preds = %35
  %43 = load i8*, i8** %6, align 8
  %44 = load i64, i64* %10, align 8
  %45 = getelementptr inbounds i8, i8* %43, i64 %44
  %46 = load i8, i8* %45, align 1
  %47 = sext i8 %46 to i32
  %48 = icmp eq i32 %47, 34
  br i1 %48, label %49, label %50

49:                                               ; preds = %42, %35
  store i32 0, i32* %5, align 4
  br label %60

50:                                               ; preds = %42
  br label %51

51:                                               ; preds = %50
  %52 = load i64, i64* %10, align 8
  %53 = add i64 %52, 1
  store i64 %53, i64* %10, align 8
  br label %30

54:                                               ; preds = %30
  %55 = load i8*, i8** %6, align 8
  %56 = load i64, i64* %7, align 8
  %57 = load i8*, i8** %8, align 8
  %58 = load i64, i64* %9, align 8
  %59 = call i32 @h2o_memis(i8* %55, i64 %56, i8* %57, i64 %58)
  store i32 %59, i32* %5, align 4
  br label %60

60:                                               ; preds = %54, %49, %28, %13
  %61 = load i32, i32* %5, align 4
  ret i32 %61
}

declare dso_local i32 @h2o_memis(i8*, i64, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
