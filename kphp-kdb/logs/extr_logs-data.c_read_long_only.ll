; ModuleID = '/home/carl/AnghaBench/kphp-kdb/logs/extr_logs-data.c_read_long_only.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/logs/extr_logs-data.c_read_long_only.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @read_long_only(i8* %0, i64* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i64* %1, i64** %4, align 8
  store i32 1, i32* %5, align 4
  %8 = load i8*, i8** %3, align 8
  %9 = getelementptr inbounds i8, i8* %8, i64 0
  %10 = load i8, i8* %9, align 1
  %11 = sext i8 %10 to i32
  %12 = icmp eq i32 %11, 45
  br i1 %12, label %19, label %13

13:                                               ; preds = %2
  %14 = load i8*, i8** %3, align 8
  %15 = getelementptr inbounds i8, i8* %14, i64 0
  %16 = load i8, i8* %15, align 1
  %17 = sext i8 %16 to i32
  %18 = icmp eq i32 %17, 43
  br i1 %18, label %19, label %29

19:                                               ; preds = %13, %2
  %20 = load i8*, i8** %3, align 8
  %21 = getelementptr inbounds i8, i8* %20, i64 0
  %22 = load i8, i8* %21, align 1
  %23 = sext i8 %22 to i32
  %24 = icmp eq i32 %23, 45
  br i1 %24, label %25, label %26

25:                                               ; preds = %19
  store i32 -1, i32* %5, align 4
  br label %26

26:                                               ; preds = %25, %19
  %27 = load i8*, i8** %3, align 8
  %28 = getelementptr inbounds i8, i8* %27, i32 1
  store i8* %28, i8** %3, align 8
  br label %29

29:                                               ; preds = %26, %13
  %30 = load i8*, i8** %3, align 8
  store i8* %30, i8** %6, align 8
  store i64 0, i64* %7, align 8
  br label %31

31:                                               ; preds = %43, %29
  %32 = load i8*, i8** %3, align 8
  %33 = load i8, i8* %32, align 1
  %34 = sext i8 %33 to i32
  %35 = icmp sle i32 48, %34
  br i1 %35, label %36, label %41

36:                                               ; preds = %31
  %37 = load i8*, i8** %3, align 8
  %38 = load i8, i8* %37, align 1
  %39 = sext i8 %38 to i32
  %40 = icmp sle i32 %39, 57
  br label %41

41:                                               ; preds = %36, %31
  %42 = phi i1 [ false, %31 ], [ %40, %36 ]
  br i1 %42, label %43, label %53

43:                                               ; preds = %41
  %44 = load i64, i64* %7, align 8
  %45 = mul i64 %44, 10
  %46 = load i8*, i8** %3, align 8
  %47 = getelementptr inbounds i8, i8* %46, i32 1
  store i8* %47, i8** %3, align 8
  %48 = load i8, i8* %46, align 1
  %49 = sext i8 %48 to i32
  %50 = sub nsw i32 %49, 48
  %51 = sext i32 %50 to i64
  %52 = add i64 %45, %51
  store i64 %52, i64* %7, align 8
  br label %31

53:                                               ; preds = %41
  %54 = load i64, i64* %7, align 8
  %55 = load i32, i32* %5, align 4
  %56 = sext i32 %55 to i64
  %57 = mul i64 %54, %56
  %58 = load i64*, i64** %4, align 8
  store i64 %57, i64* %58, align 8
  %59 = load i8*, i8** %3, align 8
  %60 = load i8*, i8** %6, align 8
  %61 = icmp ugt i8* %59, %60
  %62 = zext i1 %61 to i32
  ret i32 %62
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
