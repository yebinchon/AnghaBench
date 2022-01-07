; ModuleID = '/home/carl/AnghaBench/lab/engine/code/cgame/extr_cg_effects.c_CG_GibPlayer.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/cgame/extr_cg_effects.c_CG_GibPlayer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_7__ = type { i32 }

@cg_blood = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@GIB_VELOCITY = common dso_local global i32 0, align 4
@GIB_JUMP = common dso_local global i32 0, align 4
@cgs = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@cg_gibs = common dso_local global %struct.TYPE_7__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CG_GibPlayer(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %5 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @cg_blood, i32 0, i32 0), align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  br label %263

8:                                                ; preds = %1
  %9 = load i32*, i32** %2, align 8
  %10 = load i32*, i32** %3, align 8
  %11 = call i32 @VectorCopy(i32* %9, i32* %10)
  %12 = call i32 (...) @crandom()
  %13 = load i32, i32* @GIB_VELOCITY, align 4
  %14 = mul nsw i32 %12, %13
  %15 = load i32*, i32** %4, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 0
  store i32 %14, i32* %16, align 4
  %17 = call i32 (...) @crandom()
  %18 = load i32, i32* @GIB_VELOCITY, align 4
  %19 = mul nsw i32 %17, %18
  %20 = load i32*, i32** %4, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 1
  store i32 %19, i32* %21, align 4
  %22 = load i32, i32* @GIB_JUMP, align 4
  %23 = call i32 (...) @crandom()
  %24 = load i32, i32* @GIB_VELOCITY, align 4
  %25 = mul nsw i32 %23, %24
  %26 = add nsw i32 %22, %25
  %27 = load i32*, i32** %4, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 2
  store i32 %26, i32* %28, align 4
  %29 = call i32 (...) @rand()
  %30 = and i32 %29, 1
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %8
  %33 = load i32*, i32** %3, align 8
  %34 = load i32*, i32** %4, align 8
  %35 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cgs, i32 0, i32 0, i32 9), align 4
  %36 = call i32 @CG_LaunchGib(i32* %33, i32* %34, i32 %35)
  br label %42

37:                                               ; preds = %8
  %38 = load i32*, i32** %3, align 8
  %39 = load i32*, i32** %4, align 8
  %40 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cgs, i32 0, i32 0, i32 8), align 4
  %41 = call i32 @CG_LaunchGib(i32* %38, i32* %39, i32 %40)
  br label %42

42:                                               ; preds = %37, %32
  %43 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @cg_gibs, i32 0, i32 0), align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %42
  br label %263

