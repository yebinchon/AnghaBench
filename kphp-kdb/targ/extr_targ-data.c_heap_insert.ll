; ModuleID = '/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-data.c_heap_insert.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-data.c_heap_insert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hash_entry = type { i64, i32 }
%struct.heap_entry = type { float, i64, i32, i32 }
%struct.advert = type { float, i64, i32 }

@__use_factor = common dso_local global i64 0, align 8
@HS = common dso_local global %struct.hash_entry* null, align 8
@__build_heap_generation = common dso_local global i64 0, align 8
@H = common dso_local global %struct.heap_entry* null, align 8
@HN = common dso_local global i64 0, align 8
@__gsort_limit = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.heap_entry* @heap_insert(float %0, %struct.advert* %1, i32 %2) #0 {
  %4 = alloca %struct.heap_entry*, align 8
  %5 = alloca float, align 4
  %6 = alloca %struct.advert*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.hash_entry*, align 8
  store float %0, float* %5, align 4
  store %struct.advert* %1, %struct.advert** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %11 = load i64, i64* @__use_factor, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %3
  %14 = load %struct.advert*, %struct.advert** %6, align 8
  %15 = getelementptr inbounds %struct.advert, %struct.advert* %14, i32 0, i32 0
  %16 = load float, float* %15, align 8
  %17 = load float, float* %5, align 4
  %18 = fmul float %17, %16
  store float %18, float* %5, align 4
  br label %19

19:                                               ; preds = %13, %3
  %20 = load %struct.advert*, %struct.advert** %6, align 8
  %21 = getelementptr inbounds %struct.advert, %struct.advert* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %59

24:                                               ; preds = %19
  %25 = load %struct.advert*, %struct.advert** %6, align 8
  %26 = getelementptr inbounds %struct.advert, %struct.advert* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = call i8* @calc_domain_hash(i64 %27)
  %29 = ptrtoint i8* %28 to i32
  store i32 %29, i32* %9, align 4
  %30 = load %struct.hash_entry*, %struct.hash_entry** @HS, align 8
  %31 = load i32, i32* %9, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %30, i64 %32
  %34 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @__build_heap_generation, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %58

38:                                               ; preds = %24
  %39 = load %struct.hash_entry*, %struct.hash_entry** @HS, align 8
  %40 = load i32, i32* %9, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %39, i64 %41
  %43 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  store i32 %44, i32* %8, align 4
  %45 = load %struct.heap_entry*, %struct.heap_entry** @H, align 8
  %46 = load i32, i32* %8, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.heap_entry, %struct.heap_entry* %45, i64 %47
  %49 = getelementptr inbounds %struct.heap_entry, %struct.heap_entry* %48, i32 0, i32 0
  %50 = load float, float* %49, align 8
  %51 = load float, float* %5, align 4
  %52 = fcmp oge float %50, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %38
  store %struct.heap_entry* null, %struct.heap_entry** %4, align 8
  br label %152

54:                                               ; preds = %38
  %55 = load i32, i32* %8, align 4
  %56 = load float, float* %5, align 4
  %57 = call i32 @heap_sift_down(i32 %55, float %56)
  store i32 %57, i32* %8, align 4
  br label %58

58:                                               ; preds = %54, %24
  br label %59

59:                                               ; preds = %58, %19
  %60 = load i32, i32* %8, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %97, label %62

62:                                               ; preds = %59
  %63 = load i64, i64* @HN, align 8
  %64 = load i64, i64* @__gsort_limit, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %93

66:                                               ; preds = %62
  %67 = load %struct.heap_entry*, %struct.heap_entry** @H, align 8
  %68 = getelementptr inbounds %struct.heap_entry, %struct.heap_entry* %67, i64 1
  %69 = getelementptr inbounds %struct.heap_entry, %struct.heap_entry* %68, i32 0, i32 0
  %70 = load float, float* %69, align 8
  %71 = load float, float* %5, align 4
  %72 = fcmp oge float %70, %71
  br i1 %72, label %73, label %74

73:                                               ; preds = %66
  store %struct.heap_entry* null, %struct.heap_entry** %4, align 8
  br label %152

74:                                               ; preds = %66
  %75 = load %struct.heap_entry*, %struct.heap_entry** @H, align 8
  %76 = getelementptr inbounds %struct.heap_entry, %struct.heap_entry* %75, i64 1
  %77 = getelementptr inbounds %struct.heap_entry, %struct.heap_entry* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = icmp uge i64 %78, 0
  br i1 %79, label %80, label %90

80:                                               ; preds = %74
  %81 = load %struct.hash_entry*, %struct.hash_entry** @HS, align 8
  %82 = load %struct.heap_entry*, %struct.heap_entry** @H, align 8
  %83 = getelementptr inbounds %struct.heap_entry, %struct.heap_entry* %82, i64 1
  %84 = getelementptr inbounds %struct.heap_entry, %struct.heap_entry* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %81, i64 %85
  %87 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = add nsw i64 %88, -1
  store i64 %89, i64* %87, align 8
  br label %90

