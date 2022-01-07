; ModuleID = '/home/carl/AnghaBench/kphp-kdb/common/extr_word-split.c_lc_str_utf8.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/common/extr_word-split.c_lc_str_utf8.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@l_case_utf8 = common dso_local global i8** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lc_str_utf8(i8* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  br label %9

9:                                                ; preds = %82, %3
  %10 = load i32, i32* %6, align 4
  %11 = icmp sgt i32 %10, 0
  br i1 %11, label %12, label %83

12:                                               ; preds = %9
  %13 = load i8*, i8** %5, align 8
  %14 = getelementptr inbounds i8, i8* %13, i32 1
  store i8* %14, i8** %5, align 8
  %15 = load i8, i8* %13, align 1
  %16 = zext i8 %15 to i32
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %7, align 4
  %18 = icmp sge i32 %17, 194
  br i1 %18, label %19, label %60

19:                                               ; preds = %12
  %20 = load i32, i32* %7, align 4
  %21 = icmp slt i32 %20, 224
  br i1 %21, label %22, label %60

22:                                               ; preds = %19
  %23 = load i32, i32* %6, align 4
  %24 = icmp sgt i32 %23, 1
  br i1 %24, label %25, label %60

25:                                               ; preds = %22
  %26 = load i8*, i8** %5, align 8
  %27 = load i8, i8* %26, align 1
  %28 = sext i8 %27 to i32
  %29 = icmp slt i32 %28, -64
  br i1 %29, label %30, label %60

30:                                               ; preds = %25
  %31 = load i32, i32* %7, align 4
  %32 = and i32 %31, 31
  %33 = shl i32 %32, 6
  %34 = load i8*, i8** %5, align 8
  %35 = getelementptr inbounds i8, i8* %34, i32 1
  store i8* %35, i8** %5, align 8
  %36 = load i8, i8* %34, align 1
  %37 = sext i8 %36 to i32
  %38 = and i32 %37, 63
  %39 = or i32 %33, %38
  store i32 %39, i32* %7, align 4
  %40 = load i8**, i8*** @l_case_utf8, align 8
  %41 = load i32, i32* %7, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i8*, i8** %40, i64 %42
  %44 = load i8*, i8** %43, align 8
  %45 = ptrtoint i8* %44 to i32
  store i32 %45, i32* %8, align 4
  %46 = load i32, i32* %8, align 4
  %47 = ashr i32 %46, 6
  %48 = add nsw i32 192, %47
  %49 = trunc i32 %48 to i8
  %50 = load i8*, i8** %4, align 8
  %51 = getelementptr inbounds i8, i8* %50, i32 1
  store i8* %51, i8** %4, align 8
  store i8 %49, i8* %50, align 1
  %52 = load i32, i32* %8, align 4
  %53 = and i32 %52, 63
  %54 = add nsw i32 128, %53
  %55 = trunc i32 %54 to i8
  %56 = load i8*, i8** %4, align 8
  %57 = getelementptr inbounds i8, i8* %56, i32 1
  store i8* %57, i8** %4, align 8
  store i8 %55, i8* %56, align 1
  %58 = load i32, i32* %6, align 4
  %59 = sub nsw i32 %58, 2
  store i32 %59, i32* %6, align 4
  br label %82

60:                                               ; preds = %25, %22, %19, %12
  %61 = load i32, i32* %7, align 4
  %62 = icmp slt i32 %61, 128
  br i1 %62, label %63, label %74

63:                                               ; preds = %60
  %64 = load i8**, i8*** @l_case_utf8, align 8
  %65 = load i32, i32* %7, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i8*, i8** %64, i64 %66
  %68 = load i8*, i8** %67, align 8
  %69 = ptrtoint i8* %68 to i8
  %70 = load i8*, i8** %4, align 8
  %71 = getelementptr inbounds i8, i8* %70, i32 1
  store i8* %71, i8** %4, align 8
  store i8 %69, i8* %70, align 1
  %72 = load i32, i32* %6, align 4
  %73 = add nsw i32 %72, -1
  store i32 %73, i32* %6, align 4
  br label %81

74:                                               ; preds = %60
  %75 = load i32, i32* %7, align 4
  %76 = trunc i32 %75 to i8
  %77 = load i8*, i8** %4, align 8
  %78 = getelementptr inbounds i8, i8* %77, i32 1
  store i8* %78, i8** %4, align 8
  store i8 %76, i8* %77, align 1
  %79 = load i32, i32* %6, align 4
  %80 = add nsw i32 %79, -1
  store i32 %80, i32* %6, align 4
  br label %81

81:                                               ; preds = %74, %63
  br label %82

82:                                               ; preds = %81, %30
  br label %9

83:                                               ; preds = %9
  %84 = load i8*, i8** %4, align 8
  store i8 0, i8* %84, align 1
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
