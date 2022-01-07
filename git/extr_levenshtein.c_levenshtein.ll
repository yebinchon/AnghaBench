; ModuleID = '/home/carl/AnghaBench/git/extr_levenshtein.c_levenshtein.c'
source_filename = "/home/carl/AnghaBench/git/extr_levenshtein.c_levenshtein.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @levenshtein(i8* %0, i8* %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32*, align 8
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %21 = load i8*, i8** %7, align 8
  %22 = call i32 @strlen(i8* %21)
  store i32 %22, i32* %13, align 4
  %23 = load i8*, i8** %8, align 8
  %24 = call i32 @strlen(i8* %23)
  store i32 %24, i32* %14, align 4
  %25 = load i32*, i32** %15, align 8
  %26 = load i32, i32* %14, align 4
  %27 = add nsw i32 %26, 1
  %28 = call i32 @ALLOC_ARRAY(i32* %25, i32 %27)
  %29 = load i32*, i32** %16, align 8
  %30 = load i32, i32* %14, align 4
  %31 = add nsw i32 %30, 1
  %32 = call i32 @ALLOC_ARRAY(i32* %29, i32 %31)
  %33 = load i32*, i32** %17, align 8
  %34 = load i32, i32* %14, align 4
  %35 = add nsw i32 %34, 1
  %36 = call i32 @ALLOC_ARRAY(i32* %33, i32 %35)
  store i32 0, i32* %19, align 4
  br label %37

37:                                               ; preds = %49, %6
  %38 = load i32, i32* %19, align 4
  %39 = load i32, i32* %14, align 4
  %40 = icmp sle i32 %38, %39
  br i1 %40, label %41, label %52

41:                                               ; preds = %37
  %42 = load i32, i32* %19, align 4
  %43 = load i32, i32* %11, align 4
  %44 = mul nsw i32 %42, %43
  %45 = load i32*, i32** %16, align 8
  %46 = load i32, i32* %19, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  store i32 %44, i32* %48, align 4
  br label %49

49:                                               ; preds = %41
  %50 = load i32, i32* %19, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %19, align 4
  br label %37

52:                                               ; preds = %37
  store i32 0, i32* %18, align 4
  br label %53

53:                                               ; preds = %228, %52
  %54 = load i32, i32* %18, align 4
  %55 = load i32, i32* %13, align 4
  %56 = icmp slt i32 %54, %55
  br i1 %56, label %57, label %231

57:                                               ; preds = %53
  %58 = load i32, i32* %18, align 4
  %59 = add nsw i32 %58, 1
  %60 = load i32, i32* %12, align 4
  %61 = mul nsw i32 %59, %60
  %62 = load i32*, i32** %17, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 0
  store i32 %61, i32* %63, align 4
  store i32 0, i32* %19, align 4
  br label %64

64:                                               ; preds = %220, %57
  %65 = load i32, i32* %19, align 4
  %66 = load i32, i32* %14, align 4
  %67 = icmp slt i32 %65, %66
  br i1 %67, label %68, label %223

68:                                               ; preds = %64
  %69 = load i32*, i32** %16, align 8
  %70 = load i32, i32* %19, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %69, i64 %71
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* %10, align 4
  %75 = load i8*, i8** %7, align 8
  %76 = load i32, i32* %18, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i8, i8* %75, i64 %77
  %79 = load i8, i8* %78, align 1
  %80 = sext i8 %79 to i32
  %81 = load i8*, i8** %8, align 8
  %82 = load i32, i32* %19, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i8, i8* %81, i64 %83
  %85 = load i8, i8* %84, align 1
  %86 = sext i8 %85 to i32
  %87 = icmp ne i32 %80, %86
  %88 = zext i1 %87 to i32
  %89 = mul nsw i32 %74, %88
  %90 = add nsw i32 %73, %89
  %91 = load i32*, i32** %17, align 8
  %92 = load i32, i32* %19, align 4
  %93 = add nsw i32 %92, 1
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i32, i32* %91, i64 %94
  store i32 %90, i32* %95, align 4
  %96 = load i32, i32* %18, align 4
  %97 = icmp sgt i32 %96, 0
  br i1 %97, label %98, label %161

98:                                               ; preds = %68
  %99 = load i32, i32* %19, align 4
  %100 = icmp sgt i32 %99, 0
  br i1 %100, label %101, label %161

101:                                              ; preds = %98
  %102 = load i8*, i8** %7, align 8
  %103 = load i32, i32* %18, align 4
  %104 = sub nsw i32 %103, 1
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i8, i8* %102, i64 %105
  %107 = load i8, i8* %106, align 1
  %108 = sext i8 %107 to i32
  %109 = load i8*, i8** %8, align 8
  %110 = load i32, i32* %19, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i8, i8* %109, i64 %111
  %113 = load i8, i8* %112, align 1
  %114 = sext i8 %113 to i32
  %115 = icmp eq i32 %108, %114
  br i1 %115, label %116, label %161

116:                                              ; preds = %101
  %117 = load i8*, i8** %7, align 8
  %118 = load i32, i32* %18, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i8, i8* %117, i64 %119
  %121 = load i8, i8* %120, align 1
  %122 = sext i8 %121 to i32
  %123 = load i8*, i8** %8, align 8
  %124 = load i32, i32* %19, align 4
  %125 = sub nsw i32 %124, 1
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i8, i8* %123, i64 %126
  %128 = load i8, i8* %127, align 1
  %129 = sext i8 %128 to i32
  %130 = icmp eq i32 %122, %129
  br i1 %130, label %131, label %161