90:                                               ; preds = %80, %74
  %91 = load float, float* %5, align 4
  %92 = call i32 @heap_sift_down(i32 1, float %91)
  store i32 %92, i32* %8, align 4
  br label %96

93:                                               ; preds = %62
  %94 = load float, float* %5, align 4
  %95 = call i32 @heap_sift_up(float %94)
  store i32 %95, i32* %8, align 4
  br label %96

96:                                               ; preds = %93, %90
  br label %97

97:                                               ; preds = %96, %59
  %98 = load %struct.advert*, %struct.advert** %6, align 8
  %99 = getelementptr inbounds %struct.advert, %struct.advert* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 8
  %101 = load %struct.heap_entry*, %struct.heap_entry** @H, align 8
  %102 = load i32, i32* %8, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.heap_entry, %struct.heap_entry* %101, i64 %103
  %105 = getelementptr inbounds %struct.heap_entry, %struct.heap_entry* %104, i32 0, i32 3
  store i32 %100, i32* %105, align 4
  %106 = load i32, i32* %7, align 4
  %107 = load %struct.heap_entry*, %struct.heap_entry** @H, align 8
  %108 = load i32, i32* %8, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.heap_entry, %struct.heap_entry* %107, i64 %109
  %111 = getelementptr inbounds %struct.heap_entry, %struct.heap_entry* %110, i32 0, i32 2
  store i32 %106, i32* %111, align 8
  %112 = load %struct.advert*, %struct.advert** %6, align 8
  %113 = getelementptr inbounds %struct.advert, %struct.advert* %112, i32 0, i32 1
  %114 = load i64, i64* %113, align 8
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %122, label %116

116:                                              ; preds = %97
  %117 = load %struct.heap_entry*, %struct.heap_entry** @H, align 8
  %118 = load i32, i32* %8, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.heap_entry, %struct.heap_entry* %117, i64 %119
  %121 = getelementptr inbounds %struct.heap_entry, %struct.heap_entry* %120, i32 0, i32 1
  store i64 -1, i64* %121, align 8
  br label %141

122:                                              ; preds = %97
  %123 = load %struct.hash_entry*, %struct.hash_entry** @HS, align 8
  %124 = load %struct.advert*, %struct.advert** %6, align 8
  %125 = getelementptr inbounds %struct.advert, %struct.advert* %124, i32 0, i32 1
  %126 = load i64, i64* %125, align 8
  %127 = call i8* @calc_domain_hash(i64 %126)
  %128 = ptrtoint i8* %127 to i64
  %129 = load %struct.heap_entry*, %struct.heap_entry** @H, align 8
  %130 = load i32, i32* %8, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds %struct.heap_entry, %struct.heap_entry* %129, i64 %131
  %133 = getelementptr inbounds %struct.heap_entry, %struct.heap_entry* %132, i32 0, i32 1
  store i64 %128, i64* %133, align 8
  %134 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %123, i64 %128
  store %struct.hash_entry* %134, %struct.hash_entry** %10, align 8
  %135 = load i32, i32* %8, align 4
  %136 = load %struct.hash_entry*, %struct.hash_entry** %10, align 8
  %137 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %136, i32 0, i32 1
  store i32 %135, i32* %137, align 8
  %138 = load i64, i64* @__build_heap_generation, align 8
  %139 = load %struct.hash_entry*, %struct.hash_entry** %10, align 8
  %140 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %139, i32 0, i32 0
  store i64 %138, i64* %140, align 8
  br label %141

141:                                              ; preds = %122, %116
  %142 = load float, float* %5, align 4
  %143 = load %struct.heap_entry*, %struct.heap_entry** @H, align 8
  %144 = load i32, i32* %8, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds %struct.heap_entry, %struct.heap_entry* %143, i64 %145
  %147 = getelementptr inbounds %struct.heap_entry, %struct.heap_entry* %146, i32 0, i32 0
  store float %142, float* %147, align 8
  %148 = load %struct.heap_entry*, %struct.heap_entry** @H, align 8
  %149 = load i32, i32* %8, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds %struct.heap_entry, %struct.heap_entry* %148, i64 %150
  store %struct.heap_entry* %151, %struct.heap_entry** %4, align 8
  br label %152

152:                                              ; preds = %141, %73, %53
  %153 = load %struct.heap_entry*, %struct.heap_entry** %4, align 8
  ret %struct.heap_entry* %153
}

declare dso_local i8* @calc_domain_hash(i64) #1

declare dso_local i32 @heap_sift_down(i32, float) #1

declare dso_local i32 @heap_sift_up(float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
