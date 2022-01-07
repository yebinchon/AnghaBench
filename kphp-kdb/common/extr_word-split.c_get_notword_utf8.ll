; ModuleID = '/home/carl/AnghaBench/kphp-kdb/common/extr_word-split.c_get_notword_utf8.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/common/extr_word-split.c_get_notword_utf8.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@is_letter_utf8 = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_notword_utf8(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %8

8:                                                ; preds = %145, %134, %115, %81, %1
  %9 = load i32, i32* %4, align 4
  %10 = icmp sle i32 %9, 30
  br i1 %10, label %11, label %14

11:                                               ; preds = %8
  %12 = load i32, i32* %5, align 4
  %13 = icmp sle i32 %12, 4
  br label %14

14:                                               ; preds = %11, %8
  %15 = phi i1 [ false, %8 ], [ %13, %11 ]
  br i1 %15, label %16, label %152

16:                                               ; preds = %14
  %17 = load i8*, i8** %3, align 8
  %18 = load i8, i8* %17, align 1
  %19 = zext i8 %18 to i32
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %30

22:                                               ; preds = %16
  %23 = load i32*, i32** @is_letter_utf8, align 8
  %24 = load i32, i32* %6, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = and i32 %27, 63
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %22, %16
  br label %152

31:                                               ; preds = %22
  %32 = load i32*, i32** @is_letter_utf8, align 8
  %33 = load i32, i32* %6, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = and i32 %36, 64
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %51

39:                                               ; preds = %31
  %40 = load i32, i32* %6, align 4
  %41 = load i8*, i8** %3, align 8
  %42 = getelementptr inbounds i8, i8* %41, i64 1
  %43 = call i32 @sigil_word_detect(i32 %40, i8* %42)
  store i32 %43, i32* %7, align 4
  %44 = load i32, i32* %7, align 4
  %45 = icmp sgt i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %39
  %47 = load i32, i32* %7, align 4
  %48 = icmp slt i32 %47, 127
  br i1 %48, label %49, label %50

49:                                               ; preds = %46
  br label %152

50:                                               ; preds = %46, %39
  br label %51

51:                                               ; preds = %50, %31
  %52 = load i32, i32* %6, align 4
  %53 = icmp sge i32 %52, 194
  br i1 %53, label %54, label %88

54:                                               ; preds = %51
  %55 = load i32, i32* %6, align 4
  %56 = icmp sle i32 %55, 223
  br i1 %56, label %57, label %88

57:                                               ; preds = %54
  %58 = load i8*, i8** %3, align 8
  %59 = getelementptr inbounds i8, i8* %58, i64 1
  %60 = load i8, i8* %59, align 1
  %61 = sext i8 %60 to i32
  %62 = icmp slt i32 %61, -64
  br i1 %62, label %63, label %88

63:                                               ; preds = %57
  %64 = load i32, i32* %6, align 4
  %65 = and i32 %64, 31
  %66 = shl i32 %65, 6
  %67 = load i8*, i8** %3, align 8
  %68 = getelementptr inbounds i8, i8* %67, i64 1
  %69 = load i8, i8* %68, align 1
  %70 = sext i8 %69 to i32
  %71 = and i32 %70, 63
  %72 = or i32 %66, %71
  store i32 %72, i32* %6, align 4
  %73 = load i32*, i32** @is_letter_utf8, align 8
  %74 = load i32, i32* %6, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %73, i64 %75
  %77 = load i32, i32* %76, align 4
  %78 = and i32 %77, 8
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %63
  br label %152

81:                                               ; preds = %63
  %82 = load i8*, i8** %3, align 8
  %83 = getelementptr inbounds i8, i8* %82, i64 2
  store i8* %83, i8** %3, align 8
  %84 = load i32, i32* %4, align 4
  %85 = add nsw i32 %84, 2
  store i32 %85, i32* %4, align 4
  %86 = load i32, i32* %5, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %5, align 4
  br label %8

