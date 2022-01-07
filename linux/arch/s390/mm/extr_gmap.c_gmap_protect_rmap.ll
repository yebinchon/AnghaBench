; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/mm/extr_gmap.c_gmap_protect_rmap.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/mm/extr_gmap.c_gmap_protect_rmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gmap = type { i32, i32, %struct.gmap* }
%struct.gmap_rmap = type { i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@PROT_READ = common dso_local global i32 0, align 4
@PGSTE_VSIE_BIT = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gmap*, i64, i64, i64)* @gmap_protect_rmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gmap_protect_rmap(%struct.gmap* %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.gmap*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.gmap*, align 8
  %11 = alloca %struct.gmap_rmap*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  store %struct.gmap* %0, %struct.gmap** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %16 = load %struct.gmap*, %struct.gmap** %6, align 8
  %17 = call i32 @gmap_is_shadow(%struct.gmap* %16)
  %18 = icmp ne i32 %17, 0
  %19 = xor i1 %18, true
  %20 = zext i1 %19 to i32
  %21 = call i32 @BUG_ON(i32 %20)
  %22 = load %struct.gmap*, %struct.gmap** %6, align 8
  %23 = getelementptr inbounds %struct.gmap, %struct.gmap* %22, i32 0, i32 2
  %24 = load %struct.gmap*, %struct.gmap** %23, align 8
  store %struct.gmap* %24, %struct.gmap** %10, align 8
  br label %25

25:                                               ; preds = %108, %107, %4
  %26 = load i64, i64* %9, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %115

28:                                               ; preds = %25
  %29 = load %struct.gmap*, %struct.gmap** %10, align 8
  %30 = load i64, i64* %8, align 8
  %31 = call i64 @__gmap_translate(%struct.gmap* %29, i64 %30)
  store i64 %31, i64* %12, align 8
  %32 = load i64, i64* %12, align 8
  %33 = call i64 @IS_ERR_VALUE(i64 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %28
  %36 = load i64, i64* %12, align 8
  %37 = trunc i64 %36 to i32
  store i32 %37, i32* %5, align 4
  br label %116

38:                                               ; preds = %28
  %39 = load i32, i32* @GFP_KERNEL, align 4
  %40 = call %struct.gmap_rmap* @kzalloc(i32 8, i32 %39)
  store %struct.gmap_rmap* %40, %struct.gmap_rmap** %11, align 8
  %41 = load %struct.gmap_rmap*, %struct.gmap_rmap** %11, align 8
  %42 = icmp ne %struct.gmap_rmap* %41, null
  br i1 %42, label %46, label %43

43:                                               ; preds = %38
  %44 = load i32, i32* @ENOMEM, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %5, align 4
  br label %116

46:                                               ; preds = %38
  %47 = load i64, i64* %7, align 8
  %48 = load %struct.gmap_rmap*, %struct.gmap_rmap** %11, align 8
  %49 = getelementptr inbounds %struct.gmap_rmap, %struct.gmap_rmap* %48, i32 0, i32 0
  store i64 %47, i64* %49, align 8
  %50 = load i32, i32* @GFP_KERNEL, align 4
  %51 = call i32 @radix_tree_preload(i32 %50)
  store i32 %51, i32* %15, align 4
  %52 = load i32, i32* %15, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %46
  %55 = load %struct.gmap_rmap*, %struct.gmap_rmap** %11, align 8
  %56 = call i32 @kfree(%struct.gmap_rmap* %55)
  %57 = load i32, i32* %15, align 4
  store i32 %57, i32* %5, align 4
  br label %116

58:                                               ; preds = %46
  %59 = load i32, i32* @EAGAIN, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %15, align 4
  %61 = load %struct.gmap*, %struct.gmap** %10, align 8
  %62 = load i64, i64* %8, align 8
  %63 = call i32* @gmap_pte_op_walk(%struct.gmap* %61, i64 %62, i32** %13)
  store i32* %63, i32** %14, align 8
  %64 = load i32*, i32** %14, align 8
  %65 = icmp ne i32* %64, null
  br i1 %65, label %66, label %91

66:                                               ; preds = %58
  %67 = load %struct.gmap*, %struct.gmap** %6, align 8
  %68 = getelementptr inbounds %struct.gmap, %struct.gmap* %67, i32 0, i32 0
  %69 = call i32 @spin_lock(i32* %68)
  %70 = load %struct.gmap*, %struct.gmap** %10, align 8
  %71 = getelementptr inbounds %struct.gmap, %struct.gmap* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load i64, i64* %8, align 8
  %74 = load i32*, i32** %14, align 8
  %75 = load i32, i32* @PROT_READ, align 4
  %76 = load i32, i32* @PGSTE_VSIE_BIT, align 4
  %77 = call i32 @ptep_force_prot(i32 %72, i64 %73, i32* %74, i32 %75, i32 %76)
  store i32 %77, i32* %15, align 4
  %78 = load i32, i32* %15, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %85, label %80

80:                                               ; preds = %66
  %81 = load %struct.gmap*, %struct.gmap** %6, align 8
  %82 = load i64, i64* %12, align 8
  %83 = load %struct.gmap_rmap*, %struct.gmap_rmap** %11, align 8
  %84 = call i32 @gmap_insert_rmap(%struct.gmap* %81, i64 %82, %struct.gmap_rmap* %83)
  br label %85

85:                                               ; preds = %80, %66
  %86 = load %struct.gmap*, %struct.gmap** %6, align 8
  %87 = getelementptr inbounds %struct.gmap, %struct.gmap* %86, i32 0, i32 0
  %88 = call i32 @spin_unlock(i32* %87)
  %89 = load i32*, i32** %13, align 8
  %90 = call i32 @gmap_pte_op_end(i32* %89)
  br label %91

91:                                               ; preds = %85, %58
  %92 = call i32 (...) @radix_tree_preload_end()
  %93 = load i32, i32* %15, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %108

95:                                               ; preds = %91
  %96 = load %struct.gmap_rmap*, %struct.gmap_rmap** %11, align 8
  %97 = call i32 @kfree(%struct.gmap_rmap* %96)
  %98 = load %struct.gmap*, %struct.gmap** %10, align 8
  %99 = load i64, i64* %8, align 8
  %100 = load i64, i64* %12, align 8
  %101 = load i32, i32* @PROT_READ, align 4
  %102 = call i32 @gmap_pte_op_fixup(%struct.gmap* %98, i64 %99, i64 %100, i32 %101)
  store i32 %102, i32* %15, align 4
  %103 = load i32, i32* %15, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %107

105:                                              ; preds = %95
  %106 = load i32, i32* %15, align 4
  store i32 %106, i32* %5, align 4
  br label %116

107:                                              ; preds = %95
  br label %25

108:                                              ; preds = %91
  %109 = load i64, i64* @PAGE_SIZE, align 8
  %110 = load i64, i64* %8, align 8
  %111 = add i64 %110, %109
  store i64 %111, i64* %8, align 8
  %112 = load i64, i64* @PAGE_SIZE, align 8
  %113 = load i64, i64* %9, align 8
  %114 = sub i64 %113, %112
  store i64 %114, i64* %9, align 8
  br label %25

115:                                              ; preds = %25
  store i32 0, i32* %5, align 4
  br label %116

116:                                              ; preds = %115, %105, %54, %43, %35
  %117 = load i32, i32* %5, align 4
  ret i32 %117
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @gmap_is_shadow(%struct.gmap*) #1

declare dso_local i64 @__gmap_translate(%struct.gmap*, i64) #1

declare dso_local i64 @IS_ERR_VALUE(i64) #1

declare dso_local %struct.gmap_rmap* @kzalloc(i32, i32) #1

declare dso_local i32 @radix_tree_preload(i32) #1

declare dso_local i32 @kfree(%struct.gmap_rmap*) #1

declare dso_local i32* @gmap_pte_op_walk(%struct.gmap*, i64, i32**) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @ptep_force_prot(i32, i64, i32*, i32, i32) #1

declare dso_local i32 @gmap_insert_rmap(%struct.gmap*, i64, %struct.gmap_rmap*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @gmap_pte_op_end(i32*) #1

declare dso_local i32 @radix_tree_preload_end(...) #1

declare dso_local i32 @gmap_pte_op_fixup(%struct.gmap*, i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
