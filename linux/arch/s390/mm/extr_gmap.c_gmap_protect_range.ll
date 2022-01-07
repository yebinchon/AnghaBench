; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/mm/extr_gmap.c_gmap_protect_range.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/mm/extr_gmap.c_gmap_protect_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gmap = type { i32 }

@EAGAIN = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8
@HPAGE_SIZE = common dso_local global i64 0, align 8
@HPAGE_MASK = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gmap*, i64, i64, i32, i64)* @gmap_protect_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gmap_protect_range(%struct.gmap* %0, i64 %1, i64 %2, i32 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.gmap*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  store %struct.gmap* %0, %struct.gmap** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i32 %3, i32* %10, align 4
  store i64 %4, i64* %11, align 8
  %16 = load %struct.gmap*, %struct.gmap** %7, align 8
  %17 = call i32 @gmap_is_shadow(%struct.gmap* %16)
  %18 = call i32 @BUG_ON(i32 %17)
  br label %19

19:                                               ; preds = %119, %5
  %20 = load i64, i64* %9, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %120

22:                                               ; preds = %19
  %23 = load i32, i32* @EAGAIN, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %15, align 4
  %25 = load %struct.gmap*, %struct.gmap** %7, align 8
  %26 = load i64, i64* %8, align 8
  %27 = call i32* @gmap_pmd_op_walk(%struct.gmap* %25, i64 %26)
  store i32* %27, i32** %14, align 8
  %28 = load i32*, i32** %14, align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %30, label %88

30:                                               ; preds = %22
  %31 = load i32*, i32** %14, align 8
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @pmd_large(i32 %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %52, label %35

35:                                               ; preds = %30
  %36 = load %struct.gmap*, %struct.gmap** %7, align 8
  %37 = load i64, i64* %8, align 8
  %38 = load i32*, i32** %14, align 8
  %39 = load i32, i32* %10, align 4
  %40 = load i64, i64* %11, align 8
  %41 = call i32 @gmap_protect_pte(%struct.gmap* %36, i64 %37, i32* %38, i32 %39, i64 %40)
  store i32 %41, i32* %15, align 4
  %42 = load i32, i32* %15, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %51, label %44

44:                                               ; preds = %35
  %45 = load i64, i64* @PAGE_SIZE, align 8
  %46 = load i64, i64* %9, align 8
  %47 = sub i64 %46, %45
  store i64 %47, i64* %9, align 8
  %48 = load i64, i64* @PAGE_SIZE, align 8
  %49 = load i64, i64* %8, align 8
  %50 = add i64 %49, %48
  store i64 %50, i64* %8, align 8
  br label %51

51:                                               ; preds = %44, %35
  br label %84

52:                                               ; preds = %30
  %53 = load %struct.gmap*, %struct.gmap** %7, align 8
  %54 = load i64, i64* %8, align 8
  %55 = load i32*, i32** %14, align 8
  %56 = load i32, i32* %10, align 4
  %57 = load i64, i64* %11, align 8
  %58 = call i32 @gmap_protect_pmd(%struct.gmap* %53, i64 %54, i32* %55, i32 %56, i64 %57)
  store i32 %58, i32* %15, align 4
  %59 = load i32, i32* %15, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %83, label %61

61:                                               ; preds = %52
  %62 = load i64, i64* @HPAGE_SIZE, align 8
  %63 = load i64, i64* %8, align 8
  %64 = load i64, i64* @HPAGE_MASK, align 8
  %65 = xor i64 %64, -1
  %66 = and i64 %63, %65
  %67 = sub i64 %62, %66
  store i64 %67, i64* %13, align 8
  %68 = load i64, i64* %9, align 8
  %69 = load i64, i64* %13, align 8
  %70 = icmp ult i64 %68, %69
  br i1 %70, label %71, label %72

71:                                               ; preds = %61
  br label %76

72:                                               ; preds = %61
  %73 = load i64, i64* %9, align 8
  %74 = load i64, i64* %13, align 8
  %75 = sub i64 %73, %74
  br label %76

76:                                               ; preds = %72, %71
  %77 = phi i64 [ 0, %71 ], [ %75, %72 ]
  store i64 %77, i64* %9, align 8
  %78 = load i64, i64* %8, align 8
  %79 = load i64, i64* @HPAGE_MASK, align 8
  %80 = and i64 %78, %79
  %81 = load i64, i64* @HPAGE_SIZE, align 8
  %82 = add i64 %80, %81
  store i64 %82, i64* %8, align 8
  br label %83

83:                                               ; preds = %76, %52
  br label %84

84:                                               ; preds = %83, %51
  %85 = load %struct.gmap*, %struct.gmap** %7, align 8
  %86 = load i32*, i32** %14, align 8
  %87 = call i32 @gmap_pmd_op_end(%struct.gmap* %85, i32* %86)
  br label %88

88:                                               ; preds = %84, %22
  %89 = load i32, i32* %15, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %119

91:                                               ; preds = %88
  %92 = load i32, i32* %15, align 4
  %93 = load i32, i32* @EINVAL, align 4
  %94 = sub nsw i32 0, %93
  %95 = icmp eq i32 %92, %94
  br i1 %95, label %96, label %98

96:                                               ; preds = %91
  %97 = load i32, i32* %15, align 4
  store i32 %97, i32* %6, align 4
  br label %121

98:                                               ; preds = %91
  %99 = load %struct.gmap*, %struct.gmap** %7, align 8
  %100 = load i64, i64* %8, align 8
  %101 = call i64 @__gmap_translate(%struct.gmap* %99, i64 %100)
  store i64 %101, i64* %12, align 8
  %102 = load i64, i64* %12, align 8
  %103 = call i64 @IS_ERR_VALUE(i64 %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %108

105:                                              ; preds = %98
  %106 = load i64, i64* %12, align 8
  %107 = trunc i64 %106 to i32
  store i32 %107, i32* %6, align 4
  br label %121

108:                                              ; preds = %98
  %109 = load %struct.gmap*, %struct.gmap** %7, align 8
  %110 = load i64, i64* %8, align 8
  %111 = load i64, i64* %12, align 8
  %112 = load i32, i32* %10, align 4
  %113 = call i32 @gmap_pte_op_fixup(%struct.gmap* %109, i64 %110, i64 %111, i32 %112)
  store i32 %113, i32* %15, align 4
  %114 = load i32, i32* %15, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %118

116:                                              ; preds = %108
  %117 = load i32, i32* %15, align 4
  store i32 %117, i32* %6, align 4
  br label %121

118:                                              ; preds = %108
  br label %119

119:                                              ; preds = %118, %88
  br label %19

120:                                              ; preds = %19
  store i32 0, i32* %6, align 4
  br label %121

121:                                              ; preds = %120, %116, %105, %96
  %122 = load i32, i32* %6, align 4
  ret i32 %122
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @gmap_is_shadow(%struct.gmap*) #1

declare dso_local i32* @gmap_pmd_op_walk(%struct.gmap*, i64) #1

declare dso_local i32 @pmd_large(i32) #1

declare dso_local i32 @gmap_protect_pte(%struct.gmap*, i64, i32*, i32, i64) #1

declare dso_local i32 @gmap_protect_pmd(%struct.gmap*, i64, i32*, i32, i64) #1

declare dso_local i32 @gmap_pmd_op_end(%struct.gmap*, i32*) #1

declare dso_local i64 @__gmap_translate(%struct.gmap*, i64) #1

declare dso_local i64 @IS_ERR_VALUE(i64) #1

declare dso_local i32 @gmap_pte_op_fixup(%struct.gmap*, i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