88:                                               ; preds = %57, %54, %51
  %89 = load i32, i32* %6, align 4
  %90 = icmp eq i32 %89, 60
  br i1 %90, label %91, label %145

91:                                               ; preds = %88
  %92 = load i8*, i8** %3, align 8
  %93 = getelementptr inbounds i8, i8* %92, i64 1
  %94 = load i8, i8* %93, align 1
  %95 = sext i8 %94 to i32
  %96 = icmp eq i32 %95, 98
  br i1 %96, label %97, label %145

97:                                               ; preds = %91
  %98 = load i8*, i8** %3, align 8
  %99 = getelementptr inbounds i8, i8* %98, i64 2
  %100 = load i8, i8* %99, align 1
  %101 = icmp ne i8 %100, 0
  br i1 %101, label %103, label %102

102:                                              ; preds = %97
  store i32 -1, i32* %2, align 4
  br label %154

103:                                              ; preds = %97
  %104 = load i8*, i8** %3, align 8
  %105 = getelementptr inbounds i8, i8* %104, i64 2
  %106 = load i8, i8* %105, align 1
  %107 = sext i8 %106 to i32
  %108 = icmp eq i32 %107, 114
  br i1 %108, label %109, label %143

109:                                              ; preds = %103
  %110 = load i8*, i8** %3, align 8
  %111 = getelementptr inbounds i8, i8* %110, i64 3
  %112 = load i8, i8* %111, align 1
  %113 = sext i8 %112 to i32
  %114 = icmp eq i32 %113, 62
  br i1 %114, label %115, label %122

115:                                              ; preds = %109
  %116 = load i8*, i8** %3, align 8
  %117 = getelementptr inbounds i8, i8* %116, i64 4
  store i8* %117, i8** %3, align 8
  %118 = load i32, i32* %4, align 4
  %119 = add nsw i32 %118, 4
  store i32 %119, i32* %4, align 4
  %120 = load i32, i32* %5, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %5, align 4
  br label %8

122:                                              ; preds = %109
  %123 = load i8*, i8** %3, align 8
  %124 = getelementptr inbounds i8, i8* %123, i64 3
  %125 = load i8, i8* %124, align 1
  %126 = sext i8 %125 to i32
  %127 = icmp eq i32 %126, 47
  br i1 %127, label %128, label %141

128:                                              ; preds = %122
  %129 = load i8*, i8** %3, align 8
  %130 = getelementptr inbounds i8, i8* %129, i64 4
  %131 = load i8, i8* %130, align 1
  %132 = sext i8 %131 to i32
  %133 = icmp eq i32 %132, 62
  br i1 %133, label %134, label %141

134:                                              ; preds = %128
  %135 = load i8*, i8** %3, align 8
  %136 = getelementptr inbounds i8, i8* %135, i64 5
  store i8* %136, i8** %3, align 8
  %137 = load i32, i32* %4, align 4
  %138 = add nsw i32 %137, 5
  store i32 %138, i32* %4, align 4
  %139 = load i32, i32* %5, align 4
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %5, align 4
  br label %8

141:                                              ; preds = %128, %122
  br label %142

142:                                              ; preds = %141
  br label %143

143:                                              ; preds = %142, %103
  br label %144

144:                                              ; preds = %143
  br label %145

145:                                              ; preds = %144, %91, %88
  %146 = load i8*, i8** %3, align 8
  %147 = getelementptr inbounds i8, i8* %146, i32 1
  store i8* %147, i8** %3, align 8
  %148 = load i32, i32* %4, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %4, align 4
  %150 = load i32, i32* %5, align 4
  %151 = add nsw i32 %150, 1
  store i32 %151, i32* %5, align 4
  br label %8

152:                                              ; preds = %80, %49, %30, %14
  %153 = load i32, i32* %4, align 4
  store i32 %153, i32* %2, align 4
  br label %154

154:                                              ; preds = %152, %102
  %155 = load i32, i32* %2, align 4
  ret i32 %155
}

declare dso_local i32 @sigil_word_detect(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
