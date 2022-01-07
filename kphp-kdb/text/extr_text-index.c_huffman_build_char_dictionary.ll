; ModuleID = '/home/carl/AnghaBench/kphp-kdb/text/extr_text-index.c_huffman_build_char_dictionary.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/text/extr_text-index.c_huffman_build_char_dictionary.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.char_dictionary = type { i64*, i64*, i32*, i32*, i32**, i32*, i32 }

@huffman_build_char_dictionary.code_cnt = internal global [32 x i32] zeroinitializer, align 16
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"fatal: character %02x encoded with %lld > 32 bits\0A\00", align 1
@verbosity = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"character %02x ('%c'): %08x:%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @huffman_build_char_dictionary(%struct.char_dictionary* %0, i64* %1, i64* %2) #0 {
  %4 = alloca %struct.char_dictionary*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  store %struct.char_dictionary* %0, %struct.char_dictionary** %4, align 8
  store i64* %1, i64** %5, align 8
  store i64* %2, i64** %6, align 8
  store i64 0, i64* %7, align 8
  store i32 0, i32* %8, align 4
  br label %13

13:                                               ; preds = %20, %3
  %14 = load i32, i32* %8, align 4
  %15 = icmp slt i32 %14, 32
  br i1 %15, label %16, label %23

16:                                               ; preds = %13
  %17 = load i32, i32* %8, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds [32 x i32], [32 x i32]* @huffman_build_char_dictionary.code_cnt, i64 0, i64 %18
  store i32 0, i32* %19, align 4
  br label %20

20:                                               ; preds = %16
  %21 = load i32, i32* %8, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %8, align 4
  br label %13

23:                                               ; preds = %13
  store i32 0, i32* %8, align 4
  br label %24

24:                                               ; preds = %97, %23
  %25 = load i32, i32* %8, align 4
  %26 = icmp slt i32 %25, 256
  br i1 %26, label %27, label %100

27:                                               ; preds = %24
  %28 = load i64*, i64** %5, align 8
  %29 = load i32, i32* %8, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i64, i64* %28, i64 %30
  %32 = load i64, i64* %31, align 8
  %33 = icmp ugt i64 %32, 32
  br i1 %33, label %34, label %45

34:                                               ; preds = %27
  %35 = load i32, i32* @stderr, align 4
  %36 = load i32, i32* %8, align 4
  %37 = load i64*, i64** %5, align 8
  %38 = load i32, i32* %8, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i64, i64* %37, i64 %39
  %41 = load i64, i64* %40, align 8
  %42 = trunc i64 %41 to i8
  %43 = call i32 (i32, i8*, i32, i8, ...) @fprintf(i32 %35, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 %36, i8 signext %42)
  %44 = call i32 @exit(i32 3) #3
  unreachable

45:                                               ; preds = %27
  %46 = load i64*, i64** %6, align 8
  %47 = load i32, i32* %8, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i64, i64* %46, i64 %48
  %50 = load i64, i64* %49, align 8
  %51 = icmp sge i64 %50, 0
  %52 = zext i1 %51 to i32
  %53 = call i32 @assert(i32 %52)
  %54 = load i64*, i64** %5, align 8
  %55 = load i32, i32* %8, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i64, i64* %54, i64 %56
  %58 = load i64, i64* %57, align 8
  %59 = load i64*, i64** %6, align 8
  %60 = load i32, i32* %8, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i64, i64* %59, i64 %61
  %63 = load i64, i64* %62, align 8
  %64 = mul nsw i64 %58, %63
  %65 = load i64, i64* %7, align 8
  %66 = add nsw i64 %65, %64
  store i64 %66, i64* %7, align 8
  %67 = load i64*, i64** %5, align 8
  %68 = load i32, i32* %8, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i64, i64* %67, i64 %69
  %71 = load i64, i64* %70, align 8
  %72 = getelementptr inbounds [32 x i32], [32 x i32]* @huffman_build_char_dictionary.code_cnt, i64 0, i64 %71
  %73 = load i32, i32* %72, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %72, align 4
  %75 = load i64*, i64** %5, align 8
  %76 = load i32, i32* %8, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i64, i64* %75, i64 %77
  %79 = load i64, i64* %78, align 8
  %80 = load %struct.char_dictionary*, %struct.char_dictionary** %4, align 8
  %81 = getelementptr inbounds %struct.char_dictionary, %struct.char_dictionary* %80, i32 0, i32 0
  %82 = load i64*, i64** %81, align 8
  %83 = load i32, i32* %8, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i64, i64* %82, i64 %84
  store i64 %79, i64* %85, align 8
  %86 = load i64*, i64** %6, align 8
  %87 = load i32, i32* %8, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i64, i64* %86, i64 %88
  %90 = load i64, i64* %89, align 8
  %91 = load %struct.char_dictionary*, %struct.char_dictionary** %4, align 8
  %92 = getelementptr inbounds %struct.char_dictionary, %struct.char_dictionary* %91, i32 0, i32 1
  %93 = load i64*, i64** %92, align 8
  %94 = load i32, i32* %8, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i64, i64* %93, i64 %95
  store i64 %90, i64* %96, align 8
  br label %97

