; ModuleID = '/home/carl/AnghaBench/kphp-kdb/common/extr_word-split.c_get_str_class_utf8.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/common/extr_word-split.c_get_str_class_utf8.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@is_letter_utf8 = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_str_class_utf8(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 -1, i32* %6, align 4
  br label %8

8:                                                ; preds = %63, %2
  %9 = load i32, i32* %5, align 4
  %10 = icmp sgt i32 %9, 0
  br i1 %10, label %11, label %64

11:                                               ; preds = %8
  %12 = load i8*, i8** %4, align 8
  %13 = getelementptr inbounds i8, i8* %12, i32 1
  store i8* %13, i8** %4, align 8
  %14 = load i8, i8* %12, align 1
  %15 = zext i8 %14 to i32
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  %17 = icmp sge i32 %16, 194
  br i1 %17, label %18, label %48

18:                                               ; preds = %11
  %19 = load i32, i32* %7, align 4
  %20 = icmp slt i32 %19, 224
  br i1 %20, label %21, label %48

21:                                               ; preds = %18
  %22 = load i32, i32* %5, align 4
  %23 = icmp sgt i32 %22, 1
  br i1 %23, label %24, label %48

24:                                               ; preds = %21
  %25 = load i8*, i8** %4, align 8
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp slt i32 %27, -64
  br i1 %28, label %29, label %48

29:                                               ; preds = %24
  %30 = load i32, i32* %7, align 4
  %31 = and i32 %30, 31
  %32 = shl i32 %31, 6
  %33 = load i8*, i8** %4, align 8
  %34 = getelementptr inbounds i8, i8* %33, i32 1
  store i8* %34, i8** %4, align 8
  %35 = load i8, i8* %33, align 1
  %36 = sext i8 %35 to i32
  %37 = and i32 %36, 63
  %38 = or i32 %32, %37
  store i32 %38, i32* %7, align 4
  %39 = load i32, i32* %5, align 4
  %40 = sub nsw i32 %39, 2
  store i32 %40, i32* %5, align 4
  %41 = load i32*, i32** @is_letter_utf8, align 8
  %42 = load i32, i32* %7, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %6, align 4
  %47 = and i32 %46, %45
  store i32 %47, i32* %6, align 4
  br label %63

48:                                               ; preds = %24, %21, %18, %11
  %49 = load i32, i32* %7, align 4
  %50 = icmp slt i32 %49, 128
  br i1 %50, label %51, label %61

51:                                               ; preds = %48
  %52 = load i32*, i32** @is_letter_utf8, align 8
  %53 = load i32, i32* %7, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* %6, align 4
  %58 = and i32 %57, %56
  store i32 %58, i32* %6, align 4
  %59 = load i32, i32* %5, align 4
  %60 = add nsw i32 %59, -1
  store i32 %60, i32* %5, align 4
  br label %62

61:                                               ; preds = %48
  store i32 0, i32* %3, align 4
  br label %66

62:                                               ; preds = %51
  br label %63

63:                                               ; preds = %62, %29
  br label %8

64:                                               ; preds = %8
  %65 = load i32, i32* %6, align 4
  store i32 %65, i32* %3, align 4
  br label %66

66:                                               ; preds = %64, %61
  %67 = load i32, i32* %3, align 4
  ret i32 %67
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
