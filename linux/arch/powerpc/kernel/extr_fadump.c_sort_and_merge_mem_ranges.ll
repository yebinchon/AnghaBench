; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_fadump.c_sort_and_merge_mem_ranges.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_fadump.c_sort_and_merge_mem_ranges.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.fadump_mrange_info = type { i32, %struct.fadump_memory_range* }
%struct.fadump_memory_range = type { i64, i64 }

@reserved_mrange_info = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fadump_mrange_info*)* @sort_and_merge_mem_ranges to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sort_and_merge_mem_ranges(%struct.fadump_mrange_info* %0) #0 {
  %2 = alloca %struct.fadump_mrange_info*, align 8
  %3 = alloca %struct.fadump_memory_range*, align 8
  %4 = alloca %struct.fadump_memory_range, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.fadump_mrange_info* %0, %struct.fadump_mrange_info** %2, align 8
  %10 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @reserved_mrange_info, i32 0, i32 0), align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  br label %157

13:                                               ; preds = %1
  %14 = load %struct.fadump_mrange_info*, %struct.fadump_mrange_info** %2, align 8
  %15 = getelementptr inbounds %struct.fadump_mrange_info, %struct.fadump_mrange_info* %14, i32 0, i32 1
  %16 = load %struct.fadump_memory_range*, %struct.fadump_memory_range** %15, align 8
  store %struct.fadump_memory_range* %16, %struct.fadump_memory_range** %3, align 8
  store i32 0, i32* %7, align 4
  br label %17

17:                                               ; preds = %81, %13
  %18 = load i32, i32* %7, align 4
  %19 = load %struct.fadump_mrange_info*, %struct.fadump_mrange_info** %2, align 8
  %20 = getelementptr inbounds %struct.fadump_mrange_info, %struct.fadump_mrange_info* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp slt i32 %18, %21
  br i1 %22, label %23, label %84

23:                                               ; preds = %17
  %24 = load i32, i32* %7, align 4
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* %7, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %8, align 4
  br label %27

27:                                               ; preds = %50, %23
  %28 = load i32, i32* %8, align 4
  %29 = load %struct.fadump_mrange_info*, %struct.fadump_mrange_info** %2, align 8
  %30 = getelementptr inbounds %struct.fadump_mrange_info, %struct.fadump_mrange_info* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp slt i32 %28, %31
  br i1 %32, label %33, label %53

33:                                               ; preds = %27
  %34 = load %struct.fadump_memory_range*, %struct.fadump_memory_range** %3, align 8
  %35 = load i32, i32* %9, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.fadump_memory_range, %struct.fadump_memory_range* %34, i64 %36
  %38 = getelementptr inbounds %struct.fadump_memory_range, %struct.fadump_memory_range* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.fadump_memory_range*, %struct.fadump_memory_range** %3, align 8
  %41 = load i32, i32* %8, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.fadump_memory_range, %struct.fadump_memory_range* %40, i64 %42
  %44 = getelementptr inbounds %struct.fadump_memory_range, %struct.fadump_memory_range* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp sgt i64 %39, %45
  br i1 %46, label %47, label %49

47:                                               ; preds = %33
  %48 = load i32, i32* %8, align 4
  store i32 %48, i32* %9, align 4
  br label %49

49:                                               ; preds = %47, %33
  br label %50

50:                                               ; preds = %49
  %51 = load i32, i32* %8, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %8, align 4
  br label %27

53:                                               ; preds = %27
  %54 = load i32, i32* %9, align 4
  %55 = load i32, i32* %7, align 4
  %56 = icmp ne i32 %54, %55
  br i1 %56, label %57, label %80

57:                                               ; preds = %53
  %58 = load %struct.fadump_memory_range*, %struct.fadump_memory_range** %3, align 8
  %59 = load i32, i32* %9, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.fadump_memory_range, %struct.fadump_memory_range* %58, i64 %60
  %62 = bitcast %struct.fadump_memory_range* %4 to i8*
  %63 = bitcast %struct.fadump_memory_range* %61 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %62, i8* align 8 %63, i64 16, i1 false)
  %64 = load %struct.fadump_memory_range*, %struct.fadump_memory_range** %3, align 8
  %65 = load i32, i32* %9, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.fadump_memory_range, %struct.fadump_memory_range* %64, i64 %66
  %68 = load %struct.fadump_memory_range*, %struct.fadump_memory_range** %3, align 8
  %69 = load i32, i32* %7, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.fadump_memory_range, %struct.fadump_memory_range* %68, i64 %70
  %72 = bitcast %struct.fadump_memory_range* %67 to i8*
  %73 = bitcast %struct.fadump_memory_range* %71 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %72, i8* align 8 %73, i64 16, i1 false)
  %74 = load %struct.fadump_memory_range*, %struct.fadump_memory_range** %3, align 8
  %75 = load i32, i32* %7, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.fadump_memory_range, %struct.fadump_memory_range* %74, i64 %76
  %78 = bitcast %struct.fadump_memory_range* %77 to i8*
  %79 = bitcast %struct.fadump_memory_range* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %78, i8* align 8 %79, i64 16, i1 false)
  br label %80

