; ModuleID = '/home/carl/AnghaBench/kphp-kdb/mc-proxy/extr_mc-proxy-random-extension.c_random_merge_end_query.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/mc-proxy/extr_mc-proxy-random-extension.c_random_merge_end_query.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connection = type { i32 }
%struct.gather_entry = type { i32, i32* }
%struct.random_gather_extra = type { i32, i32, i64 }

@R = common dso_local global i8* null, align 8
@A = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [25 x i8] c"EVP_EncryptUpdate fail.\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"EVP_EncryptFinal_ex fail.\0A\00", align 1
@random_merge_end_query.hcyf = internal constant [16 x i8] c"0123456789abcdef", align 16

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @random_merge_end_query(%struct.connection* %0, i8* %1, i32 %2, i8* %3, %struct.gather_entry* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.connection*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca %struct.gather_entry*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.random_gather_extra*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store %struct.connection* %0, %struct.connection** %8, align 8
  store i8* %1, i8** %9, align 8
  store i32 %2, i32* %10, align 4
  store i8* %3, i8** %11, align 8
  store %struct.gather_entry* %4, %struct.gather_entry** %12, align 8
  store i32 %5, i32* %13, align 4
  %25 = load i8*, i8** %11, align 8
  %26 = bitcast i8* %25 to %struct.random_gather_extra*
  store %struct.random_gather_extra* %26, %struct.random_gather_extra** %14, align 8
  store i32 0, i32* %17, align 4
  store i32 1, i32* %15, align 4
  br label %27

27:                                               ; preds = %48, %6
  %28 = load i32, i32* %15, align 4
  %29 = load i32, i32* %13, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %51

31:                                               ; preds = %27
  %32 = load %struct.gather_entry*, %struct.gather_entry** %12, align 8
  %33 = load i32, i32* %17, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.gather_entry, %struct.gather_entry* %32, i64 %34
  %36 = getelementptr inbounds %struct.gather_entry, %struct.gather_entry* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.gather_entry*, %struct.gather_entry** %12, align 8
  %39 = load i32, i32* %15, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.gather_entry, %struct.gather_entry* %38, i64 %40
  %42 = getelementptr inbounds %struct.gather_entry, %struct.gather_entry* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = icmp slt i32 %37, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %31
  %46 = load i32, i32* %15, align 4
  store i32 %46, i32* %17, align 4
  br label %47

47:                                               ; preds = %45, %31
  br label %48

48:                                               ; preds = %47
  %49 = load i32, i32* %15, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %15, align 4
  br label %27

51:                                               ; preds = %27
  %52 = load %struct.gather_entry*, %struct.gather_entry** %12, align 8
  %53 = load i32, i32* %17, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.gather_entry, %struct.gather_entry* %52, i64 %54
  %56 = getelementptr inbounds %struct.gather_entry, %struct.gather_entry* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  store i32 %57, i32* %18, align 4
  %58 = load i32, i32* %18, align 4
  %59 = icmp sle i32 %58, 64
  br i1 %59, label %60, label %61

60:                                               ; preds = %51
  store i32 0, i32* %7, align 4
  br label %250

61:                                               ; preds = %51
  %62 = load i8*, i8** @R, align 8
  %63 = load i32, i32* %18, align 4
  %64 = add nsw i32 %63, 3
  %65 = and i32 %64, -4
  %66 = call i32 @memset(i8* %62, i32 0, i32 %65)
  store i32 0, i32* %15, align 4
  br label %67

67:                                               ; preds = %101, %61
  %68 = load i32, i32* %15, align 4
  %69 = load i32, i32* %13, align 4
  %70 = icmp slt i32 %68, %69
  br i1 %70, label %71, label %104

71:                                               ; preds = %67
  %72 = load %struct.gather_entry*, %struct.gather_entry** %12, align 8
  %73 = load i32, i32* %15, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.gather_entry, %struct.gather_entry* %72, i64 %74
  %76 = getelementptr inbounds %struct.gather_entry, %struct.gather_entry* %75, i32 0, i32 1
  %77 = load i32*, i32** %76, align 8
  store i32* %77, i32** %19, align 8
  %78 = load i8*, i8** @R, align 8
  %79 = bitcast i8* %78 to i32*
  store i32* %79, i32** %20, align 8
  store i32 0, i32* %16, align 4
  br label %80

80:                                               ; preds = %97, %71
  %81 = load i32, i32* %16, align 4
  %82 = load %struct.gather_entry*, %struct.gather_entry** %12, align 8
  %83 = load i32, i32* %15, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.gather_entry, %struct.gather_entry* %82, i64 %84
  %86 = getelementptr inbounds %struct.gather_entry, %struct.gather_entry* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = icmp slt i32 %81, %87
  br i1 %88, label %89, label %100

89:                                               ; preds = %80
  %90 = load i32*, i32** %19, align 8
  %91 = getelementptr inbounds i32, i32* %90, i32 1
  store i32* %91, i32** %19, align 8
  %92 = load i32, i32* %90, align 4
  %93 = load i32*, i32** %20, align 8
  %94 = getelementptr inbounds i32, i32* %93, i32 1
  store i32* %94, i32** %20, align 8
  %95 = load i32, i32* %93, align 4
  %96 = xor i32 %95, %92
  store i32 %96, i32* %93, align 4
  br label %97

97:                                               ; preds = %89
  %98 = load i32, i32* %16, align 4
  %99 = add nsw i32 %98, 4
  store i32 %99, i32* %16, align 4
  br label %80

100:                                              ; preds = %80
  br label %101

101:                                              ; preds = %100
  %102 = load i32, i32* %15, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %15, align 4
  br label %67

104:                                              ; preds = %67
  %105 = call i32 @EVP_CIPHER_CTX_init(i32* %21)
  %106 = call i32 (...) @EVP_aes_256_cbc()
  %107 = load i8*, i8** @R, align 8
  %108 = load i8*, i8** @R, align 8
  %109 = getelementptr inbounds i8, i8* %108, i64 32
  %110 = call i32 @EVP_EncryptInit_ex(i32* %21, i32 %106, i32* null, i8* %107, i8* %109)
  %111 = load i32*, i32** @A, align 8
  %112 = load i8*, i8** @R, align 8
  %113 = getelementptr inbounds i8, i8* %112, i64 64
  %114 = load i32, i32* %18, align 4
  %115 = sub nsw i32 %114, 64
  %116 = call i32 @EVP_EncryptUpdate(i32* %21, i32* %111, i32* %22, i8* %113, i32 %115)
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %121, label %118

118:                                              ; preds = %104
  %119 = call i32 @vkprintf(i32 1, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %120 = call i32 @EVP_CIPHER_CTX_cleanup(i32* %21)
  store i32 0, i32* %7, align 4
  br label %250

121:                                              ; preds = %104
  %122 = load i32*, i32** @A, align 8
  %123 = load i32, i32* %22, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i32, i32* %122, i64 %124
  %126 = call i32 @EVP_EncryptFinal_ex(i32* %21, i32* %125, i32* %23)
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %131, label %128

128:                                              ; preds = %121
  %129 = call i32 @vkprintf(i32 1, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %130 = call i32 @EVP_CIPHER_CTX_cleanup(i32* %21)
  store i32 0, i32* %7, align 4
  br label %250

131:                                              ; preds = %121
  %132 = call i32 @EVP_CIPHER_CTX_cleanup(i32* %21)
  %133 = load i32, i32* %22, align 4
  %134 = load i32, i32* %23, align 4
  %135 = add nsw i32 %134, %133
  store i32 %135, i32* %23, align 4
  %136 = load i32, i32* %23, align 4
  %137 = load %struct.gather_entry*, %struct.gather_entry** %12, align 8
  %138 = getelementptr inbounds %struct.gather_entry, %struct.gather_entry* %137, i64 0
  %139 = getelementptr inbounds %struct.gather_entry, %struct.gather_entry* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = icmp slt i32 %136, %140
  br i1 %141, label %142, label %144

142:                                              ; preds = %131
  %143 = load i32, i32* %23, align 4
  br label %149

144:                                              ; preds = %131
  %145 = load %struct.gather_entry*, %struct.gather_entry** %12, align 8
  %146 = getelementptr inbounds %struct.gather_entry, %struct.gather_entry* %145, i64 0
  %147 = getelementptr inbounds %struct.gather_entry, %struct.gather_entry* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  br label %149

149:                                              ; preds = %144, %142
  %150 = phi i32 [ %143, %142 ], [ %148, %144 ]
  store i32 %150, i32* %24, align 4
  %151 = load i32, i32* %24, align 4
  %152 = load %struct.random_gather_extra*, %struct.random_gather_extra** %14, align 8
  %153 = getelementptr inbounds %struct.random_gather_extra, %struct.random_gather_extra* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = icmp sgt i32 %151, %154
  br i1 %155, label %156, label %160

156:                                              ; preds = %149
  %157 = load %struct.random_gather_extra*, %struct.random_gather_extra** %14, align 8
  %158 = getelementptr inbounds %struct.random_gather_extra, %struct.random_gather_extra* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  store i32 %159, i32* %24, align 4
  br label %160

160:                                              ; preds = %156, %149
  %161 = load i32*, i32** @A, align 8
  store i32* %161, i32** %20, align 8
  %162 = load %struct.gather_entry*, %struct.gather_entry** %12, align 8
  %163 = getelementptr inbounds %struct.gather_entry, %struct.gather_entry* %162, i64 0
  %164 = getelementptr inbounds %struct.gather_entry, %struct.gather_entry* %163, i32 0, i32 1
  %165 = load i32*, i32** %164, align 8
  store i32* %165, i32** %19, align 8
  store i32 0, i32* %15, align 4
  br label %166

166:                                              ; preds = %178, %160
  %167 = load i32, i32* %15, align 4
  %168 = load i32, i32* %24, align 4
  %169 = icmp slt i32 %167, %168
  br i1 %169, label %170, label %181

170:                                              ; preds = %166
  %171 = load i32*, i32** %19, align 8
  %172 = getelementptr inbounds i32, i32* %171, i32 1
  store i32* %172, i32** %19, align 8
  %173 = load i32, i32* %171, align 4
  %174 = load i32*, i32** %20, align 8
  %175 = getelementptr inbounds i32, i32* %174, i32 1
  store i32* %175, i32** %20, align 8
  %176 = load i32, i32* %174, align 4
  %177 = xor i32 %176, %173
  store i32 %177, i32* %174, align 4
  br label %178

178:                                              ; preds = %170
  %179 = load i32, i32* %15, align 4
  %180 = add nsw i32 %179, 4
  store i32 %180, i32* %15, align 4
  br label %166

181:                                              ; preds = %166
  %182 = load %struct.random_gather_extra*, %struct.random_gather_extra** %14, align 8
  %183 = getelementptr inbounds %struct.random_gather_extra, %struct.random_gather_extra* %182, i32 0, i32 2
  %184 = load i64, i64* %183, align 8
  %185 = icmp ne i64 %184, 0
  br i1 %185, label %186, label %243

186:                                              ; preds = %181
  store i32 0, i32* %15, align 4
  br label %187

187:                                              ; preds = %222, %186
  %188 = load i32, i32* %15, align 4
  %189 = load i32, i32* %24, align 4
  %190 = icmp slt i32 %188, %189
  br i1 %190, label %191, label %225

191:                                              ; preds = %187
  %192 = load i32*, i32** @A, align 8
  %193 = load i32, i32* %15, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds i32, i32* %192, i64 %194
  %196 = load i32, i32* %195, align 4
  %197 = ashr i32 %196, 4
  %198 = and i32 %197, 15
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds [16 x i8], [16 x i8]* @random_merge_end_query.hcyf, i64 0, i64 %199
  %201 = load i8, i8* %200, align 1
  %202 = load i8*, i8** @R, align 8
  %203 = load i32, i32* %15, align 4
  %204 = mul nsw i32 2, %203
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds i8, i8* %202, i64 %205
  store i8 %201, i8* %206, align 1
  %207 = load i32*, i32** @A, align 8
  %208 = load i32, i32* %15, align 4
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds i32, i32* %207, i64 %209
  %211 = load i32, i32* %210, align 4
  %212 = and i32 %211, 15
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds [16 x i8], [16 x i8]* @random_merge_end_query.hcyf, i64 0, i64 %213
  %215 = load i8, i8* %214, align 1
  %216 = load i8*, i8** @R, align 8
  %217 = load i32, i32* %15, align 4
  %218 = mul nsw i32 2, %217
  %219 = add nsw i32 %218, 1
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds i8, i8* %216, i64 %220
  store i8 %215, i8* %221, align 1
  br label %222

222:                                              ; preds = %191
  %223 = load i32, i32* %15, align 4
  %224 = add nsw i32 %223, 1
  store i32 %224, i32* %15, align 4
  br label %187

225:                                              ; preds = %187
  %226 = load i32, i32* %24, align 4
  %227 = mul nsw i32 %226, 2
  store i32 %227, i32* %24, align 4
  %228 = load i32, i32* %24, align 4
  %229 = load %struct.random_gather_extra*, %struct.random_gather_extra** %14, align 8
  %230 = getelementptr inbounds %struct.random_gather_extra, %struct.random_gather_extra* %229, i32 0, i32 1
  %231 = load i32, i32* %230, align 4
  %232 = icmp sgt i32 %228, %231
  br i1 %232, label %233, label %237

233:                                              ; preds = %225
  %234 = load %struct.random_gather_extra*, %struct.random_gather_extra** %14, align 8
  %235 = getelementptr inbounds %struct.random_gather_extra, %struct.random_gather_extra* %234, i32 0, i32 1
  %236 = load i32, i32* %235, align 4
  store i32 %236, i32* %24, align 4
  br label %237

237:                                              ; preds = %233, %225
  %238 = load %struct.connection*, %struct.connection** %8, align 8
  %239 = load i8*, i8** %9, align 8
  %240 = load i8*, i8** @R, align 8
  %241 = load i32, i32* %24, align 4
  %242 = call i32 @return_one_key(%struct.connection* %238, i8* %239, i8* %240, i32 %241)
  store i32 %242, i32* %7, align 4
  br label %250

243:                                              ; preds = %181
  %244 = load %struct.connection*, %struct.connection** %8, align 8
  %245 = load i8*, i8** %9, align 8
  %246 = load i32*, i32** @A, align 8
  %247 = bitcast i32* %246 to i8*
  %248 = load i32, i32* %24, align 4
  %249 = call i32 @return_one_key(%struct.connection* %244, i8* %245, i8* %247, i32 %248)
  store i32 %249, i32* %7, align 4
  br label %250

250:                                              ; preds = %243, %237, %128, %118, %60
  %251 = load i32, i32* %7, align 4
  ret i32 %251
}

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @EVP_CIPHER_CTX_init(i32*) #1

declare dso_local i32 @EVP_EncryptInit_ex(i32*, i32, i32*, i8*, i8*) #1

declare dso_local i32 @EVP_aes_256_cbc(...) #1

declare dso_local i32 @EVP_EncryptUpdate(i32*, i32*, i32*, i8*, i32) #1

declare dso_local i32 @vkprintf(i32, i8*) #1

declare dso_local i32 @EVP_CIPHER_CTX_cleanup(i32*) #1

declare dso_local i32 @EVP_EncryptFinal_ex(i32*, i32*, i32*) #1

declare dso_local i32 @return_one_key(%struct.connection*, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
