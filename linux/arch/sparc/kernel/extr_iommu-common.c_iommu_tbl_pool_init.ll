; ModuleID = '/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_iommu-common.c_iommu_tbl_pool_init.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_iommu-common.c_iommu_tbl_pool_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iommu_map_table = type { i64, void (%struct.iommu_map_table*)*, i64, %struct.TYPE_2__*, i32, i64, %struct.iommu_pool }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }
%struct.iommu_pool = type { i32, i32, i64, i32 }

@IOMMU_NR_POOLS = common dso_local global i64 0, align 8
@IOMMU_NO_SPAN_BOUND = common dso_local global i32 0, align 4
@IOMMU_HAS_LARGE_POOL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @iommu_tbl_pool_init(%struct.iommu_map_table* %0, i64 %1, i64 %2, void (%struct.iommu_map_table*)* %3, i32 %4, i64 %5, i32 %6) #0 {
  %8 = alloca %struct.iommu_map_table*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca void (%struct.iommu_map_table*)*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.iommu_pool*, align 8
  store %struct.iommu_map_table* %0, %struct.iommu_map_table** %8, align 8
  store i64 %1, i64* %9, align 8
  store i64 %2, i64* %10, align 8
  store void (%struct.iommu_map_table*)* %3, void (%struct.iommu_map_table*)** %11, align 8
  store i32 %4, i32* %12, align 4
  store i64 %5, i64* %13, align 8
  store i32 %6, i32* %14, align 4
  %18 = load %struct.iommu_map_table*, %struct.iommu_map_table** %8, align 8
  %19 = getelementptr inbounds %struct.iommu_map_table, %struct.iommu_map_table* %18, i32 0, i32 6
  store %struct.iommu_pool* %19, %struct.iommu_pool** %17, align 8
  %20 = call i32 (...) @setup_iommu_pool_hash()
  %21 = load i64, i64* %13, align 8
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %7
  %24 = load i64, i64* @IOMMU_NR_POOLS, align 8
  %25 = load %struct.iommu_map_table*, %struct.iommu_map_table** %8, align 8
  %26 = getelementptr inbounds %struct.iommu_map_table, %struct.iommu_map_table* %25, i32 0, i32 0
  store i64 %24, i64* %26, align 8
  br label %31

27:                                               ; preds = %7
  %28 = load i64, i64* %13, align 8
  %29 = load %struct.iommu_map_table*, %struct.iommu_map_table** %8, align 8
  %30 = getelementptr inbounds %struct.iommu_map_table, %struct.iommu_map_table* %29, i32 0, i32 0
  store i64 %28, i64* %30, align 8
  br label %31

31:                                               ; preds = %27, %23
  %32 = load i64, i64* %13, align 8
  %33 = load i64, i64* @IOMMU_NR_POOLS, align 8
  %34 = icmp sgt i64 %32, %33
  %35 = zext i1 %34 to i32
  %36 = call i32 @BUG_ON(i32 %35)
  %37 = load i64, i64* %10, align 8
  %38 = load %struct.iommu_map_table*, %struct.iommu_map_table** %8, align 8
  %39 = getelementptr inbounds %struct.iommu_map_table, %struct.iommu_map_table* %38, i32 0, i32 5
  store i64 %37, i64* %39, align 8
  %40 = load void (%struct.iommu_map_table*)*, void (%struct.iommu_map_table*)** %11, align 8
  %41 = load %struct.iommu_map_table*, %struct.iommu_map_table** %8, align 8
  %42 = getelementptr inbounds %struct.iommu_map_table, %struct.iommu_map_table* %41, i32 0, i32 1
  store void (%struct.iommu_map_table*)* %40, void (%struct.iommu_map_table*)** %42, align 8
  store i32 0, i32* %15, align 4
  %43 = load i32, i32* %14, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %31
  %46 = load i32, i32* @IOMMU_NO_SPAN_BOUND, align 4
  %47 = load %struct.iommu_map_table*, %struct.iommu_map_table** %8, align 8
  %48 = getelementptr inbounds %struct.iommu_map_table, %struct.iommu_map_table* %47, i32 0, i32 4
  %49 = load i32, i32* %48, align 8
  %50 = or i32 %49, %46
  store i32 %50, i32* %48, align 8
  br label %51

51:                                               ; preds = %45, %31
  %52 = load i32, i32* %12, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %60

54:                                               ; preds = %51
  %55 = load i32, i32* @IOMMU_HAS_LARGE_POOL, align 4
  %56 = load %struct.iommu_map_table*, %struct.iommu_map_table** %8, align 8
  %57 = getelementptr inbounds %struct.iommu_map_table, %struct.iommu_map_table* %56, i32 0, i32 4
  %58 = load i32, i32* %57, align 8
  %59 = or i32 %58, %55
  store i32 %59, i32* %57, align 8
  br label %60

60:                                               ; preds = %54, %51
  %61 = load i32, i32* %12, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %71, label %63

63:                                               ; preds = %60
  %64 = load i64, i64* %9, align 8
  %65 = load %struct.iommu_map_table*, %struct.iommu_map_table** %8, align 8
  %66 = getelementptr inbounds %struct.iommu_map_table, %struct.iommu_map_table* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = udiv i64 %64, %67
  %69 = load %struct.iommu_map_table*, %struct.iommu_map_table** %8, align 8
  %70 = getelementptr inbounds %struct.iommu_map_table, %struct.iommu_map_table* %69, i32 0, i32 2
  store i64 %68, i64* %70, align 8
  br label %81