131:                                              ; preds = %116
  %132 = load i32*, i32** %17, align 8
  %133 = load i32, i32* %19, align 4
  %134 = add nsw i32 %133, 1
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i32, i32* %132, i64 %135
  %137 = load i32, i32* %136, align 4
  %138 = load i32*, i32** %15, align 8
  %139 = load i32, i32* %19, align 4
  %140 = sub nsw i32 %139, 1
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i32, i32* %138, i64 %141
  %143 = load i32, i32* %142, align 4
  %144 = load i32, i32* %9, align 4
  %145 = add nsw i32 %143, %144
  %146 = icmp sgt i32 %137, %145
  br i1 %146, label %147, label %161

147:                                              ; preds = %131
  %148 = load i32*, i32** %15, align 8
  %149 = load i32, i32* %19, align 4
  %150 = sub nsw i32 %149, 1
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i32, i32* %148, i64 %151
  %153 = load i32, i32* %152, align 4
  %154 = load i32, i32* %9, align 4
  %155 = add nsw i32 %153, %154
  %156 = load i32*, i32** %17, align 8
  %157 = load i32, i32* %19, align 4
  %158 = add nsw i32 %157, 1
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds i32, i32* %156, i64 %159
  store i32 %155, i32* %160, align 4
  br label %161

161:                                              ; preds = %147, %131, %116, %101, %98, %68
  %162 = load i32*, i32** %17, align 8
  %163 = load i32, i32* %19, align 4
  %164 = add nsw i32 %163, 1
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds i32, i32* %162, i64 %165
  %167 = load i32, i32* %166, align 4
  %168 = load i32*, i32** %16, align 8
  %169 = load i32, i32* %19, align 4
  %170 = add nsw i32 %169, 1
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds i32, i32* %168, i64 %171
  %173 = load i32, i32* %172, align 4
  %174 = load i32, i32* %12, align 4
  %175 = add nsw i32 %173, %174
  %176 = icmp sgt i32 %167, %175
  br i1 %176, label %177, label %191

177:                                              ; preds = %161
  %178 = load i32*, i32** %16, align 8
  %179 = load i32, i32* %19, align 4
  %180 = add nsw i32 %179, 1
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds i32, i32* %178, i64 %181
  %183 = load i32, i32* %182, align 4
  %184 = load i32, i32* %12, align 4
  %185 = add nsw i32 %183, %184
  %186 = load i32*, i32** %17, align 8
  %187 = load i32, i32* %19, align 4
  %188 = add nsw i32 %187, 1
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds i32, i32* %186, i64 %189
  store i32 %185, i32* %190, align 4
  br label %191

191:                                              ; preds = %177, %161
  %192 = load i32*, i32** %17, align 8
  %193 = load i32, i32* %19, align 4
  %194 = add nsw i32 %193, 1
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds i32, i32* %192, i64 %195
  %197 = load i32, i32* %196, align 4
  %198 = load i32*, i32** %17, align 8
  %199 = load i32, i32* %19, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds i32, i32* %198, i64 %200
  %202 = load i32, i32* %201, align 4
  %203 = load i32, i32* %11, align 4
  %204 = add nsw i32 %202, %203
  %205 = icmp sgt i32 %197, %204
  br i1 %205, label %206, label %219

206:                                              ; preds = %191
  %207 = load i32*, i32** %17, align 8
  %208 = load i32, i32* %19, align 4
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds i32, i32* %207, i64 %209
  %211 = load i32, i32* %210, align 4
  %212 = load i32, i32* %11, align 4
  %213 = add nsw i32 %211, %212
  %214 = load i32*, i32** %17, align 8
  %215 = load i32, i32* %19, align 4
  %216 = add nsw i32 %215, 1
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds i32, i32* %214, i64 %217
  store i32 %213, i32* %218, align 4
  br label %219

219:                                              ; preds = %206, %191
  br label %220

220:                                              ; preds = %219
  %221 = load i32, i32* %19, align 4
  %222 = add nsw i32 %221, 1
  store i32 %222, i32* %19, align 4
  br label %64

223:                                              ; preds = %64
  %224 = load i32*, i32** %15, align 8
  store i32* %224, i32** %20, align 8
  %225 = load i32*, i32** %16, align 8
  store i32* %225, i32** %15, align 8
  %226 = load i32*, i32** %17, align 8
  store i32* %226, i32** %16, align 8
  %227 = load i32*, i32** %20, align 8
  store i32* %227, i32** %17, align 8
  br label %228

228:                                              ; preds = %223
  %229 = load i32, i32* %18, align 4
  %230 = add nsw i32 %229, 1
  store i32 %230, i32* %18, align 4
  br label %53

231:                                              ; preds = %53
  %232 = load i32*, i32** %16, align 8
  %233 = load i32, i32* %14, align 4
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds i32, i32* %232, i64 %234
  %236 = load i32, i32* %235, align 4
  store i32 %236, i32* %18, align 4
  %237 = load i32*, i32** %15, align 8
  %238 = call i32 @free(i32* %237)
  %239 = load i32*, i32** %16, align 8
  %240 = call i32 @free(i32* %239)
  %241 = load i32*, i32** %17, align 8
  %242 = call i32 @free(i32* %241)
  %243 = load i32, i32* %18, align 4
  ret i32 %243
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @ALLOC_ARRAY(i32*, i32) #1

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
