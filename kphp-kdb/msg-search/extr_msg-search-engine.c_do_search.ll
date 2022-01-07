; ModuleID = '/home/carl/AnghaBench/kphp-kdb/msg-search/extr_msg-search-engine.c_do_search.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/msg-search/extr_msg-search-engine.c_do_search.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ResL = common dso_local global i32 0, align 4
@Res = common dso_local global i32* null, align 8
@Qw = common dso_local global i32 0, align 4
@verbosity = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"empty query\0A\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"%llu *%d .. \00", align 1
@Q = common dso_local global i32* null, align 8
@Qc = common dso_local global i64* null, align 8
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@Ql = common dso_local global i64* null, align 8
@MAX_INTERMEDIATE_SIZE = common dso_local global i64 0, align 8
@ResR = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [36 x i8] c"list too long: %d entries for %llu\0A\00", align 1
@ResBuff = common dso_local global i32* null, align 8
@.str.4 = private unnamed_addr constant [49 x i8] c"list pruned, only %d entries out of %d remained\0A\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"empty list for %llu\0A\00", align 1
@.str.6 = private unnamed_addr constant [44 x i8] c"one-word query, loaded %d entries for %llu\0A\00", align 1
@.str.7 = private unnamed_addr constant [41 x i8] c"intersect_lists(): %d entries in result\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @do_search(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 0, i32* @ResL, align 4
  store i32* null, i32** @Res, align 8
  %13 = load i32, i32* @Qw, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %22, label %15

