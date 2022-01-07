; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/agp/extr_parisc-agp.c_parisc_agp_remove_memory.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/agp/extr_parisc-agp.c_parisc_agp_remove_memory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._parisc_agp_info = type { i32, i32* }
%struct.TYPE_5__ = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32 (%struct.agp_memory*)*, i64 (%struct.TYPE_5__*, i32)* }
%struct.agp_memory = type { i32, i32 }

@parisc_agp_info = common dso_local global %struct._parisc_agp_info zeroinitializer, align 8
@agp_bridge = common dso_local global %struct.TYPE_5__* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.agp_memory*, i32, i32)* @parisc_agp_remove_memory to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parisc_agp_remove_memory(%struct.agp_memory* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.agp_memory*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct._parisc_agp_info*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.agp_memory* %0, %struct.agp_memory** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store %struct._parisc_agp_info* @parisc_agp_info, %struct._parisc_agp_info** %8, align 8
  %12 = load i32, i32* %7, align 4
  %13 = load %struct.agp_memory*, %struct.agp_memory** %5, align 8
  %14 = getelementptr inbounds %struct.agp_memory, %struct.agp_memory* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %12, %15
  br i1 %16, label %27, label %17

17:                                               ; preds = %3
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** @agp_bridge, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 1
  %22 = load i64 (%struct.TYPE_5__*, i32)*, i64 (%struct.TYPE_5__*, i32)** %21, align 8
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** @agp_bridge, align 8
  %24 = load i32, i32* %7, align 4
  %25 = call i64 %22(%struct.TYPE_5__* %23, i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %17, %3
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %4, align 4
  br label %71

30:                                               ; preds = %17
  %31 = load %struct._parisc_agp_info*, %struct._parisc_agp_info** %8, align 8
  %32 = getelementptr inbounds %struct._parisc_agp_info, %struct._parisc_agp_info* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* %6, align 4
  %35 = mul nsw i32 %33, %34
  store i32 %35, i32* %10, align 4
  %36 = load %struct._parisc_agp_info*, %struct._parisc_agp_info** %8, align 8
  %37 = getelementptr inbounds %struct._parisc_agp_info, %struct._parisc_agp_info* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.agp_memory*, %struct.agp_memory** %5, align 8
  %40 = getelementptr inbounds %struct.agp_memory, %struct.agp_memory* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = mul nsw i32 %38, %41
  store i32 %42, i32* %11, align 4
  %43 = load i32, i32* %10, align 4
  store i32 %43, i32* %9, align 4
  br label %44

44:                                               ; preds = %60, %30
  %45 = load i32, i32* %9, align 4
  %46 = load i32, i32* %11, align 4
  %47 = load i32, i32* %10, align 4
  %48 = add nsw i32 %46, %47
  %49 = icmp slt i32 %45, %48
  br i1 %49, label %50, label %63

50:                                               ; preds = %44
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** @agp_bridge, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = load %struct._parisc_agp_info*, %struct._parisc_agp_info** %8, align 8
  %55 = getelementptr inbounds %struct._parisc_agp_info, %struct._parisc_agp_info* %54, i32 0, i32 1
  %56 = load i32*, i32** %55, align 8
  %57 = load i32, i32* %9, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  store i32 %53, i32* %59, align 4
  br label %60

60:                                               ; preds = %50
  %61 = load i32, i32* %9, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %9, align 4
  br label %44

63:                                               ; preds = %44
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** @agp_bridge, align 8
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 0
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = load i32 (%struct.agp_memory*)*, i32 (%struct.agp_memory*)** %67, align 8
  %69 = load %struct.agp_memory*, %struct.agp_memory** %5, align 8
  %70 = call i32 %68(%struct.agp_memory* %69)
  store i32 0, i32* %4, align 4
  br label %71

71:                                               ; preds = %63, %27
  %72 = load i32, i32* %4, align 4
  ret i32 %72
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
