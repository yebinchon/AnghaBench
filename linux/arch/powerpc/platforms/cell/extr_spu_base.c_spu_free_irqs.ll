; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/cell/extr_spu_base.c_spu_free_irqs.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/cell/extr_spu_base.c_spu_free_irqs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spu = type { i64* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.spu*)* @spu_free_irqs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @spu_free_irqs(%struct.spu* %0) #0 {
  %2 = alloca %struct.spu*, align 8
  store %struct.spu* %0, %struct.spu** %2, align 8
  %3 = load %struct.spu*, %struct.spu** %2, align 8
  %4 = getelementptr inbounds %struct.spu, %struct.spu* %3, i32 0, i32 0
  %5 = load i64*, i64** %4, align 8
  %6 = getelementptr inbounds i64, i64* %5, i64 0
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %17

9:                                                ; preds = %1
  %10 = load %struct.spu*, %struct.spu** %2, align 8
  %11 = getelementptr inbounds %struct.spu, %struct.spu* %10, i32 0, i32 0
  %12 = load i64*, i64** %11, align 8
  %13 = getelementptr inbounds i64, i64* %12, i64 0
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.spu*, %struct.spu** %2, align 8
  %16 = call i32 @free_irq(i64 %14, %struct.spu* %15)
  br label %17

17:                                               ; preds = %9, %1
  %18 = load %struct.spu*, %struct.spu** %2, align 8
  %19 = getelementptr inbounds %struct.spu, %struct.spu* %18, i32 0, i32 0
  %20 = load i64*, i64** %19, align 8
  %21 = getelementptr inbounds i64, i64* %20, i64 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %32

24:                                               ; preds = %17
  %25 = load %struct.spu*, %struct.spu** %2, align 8
  %26 = getelementptr inbounds %struct.spu, %struct.spu* %25, i32 0, i32 0
  %27 = load i64*, i64** %26, align 8
  %28 = getelementptr inbounds i64, i64* %27, i64 1
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.spu*, %struct.spu** %2, align 8
  %31 = call i32 @free_irq(i64 %29, %struct.spu* %30)
  br label %32

32:                                               ; preds = %24, %17
  %33 = load %struct.spu*, %struct.spu** %2, align 8
  %34 = getelementptr inbounds %struct.spu, %struct.spu* %33, i32 0, i32 0
  %35 = load i64*, i64** %34, align 8
  %36 = getelementptr inbounds i64, i64* %35, i64 2
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %47

39:                                               ; preds = %32
  %40 = load %struct.spu*, %struct.spu** %2, align 8
  %41 = getelementptr inbounds %struct.spu, %struct.spu* %40, i32 0, i32 0
  %42 = load i64*, i64** %41, align 8
  %43 = getelementptr inbounds i64, i64* %42, i64 2
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.spu*, %struct.spu** %2, align 8
  %46 = call i32 @free_irq(i64 %44, %struct.spu* %45)
  br label %47

47:                                               ; preds = %39, %32
  ret void
}

declare dso_local i32 @free_irq(i64, %struct.spu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