46:                                               ; preds = %42
  %47 = load i32*, i32** %2, align 8
  %48 = load i32*, i32** %3, align 8
  %49 = call i32 @VectorCopy(i32* %47, i32* %48)
  %50 = call i32 (...) @crandom()
  %51 = load i32, i32* @GIB_VELOCITY, align 4
  %52 = mul nsw i32 %50, %51
  %53 = load i32*, i32** %4, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 0
  store i32 %52, i32* %54, align 4
  %55 = call i32 (...) @crandom()
  %56 = load i32, i32* @GIB_VELOCITY, align 4
  %57 = mul nsw i32 %55, %56
  %58 = load i32*, i32** %4, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 1
  store i32 %57, i32* %59, align 4
  %60 = load i32, i32* @GIB_JUMP, align 4
  %61 = call i32 (...) @crandom()
  %62 = load i32, i32* @GIB_VELOCITY, align 4
  %63 = mul nsw i32 %61, %62
  %64 = add nsw i32 %60, %63
  %65 = load i32*, i32** %4, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 2
  store i32 %64, i32* %66, align 4
  %67 = load i32*, i32** %3, align 8
  %68 = load i32*, i32** %4, align 8
  %69 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cgs, i32 0, i32 0, i32 7), align 4
  %70 = call i32 @CG_LaunchGib(i32* %67, i32* %68, i32 %69)
  %71 = load i32*, i32** %2, align 8
  %72 = load i32*, i32** %3, align 8
  %73 = call i32 @VectorCopy(i32* %71, i32* %72)
  %74 = call i32 (...) @crandom()
  %75 = load i32, i32* @GIB_VELOCITY, align 4
  %76 = mul nsw i32 %74, %75
  %77 = load i32*, i32** %4, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 0
  store i32 %76, i32* %78, align 4
  %79 = call i32 (...) @crandom()
  %80 = load i32, i32* @GIB_VELOCITY, align 4
  %81 = mul nsw i32 %79, %80
  %82 = load i32*, i32** %4, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 1
  store i32 %81, i32* %83, align 4
  %84 = load i32, i32* @GIB_JUMP, align 4
  %85 = call i32 (...) @crandom()
  %86 = load i32, i32* @GIB_VELOCITY, align 4
  %87 = mul nsw i32 %85, %86
  %88 = add nsw i32 %84, %87
  %89 = load i32*, i32** %4, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 2
  store i32 %88, i32* %90, align 4
  %91 = load i32*, i32** %3, align 8
  %92 = load i32*, i32** %4, align 8
  %93 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cgs, i32 0, i32 0, i32 6), align 4
  %94 = call i32 @CG_LaunchGib(i32* %91, i32* %92, i32 %93)
  %95 = load i32*, i32** %2, align 8
  %96 = load i32*, i32** %3, align 8
  %97 = call i32 @VectorCopy(i32* %95, i32* %96)
  %98 = call i32 (...) @crandom()
  %99 = load i32, i32* @GIB_VELOCITY, align 4
  %100 = mul nsw i32 %98, %99
  %101 = load i32*, i32** %4, align 8
  %102 = getelementptr inbounds i32, i32* %101, i64 0
  store i32 %100, i32* %102, align 4
  %103 = call i32 (...) @crandom()
  %104 = load i32, i32* @GIB_VELOCITY, align 4
  %105 = mul nsw i32 %103, %104
  %106 = load i32*, i32** %4, align 8
  %107 = getelementptr inbounds i32, i32* %106, i64 1
  store i32 %105, i32* %107, align 4
  %108 = load i32, i32* @GIB_JUMP, align 4
  %109 = call i32 (...) @crandom()
  %110 = load i32, i32* @GIB_VELOCITY, align 4
  %111 = mul nsw i32 %109, %110
  %112 = add nsw i32 %108, %111
  %113 = load i32*, i32** %4, align 8
  %114 = getelementptr inbounds i32, i32* %113, i64 2
  store i32 %112, i32* %114, align 4
  %115 = load i32*, i32** %3, align 8
  %116 = load i32*, i32** %4, align 8
  %117 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cgs, i32 0, i32 0, i32 5), align 4
  %118 = call i32 @CG_LaunchGib(i32* %115, i32* %116, i32 %117)
  %119 = load i32*, i32** %2, align 8
  %120 = load i32*, i32** %3, align 8
  %121 = call i32 @VectorCopy(i32* %119, i32* %120)
  %122 = call i32 (...) @crandom()
  %123 = load i32, i32* @GIB_VELOCITY, align 4
  %124 = mul nsw i32 %122, %123
  %125 = load i32*, i32** %4, align 8
  %126 = getelementptr inbounds i32, i32* %125, i64 0
  store i32 %124, i32* %126, align 4
  %127 = call i32 (...) @crandom()
  %128 = load i32, i32* @GIB_VELOCITY, align 4
  %129 = mul nsw i32 %127, %128
  %130 = load i32*, i32** %4, align 8
  %131 = getelementptr inbounds i32, i32* %130, i64 1
  store i32 %129, i32* %131, align 4
  %132 = load i32, i32* @GIB_JUMP, align 4
  %133 = call i32 (...) @crandom()
  %134 = load i32, i32* @GIB_VELOCITY, align 4
  %135 = mul nsw i32 %133, %134
  %136 = add nsw i32 %132, %135
  %137 = load i32*, i32** %4, align 8
  %138 = getelementptr inbounds i32, i32* %137, i64 2
  store i32 %136, i32* %138, align 4
  %139 = load i32*, i32** %3, align 8
  %140 = load i32*, i32** %4, align 8
  %141 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cgs, i32 0, i32 0, i32 4), align 4
  %142 = call i32 @CG_LaunchGib(i32* %139, i32* %140, i32 %141)
  %143 = load i32*, i32** %2, align 8
  %144 = load i32*, i32** %3, align 8
  %145 = call i32 @VectorCopy(i32* %143, i32* %144)
  %146 = call i32 (...) @crandom()
  %147 = load i32, i32* @GIB_VELOCITY, align 4
  %148 = mul nsw i32 %146, %147
  %149 = load i32*, i32** %4, align 8
  %150 = getelementptr inbounds i32, i32* %149, i64 0
  store i32 %148, i32* %150, align 4
  %151 = call i32 (...) @crandom()
  %152 = load i32, i32* @GIB_VELOCITY, align 4
  %153 = mul nsw i32 %151, %152
  %154 = load i32*, i32** %4, align 8
  %155 = getelementptr inbounds i32, i32* %154, i64 1
  store i32 %153, i32* %155, align 4
  %156 = load i32, i32* @GIB_JUMP, align 4
  %157 = call i32 (...) @crandom()
  %158 = load i32, i32* @GIB_VELOCITY, align 4
  %159 = mul nsw i32 %157, %158
  %160 = add nsw i32 %156, %159
  %161 = load i32*, i32** %4, align 8
  %162 = getelementptr inbounds i32, i32* %161, i64 2
  store i32 %160, i32* %162, align 4
  %163 = load i32*, i32** %3, align 8
  %164 = load i32*, i32** %4, align 8
  %165 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cgs, i32 0, i32 0, i32 3), align 4
  %166 = call i32 @CG_LaunchGib(i32* %163, i32* %164, i32 %165)
  %167 = load i32*, i32** %2, align 8
  %168 = load i32*, i32** %3, align 8
  %169 = call i32 @VectorCopy(i32* %167, i32* %168)
  %170 = call i32 (...) @crandom()
  %171 = load i32, i32* @GIB_VELOCITY, align 4
  %172 = mul nsw i32 %170, %171
  %173 = load i32*, i32** %4, align 8
  %174 = getelementptr inbounds i32, i32* %173, i64 0
  store i32 %172, i32* %174, align 4
  %175 = call i32 (...) @crandom()
  %176 = load i32, i32* @GIB_VELOCITY, align 4
  %177 = mul nsw i32 %175, %176
  %178 = load i32*, i32** %4, align 8
  %179 = getelementptr inbounds i32, i32* %178, i64 1
  store i32 %177, i32* %179, align 4
  %180 = load i32, i32* @GIB_JUMP, align 4
  %181 = call i32 (...) @crandom()
  %182 = load i32, i32* @GIB_VELOCITY, align 4
  %183 = mul nsw i32 %181, %182
  %184 = add nsw i32 %180, %183
  %185 = load i32*, i32** %4, align 8
  %186 = getelementptr inbounds i32, i32* %185, i64 2
  store i32 %184, i32* %186, align 4
  %187 = load i32*, i32** %3, align 8
  %188 = load i32*, i32** %4, align 8
  %189 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cgs, i32 0, i32 0, i32 2), align 4
  %190 = call i32 @CG_LaunchGib(i32* %187, i32* %188, i32 %189)
  %191 = load i32*, i32** %2, align 8
  %192 = load i32*, i32** %3, align 8
  %193 = call i32 @VectorCopy(i32* %191, i32* %192)
  %194 = call i32 (...) @crandom()
  %195 = load i32, i32* @GIB_VELOCITY, align 4
  %196 = mul nsw i32 %194, %195
  %197 = load i32*, i32** %4, align 8
  %198 = getelementptr inbounds i32, i32* %197, i64 0
  store i32 %196, i32* %198, align 4
  %199 = call i32 (...) @crandom()
  %200 = load i32, i32* @GIB_VELOCITY, align 4
  %201 = mul nsw i32 %199, %200
  %202 = load i32*, i32** %4, align 8
  %203 = getelementptr inbounds i32, i32* %202, i64 1
  store i32 %201, i32* %203, align 4
  %204 = load i32, i32* @GIB_JUMP, align 4
  %205 = call i32 (...) @crandom()
  %206 = load i32, i32* @GIB_VELOCITY, align 4
  %207 = mul nsw i32 %205, %206
  %208 = add nsw i32 %204, %207
  %209 = load i32*, i32** %4, align 8
  %210 = getelementptr inbounds i32, i32* %209, i64 2
  store i32 %208, i32* %210, align 4
  %211 = load i32*, i32** %3, align 8
  %212 = load i32*, i32** %4, align 8
  %213 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cgs, i32 0, i32 0, i32 1), align 4
  %214 = call i32 @CG_LaunchGib(i32* %211, i32* %212, i32 %213)
  %215 = load i32*, i32** %2, align 8
  %216 = load i32*, i32** %3, align 8
  %217 = call i32 @VectorCopy(i32* %215, i32* %216)
  %218 = call i32 (...) @crandom()
  %219 = load i32, i32* @GIB_VELOCITY, align 4
  %220 = mul nsw i32 %218, %219
  %221 = load i32*, i32** %4, align 8
  %222 = getelementptr inbounds i32, i32* %221, i64 0
  store i32 %220, i32* %222, align 4
  %223 = call i32 (...) @crandom()
  %224 = load i32, i32* @GIB_VELOCITY, align 4
  %225 = mul nsw i32 %223, %224
  %226 = load i32*, i32** %4, align 8
  %227 = getelementptr inbounds i32, i32* %226, i64 1
  store i32 %225, i32* %227, align 4
  %228 = load i32, i32* @GIB_JUMP, align 4
  %229 = call i32 (...) @crandom()
  %230 = load i32, i32* @GIB_VELOCITY, align 4
  %231 = mul nsw i32 %229, %230
  %232 = add nsw i32 %228, %231
  %233 = load i32*, i32** %4, align 8
  %234 = getelementptr inbounds i32, i32* %233, i64 2
  store i32 %232, i32* %234, align 4
  %235 = load i32*, i32** %3, align 8
  %236 = load i32*, i32** %4, align 8
  %237 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cgs, i32 0, i32 0, i32 0), align 4
  %238 = call i32 @CG_LaunchGib(i32* %235, i32* %236, i32 %237)
  %239 = load i32*, i32** %2, align 8
  %240 = load i32*, i32** %3, align 8
  %241 = call i32 @VectorCopy(i32* %239, i32* %240)
  %242 = call i32 (...) @crandom()
  %243 = load i32, i32* @GIB_VELOCITY, align 4
  %244 = mul nsw i32 %242, %243
  %245 = load i32*, i32** %4, align 8
  %246 = getelementptr inbounds i32, i32* %245, i64 0
  store i32 %244, i32* %246, align 4
  %247 = call i32 (...) @crandom()
  %248 = load i32, i32* @GIB_VELOCITY, align 4
  %249 = mul nsw i32 %247, %248
  %250 = load i32*, i32** %4, align 8
  %251 = getelementptr inbounds i32, i32* %250, i64 1
  store i32 %249, i32* %251, align 4
  %252 = load i32, i32* @GIB_JUMP, align 4
  %253 = call i32 (...) @crandom()
  %254 = load i32, i32* @GIB_VELOCITY, align 4
  %255 = mul nsw i32 %253, %254
  %256 = add nsw i32 %252, %255
  %257 = load i32*, i32** %4, align 8
  %258 = getelementptr inbounds i32, i32* %257, i64 2
  store i32 %256, i32* %258, align 4
  %259 = load i32*, i32** %3, align 8
  %260 = load i32*, i32** %4, align 8
  %261 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cgs, i32 0, i32 0, i32 0), align 4
  %262 = call i32 @CG_LaunchGib(i32* %259, i32* %260, i32 %261)
  br label %263

263:                                              ; preds = %46, %45, %7
  ret void
}

declare dso_local i32 @VectorCopy(i32*, i32*) #1

declare dso_local i32 @crandom(...) #1

declare dso_local i32 @rand(...) #1

declare dso_local i32 @CG_LaunchGib(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
