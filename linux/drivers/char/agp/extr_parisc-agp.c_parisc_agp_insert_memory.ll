; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/agp/extr_parisc-agp.c_parisc_agp_insert_memory.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/agp/extr_parisc-agp.c_parisc_agp_insert_memory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._parisc_agp_info = type { i32, i32, i64*, i64 }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 (%struct.agp_memory*)*, i64 (%struct.TYPE_6__*, i32)* }
%struct.agp_memory = type { i32, i32, i32, i32* }

@parisc_agp_info = common dso_local global %struct._parisc_agp_info zeroinitializer, align 8
@agp_bridge = common dso_local global %struct.TYPE_6__* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.agp_memory*, i32, i32)* @parisc_agp_insert_memory to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parisc_agp_insert_memory(%struct.agp_memory* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.agp_memory*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct._parisc_agp_info*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  store %struct.agp_memory* %0, %struct.agp_memory** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store %struct._parisc_agp_info* @parisc_agp_info, %struct._parisc_agp_info** %8, align 8
  %15 = load i32, i32* %7, align 4
  %16 = load %struct.agp_memory*, %struct.agp_memory** %5, align 8
  %17 = getelementptr inbounds %struct.agp_memory, %struct.agp_memory* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %15, %18
  br i1 %19, label %30, label %20

20:                                               ; preds = %3
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** @agp_bridge, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 1
  %25 = load i64 (%struct.TYPE_6__*, i32)*, i64 (%struct.TYPE_6__*, i32)** %24, align 8
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** @agp_bridge, align 8
  %27 = load i32, i32* %7, align 4
  %28 = call i64 %25(%struct.TYPE_6__* %26, i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %20, %3
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %4, align 4
  br label %144

33:                                               ; preds = %20
  %34 = load %struct._parisc_agp_info*, %struct._parisc_agp_info** %8, align 8
  %35 = getelementptr inbounds %struct._parisc_agp_info, %struct._parisc_agp_info* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* %6, align 4
  %38 = mul nsw i32 %36, %37
  store i32 %38, i32* %12, align 4
  %39 = load %struct._parisc_agp_info*, %struct._parisc_agp_info** %8, align 8
  %40 = getelementptr inbounds %struct._parisc_agp_info, %struct._parisc_agp_info* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.agp_memory*, %struct.agp_memory** %5, align 8
  %43 = getelementptr inbounds %struct.agp_memory, %struct.agp_memory* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = mul nsw i32 %41, %44
  store i32 %45, i32* %13, align 4
  %46 = load i32, i32* %12, align 4
  %47 = load i32, i32* %13, align 4
  %48 = add nsw i32 %46, %47
  %49 = load %struct._parisc_agp_info*, %struct._parisc_agp_info** %8, align 8
  %50 = getelementptr inbounds %struct._parisc_agp_info, %struct._parisc_agp_info* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = icmp sgt i32 %48, %51
  br i1 %52, label %53, label %56

53:                                               ; preds = %33
  %54 = load i32, i32* @EINVAL, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %4, align 4
  br label %144

56:                                               ; preds = %33
  %57 = load i32, i32* %12, align 4
  store i32 %57, i32* %11, align 4
  br label %58

58:                                               ; preds = %76, %56
  %59 = load i32, i32* %11, align 4
  %60 = load i32, i32* %12, align 4
  %61 = load i32, i32* %13, align 4
  %62 = add nsw i32 %60, %61
  %63 = icmp slt i32 %59, %62
  br i1 %63, label %64, label %79

64:                                               ; preds = %58
  %65 = load %struct._parisc_agp_info*, %struct._parisc_agp_info** %8, align 8
  %66 = getelementptr inbounds %struct._parisc_agp_info, %struct._parisc_agp_info* %65, i32 0, i32 2
  %67 = load i64*, i64** %66, align 8
  %68 = load i32, i32* %11, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i64, i64* %67, i64 %69
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %64
  %74 = load i32, i32* @EBUSY, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %4, align 4
  br label %144

76:                                               ; preds = %64
  %77 = load i32, i32* %11, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %11, align 4
  br label %58

79:                                               ; preds = %58
  %80 = load %struct.agp_memory*, %struct.agp_memory** %5, align 8
  %81 = getelementptr inbounds %struct.agp_memory, %struct.agp_memory* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 8
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %88, label %84

84:                                               ; preds = %79
  %85 = call i32 (...) @global_cache_flush()
  %86 = load %struct.agp_memory*, %struct.agp_memory** %5, align 8
  %87 = getelementptr inbounds %struct.agp_memory, %struct.agp_memory* %86, i32 0, i32 2
  store i32 1, i32* %87, align 8
  br label %88

88:                                               ; preds = %84, %79
  store i32 0, i32* %9, align 4
  %89 = load i32, i32* %12, align 4
  store i32 %89, i32* %11, align 4
  br label %90

90:                                               ; preds = %133, %88
  %91 = load i32, i32* %9, align 4
  %92 = load %struct.agp_memory*, %struct.agp_memory** %5, align 8
  %93 = getelementptr inbounds %struct.agp_memory, %struct.agp_memory* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = icmp slt i32 %91, %94
  br i1 %95, label %96, label %136

96:                                               ; preds = %90
  %97 = load %struct.agp_memory*, %struct.agp_memory** %5, align 8
  %98 = getelementptr inbounds %struct.agp_memory, %struct.agp_memory* %97, i32 0, i32 3
  %99 = load i32*, i32** %98, align 8
  %100 = load i32, i32* %9, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i32, i32* %99, i64 %101
  %103 = load i32, i32* %102, align 4
  %104 = call i64 @page_to_phys(i32 %103)
  store i64 %104, i64* %14, align 8
  store i32 0, i32* %10, align 4
  br label %105

105:                                              ; preds = %122, %96
  %106 = load i32, i32* %10, align 4
  %107 = load %struct._parisc_agp_info*, %struct._parisc_agp_info** %8, align 8
  %108 = getelementptr inbounds %struct._parisc_agp_info, %struct._parisc_agp_info* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = icmp slt i32 %106, %109
  br i1 %110, label %111, label %132

111:                                              ; preds = %105
  %112 = load %struct.TYPE_6__*, %struct.TYPE_6__** @agp_bridge, align 8
  %113 = load i64, i64* %14, align 8
  %114 = load i32, i32* %7, align 4
  %115 = call i64 @parisc_agp_mask_memory(%struct.TYPE_6__* %112, i64 %113, i32 %114)
  %116 = load %struct._parisc_agp_info*, %struct._parisc_agp_info** %8, align 8
  %117 = getelementptr inbounds %struct._parisc_agp_info, %struct._parisc_agp_info* %116, i32 0, i32 2
  %118 = load i64*, i64** %117, align 8
  %119 = load i32, i32* %11, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i64, i64* %118, i64 %120
  store i64 %115, i64* %121, align 8
  br label %122

122:                                              ; preds = %111
  %123 = load i32, i32* %10, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %10, align 4
  %125 = load i32, i32* %11, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %11, align 4
  %127 = load %struct._parisc_agp_info*, %struct._parisc_agp_info** %8, align 8
  %128 = getelementptr inbounds %struct._parisc_agp_info, %struct._parisc_agp_info* %127, i32 0, i32 3
  %129 = load i64, i64* %128, align 8
  %130 = load i64, i64* %14, align 8
  %131 = add i64 %130, %129
  store i64 %131, i64* %14, align 8
  br label %105

132:                                              ; preds = %105
  br label %133

133:                                              ; preds = %132
  %134 = load i32, i32* %9, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %9, align 4
  br label %90

136:                                              ; preds = %90
  %137 = load %struct.TYPE_6__*, %struct.TYPE_6__** @agp_bridge, align 8
  %138 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %137, i32 0, i32 0
  %139 = load %struct.TYPE_5__*, %struct.TYPE_5__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %139, i32 0, i32 0
  %141 = load i32 (%struct.agp_memory*)*, i32 (%struct.agp_memory*)** %140, align 8
  %142 = load %struct.agp_memory*, %struct.agp_memory** %5, align 8
  %143 = call i32 %141(%struct.agp_memory* %142)
  store i32 0, i32* %4, align 4
  br label %144

144:                                              ; preds = %136, %73, %53, %30
  %145 = load i32, i32* %4, align 4
  ret i32 %145
}

declare dso_local i32 @global_cache_flush(...) #1

declare dso_local i64 @page_to_phys(i32) #1

declare dso_local i64 @parisc_agp_mask_memory(%struct.TYPE_6__*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
