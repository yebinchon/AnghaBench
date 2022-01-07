; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_scatterwalk.c_scatterwalk_ffwd.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_scatterwalk.c_scatterwalk_ffwd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scatterlist = type { i32, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.scatterlist* @scatterwalk_ffwd(%struct.scatterlist* %0, %struct.scatterlist* %1, i32 %2) #0 {
  %4 = alloca %struct.scatterlist*, align 8
  %5 = alloca %struct.scatterlist*, align 8
  %6 = alloca %struct.scatterlist*, align 8
  %7 = alloca i32, align 4
  store %struct.scatterlist* %0, %struct.scatterlist** %5, align 8
  store %struct.scatterlist* %1, %struct.scatterlist** %6, align 8
  store i32 %2, i32* %7, align 4
  br label %8

8:                                                ; preds = %20, %3
  %9 = load i32, i32* %7, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %8
  %12 = load %struct.scatterlist*, %struct.scatterlist** %6, align 8
  store %struct.scatterlist* %12, %struct.scatterlist** %4, align 8
  br label %51

13:                                               ; preds = %8
  %14 = load %struct.scatterlist*, %struct.scatterlist** %6, align 8
  %15 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* %7, align 4
  %18 = icmp ugt i32 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %13
  br label %28

20:                                               ; preds = %13
  %21 = load %struct.scatterlist*, %struct.scatterlist** %6, align 8
  %22 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* %7, align 4
  %25 = sub i32 %24, %23
  store i32 %25, i32* %7, align 4
  %26 = load %struct.scatterlist*, %struct.scatterlist** %6, align 8
  %27 = call %struct.scatterlist* @sg_next(%struct.scatterlist* %26)
  store %struct.scatterlist* %27, %struct.scatterlist** %6, align 8
  br label %8

28:                                               ; preds = %19
  %29 = load %struct.scatterlist*, %struct.scatterlist** %5, align 8
  %30 = call i32 @sg_init_table(%struct.scatterlist* %29, i32 2)
  %31 = load %struct.scatterlist*, %struct.scatterlist** %5, align 8
  %32 = load %struct.scatterlist*, %struct.scatterlist** %6, align 8
  %33 = call i32 @sg_page(%struct.scatterlist* %32)
  %34 = load %struct.scatterlist*, %struct.scatterlist** %6, align 8
  %35 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* %7, align 4
  %38 = sub i32 %36, %37
  %39 = load %struct.scatterlist*, %struct.scatterlist** %6, align 8
  %40 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load i32, i32* %7, align 4
  %43 = zext i32 %42 to i64
  %44 = add nsw i64 %41, %43
  %45 = call i32 @sg_set_page(%struct.scatterlist* %31, i32 %33, i32 %38, i64 %44)
  %46 = load %struct.scatterlist*, %struct.scatterlist** %5, align 8
  %47 = load %struct.scatterlist*, %struct.scatterlist** %6, align 8
  %48 = call %struct.scatterlist* @sg_next(%struct.scatterlist* %47)
  %49 = call i32 @scatterwalk_crypto_chain(%struct.scatterlist* %46, %struct.scatterlist* %48, i32 2)
  %50 = load %struct.scatterlist*, %struct.scatterlist** %5, align 8
  store %struct.scatterlist* %50, %struct.scatterlist** %4, align 8
  br label %51

51:                                               ; preds = %28, %11
  %52 = load %struct.scatterlist*, %struct.scatterlist** %4, align 8
  ret %struct.scatterlist* %52
}

declare dso_local %struct.scatterlist* @sg_next(%struct.scatterlist*) #1

declare dso_local i32 @sg_init_table(%struct.scatterlist*, i32) #1

declare dso_local i32 @sg_set_page(%struct.scatterlist*, i32, i32, i64) #1

declare dso_local i32 @sg_page(%struct.scatterlist*) #1

declare dso_local i32 @scatterwalk_crypto_chain(%struct.scatterlist*, %struct.scatterlist*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