15:                                               ; preds = %4
  %16 = load i64, i64* @verbosity, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %15
  %19 = load i32, i32* @stderr, align 4
  %20 = call i32 (i32, i8*, ...) @fprintf(i32 %19, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  br label %21

21:                                               ; preds = %18, %15
  store i32 0, i32* %5, align 4
  br label %228

22:                                               ; preds = %4
  %23 = load i64, i64* @verbosity, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %49

25:                                               ; preds = %22
  store i32 0, i32* %10, align 4
  br label %26

26:                                               ; preds = %43, %25
  %27 = load i32, i32* %10, align 4
  %28 = load i32, i32* @Qw, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %46

30:                                               ; preds = %26
  %31 = load i32, i32* @stderr, align 4
  %32 = load i32*, i32** @Q, align 8
  %33 = load i32, i32* %10, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = load i64*, i64** @Qc, align 8
  %38 = load i32, i32* %10, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i64, i64* %37, i64 %39
  %41 = load i64, i64* %40, align 8
  %42 = call i32 (i32, i8*, ...) @fprintf(i32 %31, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %36, i64 %41)
  br label %43

43:                                               ; preds = %30
  %44 = load i32, i32* %10, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %10, align 4
  br label %26

46:                                               ; preds = %26
  %47 = load i32, i32* @stderr, align 4
  %48 = call i32 (i32, i8*, ...) @fprintf(i32 %47, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  br label %49

49:                                               ; preds = %46, %22
  %50 = load i64*, i64** @Ql, align 8
  %51 = getelementptr inbounds i64, i64* %50, i64 0
  %52 = load i64, i64* %51, align 8
  %53 = inttoptr i64 %52 to i32*
  store i32* %53, i32** @Res, align 8
  %54 = load i64*, i64** @Qc, align 8
  %55 = getelementptr inbounds i64, i64* %54, i64 0
  %56 = load i64, i64* %55, align 8
  %57 = trunc i64 %56 to i32
  store i32 %57, i32* @ResL, align 4
  %58 = load i64*, i64** @Qc, align 8
  %59 = getelementptr inbounds i64, i64* %58, i64 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @MAX_INTERMEDIATE_SIZE, align 8
  %62 = load i64, i64* @ResR, align 8
  %63 = sub i64 %61, %62
  %64 = icmp ugt i64 %60, %63
  br i1 %64, label %65, label %78

65:                                               ; preds = %49
  %66 = load i64, i64* @verbosity, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %77

68:                                               ; preds = %65
  %69 = load i32, i32* @stderr, align 4
  %70 = load i64*, i64** @Qc, align 8
  %71 = getelementptr inbounds i64, i64* %70, i64 0
  %72 = load i64, i64* %71, align 8
  %73 = load i32*, i32** @Q, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 0
  %75 = load i32, i32* %74, align 4
  %76 = call i32 (i32, i8*, ...) @fprintf(i32 %69, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i64 %72, i32 %75)
  br label %77

77:                                               ; preds = %68, %65
  store i32 -1, i32* %5, align 4
  br label %228

78:                                               ; preds = %49
  store i32 0, i32* %11, align 4
  store i32 0, i32* %10, align 4
  br label %79

79:                                               ; preds = %114, %78
  %80 = load i32, i32* %10, align 4
  %81 = load i32, i32* @ResL, align 4
  %82 = icmp slt i32 %80, %81
  br i1 %82, label %83, label %117

83:                                               ; preds = %79
  %84 = load i32*, i32** @Res, align 8
  %85 = load i32, i32* %10, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %84, i64 %86
  %88 = load i32, i32* %87, align 4
  store i32 %88, i32* %12, align 4
  %89 = load i32, i32* %12, align 4
  %90 = load i32, i32* %6, align 4
  %91 = icmp sgt i32 %89, %90
  br i1 %91, label %92, label %96

92:                                               ; preds = %83
  %93 = load i32, i32* %12, align 4
  %94 = load i32, i32* %8, align 4
  %95 = icmp slt i32 %93, %94
  br i1 %95, label %104, label %96

96:                                               ; preds = %92, %83
  %97 = load i32, i32* %12, align 4
  %98 = load i32, i32* %7, align 4
  %99 = icmp slt i32 %97, %98
  br i1 %99, label %100, label %113

100:                                              ; preds = %96
  %101 = load i32, i32* %12, align 4
  %102 = load i32, i32* %9, align 4
  %103 = icmp sgt i32 %101, %102
  br i1 %103, label %104, label %113

104:                                              ; preds = %100, %92
  %105 = load i32, i32* %12, align 4
  %106 = load i32*, i32** @ResBuff, align 8
  %107 = load i64, i64* @ResR, align 8
  %108 = load i32, i32* %11, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %11, align 4
  %110 = sext i32 %108 to i64
  %111 = add i64 %107, %110
  %112 = getelementptr inbounds i32, i32* %106, i64 %111
  store i32 %105, i32* %112, align 4
  br label %113

113:                                              ; preds = %104, %100, %96
  br label %114

114:                                              ; preds = %113
  %115 = load i32, i32* %10, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %10, align 4
  br label %79

117:                                              ; preds = %79
  %118 = load i64, i64* @verbosity, align 8
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %125

120:                                              ; preds = %117
  %121 = load i32, i32* @stderr, align 4
  %122 = load i32, i32* %11, align 4
  %123 = load i32, i32* @ResL, align 4
  %124 = call i32 (i32, i8*, ...) @fprintf(i32 %121, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.4, i64 0, i64 0), i32 %122, i32 %123)
  br label %125

125:                                              ; preds = %120, %117
  %126 = load i32*, i32** @ResBuff, align 8
  %127 = load i64, i64* @ResR, align 8
  %128 = getelementptr inbounds i32, i32* %126, i64 %127
  store i32* %128, i32** @Res, align 8
  %129 = load i32, i32* %11, align 4
  store i32 %129, i32* @ResL, align 4
  %130 = load i32, i32* @ResL, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %142, label %132

132:                                              ; preds = %125
  %133 = load i64, i64* @verbosity, align 8
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %141

135:                                              ; preds = %132
  %136 = load i32, i32* @stderr, align 4
  %137 = load i32*, i32** @Q, align 8
  %138 = getelementptr inbounds i32, i32* %137, i64 0
  %139 = load i32, i32* %138, align 4
  %140 = call i32 (i32, i8*, ...) @fprintf(i32 %136, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i32 %139)
  br label %141

141:                                              ; preds = %135, %132
  store i32 0, i32* %5, align 4
  br label %228

142:                                              ; preds = %125
  %143 = load i32, i32* @Qw, align 4
  %144 = icmp eq i32 %143, 1
  br i1 %144, label %145, label %159

145:                                              ; preds = %142
  %146 = load i64, i64* @verbosity, align 8
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %157

148:                                              ; preds = %145
  %149 = load i32, i32* @stderr, align 4
  %150 = load i64*, i64** @Qc, align 8
  %151 = getelementptr inbounds i64, i64* %150, i64 0
  %152 = load i64, i64* %151, align 8
  %153 = load i32*, i32** @Q, align 8
  %154 = getelementptr inbounds i32, i32* %153, i64 0
  %155 = load i32, i32* %154, align 4
  %156 = call i32 (i32, i8*, ...) @fprintf(i32 %149, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.6, i64 0, i64 0), i64 %152, i32 %155)
  br label %157

