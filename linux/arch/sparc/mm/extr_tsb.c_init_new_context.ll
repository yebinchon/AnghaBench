; ModuleID = '/home/carl/AnghaBench/linux/arch/sparc/mm/extr_tsb.c_init_new_context.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sparc/mm/extr_tsb.c_init_new_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32 }
%struct.mm_struct = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i64, i64, %struct.TYPE_3__*, i32, i32*, i32 }
%struct.TYPE_3__ = type { i32* }

@MM_NUM_TSBS = common dso_local global i32 0, align 4
@MM_TSB_BASE = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@HPAGE_SIZE = common dso_local global i64 0, align 8
@MM_TSB_HUGE = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i64 0, align 8
@REAL_HPAGE_PER_HPAGE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @init_new_context(%struct.task_struct* %0, %struct.mm_struct* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.task_struct*, align 8
  %5 = alloca %struct.mm_struct*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.task_struct* %0, %struct.task_struct** %4, align 8
  store %struct.mm_struct* %1, %struct.mm_struct** %5, align 8
  %8 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %9 = call i64 @get_mm_rss(%struct.mm_struct* %8)
  store i64 %9, i64* %6, align 8
  %10 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %11 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 6
  %13 = call i32 @spin_lock_init(i32* %12)
  %14 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %15 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  store i64 0, i64* %16, align 8
  %17 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %18 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 5
  store i32* null, i32** %19, align 8
  %20 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %21 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 4
  %23 = call i32 @spin_lock_init(i32* %22)
  store i32 0, i32* %7, align 4
  br label %24

24:                                               ; preds = %37, %2
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* @MM_NUM_TSBS, align 4
  %27 = icmp ult i32 %25, %26
  br i1 %27, label %28, label %40

28:                                               ; preds = %24
  %29 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %30 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 3
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %31, align 8
  %33 = load i32, i32* %7, align 4
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  store i32* null, i32** %36, align 8
  br label %37

37:                                               ; preds = %28
  %38 = load i32, i32* %7, align 4
  %39 = add i32 %38, 1
  store i32 %39, i32* %7, align 4
  br label %24

40:                                               ; preds = %24
  %41 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %42 = load i64, i64* @MM_TSB_BASE, align 8
  %43 = load i64, i64* %6, align 8
  %44 = call i32 @tsb_grow(%struct.mm_struct* %41, i64 %42, i64 %43)
  %45 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %46 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 3
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %47, align 8
  %49 = load i64, i64* @MM_TSB_BASE, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = icmp ne i32* %52, null
  %54 = xor i1 %53, true
  %55 = zext i1 %54 to i32
  %56 = call i64 @unlikely(i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %40
  %59 = load i32, i32* @ENOMEM, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %3, align 4
  br label %62

61:                                               ; preds = %40
  store i32 0, i32* %3, align 4
  br label %62

62:                                               ; preds = %61, %58
  %63 = load i32, i32* %3, align 4
  ret i32 %63
}

declare dso_local i64 @get_mm_rss(%struct.mm_struct*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @tsb_grow(%struct.mm_struct*, i64, i64) #1

declare dso_local i64 @unlikely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
