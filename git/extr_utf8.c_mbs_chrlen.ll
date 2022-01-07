; ModuleID = '/home/carl/AnghaBench/git/extr_utf8.c_mbs_chrlen.c'
source_filename = "/home/carl/AnghaBench/git/extr_utf8.c_mbs_chrlen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SIZE_MAX = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbs_chrlen(i8** %0, i64* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  store i8** %0, i8*** %5, align 8
  store i64* %1, i64** %6, align 8
  store i8* %2, i8** %7, align 8
  %11 = load i8**, i8*** %5, align 8
  %12 = load i8*, i8** %11, align 8
  store i8* %12, i8** %9, align 8
  %13 = load i64*, i64** %6, align 8
  %14 = icmp ne i64* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %3
  %16 = load i64*, i64** %6, align 8
  %17 = load i64, i64* %16, align 8
  br label %20

18:                                               ; preds = %3
  %19 = load i64, i64* @SIZE_MAX, align 8
  br label %20

20:                                               ; preds = %18, %15
  %21 = phi i64 [ %17, %15 ], [ %19, %18 ]
  store i64 %21, i64* %10, align 8
  %22 = load i64, i64* %10, align 8
  %23 = icmp ult i64 %22, 1
  br i1 %23, label %24, label %25

24:                                               ; preds = %20
  store i32 0, i32* %4, align 4
  br label %61

25:                                               ; preds = %20
  %26 = load i8*, i8** %7, align 8
  %27 = call i64 @is_encoding_utf8(i8* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %44

29:                                               ; preds = %25
  %30 = call i32 @pick_one_utf8_char(i8** %9, i64* %10)
  %31 = load i8*, i8** %9, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %33, label %40

33:                                               ; preds = %29
  %34 = load i8*, i8** %9, align 8
  %35 = load i8**, i8*** %5, align 8
  %36 = load i8*, i8** %35, align 8
  %37 = ptrtoint i8* %34 to i64
  %38 = ptrtoint i8* %36 to i64
  %39 = sub i64 %37, %38
  br label %41

40:                                               ; preds = %29
  br label %41

41:                                               ; preds = %40, %33
  %42 = phi i64 [ %39, %33 ], [ 1, %40 ]
  %43 = trunc i64 %42 to i32
  store i32 %43, i32* %8, align 4
  br label %45

44:                                               ; preds = %25
  store i32 1, i32* %8, align 4
  br label %45

45:                                               ; preds = %44, %41
  %46 = load i32, i32* %8, align 4
  %47 = load i8**, i8*** %5, align 8
  %48 = load i8*, i8** %47, align 8
  %49 = sext i32 %46 to i64
  %50 = getelementptr inbounds i8, i8* %48, i64 %49
  store i8* %50, i8** %47, align 8
  %51 = load i64*, i64** %6, align 8
  %52 = icmp ne i64* %51, null
  br i1 %52, label %53, label %59

53:                                               ; preds = %45
  %54 = load i32, i32* %8, align 4
  %55 = sext i32 %54 to i64
  %56 = load i64*, i64** %6, align 8
  %57 = load i64, i64* %56, align 8
  %58 = sub i64 %57, %55
  store i64 %58, i64* %56, align 8
  br label %59

59:                                               ; preds = %53, %45
  %60 = load i32, i32* %8, align 4
  store i32 %60, i32* %4, align 4
  br label %61

61:                                               ; preds = %59, %24
  %62 = load i32, i32* %4, align 4
  ret i32 %62
}

declare dso_local i64 @is_encoding_utf8(i8*) #1

declare dso_local i32 @pick_one_utf8_char(i8**, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
