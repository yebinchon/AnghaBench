; ModuleID = '/home/carl/AnghaBench/linux/arch/um/drivers/extr_chan_kern.c_chan_window_size.c'
source_filename = "/home/carl/AnghaBench/linux/arch/um/drivers/extr_chan_kern.c_chan_window_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.line = type { %struct.chan*, %struct.chan* }
%struct.chan = type { i32, i32, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32 (i32, i32, i16*, i16*)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @chan_window_size(%struct.line* %0, i16* %1, i16* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.line*, align 8
  %6 = alloca i16*, align 8
  %7 = alloca i16*, align 8
  %8 = alloca %struct.chan*, align 8
  store %struct.line* %0, %struct.line** %5, align 8
  store i16* %1, i16** %6, align 8
  store i16* %2, i16** %7, align 8
  %9 = load %struct.line*, %struct.line** %5, align 8
  %10 = getelementptr inbounds %struct.line, %struct.line* %9, i32 0, i32 1
  %11 = load %struct.chan*, %struct.chan** %10, align 8
  store %struct.chan* %11, %struct.chan** %8, align 8
  %12 = load %struct.chan*, %struct.chan** %8, align 8
  %13 = icmp ne %struct.chan* %12, null
  br i1 %13, label %14, label %42

14:                                               ; preds = %3
  %15 = load %struct.chan*, %struct.chan** %8, align 8
  %16 = getelementptr inbounds %struct.chan, %struct.chan* %15, i32 0, i32 3
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %42

19:                                               ; preds = %14
  %20 = load %struct.chan*, %struct.chan** %8, align 8
  %21 = getelementptr inbounds %struct.chan, %struct.chan* %20, i32 0, i32 2
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32 (i32, i32, i16*, i16*)*, i32 (i32, i32, i16*, i16*)** %23, align 8
  %25 = icmp eq i32 (i32, i32, i16*, i16*)* %24, null
  br i1 %25, label %26, label %27

26:                                               ; preds = %19
  store i32 0, i32* %4, align 4
  br label %77

27:                                               ; preds = %19
  %28 = load %struct.chan*, %struct.chan** %8, align 8
  %29 = getelementptr inbounds %struct.chan, %struct.chan* %28, i32 0, i32 2
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32 (i32, i32, i16*, i16*)*, i32 (i32, i32, i16*, i16*)** %31, align 8
  %33 = load %struct.chan*, %struct.chan** %8, align 8
  %34 = getelementptr inbounds %struct.chan, %struct.chan* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.chan*, %struct.chan** %8, align 8
  %37 = getelementptr inbounds %struct.chan, %struct.chan* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i16*, i16** %6, align 8
  %40 = load i16*, i16** %7, align 8
  %41 = call i32 %32(i32 %35, i32 %38, i16* %39, i16* %40)
  store i32 %41, i32* %4, align 4
  br label %77

42:                                               ; preds = %14, %3
  %43 = load %struct.line*, %struct.line** %5, align 8
  %44 = getelementptr inbounds %struct.line, %struct.line* %43, i32 0, i32 0
  %45 = load %struct.chan*, %struct.chan** %44, align 8
  store %struct.chan* %45, %struct.chan** %8, align 8
  %46 = load %struct.chan*, %struct.chan** %8, align 8
  %47 = icmp ne %struct.chan* %46, null
  br i1 %47, label %48, label %76

48:                                               ; preds = %42
  %49 = load %struct.chan*, %struct.chan** %8, align 8
  %50 = getelementptr inbounds %struct.chan, %struct.chan* %49, i32 0, i32 3
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %76

53:                                               ; preds = %48
  %54 = load %struct.chan*, %struct.chan** %8, align 8
  %55 = getelementptr inbounds %struct.chan, %struct.chan* %54, i32 0, i32 2
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i32 (i32, i32, i16*, i16*)*, i32 (i32, i32, i16*, i16*)** %57, align 8
  %59 = icmp eq i32 (i32, i32, i16*, i16*)* %58, null
  br i1 %59, label %60, label %61

60:                                               ; preds = %53
  store i32 0, i32* %4, align 4
  br label %77

61:                                               ; preds = %53
  %62 = load %struct.chan*, %struct.chan** %8, align 8
  %63 = getelementptr inbounds %struct.chan, %struct.chan* %62, i32 0, i32 2
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = load i32 (i32, i32, i16*, i16*)*, i32 (i32, i32, i16*, i16*)** %65, align 8
  %67 = load %struct.chan*, %struct.chan** %8, align 8
  %68 = getelementptr inbounds %struct.chan, %struct.chan* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.chan*, %struct.chan** %8, align 8
  %71 = getelementptr inbounds %struct.chan, %struct.chan* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load i16*, i16** %6, align 8
  %74 = load i16*, i16** %7, align 8
  %75 = call i32 %66(i32 %69, i32 %72, i16* %73, i16* %74)
  store i32 %75, i32* %4, align 4
  br label %77

76:                                               ; preds = %48, %42
  store i32 0, i32* %4, align 4
  br label %77

77:                                               ; preds = %76, %61, %60, %27, %26
  %78 = load i32, i32* %4, align 4
  ret i32 %78
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
