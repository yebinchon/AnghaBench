; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_skcipher.c_skcipher_walk_done.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_skcipher.c_skcipher_walk_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.skcipher_walk = type { i32, i32, i32, i64, i64, i64, i64, i32, i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@SKCIPHER_WALK_PHYS = common dso_local global i32 0, align 4
@SKCIPHER_WALK_SLOW = common dso_local global i32 0, align 4
@SKCIPHER_WALK_COPY = common dso_local global i32 0, align 4
@SKCIPHER_WALK_DIFF = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@SKCIPHER_WALK_SLEEP = common dso_local global i32 0, align 4
@CRYPTO_TFM_REQ_MAY_SLEEP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @skcipher_walk_done(%struct.skcipher_walk* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.skcipher_walk*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.skcipher_walk* %0, %struct.skcipher_walk** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.skcipher_walk*, %struct.skcipher_walk** %4, align 8
  %9 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  store i32 %10, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %11 = load i32, i32* %6, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  br label %148

14:                                               ; preds = %2
  %15 = load i32, i32* %5, align 4
  %16 = icmp sge i32 %15, 0
  %17 = zext i1 %16 to i32
  %18 = call i64 @likely(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %29

20:                                               ; preds = %14
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* %6, align 4
  %23 = sub i32 %22, %21
  store i32 %23, i32* %6, align 4
  %24 = load %struct.skcipher_walk*, %struct.skcipher_walk** %4, align 8
  %25 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %6, align 4
  %28 = sub i32 %26, %27
  store i32 %28, i32* %7, align 4
  br label %29

29:                                               ; preds = %20, %14
  %30 = load %struct.skcipher_walk*, %struct.skcipher_walk** %4, align 8
  %31 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @SKCIPHER_WALK_PHYS, align 4
  %34 = load i32, i32* @SKCIPHER_WALK_SLOW, align 4
  %35 = or i32 %33, %34
  %36 = load i32, i32* @SKCIPHER_WALK_COPY, align 4
  %37 = or i32 %35, %36
  %38 = load i32, i32* @SKCIPHER_WALK_DIFF, align 4
  %39 = or i32 %37, %38
  %40 = and i32 %32, %39
  %41 = icmp ne i32 %40, 0
  %42 = xor i1 %41, true
  %43 = zext i1 %42 to i32
  %44 = call i64 @likely(i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %29
  br label %47

47:                                               ; preds = %57, %46
  %48 = load %struct.skcipher_walk*, %struct.skcipher_walk** %4, align 8
  %49 = call i32 @skcipher_unmap_src(%struct.skcipher_walk* %48)
  br label %104

50:                                               ; preds = %29
  %51 = load %struct.skcipher_walk*, %struct.skcipher_walk** %4, align 8
  %52 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @SKCIPHER_WALK_DIFF, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %50
  %58 = load %struct.skcipher_walk*, %struct.skcipher_walk** %4, align 8
  %59 = call i32 @skcipher_unmap_dst(%struct.skcipher_walk* %58)
  br label %47

60:                                               ; preds = %50
  %61 = load %struct.skcipher_walk*, %struct.skcipher_walk** %4, align 8
  %62 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @SKCIPHER_WALK_COPY, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %82

67:                                               ; preds = %60
  %68 = load %struct.skcipher_walk*, %struct.skcipher_walk** %4, align 8
  %69 = call i32 @skcipher_map_dst(%struct.skcipher_walk* %68)
  %70 = load %struct.skcipher_walk*, %struct.skcipher_walk** %4, align 8
  %71 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %70, i32 0, i32 10
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load %struct.skcipher_walk*, %struct.skcipher_walk** %4, align 8
  %76 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %75, i32 0, i32 3
  %77 = load i64, i64* %76, align 8
  %78 = load i32, i32* %6, align 4
  %79 = call i32 @memcpy(i64 %74, i64 %77, i32 %78)
  %80 = load %struct.skcipher_walk*, %struct.skcipher_walk** %4, align 8
  %81 = call i32 @skcipher_unmap_dst(%struct.skcipher_walk* %80)
  br label %102

82:                                               ; preds = %60
  %83 = load %struct.skcipher_walk*, %struct.skcipher_walk** %4, align 8
  %84 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 8
  %86 = load i32, i32* @SKCIPHER_WALK_SLOW, align 4
  %87 = and i32 %85, %86
  %88 = call i64 @unlikely(i32 %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %101

90:                                               ; preds = %82
  %91 = load i32, i32* %5, align 4
  %92 = icmp sgt i32 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %90
  %94 = load i32, i32* @EINVAL, align 4
  %95 = sub nsw i32 0, %94
  store i32 %95, i32* %5, align 4
  store i32 0, i32* %7, align 4
  br label %100

96:                                               ; preds = %90
  %97 = load %struct.skcipher_walk*, %struct.skcipher_walk** %4, align 8
  %98 = load i32, i32* %6, align 4
  %99 = call i32 @skcipher_done_slow(%struct.skcipher_walk* %97, i32 %98)
  store i32 %99, i32* %6, align 4
  br label %100

100:                                              ; preds = %96, %93
  br label %101

101:                                              ; preds = %100, %82
  br label %102

102:                                              ; preds = %101, %67
  br label %103

103:                                              ; preds = %102
  br label %104

104:                                              ; preds = %103, %47
  %105 = load i32, i32* %5, align 4
  %106 = icmp sgt i32 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %104
  store i32 0, i32* %5, align 4
  br label %108

108:                                              ; preds = %107, %104
  %109 = load i32, i32* %7, align 4
  %110 = load %struct.skcipher_walk*, %struct.skcipher_walk** %4, align 8
  %111 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %110, i32 0, i32 1
  store i32 %109, i32* %111, align 4
  %112 = load %struct.skcipher_walk*, %struct.skcipher_walk** %4, align 8
  %113 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %112, i32 0, i32 0
  store i32 0, i32* %113, align 8
  %114 = load %struct.skcipher_walk*, %struct.skcipher_walk** %4, align 8
  %115 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %114, i32 0, i32 9
  %116 = load i32, i32* %6, align 4
  %117 = call i32 @scatterwalk_advance(i32* %115, i32 %116)
  %118 = load %struct.skcipher_walk*, %struct.skcipher_walk** %4, align 8
  %119 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %118, i32 0, i32 8
  %120 = load i32, i32* %6, align 4
  %121 = call i32 @scatterwalk_advance(i32* %119, i32 %120)
  %122 = load %struct.skcipher_walk*, %struct.skcipher_walk** %4, align 8
  %123 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %122, i32 0, i32 9
  %124 = load i32, i32* %7, align 4
  %125 = call i32 @scatterwalk_done(i32* %123, i32 0, i32 %124)
  %126 = load %struct.skcipher_walk*, %struct.skcipher_walk** %4, align 8
  %127 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %126, i32 0, i32 8
  %128 = load i32, i32* %7, align 4
  %129 = call i32 @scatterwalk_done(i32* %127, i32 1, i32 %128)
  %130 = load i32, i32* %7, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %147

132:                                              ; preds = %108
  %133 = load %struct.skcipher_walk*, %struct.skcipher_walk** %4, align 8
  %134 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %133, i32 0, i32 2
  %135 = load i32, i32* %134, align 8
  %136 = load i32, i32* @SKCIPHER_WALK_SLEEP, align 4
  %137 = and i32 %135, %136
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %141

139:                                              ; preds = %132
  %140 = load i32, i32* @CRYPTO_TFM_REQ_MAY_SLEEP, align 4
  br label %142

141:                                              ; preds = %132
  br label %142

142:                                              ; preds = %141, %139
  %143 = phi i32 [ %140, %139 ], [ 0, %141 ]
  %144 = call i32 @crypto_yield(i32 %143)
  %145 = load %struct.skcipher_walk*, %struct.skcipher_walk** %4, align 8
  %146 = call i32 @skcipher_walk_next(%struct.skcipher_walk* %145)
  store i32 %146, i32* %3, align 4
  br label %211

147:                                              ; preds = %108
  br label %148

148:                                              ; preds = %147, %13
  %149 = load %struct.skcipher_walk*, %struct.skcipher_walk** %4, align 8
  %150 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %149, i32 0, i32 4
  %151 = load i64, i64* %150, align 8
  %152 = load %struct.skcipher_walk*, %struct.skcipher_walk** %4, align 8
  %153 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %152, i32 0, i32 3
  %154 = load i64, i64* %153, align 8
  %155 = or i64 %151, %154
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %158, label %157

157:                                              ; preds = %148
  br label %209

158:                                              ; preds = %148
  %159 = load %struct.skcipher_walk*, %struct.skcipher_walk** %4, align 8
  %160 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %159, i32 0, i32 2
  %161 = load i32, i32* %160, align 8
  %162 = load i32, i32* @SKCIPHER_WALK_PHYS, align 4
  %163 = and i32 %161, %162
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %166

165:                                              ; preds = %158
  br label %209

166:                                              ; preds = %158
  %167 = load %struct.skcipher_walk*, %struct.skcipher_walk** %4, align 8
  %168 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %167, i32 0, i32 5
  %169 = load i64, i64* %168, align 8
  %170 = load %struct.skcipher_walk*, %struct.skcipher_walk** %4, align 8
  %171 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %170, i32 0, i32 6
  %172 = load i64, i64* %171, align 8
  %173 = icmp ne i64 %169, %172
  br i1 %173, label %174, label %185

174:                                              ; preds = %166
  %175 = load %struct.skcipher_walk*, %struct.skcipher_walk** %4, align 8
  %176 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %175, i32 0, i32 6
  %177 = load i64, i64* %176, align 8
  %178 = load %struct.skcipher_walk*, %struct.skcipher_walk** %4, align 8
  %179 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %178, i32 0, i32 5
  %180 = load i64, i64* %179, align 8
  %181 = load %struct.skcipher_walk*, %struct.skcipher_walk** %4, align 8
  %182 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %181, i32 0, i32 7
  %183 = load i32, i32* %182, align 8
  %184 = call i32 @memcpy(i64 %177, i64 %180, i32 %183)
  br label %185

185:                                              ; preds = %174, %166
  %186 = load %struct.skcipher_walk*, %struct.skcipher_walk** %4, align 8
  %187 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %186, i32 0, i32 4
  %188 = load i64, i64* %187, align 8
  %189 = load %struct.skcipher_walk*, %struct.skcipher_walk** %4, align 8
  %190 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %189, i32 0, i32 3
  %191 = load i64, i64* %190, align 8
  %192 = icmp ne i64 %188, %191
  br i1 %192, label %193, label %198

193:                                              ; preds = %185
  %194 = load %struct.skcipher_walk*, %struct.skcipher_walk** %4, align 8
  %195 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %194, i32 0, i32 4
  %196 = load i64, i64* %195, align 8
  %197 = call i32 @kfree(i64 %196)
  br label %198

198:                                              ; preds = %193, %185
  %199 = load %struct.skcipher_walk*, %struct.skcipher_walk** %4, align 8
  %200 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %199, i32 0, i32 3
  %201 = load i64, i64* %200, align 8
  %202 = icmp ne i64 %201, 0
  br i1 %202, label %203, label %208

203:                                              ; preds = %198
  %204 = load %struct.skcipher_walk*, %struct.skcipher_walk** %4, align 8
  %205 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %204, i32 0, i32 3
  %206 = load i64, i64* %205, align 8
  %207 = call i32 @free_page(i64 %206)
  br label %208

208:                                              ; preds = %203, %198
  br label %209

209:                                              ; preds = %208, %165, %157
  %210 = load i32, i32* %5, align 4
  store i32 %210, i32* %3, align 4
  br label %211

211:                                              ; preds = %209, %142
  %212 = load i32, i32* %3, align 4
  ret i32 %212
}

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @skcipher_unmap_src(%struct.skcipher_walk*) #1

declare dso_local i32 @skcipher_unmap_dst(%struct.skcipher_walk*) #1

declare dso_local i32 @skcipher_map_dst(%struct.skcipher_walk*) #1

declare dso_local i32 @memcpy(i64, i64, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @skcipher_done_slow(%struct.skcipher_walk*, i32) #1

declare dso_local i32 @scatterwalk_advance(i32*, i32) #1

declare dso_local i32 @scatterwalk_done(i32*, i32, i32) #1

declare dso_local i32 @crypto_yield(i32) #1

declare dso_local i32 @skcipher_walk_next(%struct.skcipher_walk*) #1

declare dso_local i32 @kfree(i64) #1

declare dso_local i32 @free_page(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
