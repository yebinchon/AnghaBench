; ModuleID = '/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-data.c_prepare_words_hashlist.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-data.c_prepare_words_hashlist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@prepare_words_hashlist.trans_buff = internal global [256 x i8] zeroinitializer, align 16
@Hc = common dso_local global i32 0, align 4
@MAX_WORD_HASHES = common dso_local global i32 0, align 4
@MAX_WORD_LEN = common dso_local global i32 0, align 4
@Word = common dso_local global i8* null, align 8
@HL = common dso_local global i32* null, align 8
@verbosity = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"translit: '%s' -> '%s'\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @prepare_words_hashlist(i8* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %16 = load i32, i32* %7, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %5
  store i32 0, i32* @Hc, align 4
  br label %19

19:                                               ; preds = %18, %5
  %20 = load i8*, i8** %6, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %22, label %140

22:                                               ; preds = %19
  br label %23

23:                                               ; preds = %134, %63, %22
  %24 = load i8*, i8** %6, align 8
  %25 = load i8, i8* %24, align 1
  %26 = icmp ne i8 %25, 0
  br i1 %26, label %27, label %139

27:                                               ; preds = %23
  %28 = load i8*, i8** %6, align 8
  %29 = call i32 @get_notword(i8* %28)
  store i32 %29, i32* %11, align 4
  %30 = load i32, i32* %11, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %27
  br label %139

33:                                               ; preds = %27
  br label %34

34:                                               ; preds = %47, %33
  %35 = load i32, i32* %11, align 4
  %36 = icmp sgt i32 %35, 0
  br i1 %36, label %37, label %50

37:                                               ; preds = %34
  %38 = load i8*, i8** %6, align 8
  %39 = getelementptr inbounds i8, i8* %38, i32 1
  store i8* %39, i8** %6, align 8
  %40 = load i8, i8* %38, align 1
  %41 = sext i8 %40 to i32
  %42 = icmp eq i32 %41, 9
  br i1 %42, label %43, label %46

43:                                               ; preds = %37
  %44 = load i32, i32* %8, align 4
  %45 = ashr i32 %44, 1
  store i32 %45, i32* %8, align 4
  br label %46

46:                                               ; preds = %43, %37
  br label %47

47:                                               ; preds = %46
  %48 = load i32, i32* %11, align 4
  %49 = add nsw i32 %48, -1
  store i32 %49, i32* %11, align 4
  br label %34

50:                                               ; preds = %34
  %51 = load i8*, i8** %6, align 8
  %52 = call i32 @get_word(i8* %51)
  store i32 %52, i32* %11, align 4
  %53 = load i32, i32* %11, align 4
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %59, label %55

55:                                               ; preds = %50
  %56 = load i32, i32* @Hc, align 4
  %57 = load i32, i32* @MAX_WORD_HASHES, align 4
  %58 = icmp sge i32 %56, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %55, %50
  br label %139

60:                                               ; preds = %55
  %61 = load i32, i32* %11, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %64, label %63

63:                                               ; preds = %60
  br label %23

64:                                               ; preds = %60
  %65 = load i32, i32* %11, align 4
  %66 = load i32, i32* @MAX_WORD_LEN, align 4
  %67 = icmp slt i32 %65, %66
  br i1 %67, label %68, label %134

68:                                               ; preds = %64
  %69 = load i32, i32* %8, align 4
  %70 = and i32 %69, 1
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %134

72:                                               ; preds = %68
  %73 = load i32, i32* %11, align 4
  store i32 %73, i32* %12, align 4
  %74 = load i32, i32* %9, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %81

76:                                               ; preds = %72
  %77 = load i8*, i8** @Word, align 8
  %78 = load i8*, i8** %6, align 8
  %79 = load i32, i32* %11, align 4
  %80 = call i32 @lc_str(i8* %77, i8* %78, i32 %79)
  br label %86

81:                                               ; preds = %72
  %82 = load i8*, i8** @Word, align 8
  %83 = load i8*, i8** %6, align 8
  %84 = load i32, i32* %11, align 4
  %85 = call i32 @my_lc_str(i8* %82, i8* %83, i32 %84)
  store i32 %85, i32* %12, align 4
  br label %86

86:                                               ; preds = %81, %76
  %87 = load i8*, i8** @Word, align 8
  %88 = load i32, i32* %12, align 4
  %89 = call i32 @word_crc64(i8* %87, i32 %88)
  %90 = load i32, i32* %10, align 4
  %91 = add nsw i32 %89, %90
  %92 = sext i32 %91 to i64
  %93 = or i64 %92, -9223372036854775808
  %94 = trunc i64 %93 to i32
  %95 = load i32*, i32** @HL, align 8
  %96 = load i32, i32* @Hc, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* @Hc, align 4
  %98 = sext i32 %96 to i64
  %99 = getelementptr inbounds i32, i32* %95, i64 %98
  store i32 %94, i32* %99, align 4
  %100 = load i32, i32* %9, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %133

102:                                              ; preds = %86
  %103 = load i32, i32* @Hc, align 4
  %104 = load i32, i32* @MAX_WORD_HASHES, align 4
  %105 = icmp slt i32 %103, %104
  br i1 %105, label %106, label %133

