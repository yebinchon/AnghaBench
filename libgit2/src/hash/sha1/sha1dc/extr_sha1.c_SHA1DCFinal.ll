; ModuleID = '/home/carl/AnghaBench/libgit2/src/hash/sha1/sha1dc/extr_sha1.c_SHA1DCFinal.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/hash/sha1/sha1dc/extr_sha1.c_SHA1DCFinal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i8*, i32*, i32 }

@sha1_padding = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @SHA1DCFinal(i8* %0, %struct.TYPE_5__* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %4, align 8
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = and i32 %10, 63
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = icmp slt i32 %12, 56
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = load i32, i32* %5, align 4
  %16 = sub nsw i32 56, %15
  br label %20

17:                                               ; preds = %2
  %18 = load i32, i32* %5, align 4
  %19 = sub nsw i32 120, %18
  br label %20

20:                                               ; preds = %17, %14
  %21 = phi i32 [ %16, %14 ], [ %19, %17 ]
  store i32 %21, i32* %6, align 4
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %23 = load i64, i64* @sha1_padding, align 8
  %24 = inttoptr i64 %23 to i8*
  %25 = load i32, i32* %6, align 4
  %26 = call i32 @SHA1DCUpdate(%struct.TYPE_5__* %22, i8* %24, i32 %25)
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* %6, align 4
  %31 = sub nsw i32 %29, %30
  store i32 %31, i32* %7, align 4
  %32 = load i32, i32* %7, align 4
  %33 = shl i32 %32, 3
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* %7, align 4
  %35 = ashr i32 %34, 56
  %36 = trunc i32 %35 to i8
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 1
  %39 = load i8*, i8** %38, align 8
  %40 = getelementptr inbounds i8, i8* %39, i64 56
  store i8 %36, i8* %40, align 1
  %41 = load i32, i32* %7, align 4
  %42 = ashr i32 %41, 48
  %43 = trunc i32 %42 to i8
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 1
  %46 = load i8*, i8** %45, align 8
  %47 = getelementptr inbounds i8, i8* %46, i64 57
  store i8 %43, i8* %47, align 1
  %48 = load i32, i32* %7, align 4
  %49 = ashr i32 %48, 40
  %50 = trunc i32 %49 to i8
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 1
  %53 = load i8*, i8** %52, align 8
  %54 = getelementptr inbounds i8, i8* %53, i64 58
  store i8 %50, i8* %54, align 1
  %55 = load i32, i32* %7, align 4
  %56 = ashr i32 %55, 32
  %57 = trunc i32 %56 to i8
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 1
  %60 = load i8*, i8** %59, align 8
  %61 = getelementptr inbounds i8, i8* %60, i64 59
  store i8 %57, i8* %61, align 1
  %62 = load i32, i32* %7, align 4
  %63 = ashr i32 %62, 24
  %64 = trunc i32 %63 to i8
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 1
  %67 = load i8*, i8** %66, align 8
  %68 = getelementptr inbounds i8, i8* %67, i64 60
  store i8 %64, i8* %68, align 1
  %69 = load i32, i32* %7, align 4
  %70 = ashr i32 %69, 16
  %71 = trunc i32 %70 to i8
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 1
  %74 = load i8*, i8** %73, align 8
  %75 = getelementptr inbounds i8, i8* %74, i64 61
  store i8 %71, i8* %75, align 1
  %76 = load i32, i32* %7, align 4
  %77 = ashr i32 %76, 8
  %78 = trunc i32 %77 to i8
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 1
  %81 = load i8*, i8** %80, align 8
  %82 = getelementptr inbounds i8, i8* %81, i64 62
  store i8 %78, i8* %82, align 1
  %83 = load i32, i32* %7, align 4
  %84 = trunc i32 %83 to i8
  %85 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 1
  %87 = load i8*, i8** %86, align 8
  %88 = getelementptr inbounds i8, i8* %87, i64 63
  store i8 %84, i8* %88, align 1
  %89 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %90 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 1
  %92 = load i8*, i8** %91, align 8
  %93 = bitcast i8* %92 to i32*
  %94 = call i32 @sha1_process(%struct.TYPE_5__* %89, i32* %93)
  %95 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 2
  %97 = load i32*, i32** %96, align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 0
  %99 = load i32, i32* %98, align 4
  %100 = ashr i32 %99, 24
  %101 = trunc i32 %100 to i8
  %102 = load i8*, i8** %3, align 8
  %103 = getelementptr inbounds i8, i8* %102, i64 0
  store i8 %101, i8* %103, align 1
  %104 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 2
  %106 = load i32*, i32** %105, align 8
  %107 = getelementptr inbounds i32, i32* %106, i64 0
  %108 = load i32, i32* %107, align 4
  %109 = ashr i32 %108, 16
  %110 = trunc i32 %109 to i8
  %111 = load i8*, i8** %3, align 8
  %112 = getelementptr inbounds i8, i8* %111, i64 1
  store i8 %110, i8* %112, align 1
  %113 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %114 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %113, i32 0, i32 2
  %115 = load i32*, i32** %114, align 8
  %116 = getelementptr inbounds i32, i32* %115, i64 0
  %117 = load i32, i32* %116, align 4
  %118 = ashr i32 %117, 8
  %119 = trunc i32 %118 to i8
  %120 = load i8*, i8** %3, align 8
  %121 = getelementptr inbounds i8, i8* %120, i64 2
  store i8 %119, i8* %121, align 1
  %122 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %123 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %122, i32 0, i32 2
  %124 = load i32*, i32** %123, align 8
  %125 = getelementptr inbounds i32, i32* %124, i64 0
  %126 = load i32, i32* %125, align 4
  %127 = trunc i32 %126 to i8
  %128 = load i8*, i8** %3, align 8
  %129 = getelementptr inbounds i8, i8* %128, i64 3
  store i8 %127, i8* %129, align 1
  %130 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %131 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %130, i32 0, i32 2
  %132 = load i32*, i32** %131, align 8
  %133 = getelementptr inbounds i32, i32* %132, i64 1
  %134 = load i32, i32* %133, align 4
  %135 = ashr i32 %134, 24
  %136 = trunc i32 %135 to i8
  %137 = load i8*, i8** %3, align 8
  %138 = getelementptr inbounds i8, i8* %137, i64 4
  store i8 %136, i8* %138, align 1
  %139 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %140 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %139, i32 0, i32 2
  %141 = load i32*, i32** %140, align 8
  %142 = getelementptr inbounds i32, i32* %141, i64 1
  %143 = load i32, i32* %142, align 4
  %144 = ashr i32 %143, 16
  %145 = trunc i32 %144 to i8
  %146 = load i8*, i8** %3, align 8
  %147 = getelementptr inbounds i8, i8* %146, i64 5
  store i8 %145, i8* %147, align 1
  %148 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %149 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %148, i32 0, i32 2
  %150 = load i32*, i32** %149, align 8
  %151 = getelementptr inbounds i32, i32* %150, i64 1
  %152 = load i32, i32* %151, align 4
  %153 = ashr i32 %152, 8
  %154 = trunc i32 %153 to i8
  %155 = load i8*, i8** %3, align 8
  %156 = getelementptr inbounds i8, i8* %155, i64 6
  store i8 %154, i8* %156, align 1
  %157 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %158 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %157, i32 0, i32 2
  %159 = load i32*, i32** %158, align 8
  %160 = getelementptr inbounds i32, i32* %159, i64 1
  %161 = load i32, i32* %160, align 4
  %162 = trunc i32 %161 to i8
  %163 = load i8*, i8** %3, align 8
  %164 = getelementptr inbounds i8, i8* %163, i64 7
  store i8 %162, i8* %164, align 1
  %165 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %166 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %165, i32 0, i32 2
  %167 = load i32*, i32** %166, align 8
  %168 = getelementptr inbounds i32, i32* %167, i64 2
  %169 = load i32, i32* %168, align 4
  %170 = ashr i32 %169, 24
  %171 = trunc i32 %170 to i8
  %172 = load i8*, i8** %3, align 8
  %173 = getelementptr inbounds i8, i8* %172, i64 8
  store i8 %171, i8* %173, align 1
  %174 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %175 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %174, i32 0, i32 2
  %176 = load i32*, i32** %175, align 8
  %177 = getelementptr inbounds i32, i32* %176, i64 2
  %178 = load i32, i32* %177, align 4
  %179 = ashr i32 %178, 16
  %180 = trunc i32 %179 to i8
  %181 = load i8*, i8** %3, align 8
  %182 = getelementptr inbounds i8, i8* %181, i64 9
  store i8 %180, i8* %182, align 1
  %183 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %184 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %183, i32 0, i32 2
  %185 = load i32*, i32** %184, align 8
  %186 = getelementptr inbounds i32, i32* %185, i64 2
  %187 = load i32, i32* %186, align 4
  %188 = ashr i32 %187, 8
  %189 = trunc i32 %188 to i8
  %190 = load i8*, i8** %3, align 8
  %191 = getelementptr inbounds i8, i8* %190, i64 10
  store i8 %189, i8* %191, align 1
  %192 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %193 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %192, i32 0, i32 2
  %194 = load i32*, i32** %193, align 8
  %195 = getelementptr inbounds i32, i32* %194, i64 2
  %196 = load i32, i32* %195, align 4
  %197 = trunc i32 %196 to i8
  %198 = load i8*, i8** %3, align 8
  %199 = getelementptr inbounds i8, i8* %198, i64 11
  store i8 %197, i8* %199, align 1
  %200 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %201 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %200, i32 0, i32 2
  %202 = load i32*, i32** %201, align 8
  %203 = getelementptr inbounds i32, i32* %202, i64 3
  %204 = load i32, i32* %203, align 4
  %205 = ashr i32 %204, 24
  %206 = trunc i32 %205 to i8
  %207 = load i8*, i8** %3, align 8
  %208 = getelementptr inbounds i8, i8* %207, i64 12
  store i8 %206, i8* %208, align 1
  %209 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %210 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %209, i32 0, i32 2
  %211 = load i32*, i32** %210, align 8
  %212 = getelementptr inbounds i32, i32* %211, i64 3
  %213 = load i32, i32* %212, align 4
  %214 = ashr i32 %213, 16
  %215 = trunc i32 %214 to i8
  %216 = load i8*, i8** %3, align 8
  %217 = getelementptr inbounds i8, i8* %216, i64 13
  store i8 %215, i8* %217, align 1
  %218 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %219 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %218, i32 0, i32 2
  %220 = load i32*, i32** %219, align 8
  %221 = getelementptr inbounds i32, i32* %220, i64 3
  %222 = load i32, i32* %221, align 4
  %223 = ashr i32 %222, 8
  %224 = trunc i32 %223 to i8
  %225 = load i8*, i8** %3, align 8
  %226 = getelementptr inbounds i8, i8* %225, i64 14
  store i8 %224, i8* %226, align 1
  %227 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %228 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %227, i32 0, i32 2
  %229 = load i32*, i32** %228, align 8
  %230 = getelementptr inbounds i32, i32* %229, i64 3
  %231 = load i32, i32* %230, align 4
  %232 = trunc i32 %231 to i8
  %233 = load i8*, i8** %3, align 8
  %234 = getelementptr inbounds i8, i8* %233, i64 15
  store i8 %232, i8* %234, align 1
  %235 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %236 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %235, i32 0, i32 2
  %237 = load i32*, i32** %236, align 8
  %238 = getelementptr inbounds i32, i32* %237, i64 4
  %239 = load i32, i32* %238, align 4
  %240 = ashr i32 %239, 24
  %241 = trunc i32 %240 to i8
  %242 = load i8*, i8** %3, align 8
  %243 = getelementptr inbounds i8, i8* %242, i64 16
  store i8 %241, i8* %243, align 1
  %244 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %245 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %244, i32 0, i32 2
  %246 = load i32*, i32** %245, align 8
  %247 = getelementptr inbounds i32, i32* %246, i64 4
  %248 = load i32, i32* %247, align 4
  %249 = ashr i32 %248, 16
  %250 = trunc i32 %249 to i8
  %251 = load i8*, i8** %3, align 8
  %252 = getelementptr inbounds i8, i8* %251, i64 17
  store i8 %250, i8* %252, align 1
  %253 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %254 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %253, i32 0, i32 2
  %255 = load i32*, i32** %254, align 8
  %256 = getelementptr inbounds i32, i32* %255, i64 4
  %257 = load i32, i32* %256, align 4
  %258 = ashr i32 %257, 8
  %259 = trunc i32 %258 to i8
  %260 = load i8*, i8** %3, align 8
  %261 = getelementptr inbounds i8, i8* %260, i64 18
  store i8 %259, i8* %261, align 1
  %262 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %263 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %262, i32 0, i32 2
  %264 = load i32*, i32** %263, align 8
  %265 = getelementptr inbounds i32, i32* %264, i64 4
  %266 = load i32, i32* %265, align 4
  %267 = trunc i32 %266 to i8
  %268 = load i8*, i8** %3, align 8
  %269 = getelementptr inbounds i8, i8* %268, i64 19
  store i8 %267, i8* %269, align 1
  %270 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %271 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %270, i32 0, i32 3
  %272 = load i32, i32* %271, align 8
  ret i32 %272
}

declare dso_local i32 @SHA1DCUpdate(%struct.TYPE_5__*, i8*, i32) #1

declare dso_local i32 @sha1_process(%struct.TYPE_5__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
