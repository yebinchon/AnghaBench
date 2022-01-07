; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_scatterwalk.c_scatterwalk_map_and_copy.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_scatterwalk.c_scatterwalk_map_and_copy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scatterlist = type { i32 }
%struct.scatter_walk = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @scatterwalk_map_and_copy(i8* %0, %struct.scatterlist* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca %struct.scatterlist*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.scatter_walk, align 4
  %12 = alloca [2 x %struct.scatterlist], align 4
  store i8* %0, i8** %6, align 8
  store %struct.scatterlist* %1, %struct.scatterlist** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %13 = load i32, i32* %9, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %5
  br label %29

16:                                               ; preds = %5
  %17 = getelementptr inbounds [2 x %struct.scatterlist], [2 x %struct.scatterlist]* %12, i64 0, i64 0
  %18 = load %struct.scatterlist*, %struct.scatterlist** %7, align 8
  %19 = load i32, i32* %8, align 4
  %20 = call %struct.scatterlist* @scatterwalk_ffwd(%struct.scatterlist* %17, %struct.scatterlist* %18, i32 %19)
  store %struct.scatterlist* %20, %struct.scatterlist** %7, align 8
  %21 = load %struct.scatterlist*, %struct.scatterlist** %7, align 8
  %22 = call i32 @scatterwalk_start(%struct.scatter_walk* %11, %struct.scatterlist* %21)
  %23 = load i8*, i8** %6, align 8
  %24 = load i32, i32* %9, align 4
  %25 = load i32, i32* %10, align 4
  %26 = call i32 @scatterwalk_copychunks(i8* %23, %struct.scatter_walk* %11, i32 %24, i32 %25)
  %27 = load i32, i32* %10, align 4
  %28 = call i32 @scatterwalk_done(%struct.scatter_walk* %11, i32 %27, i32 0)
  br label %29

29:                                               ; preds = %16, %15
  ret void
}

declare dso_local %struct.scatterlist* @scatterwalk_ffwd(%struct.scatterlist*, %struct.scatterlist*, i32) #1

declare dso_local i32 @scatterwalk_start(%struct.scatter_walk*, %struct.scatterlist*) #1

declare dso_local i32 @scatterwalk_copychunks(i8*, %struct.scatter_walk*, i32, i32) #1

declare dso_local i32 @scatterwalk_done(%struct.scatter_walk*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