80:                                               ; preds = %57, %53
  br label %81

81:                                               ; preds = %80
  %82 = load i32, i32* %7, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %7, align 4
  br label %17

84:                                               ; preds = %17
  store i32 0, i32* %9, align 4
  store i32 1, i32* %7, align 4
  br label %85

85:                                               ; preds = %149, %84
  %86 = load i32, i32* %7, align 4
  %87 = load %struct.fadump_mrange_info*, %struct.fadump_mrange_info** %2, align 8
  %88 = getelementptr inbounds %struct.fadump_mrange_info, %struct.fadump_mrange_info* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = icmp slt i32 %86, %89
  br i1 %90, label %91, label %152

91:                                               ; preds = %85
  %92 = load %struct.fadump_memory_range*, %struct.fadump_memory_range** %3, align 8
  %93 = load i32, i32* %7, align 4
  %94 = sub nsw i32 %93, 1
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.fadump_memory_range, %struct.fadump_memory_range* %92, i64 %95
  %97 = getelementptr inbounds %struct.fadump_memory_range, %struct.fadump_memory_range* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  store i64 %98, i64* %5, align 8
  %99 = load %struct.fadump_memory_range*, %struct.fadump_memory_range** %3, align 8
  %100 = load i32, i32* %7, align 4
  %101 = sub nsw i32 %100, 1
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.fadump_memory_range, %struct.fadump_memory_range* %99, i64 %102
  %104 = getelementptr inbounds %struct.fadump_memory_range, %struct.fadump_memory_range* %103, i32 0, i32 1
  %105 = load i64, i64* %104, align 8
  store i64 %105, i64* %6, align 8
  %106 = load %struct.fadump_memory_range*, %struct.fadump_memory_range** %3, align 8
  %107 = load i32, i32* %7, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.fadump_memory_range, %struct.fadump_memory_range* %106, i64 %108
  %110 = getelementptr inbounds %struct.fadump_memory_range, %struct.fadump_memory_range* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = load i64, i64* %5, align 8
  %113 = load i64, i64* %6, align 8
  %114 = add nsw i64 %112, %113
  %115 = icmp eq i64 %111, %114
  br i1 %115, label %116, label %130

116:                                              ; preds = %91
  %117 = load %struct.fadump_memory_range*, %struct.fadump_memory_range** %3, align 8
  %118 = load i32, i32* %7, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.fadump_memory_range, %struct.fadump_memory_range* %117, i64 %119
  %121 = getelementptr inbounds %struct.fadump_memory_range, %struct.fadump_memory_range* %120, i32 0, i32 1
  %122 = load i64, i64* %121, align 8
  %123 = load %struct.fadump_memory_range*, %struct.fadump_memory_range** %3, align 8
  %124 = load i32, i32* %9, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds %struct.fadump_memory_range, %struct.fadump_memory_range* %123, i64 %125
  %127 = getelementptr inbounds %struct.fadump_memory_range, %struct.fadump_memory_range* %126, i32 0, i32 1
  %128 = load i64, i64* %127, align 8
  %129 = add nsw i64 %128, %122
  store i64 %129, i64* %127, align 8
  br label %148

130:                                              ; preds = %91
  %131 = load i32, i32* %9, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %9, align 4
  %133 = load i32, i32* %7, align 4
  %134 = load i32, i32* %9, align 4
  %135 = icmp eq i32 %133, %134
  br i1 %135, label %136, label %137

136:                                              ; preds = %130
  br label %149

137:                                              ; preds = %130
  %138 = load %struct.fadump_memory_range*, %struct.fadump_memory_range** %3, align 8
  %139 = load i32, i32* %9, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds %struct.fadump_memory_range, %struct.fadump_memory_range* %138, i64 %140
  %142 = load %struct.fadump_memory_range*, %struct.fadump_memory_range** %3, align 8
  %143 = load i32, i32* %7, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds %struct.fadump_memory_range, %struct.fadump_memory_range* %142, i64 %144
  %146 = bitcast %struct.fadump_memory_range* %141 to i8*
  %147 = bitcast %struct.fadump_memory_range* %145 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %146, i8* align 8 %147, i64 16, i1 false)
  br label %148

148:                                              ; preds = %137, %116
  br label %149

149:                                              ; preds = %148, %136
  %150 = load i32, i32* %7, align 4
  %151 = add nsw i32 %150, 1
  store i32 %151, i32* %7, align 4
  br label %85

152:                                              ; preds = %85
  %153 = load i32, i32* %9, align 4
  %154 = add nsw i32 %153, 1
  %155 = load %struct.fadump_mrange_info*, %struct.fadump_mrange_info** %2, align 8
  %156 = getelementptr inbounds %struct.fadump_mrange_info, %struct.fadump_mrange_info* %155, i32 0, i32 0
  store i32 %154, i32* %156, align 8
  br label %157

157:                                              ; preds = %152, %12
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
