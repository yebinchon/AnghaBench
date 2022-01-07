; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/agp/extr_nvidia-agp.c_nvidia_insert_memory.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/agp/extr_nvidia-agp.c_nvidia_insert_memory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i64 }
%struct.TYPE_7__ = type { %struct.TYPE_6__*, i64 }
%struct.TYPE_6__ = type { i32 (%struct.agp_memory*)*, i32 (%struct.TYPE_7__*, i32, i32)* }
%struct.agp_memory = type { i32, i32, i32, i32*, i32 }

@EINVAL = common dso_local global i32 0, align 4
@nvidia_private = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@agp_memory_reserved = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@agp_bridge = common dso_local global %struct.TYPE_7__* null, align 8
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.agp_memory*, i32, i32)* @nvidia_insert_memory to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvidia_insert_memory(%struct.agp_memory* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.agp_memory*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.agp_memory* %0, %struct.agp_memory** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load %struct.agp_memory*, %struct.agp_memory** %5, align 8
  %12 = getelementptr inbounds %struct.agp_memory, %struct.agp_memory* %11, i32 0, i32 4
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* %7, align 4
  %15 = call i32 @agp_generic_type_to_mask_type(i32 %13, i32 %14)
  store i32 %15, i32* %10, align 4
  %16 = load i32, i32* %10, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %24, label %18

18:                                               ; preds = %3
  %19 = load i32, i32* %7, align 4
  %20 = load %struct.agp_memory*, %struct.agp_memory** %5, align 8
  %21 = getelementptr inbounds %struct.agp_memory, %struct.agp_memory* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp ne i32 %19, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %18, %3
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %4, align 4
  br label %144

27:                                               ; preds = %18
  %28 = load %struct.agp_memory*, %struct.agp_memory** %5, align 8
  %29 = getelementptr inbounds %struct.agp_memory, %struct.agp_memory* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %27
  store i32 0, i32* %4, align 4
  br label %144

33:                                               ; preds = %27
  %34 = load i32, i32* %6, align 4
  %35 = load %struct.agp_memory*, %struct.agp_memory** %5, align 8
  %36 = getelementptr inbounds %struct.agp_memory, %struct.agp_memory* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = add nsw i32 %34, %37
  %39 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @nvidia_private, i32 0, i32 0), align 8
  %40 = load i32, i32* @agp_memory_reserved, align 4
  %41 = load i32, i32* @PAGE_SIZE, align 4
  %42 = sdiv i32 %40, %41
  %43 = sub nsw i32 %39, %42
  %44 = icmp sgt i32 %38, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %33
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %4, align 4
  br label %144

48:                                               ; preds = %33
  %49 = load i32, i32* %6, align 4
  store i32 %49, i32* %9, align 4
  br label %50

50:                                               ; preds = %75, %48
  %51 = load i32, i32* %9, align 4
  %52 = load i32, i32* %6, align 4
  %53 = load %struct.agp_memory*, %struct.agp_memory** %5, align 8
  %54 = getelementptr inbounds %struct.agp_memory, %struct.agp_memory* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = add nsw i32 %52, %55
  %57 = icmp slt i32 %51, %56
  br i1 %57, label %58, label %78

58:                                               ; preds = %50
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** @agp_bridge, align 8
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** @agp_bridge, align 8
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @nvidia_private, i32 0, i32 1), align 8
  %64 = add nsw i64 %62, %63
  %65 = load i32, i32* %9, align 4
  %66 = sext i32 %65 to i64
  %67 = add nsw i64 %64, %66
  %68 = call i32 @readl(i64 %67)
  %69 = call i32 @PGE_EMPTY(%struct.TYPE_7__* %59, i32 %68)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %74, label %71

71:                                               ; preds = %58
  %72 = load i32, i32* @EBUSY, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %4, align 4
  br label %144

74:                                               ; preds = %58
  br label %75

75:                                               ; preds = %74
  %76 = load i32, i32* %9, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %9, align 4
  br label %50

78:                                               ; preds = %50
  %79 = load %struct.agp_memory*, %struct.agp_memory** %5, align 8
  %80 = getelementptr inbounds %struct.agp_memory, %struct.agp_memory* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %87, label %83

