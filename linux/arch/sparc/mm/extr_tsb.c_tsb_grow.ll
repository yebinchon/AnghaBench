; ModuleID = '/home/carl/AnghaBench/linux/arch/sparc/mm/extr_tsb.c_tsb_grow.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sparc/mm/extr_tsb.c_tsb_grow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mm_struct = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64, i32, i32, %struct.tsb* }
%struct.tsb = type { i32 }

@PAGE_SIZE = common dso_local global i64 0, align 8
@MAX_ORDER = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@__GFP_NOWARN = common dso_local global i32 0, align 4
@__GFP_NORETRY = common dso_local global i32 0, align 4
@tsb_caches = common dso_local global i32* null, align 8
@tlb_type = common dso_local global i64 0, align 8
@cheetah_plus = common dso_local global i64 0, align 8
@hypervisor = common dso_local global i64 0, align 8
@MM_TSB_BASE = common dso_local global i64 0, align 8
@PAGE_SHIFT = common dso_local global i64 0, align 8
@REAL_HPAGE_SHIFT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tsb_grow(%struct.mm_struct* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.mm_struct*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.tsb*, align 8
  %12 = alloca %struct.tsb*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  store %struct.mm_struct* %0, %struct.mm_struct** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  store i64 1048576, i64* %7, align 8
  %19 = load i64, i64* %7, align 8
  %20 = load i64, i64* @PAGE_SIZE, align 8
  %21 = load i64, i64* @MAX_ORDER, align 8
  %22 = shl i64 %20, %21
  %23 = icmp ugt i64 %19, %22
  br i1 %23, label %24, label %28

24:                                               ; preds = %3
  %25 = load i64, i64* @PAGE_SIZE, align 8
  %26 = load i64, i64* @MAX_ORDER, align 8
  %27 = shl i64 %25, %26
  store i64 %27, i64* %7, align 8
  br label %28

28:                                               ; preds = %24, %3
  store i64 0, i64* %13, align 8
  store i64 8192, i64* %8, align 8
  br label %29

29:                                               ; preds = %43, %28
  %30 = load i64, i64* %8, align 8
  %31 = load i64, i64* %7, align 8
  %32 = icmp ult i64 %30, %31
  br i1 %32, label %33, label %46

33:                                               ; preds = %29
  %34 = load i64, i64* %8, align 8
  %35 = call i64 @tsb_size_to_rss_limit(i64 %34)
  store i64 %35, i64* %15, align 8
  %36 = load i64, i64* %15, align 8
  %37 = load i64, i64* %6, align 8
  %38 = icmp ugt i64 %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %33
  br label %46

40:                                               ; preds = %33
  %41 = load i64, i64* %13, align 8
  %42 = add i64 %41, 1
  store i64 %42, i64* %13, align 8
  br label %43

43:                                               ; preds = %40
  %44 = load i64, i64* %8, align 8
  %45 = shl i64 %44, 1
  store i64 %45, i64* %8, align 8
  br label %29

46:                                               ; preds = %39, %29
  %47 = load i64, i64* %8, align 8
  %48 = load i64, i64* %7, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %46
  store i64 -1, i64* %15, align 8
  br label %51

51:                                               ; preds = %50, %46
  br label %52

52:                                               ; preds = %91, %51
  %53 = load i32, i32* @GFP_KERNEL, align 4
  store i32 %53, i32* %16, align 4
  %54 = load i64, i64* %8, align 8
  %55 = load i64, i64* @PAGE_SIZE, align 8
  %56 = mul i64 %55, 2
  %57 = icmp ugt i64 %54, %56
  br i1 %57, label %58, label %64

58:                                               ; preds = %52
  %59 = load i32, i32* @__GFP_NOWARN, align 4
  %60 = load i32, i32* @__GFP_NORETRY, align 4
  %61 = or i32 %59, %60
  %62 = load i32, i32* %16, align 4
  %63 = or i32 %62, %61
  store i32 %63, i32* %16, align 4
  br label %64

64:                                               ; preds = %58, %52
  %65 = load i32*, i32** @tsb_caches, align 8
  %66 = load i64, i64* %13, align 8
  %67 = getelementptr inbounds i32, i32* %65, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* %16, align 4
  %70 = call i32 (...) @numa_node_id()
  %71 = call %struct.tsb* @kmem_cache_alloc_node(i32 %68, i32 %69, i32 %70)
  store %struct.tsb* %71, %struct.tsb** %12, align 8
  %72 = load %struct.tsb*, %struct.tsb** %12, align 8
  %73 = icmp ne %struct.tsb* %72, null
  %74 = xor i1 %73, true
  %75 = zext i1 %74 to i32
  %76 = call i64 @unlikely(i32 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %111

78:                                               ; preds = %64
  %79 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  %80 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 1
  %82 = load %struct.TYPE_3__*, %struct.TYPE_3__** %81, align 8
  %83 = load i64, i64* %5, align 8
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 3
  %86 = load %struct.tsb*, %struct.tsb** %85, align 8
  %87 = icmp eq %struct.tsb* %86, null
  br i1 %87, label %88, label %92

88:                                               ; preds = %78
  %89 = load i64, i64* %13, align 8
  %90 = icmp ugt i64 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %88
  store i64 0, i64* %13, align 8
  store i64 8192, i64* %8, align 8
  store i64 -1, i64* %15, align 8
  br label %52

92:                                               ; preds = %88, %78
  %93 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  %94 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 1
  %96 = load %struct.TYPE_3__*, %struct.TYPE_3__** %95, align 8
  %97 = load i64, i64* %5, align 8
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i64 %97
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 3
  %100 = load %struct.tsb*, %struct.tsb** %99, align 8
  %101 = icmp ne %struct.tsb* %100, null
  br i1 %101, label %102, label %110

102:                                              ; preds = %92
  %103 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  %104 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 1
  %106 = load %struct.TYPE_3__*, %struct.TYPE_3__** %105, align 8
  %107 = load i64, i64* %5, align 8
  %108 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %106, i64 %107
  %109 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %108, i32 0, i32 0
  store i64 -1, i64* %109, align 8
  br label %110

110:                                              ; preds = %102, %92
  br label %253

111:                                              ; preds = %64
  %112 = load %struct.tsb*, %struct.tsb** %12, align 8
  %113 = load i64, i64* %8, align 8
  %114 = call i32 @tsb_init(%struct.tsb* %112, i64 %113)
  %115 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  %116 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i32 0, i32 0
  %118 = load i64, i64* %10, align 8
  %119 = call i32 @spin_lock_irqsave(i32* %117, i64 %118)
  %120 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  %121 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 1
  %123 = load %struct.TYPE_3__*, %struct.TYPE_3__** %122, align 8
  %124 = load i64, i64* %5, align 8
  %125 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %123, i64 %124
  %126 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %125, i32 0, i32 3
  %127 = load %struct.tsb*, %struct.tsb** %126, align 8
  store %struct.tsb* %127, %struct.tsb** %11, align 8
  %128 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  %129 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i32 0, i32 1
  %131 = load %struct.TYPE_3__*, %struct.TYPE_3__** %130, align 8
  %132 = load i64, i64* %5, align 8
  %133 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %131, i64 %132
  %134 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 8
  %136 = sext i32 %135 to i64
  %137 = and i64 %136, 7
  store i64 %137, i64* %14, align 8
  %138 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  %139 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %139, i32 0, i32 1
  %141 = load %struct.TYPE_3__*, %struct.TYPE_3__** %140, align 8
  %142 = load i64, i64* %5, align 8
  %143 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %141, i64 %142
  %144 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %143, i32 0, i32 2
  %145 = load i32, i32* %144, align 4
  %146 = sext i32 %145 to i64
  %147 = mul i64 %146, 4
  store i64 %147, i64* %9, align 8
  %148 = load %struct.tsb*, %struct.tsb** %11, align 8
  %149 = icmp ne %struct.tsb* %148, null
  br i1 %149, label %150, label %161

150:                                              ; preds = %111
  %151 = load i64, i64* %6, align 8
  %152 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  %153 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %153, i32 0, i32 1
  %155 = load %struct.TYPE_3__*, %struct.TYPE_3__** %154, align 8
  %156 = load i64, i64* %5, align 8
  %157 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %155, i64 %156
  %158 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %157, i32 0, i32 0
  %159 = load i64, i64* %158, align 8
  %160 = icmp ult i64 %151, %159
  br label %161

161:                                              ; preds = %150, %111
  %162 = phi i1 [ false, %111 ], [ %160, %150 ]
  %163 = zext i1 %162 to i32
  %164 = call i64 @unlikely(i32 %163)
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %178

166:                                              ; preds = %161
  %167 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  %168 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %167, i32 0, i32 0
  %169 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %168, i32 0, i32 0
  %170 = load i64, i64* %10, align 8
  %171 = call i32 @spin_unlock_irqrestore(i32* %169, i64 %170)
  %172 = load i32*, i32** @tsb_caches, align 8
  %173 = load i64, i64* %13, align 8
  %174 = getelementptr inbounds i32, i32* %172, i64 %173
  %175 = load i32, i32* %174, align 4
  %176 = load %struct.tsb*, %struct.tsb** %12, align 8
  %177 = call i32 @kmem_cache_free(i32 %175, %struct.tsb* %176)
  br label %253

178:                                              ; preds = %161
  %179 = load i64, i64* %15, align 8
  %180 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  %181 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %180, i32 0, i32 0
  %182 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %181, i32 0, i32 1
  %183 = load %struct.TYPE_3__*, %struct.TYPE_3__** %182, align 8
  %184 = load i64, i64* %5, align 8
  %185 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %183, i64 %184
  %186 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %185, i32 0, i32 0
  store i64 %179, i64* %186, align 8
  %187 = load %struct.tsb*, %struct.tsb** %11, align 8
  %188 = icmp ne %struct.tsb* %187, null
  br i1 %188, label %189, label %220

189:                                              ; preds = %178
  %190 = load %struct.tsb*, %struct.tsb** %11, align 8
  %191 = ptrtoint %struct.tsb* %190 to i64
  store i64 %191, i64* %17, align 8
  %192 = load %struct.tsb*, %struct.tsb** %12, align 8
  %193 = ptrtoint %struct.tsb* %192 to i64
  store i64 %193, i64* %18, align 8
  %194 = load i64, i64* @tlb_type, align 8
  %195 = load i64, i64* @cheetah_plus, align 8
  %196 = icmp eq i64 %194, %195
  br i1 %196, label %201, label %197

197:                                              ; preds = %189
  %198 = load i64, i64* @tlb_type, align 8
  %199 = load i64, i64* @hypervisor, align 8
  %200 = icmp eq i64 %198, %199
  br i1 %200, label %201, label %206

201:                                              ; preds = %197, %189
  %202 = load i64, i64* %17, align 8
  %203 = call i64 @__pa(i64 %202)
  store i64 %203, i64* %17, align 8
  %204 = load i64, i64* %18, align 8
  %205 = call i64 @__pa(i64 %204)
  store i64 %205, i64* %18, align 8
  br label %206

206:                                              ; preds = %201, %197
  %207 = load i64, i64* %17, align 8
  %208 = load i64, i64* %9, align 8
  %209 = load i64, i64* %18, align 8
  %210 = load i64, i64* %8, align 8
  %211 = load i64, i64* %5, align 8
  %212 = load i64, i64* @MM_TSB_BASE, align 8
  %213 = icmp eq i64 %211, %212
  br i1 %213, label %214, label %216

214:                                              ; preds = %206
  %215 = load i64, i64* @PAGE_SHIFT, align 8
  br label %218

216:                                              ; preds = %206
  %217 = load i64, i64* @REAL_HPAGE_SHIFT, align 8
  br label %218

218:                                              ; preds = %216, %214
  %219 = phi i64 [ %215, %214 ], [ %217, %216 ]
  call void @copy_tsb(i64 %207, i64 %208, i64 %209, i64 %210, i64 %219)
  br label %220

220:                                              ; preds = %218, %178
  %221 = load %struct.tsb*, %struct.tsb** %12, align 8
  %222 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  %223 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %222, i32 0, i32 0
  %224 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %223, i32 0, i32 1
  %225 = load %struct.TYPE_3__*, %struct.TYPE_3__** %224, align 8
  %226 = load i64, i64* %5, align 8
  %227 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %225, i64 %226
  %228 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %227, i32 0, i32 3
  store %struct.tsb* %221, %struct.tsb** %228, align 8
  %229 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  %230 = load i64, i64* %5, align 8
  %231 = load i64, i64* %8, align 8
  %232 = call i32 @setup_tsb_params(%struct.mm_struct* %229, i64 %230, i64 %231)
  %233 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  %234 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %233, i32 0, i32 0
  %235 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %234, i32 0, i32 0
  %236 = load i64, i64* %10, align 8
  %237 = call i32 @spin_unlock_irqrestore(i32* %235, i64 %236)
  %238 = load %struct.tsb*, %struct.tsb** %11, align 8
  %239 = icmp ne %struct.tsb* %238, null
  br i1 %239, label %240, label %253

240:                                              ; preds = %220
  %241 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  %242 = call i32 @tsb_context_switch(%struct.mm_struct* %241)
  %243 = call i32 (...) @preempt_disable()
  %244 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  %245 = call i32 @smp_tsb_sync(%struct.mm_struct* %244)
  %246 = call i32 (...) @preempt_enable()
  %247 = load i32*, i32** @tsb_caches, align 8
  %248 = load i64, i64* %14, align 8
  %249 = getelementptr inbounds i32, i32* %247, i64 %248
  %250 = load i32, i32* %249, align 4
  %251 = load %struct.tsb*, %struct.tsb** %11, align 8
  %252 = call i32 @kmem_cache_free(i32 %250, %struct.tsb* %251)
  br label %253

253:                                              ; preds = %110, %166, %240, %220
  ret void
}

declare dso_local i64 @tsb_size_to_rss_limit(i64) #1

declare dso_local %struct.tsb* @kmem_cache_alloc_node(i32, i32, i32) #1

declare dso_local i32 @numa_node_id(...) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @tsb_init(%struct.tsb*, i64) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @kmem_cache_free(i32, %struct.tsb*) #1

declare dso_local i64 @__pa(i64) #1

declare dso_local void @copy_tsb(i64, i64, i64, i64, i64) #1

declare dso_local i32 @setup_tsb_params(%struct.mm_struct*, i64, i64) #1

declare dso_local i32 @tsb_context_switch(%struct.mm_struct*) #1

declare dso_local i32 @preempt_disable(...) #1

declare dso_local i32 @smp_tsb_sync(%struct.mm_struct*) #1

declare dso_local i32 @preempt_enable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
