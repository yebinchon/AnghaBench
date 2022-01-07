; ModuleID = '/home/carl/AnghaBench/kphp-kdb/antispam/extr_antispam-import-dump.c_split_string.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/antispam/extr_antispam-import-dump.c_split_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TRUE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8**)* @split_string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @split_string(i8* %0, i8** %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i8** %1, i8*** %4, align 8
  store i32 0, i32* %5, align 4
  br label %7

7:                                                ; preds = %66, %2
  %8 = load i64, i64* @TRUE, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %67

10:                                               ; preds = %7
  store i32 0, i32* %6, align 4
  br label %11

11:                                               ; preds = %32, %10
  %12 = load i32, i32* %6, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %24, label %14

14:                                               ; preds = %11
  %15 = load i8*, i8** %3, align 8
  %16 = load i8, i8* %15, align 1
  %17 = sext i8 %16 to i32
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %14
  %20 = load i8*, i8** %3, align 8
  %21 = load i8, i8* %20, align 1
  %22 = call i64 @delimiter(i8 signext %21)
  %23 = icmp ne i64 %22, 0
  br label %24

24:                                               ; preds = %19, %14, %11
  %25 = phi i1 [ false, %14 ], [ false, %11 ], [ %23, %19 ]
  br i1 %25, label %26, label %35

26:                                               ; preds = %24
  %27 = load i8*, i8** %3, align 8
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp eq i32 %29, 9
  br i1 %30, label %31, label %32

31:                                               ; preds = %26
  store i32 1, i32* %6, align 4
  br label %32

32:                                               ; preds = %31, %26
  %33 = load i8*, i8** %3, align 8
  %34 = getelementptr inbounds i8, i8* %33, i32 1
  store i8* %34, i8** %3, align 8
  store i8 0, i8* %33, align 1
  br label %11

35:                                               ; preds = %24
  %36 = load i8*, i8** %3, align 8
  %37 = load i8, i8* %36, align 1
  %38 = icmp ne i8 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %35
  %40 = load i32, i32* %5, align 4
  %41 = icmp eq i32 %40, 5
  br i1 %41, label %42, label %43

42:                                               ; preds = %39, %35
  br label %67

43:                                               ; preds = %39
  %44 = load i8*, i8** %3, align 8
  %45 = load i8**, i8*** %4, align 8
  %46 = load i32, i32* %5, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %5, align 4
  %48 = sext i32 %46 to i64
  %49 = getelementptr inbounds i8*, i8** %45, i64 %48
  store i8* %44, i8** %49, align 8
  br label %50

50:                                               ; preds = %63, %43
  %51 = load i8*, i8** %3, align 8
  %52 = load i8, i8* %51, align 1
  %53 = sext i8 %52 to i32
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %61

55:                                               ; preds = %50
  %56 = load i8*, i8** %3, align 8
  %57 = load i8, i8* %56, align 1
  %58 = call i64 @delimiter(i8 signext %57)
  %59 = icmp ne i64 %58, 0
  %60 = xor i1 %59, true
  br label %61

61:                                               ; preds = %55, %50
  %62 = phi i1 [ false, %50 ], [ %60, %55 ]
  br i1 %62, label %63, label %66

63:                                               ; preds = %61
  %64 = load i8*, i8** %3, align 8
  %65 = getelementptr inbounds i8, i8* %64, i32 1
  store i8* %65, i8** %3, align 8
  br label %50

66:                                               ; preds = %61
  br label %7

67:                                               ; preds = %42, %7
  %68 = load i32, i32* %5, align 4
  %69 = icmp eq i32 %68, 5
  br i1 %69, label %70, label %75

70:                                               ; preds = %67
  %71 = load i8*, i8** %3, align 8
  %72 = load i8, i8* %71, align 1
  %73 = sext i8 %72 to i32
  %74 = icmp eq i32 %73, 0
  br label %75

75:                                               ; preds = %70, %67
  %76 = phi i1 [ false, %67 ], [ %74, %70 ]
  %77 = zext i1 %76 to i32
  ret i32 %77
}

declare dso_local i64 @delimiter(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
