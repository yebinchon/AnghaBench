; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/agp/extr_uninorth-agp.c_uninorth_remove_memory.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/agp/extr_uninorth-agp.c_uninorth_remove_memory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32*, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (%struct.TYPE_5__*, i32)* }
%struct.agp_memory = type { i32, i64 }

@EINVAL = common dso_local global i32 0, align 4
@agp_bridge = common dso_local global %struct.TYPE_5__* null, align 8
@scratch_value = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.agp_memory*, i64, i32)* @uninorth_remove_memory to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uninorth_remove_memory(%struct.agp_memory* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.agp_memory*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store %struct.agp_memory* %0, %struct.agp_memory** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* %7, align 4
  %12 = load %struct.agp_memory*, %struct.agp_memory** %5, align 8
  %13 = getelementptr inbounds %struct.agp_memory, %struct.agp_memory* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp ne i32 %11, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %3
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %4, align 4
  br label %63

19:                                               ; preds = %3
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** @agp_bridge, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 1
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32 (%struct.TYPE_5__*, i32)*, i32 (%struct.TYPE_5__*, i32)** %23, align 8
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** @agp_bridge, align 8
  %26 = load i32, i32* %7, align 4
  %27 = call i32 %24(%struct.TYPE_5__* %25, i32 %26)
  store i32 %27, i32* %10, align 4
  %28 = load i32, i32* %10, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %19
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %4, align 4
  br label %63

33:                                               ; preds = %19
  %34 = load %struct.agp_memory*, %struct.agp_memory** %5, align 8
  %35 = getelementptr inbounds %struct.agp_memory, %struct.agp_memory* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %33
  store i32 0, i32* %4, align 4
  br label %63

39:                                               ; preds = %33
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** @agp_bridge, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = load i64, i64* %6, align 8
  %44 = getelementptr inbounds i32, i32* %42, i64 %43
  store i32* %44, i32** %9, align 8
  store i64 0, i64* %8, align 8
  br label %45

45:                                               ; preds = %56, %39
  %46 = load i64, i64* %8, align 8
  %47 = load %struct.agp_memory*, %struct.agp_memory** %5, align 8
  %48 = getelementptr inbounds %struct.agp_memory, %struct.agp_memory* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = icmp ult i64 %46, %49
  br i1 %50, label %51, label %59

51:                                               ; preds = %45
  %52 = load i32, i32* @scratch_value, align 4
  %53 = load i32*, i32** %9, align 8
  %54 = load i64, i64* %8, align 8
  %55 = getelementptr inbounds i32, i32* %53, i64 %54
  store i32 %52, i32* %55, align 4
  br label %56

56:                                               ; preds = %51
  %57 = load i64, i64* %8, align 8
  %58 = add i64 %57, 1
  store i64 %58, i64* %8, align 8
  br label %45

59:                                               ; preds = %45
  %60 = call i32 (...) @mb()
  %61 = load %struct.agp_memory*, %struct.agp_memory** %5, align 8
  %62 = call i32 @uninorth_tlbflush(%struct.agp_memory* %61)
  store i32 0, i32* %4, align 4
  br label %63

63:                                               ; preds = %59, %38, %30, %16
  %64 = load i32, i32* %4, align 4
  ret i32 %64
}

declare dso_local i32 @mb(...) #1

declare dso_local i32 @uninorth_tlbflush(%struct.agp_memory*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