97:                                               ; preds = %45
  %98 = load i32, i32* %8, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %8, align 4
  br label %24

100:                                              ; preds = %24
  store i32 0, i32* %10, align 4
  store i32 -2147483648, i32* %11, align 4
  %101 = load %struct.char_dictionary*, %struct.char_dictionary** %4, align 8
  %102 = getelementptr inbounds %struct.char_dictionary, %struct.char_dictionary* %101, i32 0, i32 2
  %103 = load i32*, i32** %102, align 8
  store i32* %103, i32** %12, align 8
  store i32 1, i32* %8, align 4
  br label %104

104:                                              ; preds = %175, %100
  %105 = load i32, i32* %8, align 4
  %106 = icmp sle i32 %105, 32
  br i1 %106, label %107, label %178

107:                                              ; preds = %104
  %108 = load i32, i32* %10, align 4
  %109 = load %struct.char_dictionary*, %struct.char_dictionary** %4, align 8
  %110 = getelementptr inbounds %struct.char_dictionary, %struct.char_dictionary* %109, i32 0, i32 3
  %111 = load i32*, i32** %110, align 8
  %112 = load i32, i32* %8, align 4
  %113 = sub nsw i32 %112, 1
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i32, i32* %111, i64 %114
  store i32 %108, i32* %115, align 4
  %116 = load i32*, i32** %12, align 8
  %117 = load i32, i32* %10, align 4
  %118 = load i32, i32* %8, align 4
  %119 = sub nsw i32 32, %118
  %120 = lshr i32 %117, %119
  %121 = zext i32 %120 to i64
  %122 = sub i64 0, %121
  %123 = getelementptr inbounds i32, i32* %116, i64 %122
  %124 = load %struct.char_dictionary*, %struct.char_dictionary** %4, align 8
  %125 = getelementptr inbounds %struct.char_dictionary, %struct.char_dictionary* %124, i32 0, i32 4
  %126 = load i32**, i32*** %125, align 8
  %127 = load i32, i32* %8, align 4
  %128 = sub nsw i32 %127, 1
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i32*, i32** %126, i64 %129
  store i32* %123, i32** %130, align 8
  store i32 0, i32* %9, align 4
  br label %131

131:                                              ; preds = %169, %107
  %132 = load i32, i32* %9, align 4
  %133 = icmp slt i32 %132, 256
  br i1 %133, label %134, label %172

134:                                              ; preds = %131
  %135 = load i64*, i64** %5, align 8
  %136 = load i32, i32* %9, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i64, i64* %135, i64 %137
  %139 = load i64, i64* %138, align 8
  %140 = load i32, i32* %8, align 4
  %141 = sext i32 %140 to i64
  %142 = icmp eq i64 %139, %141
  br i1 %142, label %143, label %168

143:                                              ; preds = %134
  %144 = load i32, i32* %9, align 4
  %145 = load i32*, i32** %12, align 8
  %146 = getelementptr inbounds i32, i32* %145, i32 1
  store i32* %146, i32** %12, align 8
  store i32 %144, i32* %145, align 4
  %147 = load i32, i32* %10, align 4
  %148 = load %struct.char_dictionary*, %struct.char_dictionary** %4, align 8
  %149 = getelementptr inbounds %struct.char_dictionary, %struct.char_dictionary* %148, i32 0, i32 5
  %150 = load i32*, i32** %149, align 8
  %151 = load i32, i32* %9, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds i32, i32* %150, i64 %152
  store i32 %147, i32* %153, align 4
  %154 = load i32, i32* %11, align 4
  %155 = load i32, i32* %10, align 4
  %156 = add i32 %155, %154
  store i32 %156, i32* %10, align 4
  %157 = load i32, i32* %10, align 4
  %158 = load i32, i32* %11, align 4
  %159 = icmp uge i32 %157, %158
  br i1 %159, label %164, label %160

160:                                              ; preds = %143
  %161 = load i32, i32* %10, align 4
  %162 = icmp ne i32 %161, 0
  %163 = xor i1 %162, true
  br label %164

164:                                              ; preds = %160, %143
  %165 = phi i1 [ true, %143 ], [ %163, %160 ]
  %166 = zext i1 %165 to i32
  %167 = call i32 @assert(i32 %166)
  br label %168

