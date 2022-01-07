; ModuleID = '/home/carl/AnghaBench/git/xdiff/extr_xutils.c_xdl_hash_record.c'
source_filename = "/home/carl/AnghaBench/git/xdiff/extr_xutils.c_xdl_hash_record.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@XDF_WHITESPACE_FLAGS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @xdl_hash_record(i8** %0, i8* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  store i8** %0, i8*** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 5381, i64* %8, align 8
  %10 = load i8**, i8*** %5, align 8
  %11 = load i8*, i8** %10, align 8
  store i8* %11, i8** %9, align 8
  %12 = load i64, i64* %7, align 8
  %13 = load i64, i64* @XDF_WHITESPACE_FLAGS, align 8
  %14 = and i64 %12, %13
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %3
  %17 = load i8**, i8*** %5, align 8
  %18 = load i8*, i8** %6, align 8
  %19 = load i64, i64* %7, align 8
  %20 = call i64 @xdl_hash_record_with_whitespace(i8** %17, i8* %18, i64 %19)
  store i64 %20, i64* %4, align 8
  br label %59

21:                                               ; preds = %3
  br label %22

22:                                               ; preds = %43, %21
  %23 = load i8*, i8** %9, align 8
  %24 = load i8*, i8** %6, align 8
  %25 = icmp ult i8* %23, %24
  br i1 %25, label %26, label %31

26:                                               ; preds = %22
  %27 = load i8*, i8** %9, align 8
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp ne i32 %29, 10
  br label %31

31:                                               ; preds = %26, %22
  %32 = phi i1 [ false, %22 ], [ %30, %26 ]
  br i1 %32, label %33, label %46

33:                                               ; preds = %31
  %34 = load i64, i64* %8, align 8
  %35 = shl i64 %34, 5
  %36 = load i64, i64* %8, align 8
  %37 = add i64 %36, %35
  store i64 %37, i64* %8, align 8
  %38 = load i8*, i8** %9, align 8
  %39 = load i8, i8* %38, align 1
  %40 = sext i8 %39 to i64
  %41 = load i64, i64* %8, align 8
  %42 = xor i64 %41, %40
  store i64 %42, i64* %8, align 8
  br label %43

43:                                               ; preds = %33
  %44 = load i8*, i8** %9, align 8
  %45 = getelementptr inbounds i8, i8* %44, i32 1
  store i8* %45, i8** %9, align 8
  br label %22

46:                                               ; preds = %31
  %47 = load i8*, i8** %9, align 8
  %48 = load i8*, i8** %6, align 8
  %49 = icmp ult i8* %47, %48
  br i1 %49, label %50, label %53

50:                                               ; preds = %46
  %51 = load i8*, i8** %9, align 8
  %52 = getelementptr inbounds i8, i8* %51, i64 1
  br label %55

53:                                               ; preds = %46
  %54 = load i8*, i8** %9, align 8
  br label %55

55:                                               ; preds = %53, %50
  %56 = phi i8* [ %52, %50 ], [ %54, %53 ]
  %57 = load i8**, i8*** %5, align 8
  store i8* %56, i8** %57, align 8
  %58 = load i64, i64* %8, align 8
  store i64 %58, i64* %4, align 8
  br label %59

59:                                               ; preds = %55, %16
  %60 = load i64, i64* %4, align 8
  ret i64 %60
}

declare dso_local i64 @xdl_hash_record_with_whitespace(i8**, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