106:                                              ; preds = %102
  %107 = load i8*, i8** @Word, align 8
  %108 = load i32, i32* %11, align 4
  %109 = call i32 @translit_str(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @prepare_words_hashlist.trans_buff, i64 0, i64 0), i32 250, i8* %107, i32 %108)
  %110 = load i8*, i8** @Word, align 8
  %111 = call i64 @strcmp(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @prepare_words_hashlist.trans_buff, i64 0, i64 0), i8* %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %132

113:                                              ; preds = %106
  %114 = call i32 @word_crc64(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @prepare_words_hashlist.trans_buff, i64 0, i64 0), i32 -1)
  %115 = load i32, i32* %10, align 4
  %116 = add nsw i32 %114, %115
  %117 = sext i32 %116 to i64
  %118 = or i64 %117, -9223372036854775808
  %119 = trunc i64 %118 to i32
  %120 = load i32*, i32** @HL, align 8
  %121 = load i32, i32* @Hc, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* @Hc, align 4
  %123 = sext i32 %121 to i64
  %124 = getelementptr inbounds i32, i32* %120, i64 %123
  store i32 %119, i32* %124, align 4
  %125 = load i32, i32* @verbosity, align 4
  %126 = icmp sgt i32 %125, 4
  br i1 %126, label %127, label %131

127:                                              ; preds = %113
  %128 = load i32, i32* @stderr, align 4
  %129 = load i8*, i8** @Word, align 8
  %130 = call i32 @fprintf(i32 %128, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i8* %129, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @prepare_words_hashlist.trans_buff, i64 0, i64 0))
  br label %131

131:                                              ; preds = %127, %113
  br label %132

132:                                              ; preds = %131, %106
  br label %133

133:                                              ; preds = %132, %102, %86
  br label %134

134:                                              ; preds = %133, %68, %64
  %135 = load i32, i32* %11, align 4
  %136 = load i8*, i8** %6, align 8
  %137 = sext i32 %135 to i64
  %138 = getelementptr inbounds i8, i8* %136, i64 %137
  store i8* %138, i8** %6, align 8
  br label %23

139:                                              ; preds = %59, %32, %23
  br label %140

140:                                              ; preds = %139, %19
  %141 = load i32, i32* %7, align 4
  %142 = icmp sle i32 %141, 0
  br i1 %142, label %143, label %182

143:                                              ; preds = %140
  %144 = load i32, i32* @Hc, align 4
  %145 = icmp sgt i32 %144, 0
  br i1 %145, label %146, label %182

146:                                              ; preds = %143
  store i32 1, i32* %14, align 4
  %147 = load i32, i32* @Hc, align 4
  %148 = sub nsw i32 %147, 1
  %149 = call i32 @hsort(i32 0, i32 %148)
  %150 = load i32*, i32** @HL, align 8
  %151 = getelementptr inbounds i32, i32* %150, i64 0
  %152 = load i32, i32* %151, align 4
  store i32 %152, i32* %15, align 4
  store i32 1, i32* %13, align 4
  br label %153

153:                                              ; preds = %177, %146
  %154 = load i32, i32* %13, align 4
  %155 = load i32, i32* @Hc, align 4
  %156 = icmp slt i32 %154, %155
  br i1 %156, label %157, label %180

157:                                              ; preds = %153
  %158 = load i32*, i32** @HL, align 8
  %159 = load i32, i32* %13, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds i32, i32* %158, i64 %160
  %162 = load i32, i32* %161, align 4
  %163 = load i32, i32* %15, align 4
  %164 = icmp ne i32 %162, %163
  br i1 %164, label %165, label %176

165:                                              ; preds = %157
  %166 = load i32*, i32** @HL, align 8
  %167 = load i32, i32* %13, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds i32, i32* %166, i64 %168
  %170 = load i32, i32* %169, align 4
  store i32 %170, i32* %15, align 4
  %171 = load i32*, i32** @HL, align 8
  %172 = load i32, i32* %14, align 4
  %173 = add nsw i32 %172, 1
  store i32 %173, i32* %14, align 4
  %174 = sext i32 %172 to i64
  %175 = getelementptr inbounds i32, i32* %171, i64 %174
  store i32 %170, i32* %175, align 4
  br label %176

176:                                              ; preds = %165, %157
  br label %177

177:                                              ; preds = %176
  %178 = load i32, i32* %13, align 4
  %179 = add nsw i32 %178, 1
  store i32 %179, i32* %13, align 4
  br label %153

180:                                              ; preds = %153
  %181 = load i32, i32* %14, align 4
  store i32 %181, i32* @Hc, align 4
  br label %182

182:                                              ; preds = %180, %143, %140
  %183 = load i32, i32* @Hc, align 4
  ret i32 %183
}

declare dso_local i32 @get_notword(i8*) #1

declare dso_local i32 @get_word(i8*) #1

declare dso_local i32 @lc_str(i8*, i8*, i32) #1

declare dso_local i32 @my_lc_str(i8*, i8*, i32) #1

declare dso_local i32 @word_crc64(i8*, i32) #1

declare dso_local i32 @translit_str(i8*, i32, i8*, i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*, i8*) #1

declare dso_local i32 @hsort(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