168:                                              ; preds = %164, %134
  br label %169

169:                                              ; preds = %168
  %170 = load i32, i32* %9, align 4
  %171 = add nsw i32 %170, 1
  store i32 %171, i32* %9, align 4
  br label %131

172:                                              ; preds = %131
  %173 = load i32, i32* %11, align 4
  %174 = lshr i32 %173, 1
  store i32 %174, i32* %11, align 4
  br label %175

175:                                              ; preds = %172
  %176 = load i32, i32* %8, align 4
  %177 = add nsw i32 %176, 1
  store i32 %177, i32* %8, align 4
  br label %104

178:                                              ; preds = %104
  %179 = load i32, i32* %10, align 4
  %180 = icmp ne i32 %179, 0
  %181 = xor i1 %180, true
  %182 = zext i1 %181 to i32
  %183 = call i32 @assert(i32 %182)
  store i32 32, i32* %8, align 4
  br label %184

184:                                              ; preds = %200, %178
  %185 = load i32, i32* %8, align 4
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %198

187:                                              ; preds = %184
  %188 = load %struct.char_dictionary*, %struct.char_dictionary** %4, align 8
  %189 = getelementptr inbounds %struct.char_dictionary, %struct.char_dictionary* %188, i32 0, i32 3
  %190 = load i32*, i32** %189, align 8
  %191 = load i32, i32* %8, align 4
  %192 = sub nsw i32 %191, 1
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds i32, i32* %190, i64 %193
  %195 = load i32, i32* %194, align 4
  %196 = icmp ne i32 %195, 0
  %197 = xor i1 %196, true
  br label %198

198:                                              ; preds = %187, %184
  %199 = phi i1 [ false, %184 ], [ %197, %187 ]
  br i1 %199, label %200, label %203

200:                                              ; preds = %198
  %201 = load i32, i32* %8, align 4
  %202 = add nsw i32 %201, -1
  store i32 %202, i32* %8, align 4
  br label %184

203:                                              ; preds = %198
  %204 = load i32, i32* %8, align 4
  %205 = load %struct.char_dictionary*, %struct.char_dictionary** %4, align 8
  %206 = getelementptr inbounds %struct.char_dictionary, %struct.char_dictionary* %205, i32 0, i32 6
  store i32 %204, i32* %206, align 8
  %207 = load i32, i32* @verbosity, align 4
  %208 = icmp sgt i32 %207, 1
  br i1 %208, label %209, label %243

209:                                              ; preds = %203
  store i32 0, i32* %8, align 4
  br label %210

210:                                              ; preds = %239, %209
  %211 = load i32, i32* %8, align 4
  %212 = icmp slt i32 %211, 256
  br i1 %212, label %213, label %242

213:                                              ; preds = %210
  %214 = load i32, i32* @stderr, align 4
  %215 = load i32, i32* %8, align 4
  %216 = load i32, i32* %8, align 4
  %217 = icmp slt i32 %216, 32
  br i1 %217, label %218, label %219

218:                                              ; preds = %213
  br label %221

219:                                              ; preds = %213
  %220 = load i32, i32* %8, align 4
  br label %221

221:                                              ; preds = %219, %218
  %222 = phi i32 [ 46, %218 ], [ %220, %219 ]
  %223 = trunc i32 %222 to i8
  %224 = load %struct.char_dictionary*, %struct.char_dictionary** %4, align 8
  %225 = getelementptr inbounds %struct.char_dictionary, %struct.char_dictionary* %224, i32 0, i32 5
  %226 = load i32*, i32** %225, align 8
  %227 = load i32, i32* %8, align 4
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds i32, i32* %226, i64 %228
  %230 = load i32, i32* %229, align 4
  %231 = load %struct.char_dictionary*, %struct.char_dictionary** %4, align 8
  %232 = getelementptr inbounds %struct.char_dictionary, %struct.char_dictionary* %231, i32 0, i32 0
  %233 = load i64*, i64** %232, align 8
  %234 = load i32, i32* %8, align 4
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds i64, i64* %233, i64 %235
  %237 = load i64, i64* %236, align 8
  %238 = call i32 (i32, i8*, i32, i8, ...) @fprintf(i32 %214, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %215, i8 signext %223, i32 %230, i64 %237)
  br label %239

239:                                              ; preds = %221
  %240 = load i32, i32* %8, align 4
  %241 = add nsw i32 %240, 1
  store i32 %241, i32* %8, align 4
  br label %210

242:                                              ; preds = %210
  br label %243

243:                                              ; preds = %242, %203
  %244 = load i64, i64* %7, align 8
  ret i64 %244
}

declare dso_local i32 @fprintf(i32, i8*, i32, i8 signext, ...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
