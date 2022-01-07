; ModuleID = '/home/carl/AnghaBench/libsodium/test/default/extr_core3.c_xmain.c'
source_filename = "/home/carl/AnghaBench/libsodium/test/default/extr_core3.c_xmain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SECONDKEY = common dso_local global i32 0, align 4
@NONCESUFFIX = common dso_local global i32 0, align 4
@C = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"%02x\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@crypto_core_salsa20_OUTPUTBYTES = common dso_local global i64 0, align 8
@crypto_core_salsa20_INPUTBYTES = common dso_local global i64 0, align 8
@crypto_core_salsa20_KEYBYTES = common dso_local global i64 0, align 8
@crypto_core_salsa20_CONSTBYTES = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  store i64 4194304, i64* %8, align 8
  store i64 0, i64* %9, align 8
  store i64 0, i64* %9, align 8
  %11 = call i64 @sodium_malloc(i32 32)
  %12 = inttoptr i64 %11 to i8*
  store i8* %12, i8** %2, align 8
  %13 = load i8*, i8** %2, align 8
  %14 = load i32, i32* @SECONDKEY, align 4
  %15 = call i32 @memcpy(i8* %13, i32 %14, i32 32)
  %16 = call i64 @sodium_malloc(i32 8)
  %17 = inttoptr i64 %16 to i8*
  store i8* %17, i8** %4, align 8
  %18 = load i8*, i8** %4, align 8
  %19 = load i32, i32* @NONCESUFFIX, align 4
  %20 = call i32 @memcpy(i8* %18, i32 %19, i32 8)
  %21 = call i64 @sodium_malloc(i32 16)
  %22 = inttoptr i64 %21 to i8*
  store i8* %22, i8** %3, align 8
  %23 = load i8*, i8** %3, align 8
  %24 = load i32, i32* @C, align 4
  %25 = call i32 @memcpy(i8* %23, i32 %24, i32 16)
  %26 = call i64 @sodium_malloc(i32 16)
  %27 = inttoptr i64 %26 to i8*
  store i8* %27, i8** %5, align 8
  %28 = load i64, i64* %8, align 8
  %29 = trunc i64 %28 to i32
  %30 = call i64 @sodium_malloc(i32 %29)
  %31 = inttoptr i64 %30 to i8*
  store i8* %31, i8** %6, align 8
  %32 = call i64 @sodium_malloc(i32 32)
  %33 = inttoptr i64 %32 to i8*
  store i8* %33, i8** %7, align 8
  store i32 0, i32* %10, align 4
  br label %34

34:                                               ; preds = %47, %0
  %35 = load i32, i32* %10, align 4
  %36 = icmp slt i32 %35, 8
  br i1 %36, label %37, label %50

37:                                               ; preds = %34
  %38 = load i8*, i8** %4, align 8
  %39 = load i32, i32* %10, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i8, i8* %38, i64 %40
  %42 = load i8, i8* %41, align 1
  %43 = load i8*, i8** %5, align 8
  %44 = load i32, i32* %10, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i8, i8* %43, i64 %45
  store i8 %42, i8* %46, align 1
  br label %47

47:                                               ; preds = %37
  %48 = load i32, i32* %10, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %10, align 4
  br label %34

50:                                               ; preds = %34
  br label %51

51:                                               ; preds = %59, %50
  %52 = load i32, i32* %10, align 4
  %53 = icmp slt i32 %52, 16
  br i1 %53, label %54, label %62

54:                                               ; preds = %51
  %55 = load i8*, i8** %5, align 8
  %56 = load i32, i32* %10, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i8, i8* %55, i64 %57
  store i8 0, i8* %58, align 1
  br label %59

59:                                               ; preds = %54
  %60 = load i32, i32* %10, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %10, align 4
  br label %51

62:                                               ; preds = %51
  br label %63

63:                                               ; preds = %89, %62
  br label %64

64:                                               ; preds = %78, %63
  %65 = load i8*, i8** %6, align 8
  %66 = load i64, i64* %9, align 8
  %67 = getelementptr inbounds i8, i8* %65, i64 %66
  %68 = load i8*, i8** %5, align 8
  %69 = load i8*, i8** %2, align 8
  %70 = load i8*, i8** %3, align 8
  %71 = call i32 @crypto_core_salsa20(i8* %67, i8* %68, i8* %69, i8* %70)
  %72 = load i64, i64* %9, align 8
  %73 = add i64 %72, 64
  store i64 %73, i64* %9, align 8
  %74 = load i8*, i8** %5, align 8
  %75 = getelementptr inbounds i8, i8* %74, i64 8
  %76 = load i8, i8* %75, align 1
  %77 = add i8 %76, 1
  store i8 %77, i8* %75, align 1
  br label %78

78:                                               ; preds = %64
  %79 = load i8*, i8** %5, align 8
  %80 = getelementptr inbounds i8, i8* %79, i64 8
  %81 = load i8, i8* %80, align 1
  %82 = zext i8 %81 to i32
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %64, label %84

