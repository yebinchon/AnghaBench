; ModuleID = '/home/carl/AnghaBench/kphp-kdb/antispam/test/extr_antispam-db-test.c_split.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/antispam/test/extr_antispam-db-test.c_split.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@pn = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@parts = common dso_local global i8** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @split to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @split(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  store i64 0, i64* @pn, align 8
  br label %4

4:                                                ; preds = %59, %1
  %5 = load i64, i64* @TRUE, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %60

7:                                                ; preds = %4
  store i32 0, i32* %3, align 4
  br label %8

8:                                                ; preds = %29, %7
  %9 = load i32, i32* %3, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %21, label %11

11:                                               ; preds = %8
  %12 = load i8*, i8** %2, align 8
  %13 = load i8, i8* %12, align 1
  %14 = sext i8 %13 to i32
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %11
  %17 = load i8*, i8** %2, align 8
  %18 = load i8, i8* %17, align 1
  %19 = call i64 @separator(i8 signext %18)
  %20 = icmp ne i64 %19, 0
  br label %21

21:                                               ; preds = %16, %11, %8
  %22 = phi i1 [ false, %11 ], [ false, %8 ], [ %20, %16 ]
  br i1 %22, label %23, label %32

23:                                               ; preds = %21
  %24 = load i8*, i8** %2, align 8
  %25 = load i8, i8* %24, align 1
  %26 = sext i8 %25 to i32
  %27 = icmp eq i32 %26, 9
  br i1 %27, label %28, label %29

28:                                               ; preds = %23
  store i32 1, i32* %3, align 4
  br label %29

29:                                               ; preds = %28, %23
  %30 = load i8*, i8** %2, align 8
  %31 = getelementptr inbounds i8, i8* %30, i32 1
  store i8* %31, i8** %2, align 8
  store i8 0, i8* %30, align 1
  br label %8

32:                                               ; preds = %21
  %33 = load i8*, i8** %2, align 8
  %34 = load i8, i8* %33, align 1
  %35 = icmp ne i8 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %32
  br label %60

37:                                               ; preds = %32
  %38 = load i8*, i8** %2, align 8
  %39 = load i8**, i8*** @parts, align 8
  %40 = load i64, i64* @pn, align 8
  %41 = add nsw i64 %40, 1
  store i64 %41, i64* @pn, align 8
  %42 = getelementptr inbounds i8*, i8** %39, i64 %40
  store i8* %38, i8** %42, align 8
  br label %43

43:                                               ; preds = %56, %37
  %44 = load i8*, i8** %2, align 8
  %45 = load i8, i8* %44, align 1
  %46 = sext i8 %45 to i32
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %43
  %49 = load i8*, i8** %2, align 8
  %50 = load i8, i8* %49, align 1
  %51 = call i64 @separator(i8 signext %50)
  %52 = icmp ne i64 %51, 0
  %53 = xor i1 %52, true
  br label %54

54:                                               ; preds = %48, %43
  %55 = phi i1 [ false, %43 ], [ %53, %48 ]
  br i1 %55, label %56, label %59

56:                                               ; preds = %54
  %57 = load i8*, i8** %2, align 8
  %58 = getelementptr inbounds i8, i8* %57, i32 1
  store i8* %58, i8** %2, align 8
  br label %43

59:                                               ; preds = %54
  br label %4

60:                                               ; preds = %36, %4
  ret void
}

declare dso_local i64 @separator(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
