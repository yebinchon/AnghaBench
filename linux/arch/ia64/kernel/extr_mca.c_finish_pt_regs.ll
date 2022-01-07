; ModuleID = '/home/carl/AnghaBench/linux/arch/ia64/kernel/extr_mca.c_finish_pt_regs.c'
source_filename = "/home/carl/AnghaBench/linux/arch/ia64/kernel/extr_mca.c_finish_pt_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_regs = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ia64_sal_os_state = type { i32, i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32*, i32*, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pt_regs*, %struct.ia64_sal_os_state*, i64*)* @finish_pt_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @finish_pt_regs(%struct.pt_regs* %0, %struct.ia64_sal_os_state* %1, i64* %2) #0 {
  %4 = alloca %struct.pt_regs*, align 8
  %5 = alloca %struct.ia64_sal_os_state*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca i32*, align 8
  store %struct.pt_regs* %0, %struct.pt_regs** %4, align 8
  store %struct.ia64_sal_os_state* %1, %struct.ia64_sal_os_state** %5, align 8
  store i64* %2, i64** %6, align 8
  %9 = load %struct.ia64_sal_os_state*, %struct.ia64_sal_os_state** %5, align 8
  %10 = getelementptr inbounds %struct.ia64_sal_os_state, %struct.ia64_sal_os_state* %9, i32 0, i32 3
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  store %struct.TYPE_3__* %11, %struct.TYPE_3__** %7, align 8
  %12 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %13 = call %struct.TYPE_4__* @ia64_psr(%struct.pt_regs* %12)
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %33

17:                                               ; preds = %3
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 9
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %22 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %21, i32 0, i32 32
  store i32 %20, i32* %22, align 4
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 8
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %27 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %26, i32 0, i32 31
  store i32 %25, i32* %27, align 4
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 7
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %32 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %31, i32 0, i32 30
  store i32 %30, i32* %32, align 4
  br label %64

33:                                               ; preds = %3
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 12
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %38 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %37, i32 0, i32 32
  store i32 %36, i32* %38, align 4
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 11
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %43 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %42, i32 0, i32 31
  store i32 %41, i32* %43, align 4
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 10
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %48 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %47, i32 0, i32 30
  store i32 %46, i32* %48, align 4
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 9
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.ia64_sal_os_state*, %struct.ia64_sal_os_state** %5, align 8
  %53 = getelementptr inbounds %struct.ia64_sal_os_state, %struct.ia64_sal_os_state* %52, i32 0, i32 2
  store i32 %51, i32* %53, align 8
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 8
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.ia64_sal_os_state*, %struct.ia64_sal_os_state** %5, align 8
  %58 = getelementptr inbounds %struct.ia64_sal_os_state, %struct.ia64_sal_os_state* %57, i32 0, i32 1
  store i32 %56, i32* %58, align 4
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 7
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.ia64_sal_os_state*, %struct.ia64_sal_os_state** %5, align 8
  %63 = getelementptr inbounds %struct.ia64_sal_os_state, %struct.ia64_sal_os_state* %62, i32 0, i32 0
  store i32 %61, i32* %63, align 8
  br label %64

