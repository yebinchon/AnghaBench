; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/paride/extr_ppc6lnx.c_ppc6_rd_data_blk.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/paride/extr_ppc6lnx.c_ppc6_rd_data_blk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32 }

@port_stb = common dso_local global i32 0, align 4
@data_stb = common dso_local global i32 0, align 4
@port_dir = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i32*, i64)* @ppc6_rd_data_blk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ppc6_rd_data_blk(%struct.TYPE_3__* %0, i32* %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  switch i32 %10, label %275 [
    i32 128, label %11
    i32 129, label %11
    i32 133, label %73
    i32 134, label %73
    i32 132, label %146
    i32 130, label %179
    i32 131, label %227
  ]

11:                                               ; preds = %3, %3
  br label %12

12:                                               ; preds = %15, %11
  %13 = load i64, i64* %6, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %72

15:                                               ; preds = %12
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @port_stb, align 4
  %20 = xor i32 %19, -1
  %21 = and i32 %18, %20
  %22 = load i32, i32* @data_stb, align 4
  %23 = xor i32 %21, %22
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 1
  store i32 %23, i32* %25, align 4
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = add nsw i32 %31, 2
  %33 = call i32 @outb(i32 %28, i32 %32)
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = add nsw i32 %36, 1
  %38 = call i32 @inb(i32 %37)
  store i32 %38, i32* %7, align 4
  %39 = load i32, i32* %7, align 4
  %40 = and i32 %39, 128
  %41 = ashr i32 %40, 1
  %42 = load i32, i32* %7, align 4
  %43 = and i32 %42, 56
  %44 = ashr i32 %43, 3
  %45 = or i32 %41, %44
  store i32 %45, i32* %7, align 4
  %46 = load i32, i32* @port_stb, align 4
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = or i32 %49, %46
  store i32 %50, i32* %48, align 4
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = add nsw i32 %56, 2
  %58 = call i32 @outb(i32 %53, i32 %57)
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = add nsw i32 %61, 1
  %63 = call i32 @inb(i32 %62)
  %64 = and i32 %63, 184
  %65 = load i32, i32* %7, align 4
  %66 = or i32 %65, %64
  store i32 %66, i32* %7, align 4
  %67 = load i32, i32* %7, align 4
  %68 = load i32*, i32** %5, align 8
  %69 = getelementptr inbounds i32, i32* %68, i32 1
  store i32* %69, i32** %5, align 8
  store i32 %67, i32* %68, align 4
  %70 = load i64, i64* %6, align 8
  %71 = add nsw i64 %70, -1
  store i64 %71, i64* %6, align 8
  br label %12

72:                                               ; preds = %12
  br label %275

73:                                               ; preds = %3, %3
  %74 = load i32, i32* @port_dir, align 4
  %75 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = or i32 %77, %74
  store i32 %78, i32* %76, align 4
  %79 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 4
  %85 = add nsw i32 %84, 2
  %86 = call i32 @outb(i32 %81, i32 %85)
  %87 = load i32, i32* @port_stb, align 4
  %88 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = or i32 %90, %87
  store i32 %91, i32* %89, align 4
  br label %92

92:                                               ; preds = %95, %73
  %93 = load i64, i64* %6, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %117

95:                                               ; preds = %92
  %96 = load i32, i32* @data_stb, align 4
  %97 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = xor i32 %99, %96
  store i32 %100, i32* %98, align 4
  %101 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 4
  %107 = add nsw i32 %106, 2
  %108 = call i32 @outb(i32 %103, i32 %107)
  %109 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %110 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @inb(i32 %111)
  %113 = load i32*, i32** %5, align 8
  %114 = getelementptr inbounds i32, i32* %113, i32 1
  store i32* %114, i32** %5, align 8
  store i32 %112, i32* %113, align 4
  %115 = load i64, i64* %6, align 8
  %116 = add nsw i64 %115, -1
  store i64 %116, i64* %6, align 8
  br label %92

117:                                              ; preds = %92
  %118 = load i32, i32* @port_stb, align 4
  %119 = xor i32 %118, -1
  %120 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %121 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = and i32 %122, %119
  store i32 %123, i32* %121, align 4
  %124 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %125 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %128 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %127, i32 0, i32 2
  %129 = load i32, i32* %128, align 4
  %130 = add nsw i32 %129, 2
  %131 = call i32 @outb(i32 %126, i32 %130)
  %132 = load i32, i32* @port_dir, align 4
  %133 = xor i32 %132, -1
  %134 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %135 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = and i32 %136, %133
  store i32 %137, i32* %135, align 4
  %138 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %139 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %142 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %141, i32 0, i32 2
  %143 = load i32, i32* %142, align 4
  %144 = add nsw i32 %143, 2
  %145 = call i32 @outb(i32 %140, i32 %144)
  br label %275

146:                                              ; preds = %3
  %147 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %148 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = load i32, i32* @port_dir, align 4
  %151 = or i32 %149, %150
  %152 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %153 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %152, i32 0, i32 2
  %154 = load i32, i32* %153, align 4
  %155 = add nsw i32 %154, 2
  %156 = call i32 @outb(i32 %151, i32 %155)
  br label %157

157:                                              ; preds = %160, %146
  %158 = load i64, i64* %6, align 8
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %170

160:                                              ; preds = %157
  %161 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %162 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %161, i32 0, i32 2
  %163 = load i32, i32* %162, align 4
  %164 = add nsw i32 %163, 4
  %165 = call i32 @inb(i32 %164)
  %166 = load i32*, i32** %5, align 8
  %167 = getelementptr inbounds i32, i32* %166, i32 1
  store i32* %167, i32** %5, align 8
  store i32 %165, i32* %166, align 4
  %168 = load i64, i64* %6, align 8
  %169 = add nsw i64 %168, -1
  store i64 %169, i64* %6, align 8
  br label %157

170:                                              ; preds = %157
  %171 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %172 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 4
  %174 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %175 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %174, i32 0, i32 2
  %176 = load i32, i32* %175, align 4
  %177 = add nsw i32 %176, 2
  %178 = call i32 @outb(i32 %173, i32 %177)
  br label %275

179:                                              ; preds = %3
  %180 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %181 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %180, i32 0, i32 1
  %182 = load i32, i32* %181, align 4
  %183 = load i32, i32* @port_dir, align 4
  %184 = or i32 %182, %183
  %185 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %186 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %185, i32 0, i32 2
  %187 = load i32, i32* %186, align 4
  %188 = add nsw i32 %187, 2
  %189 = call i32 @outb(i32 %184, i32 %188)
  br label %190

190:                                              ; preds = %193, %179
  %191 = load i64, i64* %6, align 8
  %192 = icmp sgt i64 %191, 1
  br i1 %192, label %193, label %204

193:                                              ; preds = %190
  %194 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %195 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %194, i32 0, i32 2
  %196 = load i32, i32* %195, align 4
  %197 = add nsw i32 %196, 4
  %198 = call i32 @inw(i32 %197)
  %199 = load i32*, i32** %5, align 8
  store i32 %198, i32* %199, align 4
  %200 = load i32*, i32** %5, align 8
  %201 = getelementptr inbounds i32, i32* %200, i64 2
  store i32* %201, i32** %5, align 8
  %202 = load i64, i64* %6, align 8
  %203 = sub nsw i64 %202, 2
  store i64 %203, i64* %6, align 8
  br label %190

204:                                              ; preds = %190
  br label %205

205:                                              ; preds = %208, %204
  %206 = load i64, i64* %6, align 8
  %207 = icmp ne i64 %206, 0
  br i1 %207, label %208, label %218

208:                                              ; preds = %205
  %209 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %210 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %209, i32 0, i32 2
  %211 = load i32, i32* %210, align 4
  %212 = add nsw i32 %211, 4
  %213 = call i32 @inb(i32 %212)
  %214 = load i32*, i32** %5, align 8
  %215 = getelementptr inbounds i32, i32* %214, i32 1
  store i32* %215, i32** %5, align 8
  store i32 %213, i32* %214, align 4
  %216 = load i64, i64* %6, align 8
  %217 = add nsw i64 %216, -1
  store i64 %217, i64* %6, align 8
  br label %205

218:                                              ; preds = %205
  %219 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %220 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %219, i32 0, i32 1
  %221 = load i32, i32* %220, align 4
  %222 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %223 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %222, i32 0, i32 2
  %224 = load i32, i32* %223, align 4
  %225 = add nsw i32 %224, 2
  %226 = call i32 @outb(i32 %221, i32 %225)
  br label %275

227:                                              ; preds = %3
  %228 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %229 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %228, i32 0, i32 1
  %230 = load i32, i32* %229, align 4
  %231 = load i32, i32* @port_dir, align 4
  %232 = or i32 %230, %231
  %233 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %234 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %233, i32 0, i32 2
  %235 = load i32, i32* %234, align 4
  %236 = add nsw i32 %235, 2
  %237 = call i32 @outb(i32 %232, i32 %236)
  br label %238

238:                                              ; preds = %241, %227
  %239 = load i64, i64* %6, align 8
  %240 = icmp sgt i64 %239, 3
  br i1 %240, label %241, label %252

241:                                              ; preds = %238
  %242 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %243 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %242, i32 0, i32 2
  %244 = load i32, i32* %243, align 4
  %245 = add nsw i32 %244, 4
  %246 = call i32 @inl(i32 %245)
  %247 = load i32*, i32** %5, align 8
  store i32 %246, i32* %247, align 4
  %248 = load i32*, i32** %5, align 8
  %249 = getelementptr inbounds i32, i32* %248, i64 4
  store i32* %249, i32** %5, align 8
  %250 = load i64, i64* %6, align 8
  %251 = sub nsw i64 %250, 4
  store i64 %251, i64* %6, align 8
  br label %238

252:                                              ; preds = %238
  br label %253

253:                                              ; preds = %256, %252
  %254 = load i64, i64* %6, align 8
  %255 = icmp ne i64 %254, 0
  br i1 %255, label %256, label %266

256:                                              ; preds = %253
  %257 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %258 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %257, i32 0, i32 2
  %259 = load i32, i32* %258, align 4
  %260 = add nsw i32 %259, 4
  %261 = call i32 @inb(i32 %260)
  %262 = load i32*, i32** %5, align 8
  %263 = getelementptr inbounds i32, i32* %262, i32 1
  store i32* %263, i32** %5, align 8
  store i32 %261, i32* %262, align 4
  %264 = load i64, i64* %6, align 8
  %265 = add nsw i64 %264, -1
  store i64 %265, i64* %6, align 8
  br label %253

266:                                              ; preds = %253
  %267 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %268 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %267, i32 0, i32 1
  %269 = load i32, i32* %268, align 4
  %270 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %271 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %270, i32 0, i32 2
  %272 = load i32, i32* %271, align 4
  %273 = add nsw i32 %272, 2
  %274 = call i32 @outb(i32 %269, i32 %273)
  br label %275

275:                                              ; preds = %3, %266, %218, %170, %117, %72
  ret void
}

declare dso_local i32 @outb(i32, i32) #1

declare dso_local i32 @inb(i32) #1

declare dso_local i32 @inw(i32) #1

declare dso_local i32 @inl(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