83:                                               ; preds = %78
  %84 = call i32 (...) @global_cache_flush()
  %85 = load %struct.agp_memory*, %struct.agp_memory** %5, align 8
  %86 = getelementptr inbounds %struct.agp_memory, %struct.agp_memory* %85, i32 0, i32 2
  store i32 1, i32* %86, align 8
  br label %87

87:                                               ; preds = %83, %78
  store i32 0, i32* %8, align 4
  %88 = load i32, i32* %6, align 4
  store i32 %88, i32* %9, align 4
  br label %89

89:                                               ; preds = %121, %87
  %90 = load i32, i32* %8, align 4
  %91 = load %struct.agp_memory*, %struct.agp_memory** %5, align 8
  %92 = getelementptr inbounds %struct.agp_memory, %struct.agp_memory* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = icmp slt i32 %90, %93
  br i1 %94, label %95, label %126

95:                                               ; preds = %89
  %96 = load %struct.TYPE_7__*, %struct.TYPE_7__** @agp_bridge, align 8
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i32 0, i32 0
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 1
  %100 = load i32 (%struct.TYPE_7__*, i32, i32)*, i32 (%struct.TYPE_7__*, i32, i32)** %99, align 8
  %101 = load %struct.TYPE_7__*, %struct.TYPE_7__** @agp_bridge, align 8
  %102 = load %struct.agp_memory*, %struct.agp_memory** %5, align 8
  %103 = getelementptr inbounds %struct.agp_memory, %struct.agp_memory* %102, i32 0, i32 3
  %104 = load i32*, i32** %103, align 8
  %105 = load i32, i32* %8, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i32, i32* %104, i64 %106
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @page_to_phys(i32 %108)
  %110 = load i32, i32* %10, align 4
  %111 = call i32 %100(%struct.TYPE_7__* %101, i32 %109, i32 %110)
  %112 = load %struct.TYPE_7__*, %struct.TYPE_7__** @agp_bridge, align 8
  %113 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %112, i32 0, i32 1
  %114 = load i64, i64* %113, align 8
  %115 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @nvidia_private, i32 0, i32 1), align 8
  %116 = add nsw i64 %114, %115
  %117 = load i32, i32* %9, align 4
  %118 = sext i32 %117 to i64
  %119 = add nsw i64 %116, %118
  %120 = call i32 @writel(i32 %111, i64 %119)
  br label %121

121:                                              ; preds = %95
  %122 = load i32, i32* %8, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %8, align 4
  %124 = load i32, i32* %9, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %9, align 4
  br label %89

126:                                              ; preds = %89
  %127 = load %struct.TYPE_7__*, %struct.TYPE_7__** @agp_bridge, align 8
  %128 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %127, i32 0, i32 1
  %129 = load i64, i64* %128, align 8
  %130 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @nvidia_private, i32 0, i32 1), align 8
  %131 = add nsw i64 %129, %130
  %132 = load i32, i32* %9, align 4
  %133 = sext i32 %132 to i64
  %134 = add nsw i64 %131, %133
  %135 = sub nsw i64 %134, 1
  %136 = call i32 @readl(i64 %135)
  %137 = load %struct.TYPE_7__*, %struct.TYPE_7__** @agp_bridge, align 8
  %138 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %137, i32 0, i32 0
  %139 = load %struct.TYPE_6__*, %struct.TYPE_6__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %139, i32 0, i32 0
  %141 = load i32 (%struct.agp_memory*)*, i32 (%struct.agp_memory*)** %140, align 8
  %142 = load %struct.agp_memory*, %struct.agp_memory** %5, align 8
  %143 = call i32 %141(%struct.agp_memory* %142)
  store i32 0, i32* %4, align 4
  br label %144

144:                                              ; preds = %126, %71, %45, %32, %24
  %145 = load i32, i32* %4, align 4
  ret i32 %145
}

declare dso_local i32 @agp_generic_type_to_mask_type(i32, i32) #1

declare dso_local i32 @PGE_EMPTY(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @global_cache_flush(...) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @page_to_phys(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
