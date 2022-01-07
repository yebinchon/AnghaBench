; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/agp/extr_generic.c_agp_free_memory.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/agp/extr_generic.c_agp_free_memory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.agp_memory = type { i64, i64, i32, i32*, %struct.TYPE_4__*, i64 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (i32, i32)*, i32 (%struct.agp_memory*)*, i32 (%struct.agp_memory*)* }

@AGP_USER_TYPES = common dso_local global i64 0, align 8
@AGP_PAGE_DESTROY_UNMAP = common dso_local global i32 0, align 4
@AGP_PAGE_DESTROY_FREE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @agp_free_memory(%struct.agp_memory* %0) #0 {
  %2 = alloca %struct.agp_memory*, align 8
  %3 = alloca i64, align 8
  store %struct.agp_memory* %0, %struct.agp_memory** %2, align 8
  %4 = load %struct.agp_memory*, %struct.agp_memory** %2, align 8
  %5 = icmp eq %struct.agp_memory* %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  br label %126

7:                                                ; preds = %1
  %8 = load %struct.agp_memory*, %struct.agp_memory** %2, align 8
  %9 = getelementptr inbounds %struct.agp_memory, %struct.agp_memory* %8, i32 0, i32 5
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %7
  %13 = load %struct.agp_memory*, %struct.agp_memory** %2, align 8
  %14 = call i32 @agp_unbind_memory(%struct.agp_memory* %13)
  br label %15

15:                                               ; preds = %12, %7
  %16 = load %struct.agp_memory*, %struct.agp_memory** %2, align 8
  %17 = getelementptr inbounds %struct.agp_memory, %struct.agp_memory* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @AGP_USER_TYPES, align 8
  %20 = icmp sge i64 %18, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %15
  %22 = load %struct.agp_memory*, %struct.agp_memory** %2, align 8
  %23 = call i32 @agp_generic_free_by_type(%struct.agp_memory* %22)
  br label %126

24:                                               ; preds = %15
  %25 = load %struct.agp_memory*, %struct.agp_memory** %2, align 8
  %26 = getelementptr inbounds %struct.agp_memory, %struct.agp_memory* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %39

29:                                               ; preds = %24
  %30 = load %struct.agp_memory*, %struct.agp_memory** %2, align 8
  %31 = getelementptr inbounds %struct.agp_memory, %struct.agp_memory* %30, i32 0, i32 4
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 2
  %36 = load i32 (%struct.agp_memory*)*, i32 (%struct.agp_memory*)** %35, align 8
  %37 = load %struct.agp_memory*, %struct.agp_memory** %2, align 8
  %38 = call i32 %36(%struct.agp_memory* %37)
  br label %126

39:                                               ; preds = %24
  %40 = load %struct.agp_memory*, %struct.agp_memory** %2, align 8
  %41 = getelementptr inbounds %struct.agp_memory, %struct.agp_memory* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %117

44:                                               ; preds = %39
  %45 = load %struct.agp_memory*, %struct.agp_memory** %2, align 8
  %46 = getelementptr inbounds %struct.agp_memory, %struct.agp_memory* %45, i32 0, i32 4
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 1
  %51 = load i32 (%struct.agp_memory*)*, i32 (%struct.agp_memory*)** %50, align 8
  %52 = icmp ne i32 (%struct.agp_memory*)* %51, null
  br i1 %52, label %53, label %63

53:                                               ; preds = %44
  %54 = load %struct.agp_memory*, %struct.agp_memory** %2, align 8
  %55 = getelementptr inbounds %struct.agp_memory, %struct.agp_memory* %54, i32 0, i32 4
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 1
  %60 = load i32 (%struct.agp_memory*)*, i32 (%struct.agp_memory*)** %59, align 8
  %61 = load %struct.agp_memory*, %struct.agp_memory** %2, align 8
  %62 = call i32 %60(%struct.agp_memory* %61)
  br label %116

63:                                               ; preds = %44
  store i64 0, i64* %3, align 8
  br label %64

