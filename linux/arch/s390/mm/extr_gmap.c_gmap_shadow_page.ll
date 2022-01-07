; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/mm/extr_gmap.c_gmap_shadow_page.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/mm/extr_gmap.c_gmap_shadow_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gmap = type { i32, i32, %struct.gmap* }
%struct.gmap_rmap = type { i64 }

@_PAGE_PROTECT = common dso_local global i32 0, align 4
@PROT_READ = common dso_local global i32 0, align 4
@PROT_WRITE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@PAGE_MASK = common dso_local global i64 0, align 8
@_SHADOW_RMAP_PGTABLE = common dso_local global i64 0, align 8
@EAGAIN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gmap_shadow_page(%struct.gmap* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.gmap*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.gmap*, align 8
  %9 = alloca %struct.gmap_rmap*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.gmap* %0, %struct.gmap** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %17 = load %struct.gmap*, %struct.gmap** %5, align 8
  %18 = call i32 @gmap_is_shadow(%struct.gmap* %17)
  %19 = icmp ne i32 %18, 0
  %20 = xor i1 %19, true
  %21 = zext i1 %20 to i32
  %22 = call i32 @BUG_ON(i32 %21)
  %23 = load %struct.gmap*, %struct.gmap** %5, align 8
  %24 = getelementptr inbounds %struct.gmap, %struct.gmap* %23, i32 0, i32 2
  %25 = load %struct.gmap*, %struct.gmap** %24, align 8
  store %struct.gmap* %25, %struct.gmap** %8, align 8
  %26 = load i32, i32* %7, align 4
  %27 = call i64 @pte_val(i32 %26)
  %28 = load i32, i32* @_PAGE_PROTECT, align 4
  %29 = sext i32 %28 to i64
  %30 = and i64 %27, %29
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %3
  %33 = load i32, i32* @PROT_READ, align 4
  br label %36

34:                                               ; preds = %3
  %35 = load i32, i32* @PROT_WRITE, align 4
  br label %36

36:                                               ; preds = %34, %32
  %37 = phi i32 [ %33, %32 ], [ %35, %34 ]
  store i32 %37, i32* %15, align 4
  %38 = load i32, i32* @GFP_KERNEL, align 4
  %39 = call %struct.gmap_rmap* @kzalloc(i32 8, i32 %38)
  store %struct.gmap_rmap* %39, %struct.gmap_rmap** %9, align 8
  %40 = load %struct.gmap_rmap*, %struct.gmap_rmap** %9, align 8
  %41 = icmp ne %struct.gmap_rmap* %40, null
  br i1 %41, label %45, label %42

42:                                               ; preds = %36
  %43 = load i32, i32* @ENOMEM, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %4, align 4
  br label %139

45:                                               ; preds = %36
  %46 = load i64, i64* %6, align 8
  %47 = load i64, i64* @PAGE_MASK, align 8
  %48 = and i64 %46, %47
  %49 = load i64, i64* @_SHADOW_RMAP_PGTABLE, align 8
  %50 = or i64 %48, %49
  %51 = load %struct.gmap_rmap*, %struct.gmap_rmap** %9, align 8
  %52 = getelementptr inbounds %struct.gmap_rmap, %struct.gmap_rmap* %51, i32 0, i32 0
  store i64 %50, i64* %52, align 8
  br label %53

53:                                               ; preds = %45, %134
  %54 = load i32, i32* %7, align 4
  %55 = call i64 @pte_val(i32 %54)
  %56 = load i64, i64* @PAGE_MASK, align 8
  %57 = and i64 %55, %56
  store i64 %57, i64* %11, align 8
  %58 = load %struct.gmap*, %struct.gmap** %8, align 8
  %59 = load i64, i64* %11, align 8
  %60 = call i64 @__gmap_translate(%struct.gmap* %58, i64 %59)
  store i64 %60, i64* %10, align 8
  %61 = load i64, i64* %10, align 8
  %62 = call i64 @IS_ERR_VALUE(i64 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %53
  %65 = load i64, i64* %10, align 8
  %66 = trunc i64 %65 to i32
  store i32 %66, i32* %16, align 4
  br label %135

67:                                               ; preds = %53
  %68 = load i32, i32* @GFP_KERNEL, align 4
  %69 = call i32 @radix_tree_preload(i32 %68)
  store i32 %69, i32* %16, align 4
  %70 = load i32, i32* %16, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %67
  br label %135

73:                                               ; preds = %67
  %74 = load i32, i32* @EAGAIN, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %16, align 4
  %76 = load %struct.gmap*, %struct.gmap** %8, align 8
  %77 = load i64, i64* %11, align 8
  %78 = call i32* @gmap_pte_op_walk(%struct.gmap* %76, i64 %77, i32** %12)
  store i32* %78, i32** %13, align 8
  %79 = load i32*, i32** %13, align 8
  %80 = icmp ne i32* %79, null
  br i1 %80, label %81, label %120

81:                                               ; preds = %73
  %82 = load %struct.gmap*, %struct.gmap** %5, align 8
  %83 = getelementptr inbounds %struct.gmap, %struct.gmap* %82, i32 0, i32 0
  %84 = call i32 @spin_lock(i32* %83)
  %85 = load %struct.gmap*, %struct.gmap** %5, align 8
  %86 = load i64, i64* %6, align 8
  %87 = call i64 @gmap_table_walk(%struct.gmap* %85, i64 %86, i32 0)
  %88 = inttoptr i64 %87 to i32*
  store i32* %88, i32** %14, align 8
  %89 = load i32*, i32** %14, align 8
  %90 = icmp ne i32* %89, null
  br i1 %90, label %98, label %91

91:                                               ; preds = %81
  %92 = load %struct.gmap*, %struct.gmap** %5, align 8
  %93 = getelementptr inbounds %struct.gmap, %struct.gmap* %92, i32 0, i32 0
  %94 = call i32 @spin_unlock(i32* %93)
  %95 = load i32*, i32** %12, align 8
  %96 = call i32 @gmap_pte_op_end(i32* %95)
  %97 = call i32 (...) @radix_tree_preload_end()
  br label %135

98:                                               ; preds = %81
  %99 = load %struct.gmap*, %struct.gmap** %5, align 8
  %100 = getelementptr inbounds %struct.gmap, %struct.gmap* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = load i64, i64* %6, align 8
  %103 = load i32*, i32** %13, align 8
  %104 = load i32*, i32** %14, align 8
  %105 = load i32, i32* %7, align 4
  %106 = call i32 @ptep_shadow_pte(i32 %101, i64 %102, i32* %103, i32* %104, i32 %105)
  store i32 %106, i32* %16, align 4
  %107 = load i32, i32* %16, align 4
  %108 = icmp sgt i32 %107, 0
  br i1 %108, label %109, label %114

109:                                              ; preds = %98
  %110 = load %struct.gmap*, %struct.gmap** %5, align 8
  %111 = load i64, i64* %10, align 8
  %112 = load %struct.gmap_rmap*, %struct.gmap_rmap** %9, align 8
  %113 = call i32 @gmap_insert_rmap(%struct.gmap* %110, i64 %111, %struct.gmap_rmap* %112)
  store %struct.gmap_rmap* null, %struct.gmap_rmap** %9, align 8
  store i32 0, i32* %16, align 4
  br label %114

114:                                              ; preds = %109, %98
  %115 = load i32*, i32** %12, align 8
  %116 = call i32 @gmap_pte_op_end(i32* %115)
  %117 = load %struct.gmap*, %struct.gmap** %5, align 8
  %118 = getelementptr inbounds %struct.gmap, %struct.gmap* %117, i32 0, i32 0
  %119 = call i32 @spin_unlock(i32* %118)
  br label %120

120:                                              ; preds = %114, %73
  %121 = call i32 (...) @radix_tree_preload_end()
  %122 = load i32, i32* %16, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %125, label %124

124:                                              ; preds = %120
  br label %135

125:                                              ; preds = %120
  %126 = load %struct.gmap*, %struct.gmap** %8, align 8
  %127 = load i64, i64* %11, align 8
  %128 = load i64, i64* %10, align 8
  %129 = load i32, i32* %15, align 4
  %130 = call i32 @gmap_pte_op_fixup(%struct.gmap* %126, i64 %127, i64 %128, i32 %129)
  store i32 %130, i32* %16, align 4
  %131 = load i32, i32* %16, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %134

133:                                              ; preds = %125
  br label %135

134:                                              ; preds = %125
  br label %53

135:                                              ; preds = %133, %124, %91, %72, %64
  %136 = load %struct.gmap_rmap*, %struct.gmap_rmap** %9, align 8
  %137 = call i32 @kfree(%struct.gmap_rmap* %136)
  %138 = load i32, i32* %16, align 4
  store i32 %138, i32* %4, align 4
  br label %139

139:                                              ; preds = %135, %42
  %140 = load i32, i32* %4, align 4
  ret i32 %140
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @gmap_is_shadow(%struct.gmap*) #1

declare dso_local i64 @pte_val(i32) #1

declare dso_local %struct.gmap_rmap* @kzalloc(i32, i32) #1

declare dso_local i64 @__gmap_translate(%struct.gmap*, i64) #1

declare dso_local i64 @IS_ERR_VALUE(i64) #1

declare dso_local i32 @radix_tree_preload(i32) #1

declare dso_local i32* @gmap_pte_op_walk(%struct.gmap*, i64, i32**) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @gmap_table_walk(%struct.gmap*, i64, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @gmap_pte_op_end(i32*) #1

declare dso_local i32 @radix_tree_preload_end(...) #1

declare dso_local i32 @ptep_shadow_pte(i32, i64, i32*, i32*, i32) #1

declare dso_local i32 @gmap_insert_rmap(%struct.gmap*, i64, %struct.gmap_rmap*) #1

declare dso_local i32 @gmap_pte_op_fixup(%struct.gmap*, i64, i64, i32) #1

declare dso_local i32 @kfree(%struct.gmap_rmap*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
