; ModuleID = '/home/carl/AnghaBench/kphp-kdb/common/extr_word-split.c_get_word_utf8.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/common/extr_word-split.c_get_word_utf8.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@get_word_utf8.inside_star = internal global i32 0, align 4
@is_letter_utf8 = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_word_utf8(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %8 = load i8*, i8** %3, align 8
  %9 = load i8, i8* %8, align 1
  %10 = zext i8 %9 to i32
  store i32 %10, i32* %6, align 4
  %11 = load i32*, i32** @is_letter_utf8, align 8
  %12 = load i32, i32* %6, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i32, i32* %11, i64 %13
  %15 = load i32, i32* %14, align 4
  %16 = and i32 %15, 64
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %40

18:                                               ; preds = %1
  %19 = load i32, i32* %6, align 4
  %20 = icmp eq i32 %19, 42
  br i1 %20, label %21, label %22

21:                                               ; preds = %18
  store i32 1, i32* @get_word_utf8.inside_star, align 4
  br label %22

22:                                               ; preds = %21, %18
  %23 = load i32, i32* %6, align 4
  %24 = load i8*, i8** %3, align 8
  %25 = getelementptr inbounds i8, i8* %24, i64 1
  %26 = call i32 @sigil_word_detect(i32 %23, i8* %25)
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* %6, align 4
  %28 = icmp eq i32 %27, 42
  br i1 %28, label %29, label %30

29:                                               ; preds = %22
  store i32 0, i32* @get_word_utf8.inside_star, align 4
  br label %30

30:                                               ; preds = %29, %22
  %31 = load i32, i32* %7, align 4
  %32 = icmp sge i32 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %30
  %34 = load i32, i32* %7, align 4
  %35 = icmp slt i32 %34, 127
  br i1 %35, label %36, label %39

36:                                               ; preds = %33
  %37 = load i32, i32* %7, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %2, align 4
  br label %131

39:                                               ; preds = %33, %30
  br label %40

40:                                               ; preds = %39, %1
  br label %41

41:                                               ; preds = %128, %40
  %42 = load i32, i32* %4, align 4
  %43 = icmp sle i32 %42, 120
  br i1 %43, label %44, label %129

44:                                               ; preds = %41
  %45 = load i8*, i8** %3, align 8
  %46 = load i8, i8* %45, align 1
  %47 = zext i8 %46 to i32
  store i32 %47, i32* %6, align 4
  %48 = load i32, i32* %6, align 4
  %49 = icmp sge i32 %48, 194
  br i1 %49, label %50, label %87

50:                                               ; preds = %44
  %51 = load i32, i32* %6, align 4
  %52 = icmp sle i32 %51, 223
  br i1 %52, label %53, label %87

53:                                               ; preds = %50
  %54 = load i8*, i8** %3, align 8
  %55 = getelementptr inbounds i8, i8* %54, i64 1
  %56 = load i8, i8* %55, align 1
  %57 = sext i8 %56 to i32
  %58 = icmp slt i32 %57, -64
  br i1 %58, label %59, label %87

59:                                               ; preds = %53
  %60 = load i32, i32* %6, align 4
  %61 = and i32 %60, 31
  %62 = shl i32 %61, 6
  %63 = load i8*, i8** %3, align 8
  %64 = getelementptr inbounds i8, i8* %63, i64 1
  %65 = load i8, i8* %64, align 1
  %66 = sext i8 %65 to i32
  %67 = and i32 %66, 63
  %68 = or i32 %62, %67
  store i32 %68, i32* %6, align 4
  %69 = load i32*, i32** @is_letter_utf8, align 8
  %70 = load i32, i32* %6, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %69, i64 %71
  %73 = load i32, i32* %72, align 4
  %74 = and i32 %73, 8
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %85

76:                                               ; preds = %59
  %77 = load i8*, i8** %3, align 8
  %78 = getelementptr inbounds i8, i8* %77, i64 2
  store i8* %78, i8** %3, align 8
  %79 = load i32, i32* %4, align 4
  %80 = add nsw i32 %79, 2
  store i32 %80, i32* %4, align 4
  %81 = load i32, i32* %4, align 4
  %82 = icmp sge i32 %81, 126
  br i1 %82, label %83, label %84

83:                                               ; preds = %76
  br label %129

84:                                               ; preds = %76
  br label %86

85:                                               ; preds = %59
  br label %129

86:                                               ; preds = %84
  br label %128

87:                                               ; preds = %53, %50, %44
  %88 = load i32*, i32** @is_letter_utf8, align 8
  %89 = load i32, i32* %6, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %88, i64 %90
  %92 = load i32, i32* %91, align 4
  %93 = and i32 %92, 8
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %103

95:                                               ; preds = %87
  %96 = load i8*, i8** %3, align 8
  %97 = getelementptr inbounds i8, i8* %96, i32 1
  store i8* %97, i8** %3, align 8
  %98 = load i32, i32* %4, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %4, align 4
  %100 = icmp eq i32 %99, 126
  br i1 %100, label %101, label %102

101:                                              ; preds = %95
  br label %129

102:                                              ; preds = %95
  br label %127

103:                                              ; preds = %87
  %104 = load i32*, i32** @is_letter_utf8, align 8
  %105 = load i32, i32* %6, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i32, i32* %104, i64 %106
  %108 = load i32, i32* %107, align 4
  %109 = and i32 %108, 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %126

111:                                              ; preds = %103
  %112 = load i32, i32* %5, align 4
  %113 = load i32, i32* @get_word_utf8.inside_star, align 4
  %114 = icmp ne i32 %113, 0
  %115 = zext i1 %114 to i64
  %116 = select i1 %114, i32 30, i32 4
  %117 = icmp eq i32 %112, %116
  br i1 %117, label %118, label %119

118:                                              ; preds = %111
  br label %129

119:                                              ; preds = %111
  %120 = load i8*, i8** %3, align 8
  %121 = getelementptr inbounds i8, i8* %120, i32 1
  store i8* %121, i8** %3, align 8
  %122 = load i32, i32* %5, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %5, align 4
  %124 = load i32, i32* %4, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %4, align 4
  br label %129

126:                                              ; preds = %103
  br label %129

127:                                              ; preds = %102
  br label %128

128:                                              ; preds = %127, %86
  br label %41

129:                                              ; preds = %126, %119, %118, %101, %85, %83, %41
  %130 = load i32, i32* %4, align 4
  store i32 %130, i32* %2, align 4
  br label %131

131:                                              ; preds = %129, %36
  %132 = load i32, i32* %2, align 4
  ret i32 %132
}

declare dso_local i32 @sigil_word_detect(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
