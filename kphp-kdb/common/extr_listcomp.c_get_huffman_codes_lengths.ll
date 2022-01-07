; ModuleID = '/home/carl/AnghaBench/kphp-kdb/common/extr_listcomp.c_get_huffman_codes_lengths.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/common/extr_listcomp.c_get_huffman_codes_lengths.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccp_list_entry = type { i32, i32, %struct.ccp_list_entry* }

@cmp_ccp_list_entries = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @get_huffman_codes_lengths(i32* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.ccp_list_entry*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.ccp_list_entry*, align 8
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %16 = load i32, i32* %8, align 4
  %17 = icmp sge i32 %16, 2
  %18 = zext i1 %17 to i32
  %19 = call i32 @assert(i32 %18)
  %20 = load i32, i32* %7, align 4
  %21 = sext i32 %20 to i64
  %22 = mul i64 %21, 4
  %23 = trunc i64 %22 to i32
  %24 = call i32* @zmalloc0(i32 %23)
  store i32* %24, i32** %11, align 8
  %25 = load i32, i32* %12, align 4
  %26 = call i32 @dyn_mark(i32 %25)
  %27 = load i32, i32* %7, align 4
  %28 = sext i32 %27 to i64
  %29 = mul i64 %28, 16
  %30 = trunc i64 %29 to i32
  %31 = call %struct.ccp_list_entry* @zmalloc(i32 %30)
  store %struct.ccp_list_entry* %31, %struct.ccp_list_entry** %13, align 8
  store i32 0, i32* %14, align 4
  store i32 0, i32* %10, align 4
  br label %32

32:                                               ; preds = %63, %4
  %33 = load i32, i32* %10, align 4
  %34 = load i32, i32* %7, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %66

36:                                               ; preds = %32
  %37 = load i32*, i32** %6, align 8
  %38 = load i32, i32* %10, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %62

43:                                               ; preds = %36
  %44 = load i32*, i32** %6, align 8
  %45 = load i32, i32* %10, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.ccp_list_entry*, %struct.ccp_list_entry** %13, align 8
  %50 = load i32, i32* %14, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.ccp_list_entry, %struct.ccp_list_entry* %49, i64 %51
  %53 = getelementptr inbounds %struct.ccp_list_entry, %struct.ccp_list_entry* %52, i32 0, i32 0
  store i32 %48, i32* %53, align 8
  %54 = load i32, i32* %10, align 4
  %55 = load %struct.ccp_list_entry*, %struct.ccp_list_entry** %13, align 8
  %56 = load i32, i32* %14, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.ccp_list_entry, %struct.ccp_list_entry* %55, i64 %57
  %59 = getelementptr inbounds %struct.ccp_list_entry, %struct.ccp_list_entry* %58, i32 0, i32 1
  store i32 %54, i32* %59, align 4
  %60 = load i32, i32* %14, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %14, align 4
  br label %62

62:                                               ; preds = %43, %36
  br label %63

63:                                               ; preds = %62
  %64 = load i32, i32* %10, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %10, align 4
  br label %32

66:                                               ; preds = %32
  %67 = load i32, i32* %14, align 4
  %68 = load i32*, i32** %9, align 8
  store i32 %67, i32* %68, align 4
  %69 = load i32, i32* %14, align 4
  %70 = icmp sgt i32 %69, 0
  %71 = zext i1 %70 to i32
  %72 = call i32 @assert(i32 %71)
  %73 = load %struct.ccp_list_entry*, %struct.ccp_list_entry** %13, align 8
  %74 = load i32, i32* %14, align 4
  %75 = load i32, i32* @cmp_ccp_list_entries, align 4
  %76 = call i32 @qsort(%struct.ccp_list_entry* %73, i32 %74, i32 16, i32 %75)
  %77 = load i32, i32* %14, align 4
  %78 = icmp eq i32 %77, 1
  br i1 %78, label %79, label %91

79:                                               ; preds = %66
  %80 = load i32, i32* %8, align 4
  %81 = load i32*, i32** %11, align 8
  %82 = load %struct.ccp_list_entry*, %struct.ccp_list_entry** %13, align 8
  %83 = getelementptr inbounds %struct.ccp_list_entry, %struct.ccp_list_entry* %82, i64 0
  %84 = getelementptr inbounds %struct.ccp_list_entry, %struct.ccp_list_entry* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %81, i64 %86
  store i32 %80, i32* %87, align 4
  %88 = load i32, i32* %12, align 4
  %89 = call i32 @dyn_release(i32 %88)
  %90 = load i32*, i32** %11, align 8
  store i32* %90, i32** %5, align 8
  br label %134

91:                                               ; preds = %66
  %92 = load %struct.ccp_list_entry*, %struct.ccp_list_entry** %13, align 8
  %93 = load i32, i32* %14, align 4
  %94 = call %struct.ccp_list_entry* @zmalloc_ccp_list(%struct.ccp_list_entry* %92, i32 %93)
  store %struct.ccp_list_entry* %94, %struct.ccp_list_entry** %15, align 8
  %95 = load i32, i32* %8, align 4
  %96 = sub nsw i32 %95, 1
  store i32 %96, i32* %10, align 4
  br label %97

97:                                               ; preds = %106, %91
  %98 = load i32, i32* %10, align 4
  %99 = icmp sge i32 %98, 1
  br i1 %99, label %100, label %109

100:                                              ; preds = %97
  %101 = load %struct.ccp_list_entry*, %struct.ccp_list_entry** %15, align 8
  %102 = load %struct.ccp_list_entry*, %struct.ccp_list_entry** %13, align 8
  %103 = load i32, i32* %14, align 4
  %104 = call %struct.ccp_list_entry* @zmalloc_ccp_list(%struct.ccp_list_entry* %102, i32 %103)
  %105 = call %struct.ccp_list_entry* @package_merge(%struct.ccp_list_entry* %101, %struct.ccp_list_entry* %104)
  store %struct.ccp_list_entry* %105, %struct.ccp_list_entry** %15, align 8
  br label %106

106:                                              ; preds = %100
  %107 = load i32, i32* %10, align 4
  %108 = add nsw i32 %107, -1
  store i32 %108, i32* %10, align 4
  br label %97

109:                                              ; preds = %97
  %110 = load %struct.ccp_list_entry*, %struct.ccp_list_entry** %15, align 8
  %111 = call %struct.ccp_list_entry* @package_merge(%struct.ccp_list_entry* %110, %struct.ccp_list_entry* null)
  store %struct.ccp_list_entry* %111, %struct.ccp_list_entry** %15, align 8
  store i32 1, i32* %10, align 4
  br label %112

112:                                              ; preds = %127, %109
  %113 = load %struct.ccp_list_entry*, %struct.ccp_list_entry** %15, align 8
  %114 = icmp ne %struct.ccp_list_entry* %113, null
  br i1 %114, label %115, label %130

115:                                              ; preds = %112
  %116 = load i32, i32* %10, align 4
  %117 = load i32, i32* %14, align 4
  %118 = icmp slt i32 %116, %117
  br i1 %118, label %119, label %123

119:                                              ; preds = %115
  %120 = load i32*, i32** %11, align 8
  %121 = load %struct.ccp_list_entry*, %struct.ccp_list_entry** %15, align 8
  %122 = call i32 @llhuf_incr_code_lengths(i32* %120, %struct.ccp_list_entry* %121)
  br label %123

123:                                              ; preds = %119, %115
  %124 = load %struct.ccp_list_entry*, %struct.ccp_list_entry** %15, align 8
  %125 = getelementptr inbounds %struct.ccp_list_entry, %struct.ccp_list_entry* %124, i32 0, i32 2
  %126 = load %struct.ccp_list_entry*, %struct.ccp_list_entry** %125, align 8
  store %struct.ccp_list_entry* %126, %struct.ccp_list_entry** %15, align 8
  br label %127

127:                                              ; preds = %123
  %128 = load i32, i32* %10, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %10, align 4
  br label %112

130:                                              ; preds = %112
  %131 = load i32, i32* %12, align 4
  %132 = call i32 @dyn_release(i32 %131)
  %133 = load i32*, i32** %11, align 8
  store i32* %133, i32** %5, align 8
  br label %134

134:                                              ; preds = %130, %79
  %135 = load i32*, i32** %5, align 8
  ret i32* %135
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32* @zmalloc0(i32) #1

declare dso_local i32 @dyn_mark(i32) #1

declare dso_local %struct.ccp_list_entry* @zmalloc(i32) #1

declare dso_local i32 @qsort(%struct.ccp_list_entry*, i32, i32, i32) #1

declare dso_local i32 @dyn_release(i32) #1

declare dso_local %struct.ccp_list_entry* @zmalloc_ccp_list(%struct.ccp_list_entry*, i32) #1

declare dso_local %struct.ccp_list_entry* @package_merge(%struct.ccp_list_entry*, %struct.ccp_list_entry*) #1

declare dso_local i32 @llhuf_incr_code_lengths(i32*, %struct.ccp_list_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
