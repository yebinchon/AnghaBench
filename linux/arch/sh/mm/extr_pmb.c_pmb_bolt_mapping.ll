; ModuleID = '/home/carl/AnghaBench/linux/arch/sh/mm/extr_pmb.c_pmb_bolt_mapping.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sh/mm/extr_pmb.c_pmb_bolt_mapping.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64 }
%struct.pmb_entry = type { i64, i32, %struct.pmb_entry* }

@SZ_16M = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@pmb_sizes = common dso_local global %struct.TYPE_3__* null, align 8
@PMB_NO_ENTRY = common dso_local global i32 0, align 4
@SINGLE_DEPTH_NESTING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pmb_bolt_mapping(i64 %0, i64 %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.pmb_entry*, align 8
  %11 = alloca %struct.pmb_entry*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i64 %0, i64* %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %18 = load i64, i64* %8, align 8
  %19 = load i64, i64* @SZ_16M, align 8
  %20 = icmp ult i64 %18, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %4
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %5, align 4
  br label %155

24:                                               ; preds = %4
  %25 = load i64, i64* %6, align 8
  %26 = load i64, i64* %8, align 8
  %27 = call i32 @pmb_addr_valid(i64 %25, i64 %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %24
  %30 = load i32, i32* @EFAULT, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %5, align 4
  br label %155

32:                                               ; preds = %24
  %33 = load i64, i64* %6, align 8
  %34 = load i64, i64* %7, align 8
  %35 = load i64, i64* %8, align 8
  %36 = call i64 @pmb_mapping_exists(i64 %33, i64 %34, i64 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %32
  store i32 0, i32* %5, align 4
  br label %155

39:                                               ; preds = %32
  %40 = load i64, i64* %6, align 8
  store i64 %40, i64* %12, align 8
  %41 = load i64, i64* %8, align 8
  store i64 %41, i64* %13, align 8
  %42 = load i64, i64* %6, align 8
  %43 = load i64, i64* %6, align 8
  %44 = load i64, i64* %8, align 8
  %45 = add i64 %43, %44
  %46 = call i32 @flush_tlb_kernel_range(i64 %42, i64 %45)
  %47 = load i32, i32* %9, align 4
  %48 = call i64 @pgprot_to_pmb_flags(i32 %47)
  store i64 %48, i64* %15, align 8
  store %struct.pmb_entry* null, %struct.pmb_entry** %10, align 8
  br label %49

49:                                               ; preds = %145, %39
  store i32 0, i32* %17, align 4
  store i32 0, i32* %16, align 4
  br label %50

50:                                               ; preds = %141, %49
  %51 = load i32, i32* %16, align 4
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** @pmb_sizes, align 8
  %53 = call i32 @ARRAY_SIZE(%struct.TYPE_3__* %52)
  %54 = icmp slt i32 %51, %53
  br i1 %54, label %55, label %144

55:                                               ; preds = %50
  %56 = load i64, i64* %8, align 8
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** @pmb_sizes, align 8
  %58 = load i32, i32* %16, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = icmp ult i64 %56, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %55
  br label %141

65:                                               ; preds = %55
  %66 = load i64, i64* %6, align 8
  %67 = load i64, i64* %7, align 8
  %68 = load i64, i64* %15, align 8
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** @pmb_sizes, align 8
  %70 = load i32, i32* %16, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = or i64 %68, %74
  %76 = load i32, i32* @PMB_NO_ENTRY, align 4
  %77 = call %struct.pmb_entry* @pmb_alloc(i64 %66, i64 %67, i64 %75, i32 %76)
  store %struct.pmb_entry* %77, %struct.pmb_entry** %11, align 8
  %78 = load %struct.pmb_entry*, %struct.pmb_entry** %11, align 8
  %79 = call i64 @IS_ERR(%struct.pmb_entry* %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %87

81:                                               ; preds = %65
  %82 = load %struct.pmb_entry*, %struct.pmb_entry** %10, align 8
  %83 = load i32, i32* %17, align 4
  %84 = call i32 @pmb_unmap_entry(%struct.pmb_entry* %82, i32 %83)
  %85 = load %struct.pmb_entry*, %struct.pmb_entry** %11, align 8
  %86 = call i32 @PTR_ERR(%struct.pmb_entry* %85)
  store i32 %86, i32* %5, align 4
  br label %155

87:                                               ; preds = %65
  %88 = load %struct.pmb_entry*, %struct.pmb_entry** %11, align 8
  %89 = getelementptr inbounds %struct.pmb_entry, %struct.pmb_entry* %88, i32 0, i32 1
  %90 = load i64, i64* %14, align 8
  %91 = call i32 @raw_spin_lock_irqsave(i32* %89, i64 %90)
  %92 = load %struct.TYPE_3__*, %struct.TYPE_3__** @pmb_sizes, align 8
  %93 = load i32, i32* %16, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i64 %94
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = load %struct.pmb_entry*, %struct.pmb_entry** %11, align 8
  %99 = getelementptr inbounds %struct.pmb_entry, %struct.pmb_entry* %98, i32 0, i32 0
  store i64 %97, i64* %99, align 8
  %100 = load %struct.pmb_entry*, %struct.pmb_entry** %11, align 8
  %101 = call i32 @__set_pmb_entry(%struct.pmb_entry* %100)
  %102 = load %struct.pmb_entry*, %struct.pmb_entry** %11, align 8
  %103 = getelementptr inbounds %struct.pmb_entry, %struct.pmb_entry* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* %7, align 8
  %106 = add i64 %105, %104
  store i64 %106, i64* %7, align 8
  %107 = load %struct.pmb_entry*, %struct.pmb_entry** %11, align 8
  %108 = getelementptr inbounds %struct.pmb_entry, %struct.pmb_entry* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = load i64, i64* %6, align 8
  %111 = add i64 %110, %109
  store i64 %111, i64* %6, align 8
  %112 = load %struct.pmb_entry*, %struct.pmb_entry** %11, align 8
  %113 = getelementptr inbounds %struct.pmb_entry, %struct.pmb_entry* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = load i64, i64* %8, align 8
  %116 = sub i64 %115, %114
  store i64 %116, i64* %8, align 8
  %117 = load %struct.pmb_entry*, %struct.pmb_entry** %10, align 8
  %118 = call i64 @likely(%struct.pmb_entry* %117)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %131

120:                                              ; preds = %87
  %121 = load %struct.pmb_entry*, %struct.pmb_entry** %10, align 8
  %122 = getelementptr inbounds %struct.pmb_entry, %struct.pmb_entry* %121, i32 0, i32 1
  %123 = load i32, i32* @SINGLE_DEPTH_NESTING, align 4
  %124 = call i32 @raw_spin_lock_nested(i32* %122, i32 %123)
  %125 = load %struct.pmb_entry*, %struct.pmb_entry** %11, align 8
  %126 = load %struct.pmb_entry*, %struct.pmb_entry** %10, align 8
  %127 = getelementptr inbounds %struct.pmb_entry, %struct.pmb_entry* %126, i32 0, i32 2
  store %struct.pmb_entry* %125, %struct.pmb_entry** %127, align 8
  %128 = load %struct.pmb_entry*, %struct.pmb_entry** %10, align 8
  %129 = getelementptr inbounds %struct.pmb_entry, %struct.pmb_entry* %128, i32 0, i32 1
  %130 = call i32 @raw_spin_unlock(i32* %129)
  br label %131

131:                                              ; preds = %120, %87
  %132 = load %struct.pmb_entry*, %struct.pmb_entry** %11, align 8
  store %struct.pmb_entry* %132, %struct.pmb_entry** %10, align 8
  %133 = load i32, i32* %16, align 4
  %134 = add nsw i32 %133, -1
  store i32 %134, i32* %16, align 4
  %135 = load i32, i32* %17, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %17, align 4
  %137 = load %struct.pmb_entry*, %struct.pmb_entry** %11, align 8
  %138 = getelementptr inbounds %struct.pmb_entry, %struct.pmb_entry* %137, i32 0, i32 1
  %139 = load i64, i64* %14, align 8
  %140 = call i32 @raw_spin_unlock_irqrestore(i32* %138, i64 %139)
  br label %141

141:                                              ; preds = %131, %64
  %142 = load i32, i32* %16, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %16, align 4
  br label %50

144:                                              ; preds = %50
  br label %145

145:                                              ; preds = %144
  %146 = load i64, i64* %8, align 8
  %147 = load i64, i64* @SZ_16M, align 8
  %148 = icmp uge i64 %146, %147
  br i1 %148, label %49, label %149

149:                                              ; preds = %145
  %150 = load i64, i64* %12, align 8
  %151 = load i64, i64* %12, align 8
  %152 = load i64, i64* %13, align 8
  %153 = add i64 %151, %152
  %154 = call i32 @flush_cache_vmap(i64 %150, i64 %153)
  store i32 0, i32* %5, align 4
  br label %155

155:                                              ; preds = %149, %81, %38, %29, %21
  %156 = load i32, i32* %5, align 4
  ret i32 %156
}

declare dso_local i32 @pmb_addr_valid(i64, i64) #1

declare dso_local i64 @pmb_mapping_exists(i64, i64, i64) #1

declare dso_local i32 @flush_tlb_kernel_range(i64, i64) #1

declare dso_local i64 @pgprot_to_pmb_flags(i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_3__*) #1

declare dso_local %struct.pmb_entry* @pmb_alloc(i64, i64, i64, i32) #1

declare dso_local i64 @IS_ERR(%struct.pmb_entry*) #1

declare dso_local i32 @pmb_unmap_entry(%struct.pmb_entry*, i32) #1

declare dso_local i32 @PTR_ERR(%struct.pmb_entry*) #1

declare dso_local i32 @raw_spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @__set_pmb_entry(%struct.pmb_entry*) #1

declare dso_local i64 @likely(%struct.pmb_entry*) #1

declare dso_local i32 @raw_spin_lock_nested(i32*, i32) #1

declare dso_local i32 @raw_spin_unlock(i32*) #1

declare dso_local i32 @raw_spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @flush_cache_vmap(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
