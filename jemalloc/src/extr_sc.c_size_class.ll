; ModuleID = '/home/carl/AnghaBench/jemalloc/src/extr_sc.c_size_class.c'
source_filename = "/home/carl/AnghaBench/jemalloc/src/extr_sc.c_size_class.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i32, i32, i32, i32, i32, i32, i32)* @size_class to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @size_class(%struct.TYPE_3__* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca %struct.TYPE_3__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i32 %7, i32* %16, align 4
  %18 = load i32, i32* %13, align 4
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 8
  %21 = load i32, i32* %14, align 4
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 1
  store i32 %21, i32* %23, align 4
  %24 = load i32, i32* %15, align 4
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 2
  store i32 %24, i32* %26, align 8
  %27 = load i32, i32* %16, align 4
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 3
  store i32 %27, i32* %29, align 4
  %30 = load i32, i32* %14, align 4
  %31 = load i32, i32* %15, align 4
  %32 = load i32, i32* %16, align 4
  %33 = call i32 @reg_size_compute(i32 %30, i32 %31, i32 %32)
  %34 = call i32 @ZU(i32 1)
  %35 = load i32, i32* %11, align 4
  %36 = shl i32 %34, %35
  %37 = srem i32 %33, %36
  %38 = icmp eq i32 %37, 0
  %39 = zext i1 %38 to i32
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 4
  store i32 %39, i32* %41, align 8
  %42 = call i32 @ZU(i32 1)
  %43 = load i32, i32* %14, align 4
  %44 = shl i32 %42, %43
  %45 = load i32, i32* %16, align 4
  %46 = call i32 @ZU(i32 %45)
  %47 = load i32, i32* %15, align 4
  %48 = shl i32 %46, %47
  %49 = add nsw i32 %44, %48
  %50 = sext i32 %49 to i64
  store i64 %50, i64* %17, align 8
  %51 = load i32, i32* %13, align 4
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %61

53:                                               ; preds = %8
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 4
  %56 = load i32, i32* %55, align 8
  %57 = icmp ne i32 %56, 0
  %58 = xor i1 %57, true
  %59 = zext i1 %58 to i32
  %60 = call i32 @assert(i32 %59)
  br label %61

61:                                               ; preds = %53, %8
  %62 = load i64, i64* %17, align 8
  %63 = call i32 @ZU(i32 1)
  %64 = load i32, i32* %11, align 4
  %65 = load i32, i32* %12, align 4
  %66 = add nsw i32 %64, %65
  %67 = shl i32 %63, %66
  %68 = sext i32 %67 to i64
  %69 = icmp ult i64 %62, %68
  br i1 %69, label %70, label %80

70:                                               ; preds = %61
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 5
  store i32 1, i32* %72, align 4
  %73 = load i32, i32* %11, align 4
  %74 = load i32, i32* %14, align 4
  %75 = load i32, i32* %15, align 4
  %76 = load i32, i32* %16, align 4
  %77 = call i64 @slab_size(i32 %73, i32 %74, i32 %75, i32 %76)
  %78 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 7
  store i64 %77, i64* %79, align 8
  br label %85

80:                                               ; preds = %61
  %81 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 5
  store i32 0, i32* %82, align 4
  %83 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 7
  store i64 0, i64* %84, align 8
  br label %85

85:                                               ; preds = %80, %70
  %86 = load i64, i64* %17, align 8
  %87 = call i32 @ZU(i32 1)
  %88 = load i32, i32* %10, align 4
  %89 = shl i32 %87, %88
  %90 = sext i32 %89 to i64
  %91 = icmp ule i64 %86, %90
  br i1 %91, label %92, label %96

92:                                               ; preds = %85
  %93 = load i32, i32* %15, align 4
  %94 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 6
  store i32 %93, i32* %95, align 8
  br label %99

96:                                               ; preds = %85
  %97 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 6
  store i32 0, i32* %98, align 8
  br label %99

99:                                               ; preds = %96, %92
  ret void
}

declare dso_local i32 @reg_size_compute(i32, i32, i32) #1

declare dso_local i32 @ZU(i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @slab_size(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
