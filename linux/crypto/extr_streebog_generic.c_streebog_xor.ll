; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_streebog_generic.c_streebog_xor.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_streebog_generic.c_streebog_xor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.streebog_uint512 = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.streebog_uint512*, %struct.streebog_uint512*, %struct.streebog_uint512*)* @streebog_xor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @streebog_xor(%struct.streebog_uint512* %0, %struct.streebog_uint512* %1, %struct.streebog_uint512* %2) #0 {
  %4 = alloca %struct.streebog_uint512*, align 8
  %5 = alloca %struct.streebog_uint512*, align 8
  %6 = alloca %struct.streebog_uint512*, align 8
  store %struct.streebog_uint512* %0, %struct.streebog_uint512** %4, align 8
  store %struct.streebog_uint512* %1, %struct.streebog_uint512** %5, align 8
  store %struct.streebog_uint512* %2, %struct.streebog_uint512** %6, align 8
  %7 = load %struct.streebog_uint512*, %struct.streebog_uint512** %4, align 8
  %8 = getelementptr inbounds %struct.streebog_uint512, %struct.streebog_uint512* %7, i32 0, i32 0
  %9 = load i32*, i32** %8, align 8
  %10 = getelementptr inbounds i32, i32* %9, i64 0
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.streebog_uint512*, %struct.streebog_uint512** %5, align 8
  %13 = getelementptr inbounds %struct.streebog_uint512, %struct.streebog_uint512* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 0
  %16 = load i32, i32* %15, align 4
  %17 = xor i32 %11, %16
  %18 = load %struct.streebog_uint512*, %struct.streebog_uint512** %6, align 8
  %19 = getelementptr inbounds %struct.streebog_uint512, %struct.streebog_uint512* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 0
  store i32 %17, i32* %21, align 4
  %22 = load %struct.streebog_uint512*, %struct.streebog_uint512** %4, align 8
  %23 = getelementptr inbounds %struct.streebog_uint512, %struct.streebog_uint512* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.streebog_uint512*, %struct.streebog_uint512** %5, align 8
  %28 = getelementptr inbounds %struct.streebog_uint512, %struct.streebog_uint512* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 1
  %31 = load i32, i32* %30, align 4
  %32 = xor i32 %26, %31
  %33 = load %struct.streebog_uint512*, %struct.streebog_uint512** %6, align 8
  %34 = getelementptr inbounds %struct.streebog_uint512, %struct.streebog_uint512* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 1
  store i32 %32, i32* %36, align 4
  %37 = load %struct.streebog_uint512*, %struct.streebog_uint512** %4, align 8
  %38 = getelementptr inbounds %struct.streebog_uint512, %struct.streebog_uint512* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 2
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.streebog_uint512*, %struct.streebog_uint512** %5, align 8
  %43 = getelementptr inbounds %struct.streebog_uint512, %struct.streebog_uint512* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 2
  %46 = load i32, i32* %45, align 4
  %47 = xor i32 %41, %46
  %48 = load %struct.streebog_uint512*, %struct.streebog_uint512** %6, align 8
  %49 = getelementptr inbounds %struct.streebog_uint512, %struct.streebog_uint512* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 2
  store i32 %47, i32* %51, align 4
  %52 = load %struct.streebog_uint512*, %struct.streebog_uint512** %4, align 8
  %53 = getelementptr inbounds %struct.streebog_uint512, %struct.streebog_uint512* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 3
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.streebog_uint512*, %struct.streebog_uint512** %5, align 8
  %58 = getelementptr inbounds %struct.streebog_uint512, %struct.streebog_uint512* %57, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 3
  %61 = load i32, i32* %60, align 4
  %62 = xor i32 %56, %61
  %63 = load %struct.streebog_uint512*, %struct.streebog_uint512** %6, align 8
  %64 = getelementptr inbounds %struct.streebog_uint512, %struct.streebog_uint512* %63, i32 0, i32 0
  %65 = load i32*, i32** %64, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 3
  store i32 %62, i32* %66, align 4
  %67 = load %struct.streebog_uint512*, %struct.streebog_uint512** %4, align 8
  %68 = getelementptr inbounds %struct.streebog_uint512, %struct.streebog_uint512* %67, i32 0, i32 0
  %69 = load i32*, i32** %68, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 4
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.streebog_uint512*, %struct.streebog_uint512** %5, align 8
  %73 = getelementptr inbounds %struct.streebog_uint512, %struct.streebog_uint512* %72, i32 0, i32 0
  %74 = load i32*, i32** %73, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 4
  %76 = load i32, i32* %75, align 4
  %77 = xor i32 %71, %76
  %78 = load %struct.streebog_uint512*, %struct.streebog_uint512** %6, align 8
  %79 = getelementptr inbounds %struct.streebog_uint512, %struct.streebog_uint512* %78, i32 0, i32 0
  %80 = load i32*, i32** %79, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 4
  store i32 %77, i32* %81, align 4
  %82 = load %struct.streebog_uint512*, %struct.streebog_uint512** %4, align 8
  %83 = getelementptr inbounds %struct.streebog_uint512, %struct.streebog_uint512* %82, i32 0, i32 0
  %84 = load i32*, i32** %83, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 5
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.streebog_uint512*, %struct.streebog_uint512** %5, align 8
  %88 = getelementptr inbounds %struct.streebog_uint512, %struct.streebog_uint512* %87, i32 0, i32 0
  %89 = load i32*, i32** %88, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 5
  %91 = load i32, i32* %90, align 4
  %92 = xor i32 %86, %91
  %93 = load %struct.streebog_uint512*, %struct.streebog_uint512** %6, align 8
  %94 = getelementptr inbounds %struct.streebog_uint512, %struct.streebog_uint512* %93, i32 0, i32 0
  %95 = load i32*, i32** %94, align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 5
  store i32 %92, i32* %96, align 4
  %97 = load %struct.streebog_uint512*, %struct.streebog_uint512** %4, align 8
  %98 = getelementptr inbounds %struct.streebog_uint512, %struct.streebog_uint512* %97, i32 0, i32 0
  %99 = load i32*, i32** %98, align 8
  %100 = getelementptr inbounds i32, i32* %99, i64 6
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.streebog_uint512*, %struct.streebog_uint512** %5, align 8
  %103 = getelementptr inbounds %struct.streebog_uint512, %struct.streebog_uint512* %102, i32 0, i32 0
  %104 = load i32*, i32** %103, align 8
  %105 = getelementptr inbounds i32, i32* %104, i64 6
  %106 = load i32, i32* %105, align 4
  %107 = xor i32 %101, %106
  %108 = load %struct.streebog_uint512*, %struct.streebog_uint512** %6, align 8
  %109 = getelementptr inbounds %struct.streebog_uint512, %struct.streebog_uint512* %108, i32 0, i32 0
  %110 = load i32*, i32** %109, align 8
  %111 = getelementptr inbounds i32, i32* %110, i64 6
  store i32 %107, i32* %111, align 4
  %112 = load %struct.streebog_uint512*, %struct.streebog_uint512** %4, align 8
  %113 = getelementptr inbounds %struct.streebog_uint512, %struct.streebog_uint512* %112, i32 0, i32 0
  %114 = load i32*, i32** %113, align 8
  %115 = getelementptr inbounds i32, i32* %114, i64 7
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.streebog_uint512*, %struct.streebog_uint512** %5, align 8
  %118 = getelementptr inbounds %struct.streebog_uint512, %struct.streebog_uint512* %117, i32 0, i32 0
  %119 = load i32*, i32** %118, align 8
  %120 = getelementptr inbounds i32, i32* %119, i64 7
  %121 = load i32, i32* %120, align 4
  %122 = xor i32 %116, %121
  %123 = load %struct.streebog_uint512*, %struct.streebog_uint512** %6, align 8
  %124 = getelementptr inbounds %struct.streebog_uint512, %struct.streebog_uint512* %123, i32 0, i32 0
  %125 = load i32*, i32** %124, align 8
  %126 = getelementptr inbounds i32, i32* %125, i64 7
  store i32 %122, i32* %126, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
