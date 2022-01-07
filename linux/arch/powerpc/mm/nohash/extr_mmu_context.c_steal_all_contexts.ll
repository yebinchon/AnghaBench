; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/mm/nohash/extr_mmu_context.c_steal_all_contexts.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/mm/nohash/extr_mmu_context.c_steal_all_contexts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mm_struct = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32 }

@FIRST_CONTEXT = common dso_local global i32 0, align 4
@LAST_CONTEXT = common dso_local global i32 0, align 4
@context_mm = common dso_local global %struct.mm_struct** null, align 8
@.str = private unnamed_addr constant [22 x i8] c" | steal %d from 0x%p\00", align 1
@MMU_NO_CONTEXT = common dso_local global i32 0, align 4
@context_map = common dso_local global i32 0, align 4
@nr_free_contexts = common dso_local global i32 0, align 4
@stale_map = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @steal_all_contexts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @steal_all_contexts() #0 {
  %1 = alloca %struct.mm_struct*, align 8
  %2 = alloca i32, align 4
  %3 = load i32, i32* @FIRST_CONTEXT, align 4
  store i32 %3, i32* %2, align 4
  br label %4

4:                                                ; preds = %33, %0
  %5 = load i32, i32* %2, align 4
  %6 = load i32, i32* @LAST_CONTEXT, align 4
  %7 = icmp ule i32 %5, %6
  br i1 %7, label %8, label %36

8:                                                ; preds = %4
  %9 = load %struct.mm_struct**, %struct.mm_struct*** @context_mm, align 8
  %10 = load i32, i32* %2, align 4
  %11 = zext i32 %10 to i64
  %12 = getelementptr inbounds %struct.mm_struct*, %struct.mm_struct** %9, i64 %11
  %13 = load %struct.mm_struct*, %struct.mm_struct** %12, align 8
  store %struct.mm_struct* %13, %struct.mm_struct** %1, align 8
  %14 = load i32, i32* %2, align 4
  %15 = load %struct.mm_struct*, %struct.mm_struct** %1, align 8
  %16 = call i32 @pr_hardcont(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %14, %struct.mm_struct* %15)
  %17 = load i32, i32* @MMU_NO_CONTEXT, align 4
  %18 = load %struct.mm_struct*, %struct.mm_struct** %1, align 8
  %19 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  store i32 %17, i32* %20, align 8
  %21 = load i32, i32* %2, align 4
  %22 = load i32, i32* @FIRST_CONTEXT, align 4
  %23 = icmp ne i32 %21, %22
  br i1 %23, label %24, label %32

24:                                               ; preds = %8
  %25 = load %struct.mm_struct**, %struct.mm_struct*** @context_mm, align 8
  %26 = load i32, i32* %2, align 4
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds %struct.mm_struct*, %struct.mm_struct** %25, i64 %27
  store %struct.mm_struct* null, %struct.mm_struct** %28, align 8
  %29 = load i32, i32* %2, align 4
  %30 = load i32, i32* @context_map, align 4
  %31 = call i32 @__clear_bit(i32 %29, i32 %30)
  br label %32

32:                                               ; preds = %24, %8
  br label %33

33:                                               ; preds = %32
  %34 = load i32, i32* %2, align 4
  %35 = add i32 %34, 1
  store i32 %35, i32* %2, align 4
  br label %4

36:                                               ; preds = %4
  %37 = call i32 (...) @_tlbil_all()
  %38 = load i32, i32* @LAST_CONTEXT, align 4
  %39 = load i32, i32* @FIRST_CONTEXT, align 4
  %40 = sub i32 %38, %39
  store i32 %40, i32* @nr_free_contexts, align 4
  %41 = load i32, i32* @FIRST_CONTEXT, align 4
  ret i32 %41
}

declare dso_local i32 @pr_hardcont(i8*, i32, %struct.mm_struct*) #1

declare dso_local i32 @__clear_bit(i32, i32) #1

declare dso_local i32 @_tlbil_all(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
