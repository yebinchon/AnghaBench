; ModuleID = '/home/carl/AnghaBench/linux/arch/sparc/mm/extr_srmmu.c_alloc_context.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sparc/mm/extr_srmmu.c_alloc_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ctx_list = type { i32, %struct.mm_struct*, %struct.ctx_list* }
%struct.mm_struct = type { i32 }

@ctx_free = common dso_local global %struct.ctx_list zeroinitializer, align 8
@ctx_used = common dso_local global %struct.ctx_list zeroinitializer, align 8
@.str = private unnamed_addr constant [20 x i8] c"out of mmu contexts\00", align 1
@NO_CONTEXT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mm_struct*, %struct.mm_struct*)* @alloc_context to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @alloc_context(%struct.mm_struct* %0, %struct.mm_struct* %1) #0 {
  %3 = alloca %struct.mm_struct*, align 8
  %4 = alloca %struct.mm_struct*, align 8
  %5 = alloca %struct.ctx_list*, align 8
  store %struct.mm_struct* %0, %struct.mm_struct** %3, align 8
  store %struct.mm_struct* %1, %struct.mm_struct** %4, align 8
  %6 = load %struct.ctx_list*, %struct.ctx_list** getelementptr inbounds (%struct.ctx_list, %struct.ctx_list* @ctx_free, i32 0, i32 2), align 8
  store %struct.ctx_list* %6, %struct.ctx_list** %5, align 8
  %7 = load %struct.ctx_list*, %struct.ctx_list** %5, align 8
  %8 = icmp ne %struct.ctx_list* %7, @ctx_free
  br i1 %8, label %9, label %22

9:                                                ; preds = %2
  %10 = load %struct.ctx_list*, %struct.ctx_list** %5, align 8
  %11 = call i32 @remove_from_ctx_list(%struct.ctx_list* %10)
  %12 = load %struct.ctx_list*, %struct.ctx_list** %5, align 8
  %13 = call i32 @add_to_used_ctxlist(%struct.ctx_list* %12)
  %14 = load %struct.ctx_list*, %struct.ctx_list** %5, align 8
  %15 = getelementptr inbounds %struct.ctx_list, %struct.ctx_list* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  %18 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 4
  %19 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  %20 = load %struct.ctx_list*, %struct.ctx_list** %5, align 8
  %21 = getelementptr inbounds %struct.ctx_list, %struct.ctx_list* %20, i32 0, i32 1
  store %struct.mm_struct* %19, %struct.mm_struct** %21, align 8
  br label %64

22:                                               ; preds = %2
  %23 = load %struct.ctx_list*, %struct.ctx_list** getelementptr inbounds (%struct.ctx_list, %struct.ctx_list* @ctx_used, i32 0, i32 2), align 8
  store %struct.ctx_list* %23, %struct.ctx_list** %5, align 8
  %24 = load %struct.ctx_list*, %struct.ctx_list** %5, align 8
  %25 = getelementptr inbounds %struct.ctx_list, %struct.ctx_list* %24, i32 0, i32 1
  %26 = load %struct.mm_struct*, %struct.mm_struct** %25, align 8
  %27 = load %struct.mm_struct*, %struct.mm_struct** %3, align 8
  %28 = icmp eq %struct.mm_struct* %26, %27
  br i1 %28, label %29, label %33

29:                                               ; preds = %22
  %30 = load %struct.ctx_list*, %struct.ctx_list** %5, align 8
  %31 = getelementptr inbounds %struct.ctx_list, %struct.ctx_list* %30, i32 0, i32 2
  %32 = load %struct.ctx_list*, %struct.ctx_list** %31, align 8
  store %struct.ctx_list* %32, %struct.ctx_list** %5, align 8
  br label %33

33:                                               ; preds = %29, %22
  %34 = load %struct.ctx_list*, %struct.ctx_list** %5, align 8
  %35 = icmp eq %struct.ctx_list* %34, @ctx_used
  br i1 %35, label %36, label %38

36:                                               ; preds = %33
  %37 = call i32 @panic(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  br label %38

38:                                               ; preds = %36, %33
  %39 = load %struct.ctx_list*, %struct.ctx_list** %5, align 8
  %40 = getelementptr inbounds %struct.ctx_list, %struct.ctx_list* %39, i32 0, i32 1
  %41 = load %struct.mm_struct*, %struct.mm_struct** %40, align 8
  %42 = call i32 @flush_cache_mm(%struct.mm_struct* %41)
  %43 = load %struct.ctx_list*, %struct.ctx_list** %5, align 8
  %44 = getelementptr inbounds %struct.ctx_list, %struct.ctx_list* %43, i32 0, i32 1
  %45 = load %struct.mm_struct*, %struct.mm_struct** %44, align 8
  %46 = call i32 @flush_tlb_mm(%struct.mm_struct* %45)
  %47 = load %struct.ctx_list*, %struct.ctx_list** %5, align 8
  %48 = call i32 @remove_from_ctx_list(%struct.ctx_list* %47)
  %49 = load %struct.ctx_list*, %struct.ctx_list** %5, align 8
  %50 = call i32 @add_to_used_ctxlist(%struct.ctx_list* %49)
  %51 = load i32, i32* @NO_CONTEXT, align 4
  %52 = load %struct.ctx_list*, %struct.ctx_list** %5, align 8
  %53 = getelementptr inbounds %struct.ctx_list, %struct.ctx_list* %52, i32 0, i32 1
  %54 = load %struct.mm_struct*, %struct.mm_struct** %53, align 8
  %55 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %54, i32 0, i32 0
  store i32 %51, i32* %55, align 4
  %56 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  %57 = load %struct.ctx_list*, %struct.ctx_list** %5, align 8
  %58 = getelementptr inbounds %struct.ctx_list, %struct.ctx_list* %57, i32 0, i32 1
  store %struct.mm_struct* %56, %struct.mm_struct** %58, align 8
  %59 = load %struct.ctx_list*, %struct.ctx_list** %5, align 8
  %60 = getelementptr inbounds %struct.ctx_list, %struct.ctx_list* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  %63 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %62, i32 0, i32 0
  store i32 %61, i32* %63, align 4
  br label %64

64:                                               ; preds = %38, %9
  ret void
}

declare dso_local i32 @remove_from_ctx_list(%struct.ctx_list*) #1

declare dso_local i32 @add_to_used_ctxlist(%struct.ctx_list*) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @flush_cache_mm(%struct.mm_struct*) #1

declare dso_local i32 @flush_tlb_mm(%struct.mm_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
