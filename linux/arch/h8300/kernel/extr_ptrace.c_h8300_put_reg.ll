; ModuleID = '/home/carl/AnghaBench/linux/arch/h8300/kernel/extr_ptrace.c_h8300_put_reg.c'
source_filename = "/home/carl/AnghaBench/linux/arch/h8300/kernel/extr_ptrace.c_h8300_put_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64 }

@register_offset = common dso_local global i64* null, align 8
@CCR_MASK = common dso_local global i16 0, align 2
@EXR_MASK = common dso_local global i16 0, align 2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @h8300_put_reg(%struct.task_struct* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.task_struct*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i16, align 2
  %8 = alloca i16, align 2
  store %struct.task_struct* %0, %struct.task_struct** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %9 = load i32, i32* %5, align 4
  switch i32 %9, label %98 [
    i32 128, label %10
    i32 130, label %16
    i32 129, label %57
  ]

10:                                               ; preds = %3
  %11 = load i64, i64* %6, align 8
  %12 = sub i64 %11, 16
  %13 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %14 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  store i64 %12, i64* %15, align 8
  br label %16

16:                                               ; preds = %3, %10
  %17 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %18 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = load i64*, i64** @register_offset, align 8
  %22 = load i32, i32* %5, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i64, i64* %21, i64 %23
  %25 = load i64, i64* %24, align 8
  %26 = add nsw i64 %20, %25
  %27 = inttoptr i64 %26 to i16*
  %28 = load i16, i16* %27, align 2
  store i16 %28, i16* %7, align 2
  %29 = load i16, i16* @CCR_MASK, align 2
  %30 = zext i16 %29 to i32
  %31 = xor i32 %30, -1
  %32 = load i16, i16* %7, align 2
  %33 = zext i16 %32 to i32
  %34 = and i32 %33, %31
  %35 = trunc i32 %34 to i16
  store i16 %35, i16* %7, align 2
  %36 = load i16, i16* @CCR_MASK, align 2
  %37 = zext i16 %36 to i64
  %38 = load i64, i64* %6, align 8
  %39 = and i64 %38, %37
  store i64 %39, i64* %6, align 8
  %40 = load i16, i16* %7, align 2
  %41 = zext i16 %40 to i64
  %42 = load i64, i64* %6, align 8
  %43 = or i64 %42, %41
  store i64 %43, i64* %6, align 8
  %44 = load i64, i64* %6, align 8
  %45 = trunc i64 %44 to i16
  %46 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %47 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load i64*, i64** @register_offset, align 8
  %51 = load i32, i32* %5, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i64, i64* %50, i64 %52
  %54 = load i64, i64* %53, align 8
  %55 = add nsw i64 %49, %54
  %56 = inttoptr i64 %55 to i16*
  store i16 %45, i16* %56, align 2
  br label %111

57:                                               ; preds = %3
  %58 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %59 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = load i64*, i64** @register_offset, align 8
  %63 = load i32, i32* %5, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i64, i64* %62, i64 %64
  %66 = load i64, i64* %65, align 8
  %67 = add nsw i64 %61, %66
  %68 = inttoptr i64 %67 to i16*
  %69 = load i16, i16* %68, align 2
  store i16 %69, i16* %8, align 2
  %70 = load i16, i16* @EXR_MASK, align 2
  %71 = zext i16 %70 to i32
  %72 = xor i32 %71, -1
  %73 = load i16, i16* %7, align 2
  %74 = zext i16 %73 to i32
  %75 = and i32 %74, %72
  %76 = trunc i32 %75 to i16
  store i16 %76, i16* %7, align 2
  %77 = load i16, i16* @EXR_MASK, align 2
  %78 = zext i16 %77 to i64
  %79 = load i64, i64* %6, align 8
  %80 = and i64 %79, %78
  store i64 %80, i64* %6, align 8
  %81 = load i16, i16* %8, align 2
  %82 = zext i16 %81 to i64
  %83 = load i64, i64* %6, align 8
  %84 = or i64 %83, %82
  store i64 %84, i64* %6, align 8
  %85 = load i64, i64* %6, align 8
  %86 = trunc i64 %85 to i16
  %87 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %88 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = load i64*, i64** @register_offset, align 8
  %92 = load i32, i32* %5, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i64, i64* %91, i64 %93
  %95 = load i64, i64* %94, align 8
  %96 = add nsw i64 %90, %95
  %97 = inttoptr i64 %96 to i16*
  store i16 %86, i16* %97, align 2
  br label %111

98:                                               ; preds = %3
  %99 = load i64, i64* %6, align 8
  %100 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %101 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = load i64*, i64** @register_offset, align 8
  %105 = load i32, i32* %5, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i64, i64* %104, i64 %106
  %108 = load i64, i64* %107, align 8
  %109 = add nsw i64 %103, %108
  %110 = inttoptr i64 %109 to i64*
  store i64 %99, i64* %110, align 8
  br label %111

111:                                              ; preds = %98, %57, %16
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