64:                                               ; preds = %33, %17
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 6
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %69 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %68, i32 0, i32 29
  store i32 %67, i32* %69, align 4
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 5
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %74 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %73, i32 0, i32 28
  store i32 %72, i32* %74, align 4
  %75 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 4
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %79 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %78, i32 0, i32 27
  store i32 %77, i32* %79, align 4
  %80 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 3
  %82 = load i32*, i32** %81, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 0
  %84 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %88 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %87, i32 0, i32 26
  %89 = load i64*, i64** %6, align 8
  %90 = call i32 @copy_reg(i32* %83, i32 %86, i32* %88, i64* %89)
  %91 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 3
  %93 = load i32*, i32** %92, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 1
  %95 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %99 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %98, i32 0, i32 25
  %100 = load i64*, i64** %6, align 8
  %101 = call i32 @copy_reg(i32* %94, i32 %97, i32* %99, i64* %100)
  %102 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i32 0, i32 3
  %104 = load i32*, i32** %103, align 8
  %105 = getelementptr inbounds i32, i32* %104, i64 2
  %106 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %110 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %109, i32 0, i32 24
  %111 = load i64*, i64** %6, align 8
  %112 = call i32 @copy_reg(i32* %105, i32 %108, i32* %110, i64* %111)
  %113 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %114 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %113, i32 0, i32 3
  %115 = load i32*, i32** %114, align 8
  %116 = getelementptr inbounds i32, i32* %115, i64 7
  %117 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %118 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %121 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %120, i32 0, i32 23
  %122 = load i64*, i64** %6, align 8
  %123 = call i32 @copy_reg(i32* %116, i32 %119, i32* %121, i64* %122)
  %124 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %125 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %124, i32 0, i32 3
  %126 = load i32*, i32** %125, align 8
  %127 = getelementptr inbounds i32, i32* %126, i64 8
  %128 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %129 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %132 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %131, i32 0, i32 22
  %133 = load i64*, i64** %6, align 8
  %134 = call i32 @copy_reg(i32* %127, i32 %130, i32* %132, i64* %133)
  %135 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %136 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %135, i32 0, i32 3
  %137 = load i32*, i32** %136, align 8
  %138 = getelementptr inbounds i32, i32* %137, i64 9
  %139 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %140 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %143 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %142, i32 0, i32 21
  %144 = load i64*, i64** %6, align 8
  %145 = call i32 @copy_reg(i32* %138, i32 %141, i32* %143, i64* %144)
  %146 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %147 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %146, i32 0, i32 3
  %148 = load i32*, i32** %147, align 8
  %149 = getelementptr inbounds i32, i32* %148, i64 10
  %150 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %151 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %154 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %153, i32 0, i32 20
  %155 = load i64*, i64** %6, align 8
  %156 = call i32 @copy_reg(i32* %149, i32 %152, i32* %154, i64* %155)
  %157 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %158 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %157, i32 0, i32 3
  %159 = load i32*, i32** %158, align 8
  %160 = getelementptr inbounds i32, i32* %159, i64 11
  %161 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %162 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 8
  %164 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %165 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %164, i32 0, i32 19
  %166 = load i64*, i64** %6, align 8
  %167 = call i32 @copy_reg(i32* %160, i32 %163, i32* %165, i64* %166)
  %168 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %169 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %168, i32 0, i32 3
  %170 = load i32*, i32** %169, align 8
  %171 = getelementptr inbounds i32, i32* %170, i64 12
  %172 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %173 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 8
  %175 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %176 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %175, i32 0, i32 18
  %177 = load i64*, i64** %6, align 8
  %178 = call i32 @copy_reg(i32* %171, i32 %174, i32* %176, i64* %177)
  %179 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %180 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %179, i32 0, i32 3
  %181 = load i32*, i32** %180, align 8
  %182 = getelementptr inbounds i32, i32* %181, i64 13
  %183 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %184 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 8
  %186 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %187 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %186, i32 0, i32 17
  %188 = load i64*, i64** %6, align 8
  %189 = call i32 @copy_reg(i32* %182, i32 %185, i32* %187, i64* %188)
  %190 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %191 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %190, i32 0, i32 3
  %192 = load i32*, i32** %191, align 8
  %193 = getelementptr inbounds i32, i32* %192, i64 14
  %194 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %195 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 8
  %197 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %198 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %197, i32 0, i32 16
  %199 = load i64*, i64** %6, align 8
  %200 = call i32 @copy_reg(i32* %193, i32 %196, i32* %198, i64* %199)
  %201 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %202 = call %struct.TYPE_4__* @ia64_psr(%struct.pt_regs* %201)
  %203 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %202, i32 0, i32 0
  %204 = load i64, i64* %203, align 8
  %205 = icmp ne i64 %204, 0
  br i1 %205, label %206, label %210

