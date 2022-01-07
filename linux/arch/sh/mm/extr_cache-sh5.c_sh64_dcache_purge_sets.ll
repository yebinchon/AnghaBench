; ModuleID = '/home/carl/AnghaBench/linux/arch/sh/mm/extr_cache-sh5.c_sh64_dcache_purge_sets.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sh/mm/extr_cache-sh5.c_sh64_dcache_purge_sets.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32, i64, i64, i32 }

@dummy_alloco_area = common dso_local global i64 0, align 8
@cpu_data = common dso_local global %struct.TYPE_4__* null, align 8
@SH_CACHE_MODE_WT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @sh64_dcache_purge_sets to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sh64_dcache_purge_sets(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cpu_data, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = and i32 ptrtoint (i64* @dummy_alloco_area to i32), %14
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cpu_data, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = ashr i32 %15, %19
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %3, align 4
  %22 = load i32, i32* %5, align 4
  %23 = sub nsw i32 %21, %22
  store i32 %23, i32* %10, align 4
  store i32 0, i32* %9, align 4
  br label %24

24:                                               ; preds = %106, %2
  %25 = load i32, i32* %9, align 4
  %26 = load i32, i32* %4, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %111

28:                                               ; preds = %24
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cpu_data, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = sub nsw i32 %32, 1
  %34 = load i32, i32* %10, align 4
  %35 = and i32 %34, %33
  store i32 %35, i32* %10, align 4
  %36 = load i64, i64* @dummy_alloco_area, align 8
  %37 = load i32, i32* %10, align 4
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cpu_data, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = shl i32 %37, %41
  %43 = sext i32 %42 to i64
  %44 = add i64 %36, %43
  store i64 %44, i64* %7, align 8
  %45 = load i64, i64* %7, align 8
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cpu_data, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 3
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cpu_data, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 4
  %53 = load i64, i64* %52, align 8
  %54 = mul i64 %49, %53
  %55 = add i64 %45, %54
  store i64 %55, i64* %8, align 8
  %56 = load i64, i64* %7, align 8
  store i64 %56, i64* %6, align 8
  br label %57

57:                                               ; preds = %63, %28
  %58 = load i64, i64* %6, align 8
  %59 = load i64, i64* %8, align 8
  %60 = icmp ult i64 %58, %59
  br i1 %60, label %61, label %70

61:                                               ; preds = %57
  %62 = load i64, i64* %6, align 8
  call void asm sideeffect "alloco $0, 0", "r,~{dirflag},~{fpsr},~{flags}"(i64 %62) #2, !srcloc !2
  call void asm sideeffect "synco", "~{dirflag},~{fpsr},~{flags}"() #2, !srcloc !3
  br label %63

63:                                               ; preds = %61
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cpu_data, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 3
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* %6, align 8
  %69 = add i64 %68, %67
  store i64 %69, i64* %6, align 8
  br label %57

70:                                               ; preds = %57
  %71 = load i64, i64* %7, align 8
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cpu_data, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 3
  %75 = load i64, i64* %74, align 8
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cpu_data, align 8
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 4
  %79 = load i64, i64* %78, align 8
  %80 = mul i64 %75, %79
  %81 = add i64 %71, %80
  store i64 %81, i64* %8, align 8
  %82 = load i64, i64* %7, align 8
  store i64 %82, i64* %6, align 8
  br label %83

83:                                               ; preds = %98, %70
  %84 = load i64, i64* %6, align 8
  %85 = load i64, i64* %8, align 8
  %86 = icmp ult i64 %84, %85
  br i1 %86, label %87, label %105

87:                                               ; preds = %83
  %88 = load i32, i32* @SH_CACHE_MODE_WT, align 4
  %89 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cpu_data, align 8
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 5
  %92 = call i64 @test_bit(i32 %88, i32* %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %87
  %95 = load i64, i64* %6, align 8
  %96 = call i32 @__raw_readb(i64 %95)
  br label %97

97:                                               ; preds = %94, %87
  br label %98

98:                                               ; preds = %97
  %99 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cpu_data, align 8
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i32 0, i32 3
  %102 = load i64, i64* %101, align 8
  %103 = load i64, i64* %6, align 8
  %104 = add i64 %103, %102
  store i64 %104, i64* %6, align 8
  br label %83

105:                                              ; preds = %83
  br label %106

106:                                              ; preds = %105
  %107 = load i32, i32* %9, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %9, align 4
  %109 = load i32, i32* %10, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %10, align 4
  br label %24

111:                                              ; preds = %24
  ret void
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @__raw_readb(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 1292}
!3 = !{i32 1350}