64:                                               ; preds = %86, %63
  %65 = load i64, i64* %3, align 8
  %66 = load %struct.agp_memory*, %struct.agp_memory** %2, align 8
  %67 = getelementptr inbounds %struct.agp_memory, %struct.agp_memory* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = icmp ult i64 %65, %68
  br i1 %69, label %70, label %89

70:                                               ; preds = %64
  %71 = load %struct.agp_memory*, %struct.agp_memory** %2, align 8
  %72 = getelementptr inbounds %struct.agp_memory, %struct.agp_memory* %71, i32 0, i32 4
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  %75 = load %struct.TYPE_3__*, %struct.TYPE_3__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 0
  %77 = load i32 (i32, i32)*, i32 (i32, i32)** %76, align 8
  %78 = load %struct.agp_memory*, %struct.agp_memory** %2, align 8
  %79 = getelementptr inbounds %struct.agp_memory, %struct.agp_memory* %78, i32 0, i32 3
  %80 = load i32*, i32** %79, align 8
  %81 = load i64, i64* %3, align 8
  %82 = getelementptr inbounds i32, i32* %80, i64 %81
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @AGP_PAGE_DESTROY_UNMAP, align 4
  %85 = call i32 %77(i32 %83, i32 %84)
  br label %86

86:                                               ; preds = %70
  %87 = load i64, i64* %3, align 8
  %88 = add i64 %87, 1
  store i64 %88, i64* %3, align 8
  br label %64

89:                                               ; preds = %64
  store i64 0, i64* %3, align 8
  br label %90

90:                                               ; preds = %112, %89
  %91 = load i64, i64* %3, align 8
  %92 = load %struct.agp_memory*, %struct.agp_memory** %2, align 8
  %93 = getelementptr inbounds %struct.agp_memory, %struct.agp_memory* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = icmp ult i64 %91, %94
  br i1 %95, label %96, label %115

96:                                               ; preds = %90
  %97 = load %struct.agp_memory*, %struct.agp_memory** %2, align 8
  %98 = getelementptr inbounds %struct.agp_memory, %struct.agp_memory* %97, i32 0, i32 4
  %99 = load %struct.TYPE_4__*, %struct.TYPE_4__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 0
  %101 = load %struct.TYPE_3__*, %struct.TYPE_3__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i32 0, i32 0
  %103 = load i32 (i32, i32)*, i32 (i32, i32)** %102, align 8
  %104 = load %struct.agp_memory*, %struct.agp_memory** %2, align 8
  %105 = getelementptr inbounds %struct.agp_memory, %struct.agp_memory* %104, i32 0, i32 3
  %106 = load i32*, i32** %105, align 8
  %107 = load i64, i64* %3, align 8
  %108 = getelementptr inbounds i32, i32* %106, i64 %107
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* @AGP_PAGE_DESTROY_FREE, align 4
  %111 = call i32 %103(i32 %109, i32 %110)
  br label %112

112:                                              ; preds = %96
  %113 = load i64, i64* %3, align 8
  %114 = add i64 %113, 1
  store i64 %114, i64* %3, align 8
  br label %90

115:                                              ; preds = %90
  br label %116

116:                                              ; preds = %115, %53
  br label %117

117:                                              ; preds = %116, %39
  %118 = load %struct.agp_memory*, %struct.agp_memory** %2, align 8
  %119 = getelementptr inbounds %struct.agp_memory, %struct.agp_memory* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 8
  %121 = call i32 @agp_free_key(i32 %120)
  %122 = load %struct.agp_memory*, %struct.agp_memory** %2, align 8
  %123 = call i32 @agp_free_page_array(%struct.agp_memory* %122)
  %124 = load %struct.agp_memory*, %struct.agp_memory** %2, align 8
  %125 = call i32 @kfree(%struct.agp_memory* %124)
  br label %126

126:                                              ; preds = %117, %29, %21, %6
  ret void
}

declare dso_local i32 @agp_unbind_memory(%struct.agp_memory*) #1

declare dso_local i32 @agp_generic_free_by_type(%struct.agp_memory*) #1

declare dso_local i32 @agp_free_key(i32) #1

declare dso_local i32 @agp_free_page_array(%struct.agp_memory*) #1

declare dso_local i32 @kfree(%struct.agp_memory*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