206:                                              ; preds = %64
  %207 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %208 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %207, i32 0, i32 2
  %209 = load i32*, i32** %208, align 8
  store i32* %209, i32** %8, align 8
  br label %214

210:                                              ; preds = %64
  %211 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %212 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %211, i32 0, i32 1
  %213 = load i32*, i32** %212, align 8
  store i32* %213, i32** %8, align 8
  br label %214

214:                                              ; preds = %210, %206
  %215 = load i32*, i32** %8, align 8
  %216 = getelementptr inbounds i32, i32* %215, i64 0
  %217 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %218 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %217, i32 0, i32 0
  %219 = load i32, i32* %218, align 8
  %220 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %221 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %220, i32 0, i32 15
  %222 = load i64*, i64** %6, align 8
  %223 = call i32 @copy_reg(i32* %216, i32 %219, i32* %221, i64* %222)
  %224 = load i32*, i32** %8, align 8
  %225 = getelementptr inbounds i32, i32* %224, i64 1
  %226 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %227 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %226, i32 0, i32 0
  %228 = load i32, i32* %227, align 8
  %229 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %230 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %229, i32 0, i32 14
  %231 = load i64*, i64** %6, align 8
  %232 = call i32 @copy_reg(i32* %225, i32 %228, i32* %230, i64* %231)
  %233 = load i32*, i32** %8, align 8
  %234 = getelementptr inbounds i32, i32* %233, i64 2
  %235 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %236 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %235, i32 0, i32 0
  %237 = load i32, i32* %236, align 8
  %238 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %239 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %238, i32 0, i32 13
  %240 = load i64*, i64** %6, align 8
  %241 = call i32 @copy_reg(i32* %234, i32 %237, i32* %239, i64* %240)
  %242 = load i32*, i32** %8, align 8
  %243 = getelementptr inbounds i32, i32* %242, i64 3
  %244 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %245 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %244, i32 0, i32 0
  %246 = load i32, i32* %245, align 8
  %247 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %248 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %247, i32 0, i32 12
  %249 = load i64*, i64** %6, align 8
  %250 = call i32 @copy_reg(i32* %243, i32 %246, i32* %248, i64* %249)
  %251 = load i32*, i32** %8, align 8
  %252 = getelementptr inbounds i32, i32* %251, i64 4
  %253 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %254 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %253, i32 0, i32 0
  %255 = load i32, i32* %254, align 8
  %256 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %257 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %256, i32 0, i32 11
  %258 = load i64*, i64** %6, align 8
  %259 = call i32 @copy_reg(i32* %252, i32 %255, i32* %257, i64* %258)
  %260 = load i32*, i32** %8, align 8
  %261 = getelementptr inbounds i32, i32* %260, i64 5
  %262 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %263 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %262, i32 0, i32 0
  %264 = load i32, i32* %263, align 8
  %265 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %266 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %265, i32 0, i32 10
  %267 = load i64*, i64** %6, align 8
  %268 = call i32 @copy_reg(i32* %261, i32 %264, i32* %266, i64* %267)
  %269 = load i32*, i32** %8, align 8
  %270 = getelementptr inbounds i32, i32* %269, i64 6
  %271 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %272 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %271, i32 0, i32 0
  %273 = load i32, i32* %272, align 8
  %274 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %275 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %274, i32 0, i32 9
  %276 = load i64*, i64** %6, align 8
  %277 = call i32 @copy_reg(i32* %270, i32 %273, i32* %275, i64* %276)
  %278 = load i32*, i32** %8, align 8
  %279 = getelementptr inbounds i32, i32* %278, i64 7
  %280 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %281 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %280, i32 0, i32 0
  %282 = load i32, i32* %281, align 8
  %283 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %284 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %283, i32 0, i32 8
  %285 = load i64*, i64** %6, align 8
  %286 = call i32 @copy_reg(i32* %279, i32 %282, i32* %284, i64* %285)
  %287 = load i32*, i32** %8, align 8
  %288 = getelementptr inbounds i32, i32* %287, i64 8
  %289 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %290 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %289, i32 0, i32 0
  %291 = load i32, i32* %290, align 8
  %292 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %293 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %292, i32 0, i32 7
  %294 = load i64*, i64** %6, align 8
  %295 = call i32 @copy_reg(i32* %288, i32 %291, i32* %293, i64* %294)
  %296 = load i32*, i32** %8, align 8
  %297 = getelementptr inbounds i32, i32* %296, i64 9
  %298 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %299 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %298, i32 0, i32 0
  %300 = load i32, i32* %299, align 8
  %301 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %302 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %301, i32 0, i32 6
  %303 = load i64*, i64** %6, align 8
  %304 = call i32 @copy_reg(i32* %297, i32 %300, i32* %302, i64* %303)
  %305 = load i32*, i32** %8, align 8
  %306 = getelementptr inbounds i32, i32* %305, i64 10
  %307 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %308 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %307, i32 0, i32 0
  %309 = load i32, i32* %308, align 8
  %310 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %311 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %310, i32 0, i32 5
  %312 = load i64*, i64** %6, align 8
  %313 = call i32 @copy_reg(i32* %306, i32 %309, i32* %311, i64* %312)
  %314 = load i32*, i32** %8, align 8
  %315 = getelementptr inbounds i32, i32* %314, i64 11
  %316 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %317 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %316, i32 0, i32 0
  %318 = load i32, i32* %317, align 8
  %319 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %320 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %319, i32 0, i32 4
  %321 = load i64*, i64** %6, align 8
  %322 = call i32 @copy_reg(i32* %315, i32 %318, i32* %320, i64* %321)
  %323 = load i32*, i32** %8, align 8
  %324 = getelementptr inbounds i32, i32* %323, i64 12
  %325 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %326 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %325, i32 0, i32 0
  %327 = load i32, i32* %326, align 8
  %328 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %329 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %328, i32 0, i32 3
  %330 = load i64*, i64** %6, align 8
  %331 = call i32 @copy_reg(i32* %324, i32 %327, i32* %329, i64* %330)
  %332 = load i32*, i32** %8, align 8
  %333 = getelementptr inbounds i32, i32* %332, i64 13
  %334 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %335 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %334, i32 0, i32 0
  %336 = load i32, i32* %335, align 8
  %337 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %338 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %337, i32 0, i32 2
  %339 = load i64*, i64** %6, align 8
  %340 = call i32 @copy_reg(i32* %333, i32 %336, i32* %338, i64* %339)
  %341 = load i32*, i32** %8, align 8
  %342 = getelementptr inbounds i32, i32* %341, i64 14
  %343 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %344 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %343, i32 0, i32 0
  %345 = load i32, i32* %344, align 8
  %346 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %347 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %346, i32 0, i32 1
  %348 = load i64*, i64** %6, align 8
  %349 = call i32 @copy_reg(i32* %342, i32 %345, i32* %347, i64* %348)
  %350 = load i32*, i32** %8, align 8
  %351 = getelementptr inbounds i32, i32* %350, i64 15
  %352 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %353 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %352, i32 0, i32 0
  %354 = load i32, i32* %353, align 8
  %355 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %356 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %355, i32 0, i32 0
  %357 = load i64*, i64** %6, align 8
  %358 = call i32 @copy_reg(i32* %351, i32 %354, i32* %356, i64* %357)
  ret void
}

declare dso_local %struct.TYPE_4__* @ia64_psr(%struct.pt_regs*) #1

declare dso_local i32 @copy_reg(i32*, i32, i32*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