71:                                               ; preds = %60
  %72 = load i64, i64* %9, align 8
  %73 = mul i64 %72, 3
  %74 = udiv i64 %73, 4
  %75 = load %struct.iommu_map_table*, %struct.iommu_map_table** %8, align 8
  %76 = getelementptr inbounds %struct.iommu_map_table, %struct.iommu_map_table* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = udiv i64 %74, %77
  %79 = load %struct.iommu_map_table*, %struct.iommu_map_table** %8, align 8
  %80 = getelementptr inbounds %struct.iommu_map_table, %struct.iommu_map_table* %79, i32 0, i32 2
  store i64 %78, i64* %80, align 8
  br label %81

81:                                               ; preds = %71, %63
  store i32 0, i32* %16, align 4
  br label %82

82:                                               ; preds = %130, %81
  %83 = load i32, i32* %16, align 4
  %84 = zext i32 %83 to i64
  %85 = load %struct.iommu_map_table*, %struct.iommu_map_table** %8, align 8
  %86 = getelementptr inbounds %struct.iommu_map_table, %struct.iommu_map_table* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = icmp ult i64 %84, %87
  br i1 %88, label %89, label %133

89:                                               ; preds = %82
  %90 = load %struct.iommu_map_table*, %struct.iommu_map_table** %8, align 8
  %91 = getelementptr inbounds %struct.iommu_map_table, %struct.iommu_map_table* %90, i32 0, i32 3
  %92 = load %struct.TYPE_2__*, %struct.TYPE_2__** %91, align 8
  %93 = load i32, i32* %16, align 4
  %94 = zext i32 %93 to i64
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i64 %94
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 3
  %97 = call i32 @spin_lock_init(i32* %96)
  %98 = load i32, i32* %15, align 4
  %99 = load %struct.iommu_map_table*, %struct.iommu_map_table** %8, align 8
  %100 = getelementptr inbounds %struct.iommu_map_table, %struct.iommu_map_table* %99, i32 0, i32 3
  %101 = load %struct.TYPE_2__*, %struct.TYPE_2__** %100, align 8
  %102 = load i32, i32* %16, align 4
  %103 = zext i32 %102 to i64
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i64 %103
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i32 0, i32 0
  store i32 %98, i32* %105, align 4
  %106 = load i32, i32* %15, align 4
  %107 = load %struct.iommu_map_table*, %struct.iommu_map_table** %8, align 8
  %108 = getelementptr inbounds %struct.iommu_map_table, %struct.iommu_map_table* %107, i32 0, i32 3
  %109 = load %struct.TYPE_2__*, %struct.TYPE_2__** %108, align 8
  %110 = load i32, i32* %16, align 4
  %111 = zext i32 %110 to i64
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i64 %111
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i32 0, i32 1
  store i32 %106, i32* %113, align 4
  %114 = load %struct.iommu_map_table*, %struct.iommu_map_table** %8, align 8
  %115 = getelementptr inbounds %struct.iommu_map_table, %struct.iommu_map_table* %114, i32 0, i32 2
  %116 = load i64, i64* %115, align 8
  %117 = load i32, i32* %15, align 4
  %118 = zext i32 %117 to i64
  %119 = add i64 %118, %116
  %120 = trunc i64 %119 to i32
  store i32 %120, i32* %15, align 4
  %121 = load i32, i32* %15, align 4
  %122 = sub i32 %121, 1
  %123 = load %struct.iommu_map_table*, %struct.iommu_map_table** %8, align 8
  %124 = getelementptr inbounds %struct.iommu_map_table, %struct.iommu_map_table* %123, i32 0, i32 3
  %125 = load %struct.TYPE_2__*, %struct.TYPE_2__** %124, align 8
  %126 = load i32, i32* %16, align 4
  %127 = zext i32 %126 to i64
  %128 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %125, i64 %127
  %129 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %128, i32 0, i32 2
  store i32 %122, i32* %129, align 4
  br label %130

130:                                              ; preds = %89
  %131 = load i32, i32* %16, align 4
  %132 = add i32 %131, 1
  store i32 %132, i32* %16, align 4
  br label %82

133:                                              ; preds = %82
  %134 = load i32, i32* %12, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %137, label %136

136:                                              ; preds = %133
  br label %152

137:                                              ; preds = %133
  %138 = load %struct.iommu_pool*, %struct.iommu_pool** %17, align 8
  %139 = getelementptr inbounds %struct.iommu_pool, %struct.iommu_pool* %138, i32 0, i32 3
  %140 = call i32 @spin_lock_init(i32* %139)
  %141 = load i32, i32* %15, align 4
  %142 = load %struct.iommu_pool*, %struct.iommu_pool** %17, align 8
  %143 = getelementptr inbounds %struct.iommu_pool, %struct.iommu_pool* %142, i32 0, i32 0
  store i32 %141, i32* %143, align 8
  %144 = load %struct.iommu_pool*, %struct.iommu_pool** %17, align 8
  %145 = getelementptr inbounds %struct.iommu_pool, %struct.iommu_pool* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = load %struct.iommu_pool*, %struct.iommu_pool** %17, align 8
  %148 = getelementptr inbounds %struct.iommu_pool, %struct.iommu_pool* %147, i32 0, i32 1
  store i32 %146, i32* %148, align 4
  %149 = load i64, i64* %9, align 8
  %150 = load %struct.iommu_pool*, %struct.iommu_pool** %17, align 8
  %151 = getelementptr inbounds %struct.iommu_pool, %struct.iommu_pool* %150, i32 0, i32 2
  store i64 %149, i64* %151, align 8
  br label %152

152:                                              ; preds = %137, %136
  ret void
}

declare dso_local i32 @setup_iommu_pool_hash(...) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