84:                                               ; preds = %78
  %85 = load i8*, i8** %5, align 8
  %86 = getelementptr inbounds i8, i8* %85, i64 9
  %87 = load i8, i8* %86, align 1
  %88 = add i8 %87, 1
  store i8 %88, i8* %86, align 1
  br label %89

89:                                               ; preds = %84
  %90 = load i8*, i8** %5, align 8
  %91 = getelementptr inbounds i8, i8* %90, i64 9
  %92 = load i8, i8* %91, align 1
  %93 = zext i8 %92 to i32
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %63, label %95

95:                                               ; preds = %89
  %96 = load i8*, i8** %7, align 8
  %97 = load i8*, i8** %6, align 8
  %98 = load i64, i64* %8, align 8
  %99 = call i32 @crypto_hash_sha256(i8* %96, i8* %97, i64 %98)
  store i32 0, i32* %10, align 4
  br label %100

100:                                              ; preds = %111, %95
  %101 = load i32, i32* %10, align 4
  %102 = icmp slt i32 %101, 32
  br i1 %102, label %103, label %114

103:                                              ; preds = %100
  %104 = load i8*, i8** %7, align 8
  %105 = load i32, i32* %10, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i8, i8* %104, i64 %106
  %108 = load i8, i8* %107, align 1
  %109 = zext i8 %108 to i32
  %110 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %109)
  br label %111

111:                                              ; preds = %103
  %112 = load i32, i32* %10, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %10, align 4
  br label %100

114:                                              ; preds = %100
  %115 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i64 0, i64* %9, align 8
  br label %116

116:                                              ; preds = %142, %114
  br label %117

117:                                              ; preds = %131, %116
  %118 = load i8*, i8** %6, align 8
  %119 = load i64, i64* %9, align 8
  %120 = getelementptr inbounds i8, i8* %118, i64 %119
  %121 = load i8*, i8** %5, align 8
  %122 = load i8*, i8** %2, align 8
  %123 = load i8*, i8** %3, align 8
  %124 = call i32 @crypto_core_salsa2012(i8* %120, i8* %121, i8* %122, i8* %123)
  %125 = load i64, i64* %9, align 8
  %126 = add i64 %125, 64
  store i64 %126, i64* %9, align 8
  %127 = load i8*, i8** %5, align 8
  %128 = getelementptr inbounds i8, i8* %127, i64 8
  %129 = load i8, i8* %128, align 1
  %130 = add i8 %129, 1
  store i8 %130, i8* %128, align 1
  br label %131

131:                                              ; preds = %117
  %132 = load i8*, i8** %5, align 8
  %133 = getelementptr inbounds i8, i8* %132, i64 8
  %134 = load i8, i8* %133, align 1
  %135 = zext i8 %134 to i32
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %117, label %137

137:                                              ; preds = %131
  %138 = load i8*, i8** %5, align 8
  %139 = getelementptr inbounds i8, i8* %138, i64 9
  %140 = load i8, i8* %139, align 1
  %141 = add i8 %140, 1
  store i8 %141, i8* %139, align 1
  br label %142

142:                                              ; preds = %137
  %143 = load i8*, i8** %5, align 8
  %144 = getelementptr inbounds i8, i8* %143, i64 9
  %145 = load i8, i8* %144, align 1
  %146 = zext i8 %145 to i32
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %116, label %148

148:                                              ; preds = %142
  %149 = load i8*, i8** %7, align 8
  %150 = load i8*, i8** %6, align 8
  %151 = load i64, i64* %8, align 8
  %152 = call i32 @crypto_hash_sha256(i8* %149, i8* %150, i64 %151)
  store i32 0, i32* %10, align 4
  br label %153

153:                                              ; preds = %164, %148
  %154 = load i32, i32* %10, align 4
  %155 = icmp slt i32 %154, 32
  br i1 %155, label %156, label %167

156:                                              ; preds = %153
  %157 = load i8*, i8** %7, align 8
  %158 = load i32, i32* %10, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds i8, i8* %157, i64 %159
  %161 = load i8, i8* %160, align 1
  %162 = zext i8 %161 to i32
  %163 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %162)
  br label %164

164:                                              ; preds = %156
  %165 = load i32, i32* %10, align 4
  %166 = add nsw i32 %165, 1
  store i32 %166, i32* %10, align 4
  br label %153

167:                                              ; preds = %153
  %168 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i64 0, i64* %9, align 8
  br label %169

169:                                              ; preds = %195, %167
  br label %170

170:                                              ; preds = %184, %169
  %171 = load i8*, i8** %6, align 8
  %172 = load i64, i64* %9, align 8
  %173 = getelementptr inbounds i8, i8* %171, i64 %172
  %174 = load i8*, i8** %5, align 8
  %175 = load i8*, i8** %2, align 8
  %176 = load i8*, i8** %3, align 8
  %177 = call i32 @crypto_core_salsa208(i8* %173, i8* %174, i8* %175, i8* %176)
  %178 = load i64, i64* %9, align 8
  %179 = add i64 %178, 64
  store i64 %179, i64* %9, align 8
  %180 = load i8*, i8** %5, align 8
  %181 = getelementptr inbounds i8, i8* %180, i64 8
  %182 = load i8, i8* %181, align 1
  %183 = add i8 %182, 1
  store i8 %183, i8* %181, align 1
  br label %184

