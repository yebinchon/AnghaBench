; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/extr_ldt.c_ldt_dup_context.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/extr_ldt.c_ldt_dup_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mm_struct = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, %struct.ldt_struct* }
%struct.ldt_struct = type { i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@LDT_ENTRY_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ldt_dup_context(%struct.mm_struct* %0, %struct.mm_struct* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mm_struct*, align 8
  %5 = alloca %struct.mm_struct*, align 8
  %6 = alloca %struct.ldt_struct*, align 8
  %7 = alloca i32, align 4
  store %struct.mm_struct* %0, %struct.mm_struct** %4, align 8
  store %struct.mm_struct* %1, %struct.mm_struct** %5, align 8
  store i32 0, i32* %7, align 4
  %8 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  %9 = icmp ne %struct.mm_struct* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %74

11:                                               ; preds = %2
  %12 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  %13 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = call i32 @mutex_lock(i32* %14)
  %16 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  %17 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  %19 = load %struct.ldt_struct*, %struct.ldt_struct** %18, align 8
  %20 = icmp ne %struct.ldt_struct* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %11
  br label %68

22:                                               ; preds = %11
  %23 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  %24 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  %26 = load %struct.ldt_struct*, %struct.ldt_struct** %25, align 8
  %27 = getelementptr inbounds %struct.ldt_struct, %struct.ldt_struct* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call %struct.ldt_struct* @alloc_ldt_struct(i32 %28)
  store %struct.ldt_struct* %29, %struct.ldt_struct** %6, align 8
  %30 = load %struct.ldt_struct*, %struct.ldt_struct** %6, align 8
  %31 = icmp ne %struct.ldt_struct* %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %22
  %33 = load i32, i32* @ENOMEM, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %7, align 4
  br label %68

35:                                               ; preds = %22
  %36 = load %struct.ldt_struct*, %struct.ldt_struct** %6, align 8
  %37 = getelementptr inbounds %struct.ldt_struct, %struct.ldt_struct* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  %40 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 1
  %42 = load %struct.ldt_struct*, %struct.ldt_struct** %41, align 8
  %43 = getelementptr inbounds %struct.ldt_struct, %struct.ldt_struct* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.ldt_struct*, %struct.ldt_struct** %6, align 8
  %46 = getelementptr inbounds %struct.ldt_struct, %struct.ldt_struct* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @LDT_ENTRY_SIZE, align 4
  %49 = mul nsw i32 %47, %48
  %50 = call i32 @memcpy(i32 %38, i32 %44, i32 %49)
  %51 = load %struct.ldt_struct*, %struct.ldt_struct** %6, align 8
  %52 = call i32 @finalize_ldt_struct(%struct.ldt_struct* %51)
  %53 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %54 = load %struct.ldt_struct*, %struct.ldt_struct** %6, align 8
  %55 = call i32 @map_ldt_struct(%struct.mm_struct* %53, %struct.ldt_struct* %54, i32 0)
  store i32 %55, i32* %7, align 4
  %56 = load i32, i32* %7, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %35
  %59 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %60 = call i32 @free_ldt_pgtables(%struct.mm_struct* %59)
  %61 = load %struct.ldt_struct*, %struct.ldt_struct** %6, align 8
  %62 = call i32 @free_ldt_struct(%struct.ldt_struct* %61)
  br label %68

63:                                               ; preds = %35
  %64 = load %struct.ldt_struct*, %struct.ldt_struct** %6, align 8
  %65 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %66 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 1
  store %struct.ldt_struct* %64, %struct.ldt_struct** %67, align 8
  br label %68

68:                                               ; preds = %63, %58, %32, %21
  %69 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  %70 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  %72 = call i32 @mutex_unlock(i32* %71)
  %73 = load i32, i32* %7, align 4
  store i32 %73, i32* %3, align 4
  br label %74

74:                                               ; preds = %68, %10
  %75 = load i32, i32* %3, align 4
  ret i32 %75
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.ldt_struct* @alloc_ldt_struct(i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @finalize_ldt_struct(%struct.ldt_struct*) #1

declare dso_local i32 @map_ldt_struct(%struct.mm_struct*, %struct.ldt_struct*, i32) #1

declare dso_local i32 @free_ldt_pgtables(%struct.mm_struct*) #1

declare dso_local i32 @free_ldt_struct(%struct.ldt_struct*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
