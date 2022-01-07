; ModuleID = '/home/carl/AnghaBench/linux/arch/nios2/kernel/extr_signal.c_rt_restore_ucontext.c'
source_filename = "/home/carl/AnghaBench/linux/arch/nios2/kernel/extr_signal.c_rt_restore_ucontext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.pt_regs = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.switch_stack = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ucontext = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64*, i64 }

@do_no_restart_syscall = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_6__* null, align 8
@MCONTEXT_VERSION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pt_regs*, %struct.switch_stack*, %struct.ucontext*, i32*)* @rt_restore_ucontext to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt_restore_ucontext(%struct.pt_regs* %0, %struct.switch_stack* %1, %struct.ucontext* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.pt_regs*, align 8
  %7 = alloca %struct.switch_stack*, align 8
  %8 = alloca %struct.ucontext*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64*, align 8
  %12 = alloca i32, align 4
  store %struct.pt_regs* %0, %struct.pt_regs** %6, align 8
  store %struct.switch_stack* %1, %struct.switch_stack** %7, align 8
  store %struct.ucontext* %2, %struct.ucontext** %8, align 8
  store i32* %3, i32** %9, align 8
  %13 = load %struct.ucontext*, %struct.ucontext** %8, align 8
  %14 = getelementptr inbounds %struct.ucontext, %struct.ucontext* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load i64*, i64** %15, align 8
  store i64* %16, i64** %11, align 8
  %17 = load i32, i32* @do_no_restart_syscall, align 4
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** @current, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  store i32 %17, i32* %20, align 4
  %21 = load i32, i32* %10, align 4
  %22 = load %struct.ucontext*, %struct.ucontext** %8, align 8
  %23 = getelementptr inbounds %struct.ucontext, %struct.ucontext* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 1
  %25 = call i32 @__get_user(i32 %21, i64* %24)
  store i32 %25, i32* %12, align 4
  %26 = load i32, i32* %10, align 4
  %27 = load i32, i32* @MCONTEXT_VERSION, align 4
  %28 = icmp ne i32 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %4
  br label %277

30:                                               ; preds = %4
  %31 = load %struct.pt_regs*, %struct.pt_regs** %6, align 8
  %32 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i64*, i64** %11, align 8
  %35 = getelementptr inbounds i64, i64* %34, i64 0
  %36 = call i32 @__get_user(i32 %33, i64* %35)
  %37 = load i32, i32* %12, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %12, align 4
  %39 = load %struct.pt_regs*, %struct.pt_regs** %6, align 8
  %40 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load i64*, i64** %11, align 8
  %43 = getelementptr inbounds i64, i64* %42, i64 1
  %44 = call i32 @__get_user(i32 %41, i64* %43)
  %45 = load i32, i32* %12, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %12, align 4
  %47 = load %struct.pt_regs*, %struct.pt_regs** %6, align 8
  %48 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = load i64*, i64** %11, align 8
  %51 = getelementptr inbounds i64, i64* %50, i64 2
  %52 = call i32 @__get_user(i32 %49, i64* %51)
  %53 = load i32, i32* %12, align 4
  %54 = or i32 %53, %52
  store i32 %54, i32* %12, align 4
  %55 = load %struct.pt_regs*, %struct.pt_regs** %6, align 8
  %56 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 4
  %58 = load i64*, i64** %11, align 8
  %59 = getelementptr inbounds i64, i64* %58, i64 3
  %60 = call i32 @__get_user(i32 %57, i64* %59)
  %61 = load i32, i32* %12, align 4
  %62 = or i32 %61, %60
  store i32 %62, i32* %12, align 4
  %63 = load %struct.pt_regs*, %struct.pt_regs** %6, align 8
  %64 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %63, i32 0, i32 4
  %65 = load i32, i32* %64, align 4
  %66 = load i64*, i64** %11, align 8
  %67 = getelementptr inbounds i64, i64* %66, i64 4
  %68 = call i32 @__get_user(i32 %65, i64* %67)
  %69 = load i32, i32* %12, align 4
  %70 = or i32 %69, %68
  store i32 %70, i32* %12, align 4
  %71 = load %struct.pt_regs*, %struct.pt_regs** %6, align 8
  %72 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %71, i32 0, i32 5
  %73 = load i32, i32* %72, align 4
  %74 = load i64*, i64** %11, align 8
  %75 = getelementptr inbounds i64, i64* %74, i64 5
  %76 = call i32 @__get_user(i32 %73, i64* %75)
  %77 = load i32, i32* %12, align 4
  %78 = or i32 %77, %76
  store i32 %78, i32* %12, align 4
  %79 = load %struct.pt_regs*, %struct.pt_regs** %6, align 8
  %80 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %79, i32 0, i32 6
  %81 = load i32, i32* %80, align 4
  %82 = load i64*, i64** %11, align 8
  %83 = getelementptr inbounds i64, i64* %82, i64 6
  %84 = call i32 @__get_user(i32 %81, i64* %83)
  %85 = load i32, i32* %12, align 4
  %86 = or i32 %85, %84
  store i32 %86, i32* %12, align 4
  %87 = load %struct.pt_regs*, %struct.pt_regs** %6, align 8
  %88 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %87, i32 0, i32 7
  %89 = load i32, i32* %88, align 4
  %90 = load i64*, i64** %11, align 8
  %91 = getelementptr inbounds i64, i64* %90, i64 7
  %92 = call i32 @__get_user(i32 %89, i64* %91)
  %93 = load i32, i32* %12, align 4
  %94 = or i32 %93, %92
  store i32 %94, i32* %12, align 4
  %95 = load %struct.pt_regs*, %struct.pt_regs** %6, align 8
  %96 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %95, i32 0, i32 8
  %97 = load i32, i32* %96, align 4
  %98 = load i64*, i64** %11, align 8
  %99 = getelementptr inbounds i64, i64* %98, i64 8
  %100 = call i32 @__get_user(i32 %97, i64* %99)
  %101 = load i32, i32* %12, align 4
  %102 = or i32 %101, %100
  store i32 %102, i32* %12, align 4
  %103 = load %struct.pt_regs*, %struct.pt_regs** %6, align 8
  %104 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %103, i32 0, i32 9
  %105 = load i32, i32* %104, align 4
  %106 = load i64*, i64** %11, align 8
  %107 = getelementptr inbounds i64, i64* %106, i64 9
  %108 = call i32 @__get_user(i32 %105, i64* %107)
  %109 = load i32, i32* %12, align 4
  %110 = or i32 %109, %108
  store i32 %110, i32* %12, align 4
  %111 = load %struct.pt_regs*, %struct.pt_regs** %6, align 8
  %112 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %111, i32 0, i32 10
  %113 = load i32, i32* %112, align 4
  %114 = load i64*, i64** %11, align 8
  %115 = getelementptr inbounds i64, i64* %114, i64 10
  %116 = call i32 @__get_user(i32 %113, i64* %115)
  %117 = load i32, i32* %12, align 4
  %118 = or i32 %117, %116
  store i32 %118, i32* %12, align 4
  %119 = load %struct.pt_regs*, %struct.pt_regs** %6, align 8
  %120 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %119, i32 0, i32 11
  %121 = load i32, i32* %120, align 4
  %122 = load i64*, i64** %11, align 8
  %123 = getelementptr inbounds i64, i64* %122, i64 11
  %124 = call i32 @__get_user(i32 %121, i64* %123)
  %125 = load i32, i32* %12, align 4
  %126 = or i32 %125, %124
  store i32 %126, i32* %12, align 4
  %127 = load %struct.pt_regs*, %struct.pt_regs** %6, align 8
  %128 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %127, i32 0, i32 12
  %129 = load i32, i32* %128, align 4
  %130 = load i64*, i64** %11, align 8
  %131 = getelementptr inbounds i64, i64* %130, i64 12
  %132 = call i32 @__get_user(i32 %129, i64* %131)
  %133 = load i32, i32* %12, align 4
  %134 = or i32 %133, %132
  store i32 %134, i32* %12, align 4
  %135 = load %struct.pt_regs*, %struct.pt_regs** %6, align 8
  %136 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %135, i32 0, i32 13
  %137 = load i32, i32* %136, align 4
  %138 = load i64*, i64** %11, align 8
  %139 = getelementptr inbounds i64, i64* %138, i64 13
  %140 = call i32 @__get_user(i32 %137, i64* %139)
  %141 = load i32, i32* %12, align 4
  %142 = or i32 %141, %140
  store i32 %142, i32* %12, align 4
  %143 = load %struct.pt_regs*, %struct.pt_regs** %6, align 8
  %144 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %143, i32 0, i32 14
  %145 = load i32, i32* %144, align 4
  %146 = load i64*, i64** %11, align 8
  %147 = getelementptr inbounds i64, i64* %146, i64 14
  %148 = call i32 @__get_user(i32 %145, i64* %147)
  %149 = load i32, i32* %12, align 4
  %150 = or i32 %149, %148
  store i32 %150, i32* %12, align 4
  %151 = load %struct.switch_stack*, %struct.switch_stack** %7, align 8
  %152 = getelementptr inbounds %struct.switch_stack, %struct.switch_stack* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = load i64*, i64** %11, align 8
  %155 = getelementptr inbounds i64, i64* %154, i64 15
  %156 = call i32 @__get_user(i32 %153, i64* %155)
  %157 = load i32, i32* %12, align 4
  %158 = or i32 %157, %156
  store i32 %158, i32* %12, align 4
  %159 = load %struct.switch_stack*, %struct.switch_stack** %7, align 8
  %160 = getelementptr inbounds %struct.switch_stack, %struct.switch_stack* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 4
  %162 = load i64*, i64** %11, align 8
  %163 = getelementptr inbounds i64, i64* %162, i64 16
  %164 = call i32 @__get_user(i32 %161, i64* %163)
  %165 = load i32, i32* %12, align 4
  %166 = or i32 %165, %164
  store i32 %166, i32* %12, align 4
  %167 = load %struct.switch_stack*, %struct.switch_stack** %7, align 8
  %168 = getelementptr inbounds %struct.switch_stack, %struct.switch_stack* %167, i32 0, i32 2
  %169 = load i32, i32* %168, align 4
  %170 = load i64*, i64** %11, align 8
  %171 = getelementptr inbounds i64, i64* %170, i64 17
  %172 = call i32 @__get_user(i32 %169, i64* %171)
  %173 = load i32, i32* %12, align 4
  %174 = or i32 %173, %172
  store i32 %174, i32* %12, align 4
  %175 = load %struct.switch_stack*, %struct.switch_stack** %7, align 8
  %176 = getelementptr inbounds %struct.switch_stack, %struct.switch_stack* %175, i32 0, i32 3
  %177 = load i32, i32* %176, align 4
  %178 = load i64*, i64** %11, align 8
  %179 = getelementptr inbounds i64, i64* %178, i64 18
  %180 = call i32 @__get_user(i32 %177, i64* %179)
  %181 = load i32, i32* %12, align 4
  %182 = or i32 %181, %180
  store i32 %182, i32* %12, align 4
  %183 = load %struct.switch_stack*, %struct.switch_stack** %7, align 8
  %184 = getelementptr inbounds %struct.switch_stack, %struct.switch_stack* %183, i32 0, i32 4
  %185 = load i32, i32* %184, align 4
  %186 = load i64*, i64** %11, align 8
  %187 = getelementptr inbounds i64, i64* %186, i64 19
  %188 = call i32 @__get_user(i32 %185, i64* %187)
  %189 = load i32, i32* %12, align 4
  %190 = or i32 %189, %188
  store i32 %190, i32* %12, align 4
  %191 = load %struct.switch_stack*, %struct.switch_stack** %7, align 8
  %192 = getelementptr inbounds %struct.switch_stack, %struct.switch_stack* %191, i32 0, i32 5
  %193 = load i32, i32* %192, align 4
  %194 = load i64*, i64** %11, align 8
  %195 = getelementptr inbounds i64, i64* %194, i64 20
  %196 = call i32 @__get_user(i32 %193, i64* %195)
  %197 = load i32, i32* %12, align 4
  %198 = or i32 %197, %196
  store i32 %198, i32* %12, align 4
  %199 = load %struct.switch_stack*, %struct.switch_stack** %7, align 8
  %200 = getelementptr inbounds %struct.switch_stack, %struct.switch_stack* %199, i32 0, i32 6
  %201 = load i32, i32* %200, align 4
  %202 = load i64*, i64** %11, align 8
  %203 = getelementptr inbounds i64, i64* %202, i64 21
  %204 = call i32 @__get_user(i32 %201, i64* %203)
  %205 = load i32, i32* %12, align 4
  %206 = or i32 %205, %204
  store i32 %206, i32* %12, align 4
  %207 = load %struct.switch_stack*, %struct.switch_stack** %7, align 8
  %208 = getelementptr inbounds %struct.switch_stack, %struct.switch_stack* %207, i32 0, i32 7
  %209 = load i32, i32* %208, align 4
  %210 = load i64*, i64** %11, align 8
  %211 = getelementptr inbounds i64, i64* %210, i64 22
  %212 = call i32 @__get_user(i32 %209, i64* %211)
  %213 = load i32, i32* %12, align 4
  %214 = or i32 %213, %212
  store i32 %214, i32* %12, align 4
  %215 = load %struct.switch_stack*, %struct.switch_stack** %7, align 8
  %216 = getelementptr inbounds %struct.switch_stack, %struct.switch_stack* %215, i32 0, i32 8
  %217 = load i32, i32* %216, align 4
  %218 = load i64*, i64** %11, align 8
  %219 = getelementptr inbounds i64, i64* %218, i64 24
  %220 = call i32 @__get_user(i32 %217, i64* %219)
  %221 = load i32, i32* %12, align 4
  %222 = or i32 %221, %220
  store i32 %222, i32* %12, align 4
  %223 = load %struct.switch_stack*, %struct.switch_stack** %7, align 8
  %224 = getelementptr inbounds %struct.switch_stack, %struct.switch_stack* %223, i32 0, i32 9
  %225 = load i32, i32* %224, align 4
  %226 = load i64*, i64** %11, align 8
  %227 = getelementptr inbounds i64, i64* %226, i64 25
  %228 = call i32 @__get_user(i32 %225, i64* %227)
  %229 = load i32, i32* %12, align 4
  %230 = or i32 %229, %228
  store i32 %230, i32* %12, align 4
  %231 = load i32, i32* %10, align 4
  %232 = load i64*, i64** %11, align 8
  %233 = getelementptr inbounds i64, i64* %232, i64 26
  %234 = call i32 @__get_user(i32 %231, i64* %233)
  %235 = load i32, i32* %12, align 4
  %236 = or i32 %235, %234
  store i32 %236, i32* %12, align 4
  %237 = load %struct.pt_regs*, %struct.pt_regs** %6, align 8
  %238 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %237, i32 0, i32 15
  %239 = load i32, i32* %238, align 4
  %240 = load i64*, i64** %11, align 8
  %241 = getelementptr inbounds i64, i64* %240, i64 27
  %242 = call i32 @__get_user(i32 %239, i64* %241)
  %243 = load i32, i32* %12, align 4
  %244 = or i32 %243, %242
  store i32 %244, i32* %12, align 4
  %245 = load %struct.pt_regs*, %struct.pt_regs** %6, align 8
  %246 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %245, i32 0, i32 16
  %247 = load i32, i32* %246, align 4
  %248 = load i64*, i64** %11, align 8
  %249 = getelementptr inbounds i64, i64* %248, i64 23
  %250 = call i32 @__get_user(i32 %247, i64* %249)
  %251 = load i32, i32* %12, align 4
  %252 = or i32 %251, %250
  store i32 %252, i32* %12, align 4
  %253 = load %struct.pt_regs*, %struct.pt_regs** %6, align 8
  %254 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %253, i32 0, i32 17
  %255 = load i32, i32* %254, align 4
  %256 = load i64*, i64** %11, align 8
  %257 = getelementptr inbounds i64, i64* %256, i64 28
  %258 = call i32 @__get_user(i32 %255, i64* %257)
  %259 = load i32, i32* %12, align 4
  %260 = or i32 %259, %258
  store i32 %260, i32* %12, align 4
  %261 = load %struct.pt_regs*, %struct.pt_regs** %6, align 8
  %262 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %261, i32 0, i32 18
  store i32 -1, i32* %262, align 4
  %263 = load %struct.ucontext*, %struct.ucontext** %8, align 8
  %264 = getelementptr inbounds %struct.ucontext, %struct.ucontext* %263, i32 0, i32 0
  %265 = call i32 @restore_altstack(i32* %264)
  %266 = load i32, i32* %12, align 4
  %267 = or i32 %266, %265
  store i32 %267, i32* %12, align 4
  %268 = load i32, i32* %12, align 4
  %269 = icmp ne i32 %268, 0
  br i1 %269, label %270, label %271

270:                                              ; preds = %30
  br label %277

271:                                              ; preds = %30
  %272 = load %struct.pt_regs*, %struct.pt_regs** %6, align 8
  %273 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %272, i32 0, i32 1
  %274 = load i32, i32* %273, align 4
  %275 = load i32*, i32** %9, align 8
  store i32 %274, i32* %275, align 4
  %276 = load i32, i32* %12, align 4
  store i32 %276, i32* %5, align 4
  br label %278

277:                                              ; preds = %270, %29
  store i32 1, i32* %5, align 4
  br label %278

278:                                              ; preds = %277, %271
  %279 = load i32, i32* %5, align 4
  ret i32 %279
}

declare dso_local i32 @__get_user(i32, i64*) #1

declare dso_local i32 @restore_altstack(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
