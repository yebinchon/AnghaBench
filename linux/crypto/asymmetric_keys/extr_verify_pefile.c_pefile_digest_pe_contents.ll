; ModuleID = '/home/carl/AnghaBench/linux/crypto/asymmetric_keys/extr_verify_pefile.c_pefile_digest_pe_contents.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/asymmetric_keys/extr_verify_pefile.c_pefile_digest_pe_contents.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pefile_context = type { i32, i32, i32, i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64, i32 }
%struct.shash_desc = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, %struct.pefile_context*, %struct.shash_desc*)* @pefile_digest_pe_contents to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pefile_digest_pe_contents(i8* %0, i32 %1, %struct.pefile_context* %2, %struct.shash_desc* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.pefile_context*, align 8
  %9 = alloca %struct.shash_desc*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.pefile_context* %2, %struct.pefile_context** %8, align 8
  store %struct.shash_desc* %3, %struct.shash_desc** %9, align 8
  %16 = load %struct.shash_desc*, %struct.shash_desc** %9, align 8
  %17 = load i8*, i8** %6, align 8
  %18 = load %struct.pefile_context*, %struct.pefile_context** %8, align 8
  %19 = getelementptr inbounds %struct.pefile_context, %struct.pefile_context* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @crypto_shash_update(%struct.shash_desc* %16, i8* %17, i32 %20)
  store i32 %21, i32* %15, align 4
  %22 = load i32, i32* %15, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %4
  %25 = load i32, i32* %15, align 4
  store i32 %25, i32* %5, align 4
  br label %242

26:                                               ; preds = %4
  %27 = load %struct.pefile_context*, %struct.pefile_context** %8, align 8
  %28 = getelementptr inbounds %struct.pefile_context, %struct.pefile_context* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = zext i32 %29 to i64
  %31 = add i64 %30, 4
  %32 = trunc i64 %31 to i32
  store i32 %32, i32* %11, align 4
  %33 = load %struct.shash_desc*, %struct.shash_desc** %9, align 8
  %34 = load i8*, i8** %6, align 8
  %35 = load i32, i32* %11, align 4
  %36 = zext i32 %35 to i64
  %37 = getelementptr i8, i8* %34, i64 %36
  %38 = load %struct.pefile_context*, %struct.pefile_context** %8, align 8
  %39 = getelementptr inbounds %struct.pefile_context, %struct.pefile_context* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %11, align 4
  %42 = sub i32 %40, %41
  %43 = call i32 @crypto_shash_update(%struct.shash_desc* %33, i8* %37, i32 %42)
  store i32 %43, i32* %15, align 4
  %44 = load i32, i32* %15, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %26
  %47 = load i32, i32* %15, align 4
  store i32 %47, i32* %5, align 4
  br label %242

48:                                               ; preds = %26
  %49 = load %struct.pefile_context*, %struct.pefile_context** %8, align 8
  %50 = getelementptr inbounds %struct.pefile_context, %struct.pefile_context* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = zext i32 %51 to i64
  %53 = add i64 %52, 4
  %54 = trunc i64 %53 to i32
  store i32 %54, i32* %11, align 4
  %55 = load %struct.shash_desc*, %struct.shash_desc** %9, align 8
  %56 = load i8*, i8** %6, align 8
  %57 = load i32, i32* %11, align 4
  %58 = zext i32 %57 to i64
  %59 = getelementptr i8, i8* %56, i64 %58
  %60 = load %struct.pefile_context*, %struct.pefile_context** %8, align 8
  %61 = getelementptr inbounds %struct.pefile_context, %struct.pefile_context* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* %11, align 4
  %64 = sub i32 %62, %63
  %65 = call i32 @crypto_shash_update(%struct.shash_desc* %55, i8* %59, i32 %64)
  store i32 %65, i32* %15, align 4
  %66 = load i32, i32* %15, align 4
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %48
  %69 = load i32, i32* %15, align 4
  store i32 %69, i32* %5, align 4
  br label %242

70:                                               ; preds = %48
  %71 = load %struct.pefile_context*, %struct.pefile_context** %8, align 8
  %72 = getelementptr inbounds %struct.pefile_context, %struct.pefile_context* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @GFP_KERNEL, align 4
  %75 = call i32* @kcalloc(i32 %73, i32 4, i32 %74)
  store i32* %75, i32** %10, align 8
  %76 = load i32*, i32** %10, align 8
  %77 = icmp ne i32* %76, null
  br i1 %77, label %81, label %78

78:                                               ; preds = %70
  %79 = load i32, i32* @ENOMEM, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %5, align 4
  br label %242

81:                                               ; preds = %70
  %82 = load i32*, i32** %10, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 0
  store i32 0, i32* %83, align 4
  store i32 1, i32* %12, align 4
  br label %84

84:                                               ; preds = %141, %81
  %85 = load i32, i32* %12, align 4
  %86 = load %struct.pefile_context*, %struct.pefile_context** %8, align 8
  %87 = getelementptr inbounds %struct.pefile_context, %struct.pefile_context* %86, i32 0, i32 3
  %88 = load i32, i32* %87, align 4
  %89 = icmp ult i32 %85, %88
  br i1 %89, label %90, label %144

90:                                               ; preds = %84
  store i32 0, i32* %13, align 4
  br label %91

91:                                               ; preds = %132, %90
  %92 = load i32, i32* %13, align 4
  %93 = load i32, i32* %12, align 4
  %94 = icmp ult i32 %92, %93
  br i1 %94, label %95, label %135

95:                                               ; preds = %91
  %96 = load %struct.pefile_context*, %struct.pefile_context** %8, align 8
  %97 = getelementptr inbounds %struct.pefile_context, %struct.pefile_context* %96, i32 0, i32 5
  %98 = load %struct.TYPE_3__*, %struct.TYPE_3__** %97, align 8
  %99 = load i32*, i32** %10, align 8
  %100 = load i32, i32* %13, align 4
  %101 = zext i32 %100 to i64
  %102 = getelementptr inbounds i32, i32* %99, i64 %101
  %103 = load i32, i32* %102, align 4
  %104 = zext i32 %103 to i64
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i64 %104
  %106 = load %struct.pefile_context*, %struct.pefile_context** %8, align 8
  %107 = getelementptr inbounds %struct.pefile_context, %struct.pefile_context* %106, i32 0, i32 5
  %108 = load %struct.TYPE_3__*, %struct.TYPE_3__** %107, align 8
  %109 = load i32, i32* %12, align 4
  %110 = zext i32 %109 to i64
  %111 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %108, i64 %110
  %112 = call i64 @pefile_compare_shdrs(%struct.TYPE_3__* %105, %struct.TYPE_3__* %111)
  %113 = icmp sgt i64 %112, 0
  br i1 %113, label %114, label %131

114:                                              ; preds = %95
  %115 = load i32*, i32** %10, align 8
  %116 = load i32, i32* %13, align 4
  %117 = add i32 %116, 1
  %118 = zext i32 %117 to i64
  %119 = getelementptr inbounds i32, i32* %115, i64 %118
  %120 = load i32*, i32** %10, align 8
  %121 = load i32, i32* %13, align 4
  %122 = zext i32 %121 to i64
  %123 = getelementptr inbounds i32, i32* %120, i64 %122
  %124 = load i32, i32* %12, align 4
  %125 = load i32, i32* %13, align 4
  %126 = sub i32 %124, %125
  %127 = zext i32 %126 to i64
  %128 = mul i64 %127, 4
  %129 = trunc i64 %128 to i32
  %130 = call i32 @memmove(i32* %119, i32* %123, i32 %129)
  br label %135

131:                                              ; preds = %95
  br label %132

132:                                              ; preds = %131
  %133 = load i32, i32* %13, align 4
  %134 = add i32 %133, 1
  store i32 %134, i32* %13, align 4
  br label %91

135:                                              ; preds = %114, %91
  %136 = load i32, i32* %12, align 4
  %137 = load i32*, i32** %10, align 8
  %138 = load i32, i32* %13, align 4
  %139 = zext i32 %138 to i64
  %140 = getelementptr inbounds i32, i32* %137, i64 %139
  store i32 %136, i32* %140, align 4
  br label %141

141:                                              ; preds = %135
  %142 = load i32, i32* %12, align 4
  %143 = add i32 %142, 1
  store i32 %143, i32* %12, align 4
  br label %84

144:                                              ; preds = %84
  %145 = load %struct.pefile_context*, %struct.pefile_context** %8, align 8
  %146 = getelementptr inbounds %struct.pefile_context, %struct.pefile_context* %145, i32 0, i32 2
  %147 = load i32, i32* %146, align 8
  store i32 %147, i32* %14, align 4
  store i32 0, i32* %12, align 4
  br label %148

148:                                              ; preds = %212, %144
  %149 = load i32, i32* %12, align 4
  %150 = load %struct.pefile_context*, %struct.pefile_context** %8, align 8
  %151 = getelementptr inbounds %struct.pefile_context, %struct.pefile_context* %150, i32 0, i32 3
  %152 = load i32, i32* %151, align 4
  %153 = icmp ult i32 %149, %152
  br i1 %153, label %154, label %215

154:                                              ; preds = %148
  %155 = load i32*, i32** %10, align 8
  %156 = load i32, i32* %12, align 4
  %157 = zext i32 %156 to i64
  %158 = getelementptr inbounds i32, i32* %155, i64 %157
  %159 = load i32, i32* %158, align 4
  store i32 %159, i32* %13, align 4
  %160 = load %struct.pefile_context*, %struct.pefile_context** %8, align 8
  %161 = getelementptr inbounds %struct.pefile_context, %struct.pefile_context* %160, i32 0, i32 5
  %162 = load %struct.TYPE_3__*, %struct.TYPE_3__** %161, align 8
  %163 = load i32, i32* %13, align 4
  %164 = zext i32 %163 to i64
  %165 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %162, i64 %164
  %166 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %165, i32 0, i32 0
  %167 = load i64, i64* %166, align 8
  %168 = icmp eq i64 %167, 0
  br i1 %168, label %169, label %170

169:                                              ; preds = %154
  br label %212

170:                                              ; preds = %154
  %171 = load %struct.shash_desc*, %struct.shash_desc** %9, align 8
  %172 = load i8*, i8** %6, align 8
  %173 = load %struct.pefile_context*, %struct.pefile_context** %8, align 8
  %174 = getelementptr inbounds %struct.pefile_context, %struct.pefile_context* %173, i32 0, i32 5
  %175 = load %struct.TYPE_3__*, %struct.TYPE_3__** %174, align 8
  %176 = load i32, i32* %13, align 4
  %177 = zext i32 %176 to i64
  %178 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %175, i64 %177
  %179 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %178, i32 0, i32 1
  %180 = load i32, i32* %179, align 8
  %181 = sext i32 %180 to i64
  %182 = getelementptr i8, i8* %172, i64 %181
  %183 = load %struct.pefile_context*, %struct.pefile_context** %8, align 8
  %184 = getelementptr inbounds %struct.pefile_context, %struct.pefile_context* %183, i32 0, i32 5
  %185 = load %struct.TYPE_3__*, %struct.TYPE_3__** %184, align 8
  %186 = load i32, i32* %13, align 4
  %187 = zext i32 %186 to i64
  %188 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %185, i64 %187
  %189 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %188, i32 0, i32 0
  %190 = load i64, i64* %189, align 8
  %191 = trunc i64 %190 to i32
  %192 = call i32 @crypto_shash_update(%struct.shash_desc* %171, i8* %182, i32 %191)
  store i32 %192, i32* %15, align 4
  %193 = load i32, i32* %15, align 4
  %194 = icmp slt i32 %193, 0
  br i1 %194, label %195, label %199

195:                                              ; preds = %170
  %196 = load i32*, i32** %10, align 8
  %197 = call i32 @kfree(i32* %196)
  %198 = load i32, i32* %15, align 4
  store i32 %198, i32* %5, align 4
  br label %242

199:                                              ; preds = %170
  %200 = load %struct.pefile_context*, %struct.pefile_context** %8, align 8
  %201 = getelementptr inbounds %struct.pefile_context, %struct.pefile_context* %200, i32 0, i32 5
  %202 = load %struct.TYPE_3__*, %struct.TYPE_3__** %201, align 8
  %203 = load i32, i32* %13, align 4
  %204 = zext i32 %203 to i64
  %205 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %202, i64 %204
  %206 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %205, i32 0, i32 0
  %207 = load i64, i64* %206, align 8
  %208 = load i32, i32* %14, align 4
  %209 = zext i32 %208 to i64
  %210 = add nsw i64 %209, %207
  %211 = trunc i64 %210 to i32
  store i32 %211, i32* %14, align 4
  br label %212

212:                                              ; preds = %199, %169
  %213 = load i32, i32* %12, align 4
  %214 = add i32 %213, 1
  store i32 %214, i32* %12, align 4
  br label %148

215:                                              ; preds = %148
  %216 = load i32*, i32** %10, align 8
  %217 = call i32 @kfree(i32* %216)
  %218 = load i32, i32* %7, align 4
  %219 = load i32, i32* %14, align 4
  %220 = icmp ugt i32 %218, %219
  br i1 %220, label %221, label %241

221:                                              ; preds = %215
  %222 = load i32, i32* %14, align 4
  %223 = load %struct.pefile_context*, %struct.pefile_context** %8, align 8
  %224 = getelementptr inbounds %struct.pefile_context, %struct.pefile_context* %223, i32 0, i32 4
  %225 = load i32, i32* %224, align 8
  %226 = add i32 %222, %225
  store i32 %226, i32* %11, align 4
  %227 = load %struct.shash_desc*, %struct.shash_desc** %9, align 8
  %228 = load i8*, i8** %6, align 8
  %229 = load i32, i32* %14, align 4
  %230 = zext i32 %229 to i64
  %231 = getelementptr i8, i8* %228, i64 %230
  %232 = load i32, i32* %7, align 4
  %233 = load i32, i32* %11, align 4
  %234 = sub i32 %232, %233
  %235 = call i32 @crypto_shash_update(%struct.shash_desc* %227, i8* %231, i32 %234)
  store i32 %235, i32* %15, align 4
  %236 = load i32, i32* %15, align 4
  %237 = icmp slt i32 %236, 0
  br i1 %237, label %238, label %240

238:                                              ; preds = %221
  %239 = load i32, i32* %15, align 4
  store i32 %239, i32* %5, align 4
  br label %242

240:                                              ; preds = %221
  br label %241

241:                                              ; preds = %240, %215
  store i32 0, i32* %5, align 4
  br label %242

242:                                              ; preds = %241, %238, %195, %78, %68, %46, %24
  %243 = load i32, i32* %5, align 4
  ret i32 %243
}

declare dso_local i32 @crypto_shash_update(%struct.shash_desc*, i8*, i32) #1

declare dso_local i32* @kcalloc(i32, i32, i32) #1

declare dso_local i64 @pefile_compare_shdrs(%struct.TYPE_3__*, %struct.TYPE_3__*) #1

declare dso_local i32 @memmove(i32*, i32*, i32) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