157:                                              ; preds = %148, %145
  %158 = load i32, i32* @ResL, align 4
  store i32 %158, i32* %5, align 4
  br label %228

159:                                              ; preds = %142
  %160 = load i64*, i64** @Ql, align 8
  %161 = getelementptr inbounds i64, i64* %160, i64 0
  %162 = load i64, i64* %161, align 8
  %163 = inttoptr i64 %162 to i32*
  store i32* %163, i32** @Res, align 8
  %164 = load i64*, i64** @Qc, align 8
  %165 = getelementptr inbounds i64, i64* %164, i64 0
  %166 = load i64, i64* %165, align 8
  %167 = trunc i64 %166 to i32
  store i32 %167, i32* @ResL, align 4
  store i32 1, i32* %10, align 4
  br label %168

168:                                              ; preds = %223, %159
  %169 = load i32, i32* %10, align 4
  %170 = load i32, i32* @Qw, align 4
  %171 = icmp slt i32 %169, %170
  br i1 %171, label %172, label %226

172:                                              ; preds = %168
  %173 = load i32*, i32** @Res, align 8
  %174 = load i32*, i32** @Res, align 8
  %175 = load i32, i32* @ResL, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds i32, i32* %174, i64 %176
  %178 = load i64*, i64** @Ql, align 8
  %179 = load i32, i32* %10, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds i64, i64* %178, i64 %180
  %182 = load i64, i64* %181, align 8
  %183 = load i64*, i64** @Ql, align 8
  %184 = load i32, i32* %10, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds i64, i64* %183, i64 %185
  %187 = load i64, i64* %186, align 8
  %188 = load i64*, i64** @Qc, align 8
  %189 = load i32, i32* %10, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds i64, i64* %188, i64 %190
  %192 = load i64, i64* %191, align 8
  %193 = add nsw i64 %187, %192
  %194 = load i32*, i32** @ResBuff, align 8
  %195 = load i64, i64* @ResR, align 8
  %196 = getelementptr inbounds i32, i32* %194, i64 %195
  %197 = load i32*, i32** @ResBuff, align 8
  %198 = load i64, i64* @MAX_INTERMEDIATE_SIZE, align 8
  %199 = getelementptr inbounds i32, i32* %197, i64 %198
  %200 = call i32* @intersect_lists(i32* %173, i32* %177, i64 %182, i64 %193, i32* %196, i32* %199)
  %201 = load i32*, i32** @ResBuff, align 8
  %202 = ptrtoint i32* %200 to i64
  %203 = ptrtoint i32* %201 to i64
  %204 = sub i64 %202, %203
  %205 = sdiv exact i64 %204, 4
  %206 = load i64, i64* @ResR, align 8
  %207 = sub i64 %205, %206
  %208 = trunc i64 %207 to i32
  store i32 %208, i32* @ResL, align 4
  %209 = load i32*, i32** @ResBuff, align 8
  %210 = load i64, i64* @ResR, align 8
  %211 = getelementptr inbounds i32, i32* %209, i64 %210
  store i32* %211, i32** @Res, align 8
  %212 = load i64, i64* @verbosity, align 8
  %213 = icmp sgt i64 %212, 0
  br i1 %213, label %214, label %218

214:                                              ; preds = %172
  %215 = load i32, i32* @stderr, align 4
  %216 = load i32, i32* @ResL, align 4
  %217 = call i32 (i32, i8*, ...) @fprintf(i32 %215, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.7, i64 0, i64 0), i32 %216)
  br label %218

218:                                              ; preds = %214, %172
  %219 = load i32, i32* @ResL, align 4
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %222, label %221

221:                                              ; preds = %218
  store i32 0, i32* %5, align 4
  br label %228

222:                                              ; preds = %218
  br label %223

223:                                              ; preds = %222
  %224 = load i32, i32* %10, align 4
  %225 = add nsw i32 %224, 1
  store i32 %225, i32* %10, align 4
  br label %168

226:                                              ; preds = %168
  %227 = load i32, i32* @ResL, align 4
  store i32 %227, i32* %5, align 4
  br label %228

228:                                              ; preds = %226, %221, %157, %141, %77, %21
  %229 = load i32, i32* %5, align 4
  ret i32 %229
}

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32* @intersect_lists(i32*, i32*, i64, i64, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
