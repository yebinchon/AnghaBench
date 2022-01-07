; ModuleID = '/home/carl/AnghaBench/kphp-kdb/common/extr_word-split.c_std_sigil_word_detect.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/common/extr_word-split.c_std_sigil_word_detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@word_split_utf8 = common dso_local global i64 0, align 8
@is_letter_utf8 = common dso_local global i8* null, align 8
@is_letter = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @std_sigil_word_detect(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %10 = load i32, i32* %4, align 4
  %11 = icmp eq i32 %10, 31
  br i1 %11, label %12, label %44

12:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  br label %13

13:                                               ; preds = %26, %12
  %14 = load i32, i32* %6, align 4
  %15 = icmp slt i32 %14, 32
  br i1 %15, label %16, label %24

16:                                               ; preds = %13
  %17 = load i8*, i8** %5, align 8
  %18 = load i32, i32* %6, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i8, i8* %17, i64 %19
  %21 = load i8, i8* %20, align 1
  %22 = sext i8 %21 to i32
  %23 = icmp slt i32 %22, 0
  br label %24

24:                                               ; preds = %16, %13
  %25 = phi i1 [ false, %13 ], [ %23, %16 ]
  br i1 %25, label %26, label %29

26:                                               ; preds = %24
  %27 = load i32, i32* %6, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %6, align 4
  br label %13

29:                                               ; preds = %24
  %30 = load i8*, i8** %5, align 8
  %31 = load i32, i32* %6, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i8, i8* %30, i64 %32
  %34 = load i8, i8* %33, align 1
  %35 = sext i8 %34 to i32
  %36 = and i32 %35, 64
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %29
  %39 = load i32, i32* %6, align 4
  %40 = add nsw i32 %39, 1
  br label %42

41:                                               ; preds = %29
  br label %42

42:                                               ; preds = %41, %38
  %43 = phi i32 [ %40, %38 ], [ -1, %41 ]
  store i32 %43, i32* %3, align 4
  br label %186

44:                                               ; preds = %2
  %45 = load i64, i64* @word_split_utf8, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %44
  %48 = load i8*, i8** @is_letter_utf8, align 8
  br label %51

49:                                               ; preds = %44
  %50 = load i8*, i8** @is_letter, align 8
  br label %51

51:                                               ; preds = %49, %47
  %52 = phi i8* [ %48, %47 ], [ %50, %49 ]
  store i8* %52, i8** %7, align 8
  %53 = load i8*, i8** %7, align 8
  %54 = getelementptr inbounds i8, i8* %53, i64 46
  %55 = load i8, i8* %54, align 1
  %56 = zext i8 %55 to i32
  %57 = and i32 %56, 8
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %51
  store i32 -1, i32* %3, align 4
  br label %186

60:                                               ; preds = %51
  %61 = load i32, i32* %4, align 4
  %62 = icmp ne i32 %61, 91
  br i1 %62, label %63, label %105

63:                                               ; preds = %60
  %64 = load i32, i32* %4, align 4
  %65 = icmp ne i32 %64, 35
  br i1 %65, label %66, label %79

66:                                               ; preds = %63
  %67 = load i8*, i8** %7, align 8
  %68 = getelementptr inbounds i8, i8* %67, i64 46
  %69 = load i8, i8* %68, align 1
  %70 = zext i8 %69 to i32
  %71 = xor i32 %70, 8
  %72 = trunc i32 %71 to i8
  store i8 %72, i8* %68, align 1
  %73 = load i8*, i8** %7, align 8
  %74 = getelementptr inbounds i8, i8* %73, i64 45
  %75 = load i8, i8* %74, align 1
  %76 = zext i8 %75 to i32
  %77 = xor i32 %76, 8
  %78 = trunc i32 %77 to i8
  store i8 %78, i8* %74, align 1
  br label %79

79:                                               ; preds = %66, %63
  %80 = load i8*, i8** %5, align 8
  %81 = call i32 @get_word(i8* %80)
  store i32 %81, i32* %8, align 4
  %82 = load i32, i32* %4, align 4
  %83 = icmp ne i32 %82, 35
  br i1 %83, label %84, label %97

84:                                               ; preds = %79
  %85 = load i8*, i8** %7, align 8
  %86 = getelementptr inbounds i8, i8* %85, i64 46
  %87 = load i8, i8* %86, align 1
  %88 = zext i8 %87 to i32
  %89 = xor i32 %88, 8
  %90 = trunc i32 %89 to i8
  store i8 %90, i8* %86, align 1
  %91 = load i8*, i8** %7, align 8
  %92 = getelementptr inbounds i8, i8* %91, i64 45
  %93 = load i8, i8* %92, align 1
  %94 = zext i8 %93 to i32
  %95 = xor i32 %94, 8
  %96 = trunc i32 %95 to i8
  store i8 %96, i8* %92, align 1
  br label %97

97:                                               ; preds = %84, %79
  %98 = load i32, i32* %8, align 4
  %99 = icmp sgt i32 %98, 0
  br i1 %99, label %100, label %102

100:                                              ; preds = %97
  %101 = load i32, i32* %8, align 4
  br label %103

102:                                              ; preds = %97
  br label %103

103:                                              ; preds = %102, %100
  %104 = phi i32 [ %101, %100 ], [ -1, %102 ]
  store i32 %104, i32* %3, align 4
  br label %186

105:                                              ; preds = %60
  %106 = load i8*, i8** %5, align 8
  %107 = load i8, i8* %106, align 1
  %108 = sext i8 %107 to i32
  %109 = icmp ne i32 %108, 91
  br i1 %109, label %110, label %111

110:                                              ; preds = %105
  store i32 -1, i32* %3, align 4
  br label %186

111:                                              ; preds = %105
  %112 = load i8*, i8** %5, align 8
  %113 = getelementptr inbounds i8, i8* %112, i64 1
  store i8* %113, i8** %9, align 8
  br label %114

114:                                              ; preds = %163, %111
  %115 = load i8*, i8** %9, align 8
  %116 = load i8*, i8** %5, align 8
  %117 = getelementptr inbounds i8, i8* %116, i64 120
  %118 = icmp ule i8* %115, %117
  br i1 %118, label %119, label %161

119:                                              ; preds = %114
  %120 = load i8*, i8** %9, align 8
  %121 = load i8, i8* %120, align 1
  %122 = sext i8 %121 to i32
  %123 = icmp sge i32 %122, 48
  br i1 %123, label %124, label %129

124:                                              ; preds = %119
  %125 = load i8*, i8** %9, align 8
  %126 = load i8, i8* %125, align 1
  %127 = sext i8 %126 to i32
  %128 = icmp sle i32 %127, 57
  br i1 %128, label %159, label %129

129:                                              ; preds = %124, %119
  %130 = load i8*, i8** %9, align 8
  %131 = load i8, i8* %130, align 1
  %132 = sext i8 %131 to i32
  %133 = icmp sge i32 %132, 65
  br i1 %133, label %134, label %139

134:                                              ; preds = %129
  %135 = load i8*, i8** %9, align 8
  %136 = load i8, i8* %135, align 1
  %137 = sext i8 %136 to i32
  %138 = icmp sle i32 %137, 90
  br i1 %138, label %159, label %139

139:                                              ; preds = %134, %129
  %140 = load i8*, i8** %9, align 8
  %141 = load i8, i8* %140, align 1
  %142 = sext i8 %141 to i32
  %143 = icmp sge i32 %142, 97
  br i1 %143, label %144, label %149

144:                                              ; preds = %139
  %145 = load i8*, i8** %9, align 8
  %146 = load i8, i8* %145, align 1
  %147 = sext i8 %146 to i32
  %148 = icmp sle i32 %147, 122
  br i1 %148, label %159, label %149

149:                                              ; preds = %144, %139
  %150 = load i8*, i8** %9, align 8
  %151 = load i8, i8* %150, align 1
  %152 = sext i8 %151 to i32
  %153 = icmp eq i32 %152, 95
  br i1 %153, label %159, label %154

154:                                              ; preds = %149
  %155 = load i8*, i8** %9, align 8
  %156 = load i8, i8* %155, align 1
  %157 = sext i8 %156 to i32
  %158 = icmp eq i32 %157, 45
  br label %159

159:                                              ; preds = %154, %149, %144, %134, %124
  %160 = phi i1 [ true, %149 ], [ true, %144 ], [ true, %134 ], [ true, %124 ], [ %158, %154 ]
  br label %161

161:                                              ; preds = %159, %114
  %162 = phi i1 [ false, %114 ], [ %160, %159 ]
  br i1 %162, label %163, label %166

163:                                              ; preds = %161
  %164 = load i8*, i8** %9, align 8
  %165 = getelementptr inbounds i8, i8* %164, i32 1
  store i8* %165, i8** %9, align 8
  br label %114

166:                                              ; preds = %161
  %167 = load i8*, i8** %9, align 8
  %168 = load i8, i8* %167, align 1
  %169 = sext i8 %168 to i32
  %170 = icmp eq i32 %169, 93
  br i1 %170, label %171, label %185

171:                                              ; preds = %166
  %172 = load i8*, i8** %9, align 8
  %173 = getelementptr inbounds i8, i8* %172, i64 1
  %174 = load i8, i8* %173, align 1
  %175 = sext i8 %174 to i32
  %176 = icmp eq i32 %175, 93
  br i1 %176, label %177, label %185

177:                                              ; preds = %171
  %178 = load i8*, i8** %9, align 8
  %179 = getelementptr inbounds i8, i8* %178, i64 2
  %180 = load i8*, i8** %5, align 8
  %181 = ptrtoint i8* %179 to i64
  %182 = ptrtoint i8* %180 to i64
  %183 = sub i64 %181, %182
  %184 = trunc i64 %183 to i32
  store i32 %184, i32* %3, align 4
  br label %186

185:                                              ; preds = %171, %166
  store i32 -1, i32* %3, align 4
  br label %186

186:                                              ; preds = %185, %177, %110, %103, %59, %42
  %187 = load i32, i32* %3, align 4
  ret i32 %187
}

declare dso_local i32 @get_word(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
