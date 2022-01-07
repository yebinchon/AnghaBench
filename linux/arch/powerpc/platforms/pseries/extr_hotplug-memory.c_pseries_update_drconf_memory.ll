; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/pseries/extr_hotplug-memory.c_pseries_update_drconf_memory.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/pseries/extr_hotplug-memory.c_pseries_update_drconf_memory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.of_reconfig_data = type { %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i64 }
%struct.of_drconf_cell_v1 = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@rtas_hp_event = common dso_local global i64 0, align 8
@DRCONF_MEM_ASSIGNED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.of_reconfig_data*)* @pseries_update_drconf_memory to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pseries_update_drconf_memory(%struct.of_reconfig_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.of_reconfig_data*, align 8
  %4 = alloca %struct.of_drconf_cell_v1*, align 8
  %5 = alloca %struct.of_drconf_cell_v1*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.of_reconfig_data* %0, %struct.of_reconfig_data** %3, align 8
  %11 = load i32, i32* @EINVAL, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %10, align 4
  %13 = load i64, i64* @rtas_hp_event, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %141

16:                                               ; preds = %1
  %17 = call i64 (...) @pseries_memory_block_size()
  store i64 %17, i64* %6, align 8
  %18 = load i64, i64* %6, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %16
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %141

23:                                               ; preds = %16
  %24 = load %struct.of_reconfig_data*, %struct.of_reconfig_data** %3, align 8
  %25 = getelementptr inbounds %struct.of_reconfig_data, %struct.of_reconfig_data* %24, i32 0, i32 1
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %27 = icmp ne %struct.TYPE_3__* %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %23
  store i32 0, i32* %2, align 4
  br label %141

29:                                               ; preds = %23
  %30 = load %struct.of_reconfig_data*, %struct.of_reconfig_data** %3, align 8
  %31 = getelementptr inbounds %struct.of_reconfig_data, %struct.of_reconfig_data* %30, i32 0, i32 1
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = inttoptr i64 %34 to i32*
  store i32* %35, i32** %8, align 8
  %36 = load i32*, i32** %8, align 8
  %37 = icmp ne i32* %36, null
  br i1 %37, label %41, label %38

38:                                               ; preds = %29
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %2, align 4
  br label %141

41:                                               ; preds = %29
  %42 = load i32*, i32** %8, align 8
  %43 = getelementptr inbounds i32, i32* %42, i32 1
  store i32* %43, i32** %8, align 8
  %44 = load i32, i32* %42, align 4
  %45 = call i32 @be32_to_cpu(i32 %44)
  store i32 %45, i32* %7, align 4
  %46 = load i32*, i32** %8, align 8
  %47 = bitcast i32* %46 to %struct.of_drconf_cell_v1*
  store %struct.of_drconf_cell_v1* %47, %struct.of_drconf_cell_v1** %5, align 8
  %48 = load %struct.of_reconfig_data*, %struct.of_reconfig_data** %3, align 8
  %49 = getelementptr inbounds %struct.of_reconfig_data, %struct.of_reconfig_data* %48, i32 0, i32 0
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = inttoptr i64 %52 to i32*
  store i32* %53, i32** %8, align 8
  %54 = load i32*, i32** %8, align 8
  %55 = getelementptr inbounds i32, i32* %54, i32 1
  store i32* %55, i32** %8, align 8
  %56 = load i32*, i32** %8, align 8
  %57 = bitcast i32* %56 to %struct.of_drconf_cell_v1*
  store %struct.of_drconf_cell_v1* %57, %struct.of_drconf_cell_v1** %4, align 8
  store i32 0, i32* %9, align 4
  br label %58

58:                                               ; preds = %136, %41
  %59 = load i32, i32* %9, align 4
  %60 = load i32, i32* %7, align 4
  %61 = icmp slt i32 %59, %60
  br i1 %61, label %62, label %139

62:                                               ; preds = %58
  %63 = load %struct.of_drconf_cell_v1*, %struct.of_drconf_cell_v1** %5, align 8
  %64 = load i32, i32* %9, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.of_drconf_cell_v1, %struct.of_drconf_cell_v1* %63, i64 %65
  %67 = getelementptr inbounds %struct.of_drconf_cell_v1, %struct.of_drconf_cell_v1* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @be32_to_cpu(i32 %68)
  %70 = load i32, i32* @DRCONF_MEM_ASSIGNED, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %94

73:                                               ; preds = %62
  %74 = load %struct.of_drconf_cell_v1*, %struct.of_drconf_cell_v1** %4, align 8
  %75 = load i32, i32* %9, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.of_drconf_cell_v1, %struct.of_drconf_cell_v1* %74, i64 %76
  %78 = getelementptr inbounds %struct.of_drconf_cell_v1, %struct.of_drconf_cell_v1* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @be32_to_cpu(i32 %79)
  %81 = load i32, i32* @DRCONF_MEM_ASSIGNED, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %94, label %84

84:                                               ; preds = %73
  %85 = load %struct.of_drconf_cell_v1*, %struct.of_drconf_cell_v1** %5, align 8
  %86 = load i32, i32* %9, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.of_drconf_cell_v1, %struct.of_drconf_cell_v1* %85, i64 %87
  %89 = getelementptr inbounds %struct.of_drconf_cell_v1, %struct.of_drconf_cell_v1* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @be64_to_cpu(i32 %90)
  %92 = load i64, i64* %6, align 8
  %93 = call i32 @pseries_remove_memblock(i32 %91, i64 %92)
  store i32 %93, i32* %10, align 4
  br label %139

94:                                               ; preds = %73, %62
  %95 = load %struct.of_drconf_cell_v1*, %struct.of_drconf_cell_v1** %5, align 8
  %96 = load i32, i32* %9, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.of_drconf_cell_v1, %struct.of_drconf_cell_v1* %95, i64 %97
  %99 = getelementptr inbounds %struct.of_drconf_cell_v1, %struct.of_drconf_cell_v1* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @be32_to_cpu(i32 %100)
  %102 = load i32, i32* @DRCONF_MEM_ASSIGNED, align 4
  %103 = and i32 %101, %102
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %134, label %105

105:                                              ; preds = %94
  %106 = load %struct.of_drconf_cell_v1*, %struct.of_drconf_cell_v1** %4, align 8
  %107 = load i32, i32* %9, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.of_drconf_cell_v1, %struct.of_drconf_cell_v1* %106, i64 %108
  %110 = getelementptr inbounds %struct.of_drconf_cell_v1, %struct.of_drconf_cell_v1* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @be32_to_cpu(i32 %111)
  %113 = load i32, i32* @DRCONF_MEM_ASSIGNED, align 4
  %114 = and i32 %112, %113
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %134

116:                                              ; preds = %105
  %117 = load %struct.of_drconf_cell_v1*, %struct.of_drconf_cell_v1** %5, align 8
  %118 = load i32, i32* %9, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.of_drconf_cell_v1, %struct.of_drconf_cell_v1* %117, i64 %119
  %121 = getelementptr inbounds %struct.of_drconf_cell_v1, %struct.of_drconf_cell_v1* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = call i32 @be64_to_cpu(i32 %122)
  %124 = load i64, i64* %6, align 8
  %125 = call i32 @memblock_add(i32 %123, i64 %124)
  store i32 %125, i32* %10, align 4
  %126 = load i32, i32* %10, align 4
  %127 = icmp slt i32 %126, 0
  br i1 %127, label %128, label %131

128:                                              ; preds = %116
  %129 = load i32, i32* @EINVAL, align 4
  %130 = sub nsw i32 0, %129
  br label %132

131:                                              ; preds = %116
  br label %132

132:                                              ; preds = %131, %128
  %133 = phi i32 [ %130, %128 ], [ 0, %131 ]
  store i32 %133, i32* %10, align 4
  br label %139

134:                                              ; preds = %105, %94
  br label %135

135:                                              ; preds = %134
  br label %136

136:                                              ; preds = %135
  %137 = load i32, i32* %9, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %9, align 4
  br label %58

139:                                              ; preds = %132, %84, %58
  %140 = load i32, i32* %10, align 4
  store i32 %140, i32* %2, align 4
  br label %141

141:                                              ; preds = %139, %38, %28, %20, %15
  %142 = load i32, i32* %2, align 4
  ret i32 %142
}

declare dso_local i64 @pseries_memory_block_size(...) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @pseries_remove_memblock(i32, i64) #1

declare dso_local i32 @be64_to_cpu(i32) #1

declare dso_local i32 @memblock_add(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
