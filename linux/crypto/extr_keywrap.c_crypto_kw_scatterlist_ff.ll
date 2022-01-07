; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_keywrap.c_crypto_kw_scatterlist_ff.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_keywrap.c_crypto_kw_scatterlist_ff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scatter_walk = type { i32 }
%struct.scatterlist = type { i32 }

@SEMIBSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.scatter_walk*, %struct.scatterlist*, i32)* @crypto_kw_scatterlist_ff to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @crypto_kw_scatterlist_ff(%struct.scatter_walk* %0, %struct.scatterlist* %1, i32 %2) #0 {
  %4 = alloca %struct.scatter_walk*, align 8
  %5 = alloca %struct.scatterlist*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.scatter_walk* %0, %struct.scatter_walk** %4, align 8
  store %struct.scatterlist* %1, %struct.scatterlist** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %8 = load i32, i32* %6, align 4
  %9 = load i32, i32* @SEMIBSIZE, align 4
  %10 = icmp ult i32 %8, %9
  %11 = zext i1 %10 to i32
  %12 = call i32 @BUG_ON(i32 %11)
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* @SEMIBSIZE, align 4
  %15 = sub i32 %13, %14
  store i32 %15, i32* %7, align 4
  br label %16

16:                                               ; preds = %38, %3
  %17 = load %struct.scatterlist*, %struct.scatterlist** %5, align 8
  %18 = icmp ne %struct.scatterlist* %17, null
  br i1 %18, label %19, label %41

19:                                               ; preds = %16
  %20 = load %struct.scatterlist*, %struct.scatterlist** %5, align 8
  %21 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %7, align 4
  %24 = icmp ugt i32 %22, %23
  br i1 %24, label %25, label %32

25:                                               ; preds = %19
  %26 = load %struct.scatter_walk*, %struct.scatter_walk** %4, align 8
  %27 = load %struct.scatterlist*, %struct.scatterlist** %5, align 8
  %28 = call i32 @scatterwalk_start(%struct.scatter_walk* %26, %struct.scatterlist* %27)
  %29 = load %struct.scatter_walk*, %struct.scatter_walk** %4, align 8
  %30 = load i32, i32* %7, align 4
  %31 = call i32 @scatterwalk_advance(%struct.scatter_walk* %29, i32 %30)
  br label %41

32:                                               ; preds = %19
  %33 = load %struct.scatterlist*, %struct.scatterlist** %5, align 8
  %34 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %7, align 4
  %37 = sub i32 %36, %35
  store i32 %37, i32* %7, align 4
  br label %38

38:                                               ; preds = %32
  %39 = load %struct.scatterlist*, %struct.scatterlist** %5, align 8
  %40 = call %struct.scatterlist* @sg_next(%struct.scatterlist* %39)
  store %struct.scatterlist* %40, %struct.scatterlist** %5, align 8
  br label %16

41:                                               ; preds = %25, %16
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @scatterwalk_start(%struct.scatter_walk*, %struct.scatterlist*) #1

declare dso_local i32 @scatterwalk_advance(%struct.scatter_walk*, i32) #1

declare dso_local %struct.scatterlist* @sg_next(%struct.scatterlist*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