184:                                              ; preds = %170
  %185 = load i8*, i8** %5, align 8
  %186 = getelementptr inbounds i8, i8* %185, i64 8
  %187 = load i8, i8* %186, align 1
  %188 = zext i8 %187 to i32
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %170, label %190

190:                                              ; preds = %184
  %191 = load i8*, i8** %5, align 8
  %192 = getelementptr inbounds i8, i8* %191, i64 9
  %193 = load i8, i8* %192, align 1
  %194 = add i8 %193, 1
  store i8 %194, i8* %192, align 1
  br label %195

195:                                              ; preds = %190
  %196 = load i8*, i8** %5, align 8
  %197 = getelementptr inbounds i8, i8* %196, i64 9
  %198 = load i8, i8* %197, align 1
  %199 = zext i8 %198 to i32
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %169, label %201

201:                                              ; preds = %195
  %202 = load i8*, i8** %7, align 8
  %203 = load i8*, i8** %6, align 8
  %204 = load i64, i64* %8, align 8
  %205 = call i32 @crypto_hash_sha256(i8* %202, i8* %203, i64 %204)
  store i32 0, i32* %10, align 4
  br label %206

206:                                              ; preds = %217, %201
  %207 = load i32, i32* %10, align 4
  %208 = icmp slt i32 %207, 32
  br i1 %208, label %209, label %220

209:                                              ; preds = %206
  %210 = load i8*, i8** %7, align 8
  %211 = load i32, i32* %10, align 4
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds i8, i8* %210, i64 %212
  %214 = load i8, i8* %213, align 1
  %215 = zext i8 %214 to i32
  %216 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %215)
  br label %217

217:                                              ; preds = %209
  %218 = load i32, i32* %10, align 4
  %219 = add nsw i32 %218, 1
  store i32 %219, i32* %10, align 4
  br label %206

220:                                              ; preds = %206
  %221 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %222 = load i8*, i8** %7, align 8
  %223 = call i32 @sodium_free(i8* %222)
  %224 = load i8*, i8** %6, align 8
  %225 = call i32 @sodium_free(i8* %224)
  %226 = load i8*, i8** %5, align 8
  %227 = call i32 @sodium_free(i8* %226)
  %228 = load i8*, i8** %3, align 8
  %229 = call i32 @sodium_free(i8* %228)
  %230 = load i8*, i8** %4, align 8
  %231 = call i32 @sodium_free(i8* %230)
  %232 = load i8*, i8** %2, align 8
  %233 = call i32 @sodium_free(i8* %232)
  %234 = call i64 (...) @crypto_core_salsa20_outputbytes()
  %235 = load i64, i64* @crypto_core_salsa20_OUTPUTBYTES, align 8
  %236 = icmp eq i64 %234, %235
  %237 = zext i1 %236 to i32
  %238 = call i32 @assert(i32 %237)
  %239 = call i64 (...) @crypto_core_salsa20_inputbytes()
  %240 = load i64, i64* @crypto_core_salsa20_INPUTBYTES, align 8
  %241 = icmp eq i64 %239, %240
  %242 = zext i1 %241 to i32
  %243 = call i32 @assert(i32 %242)
  %244 = call i64 (...) @crypto_core_salsa20_keybytes()
  %245 = load i64, i64* @crypto_core_salsa20_KEYBYTES, align 8
  %246 = icmp eq i64 %244, %245
  %247 = zext i1 %246 to i32
  %248 = call i32 @assert(i32 %247)
  %249 = call i64 (...) @crypto_core_salsa20_constbytes()
  %250 = load i64, i64* @crypto_core_salsa20_CONSTBYTES, align 8
  %251 = icmp eq i64 %249, %250
  %252 = zext i1 %251 to i32
  %253 = call i32 @assert(i32 %252)
  ret i32 0
}

declare dso_local i64 @sodium_malloc(i32) #1

declare dso_local i32 @memcpy(i8*, i32, i32) #1

declare dso_local i32 @crypto_core_salsa20(i8*, i8*, i8*, i8*) #1

declare dso_local i32 @crypto_hash_sha256(i8*, i8*, i64) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @crypto_core_salsa2012(i8*, i8*, i8*, i8*) #1

declare dso_local i32 @crypto_core_salsa208(i8*, i8*, i8*, i8*) #1

declare dso_local i32 @sodium_free(i8*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @crypto_core_salsa20_outputbytes(...) #1

declare dso_local i64 @crypto_core_salsa20_inputbytes(...) #1

declare dso_local i64 @crypto_core_salsa20_keybytes(...) #1

declare dso_local i64 @crypto_core_salsa20_constbytes(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
