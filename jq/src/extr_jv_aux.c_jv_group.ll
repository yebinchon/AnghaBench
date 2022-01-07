; ModuleID = '/home/carl/AnghaBench/jq/src/extr_jv_aux.c_jv_group.c'
source_filename = "/home/carl/AnghaBench/jq/src/extr_jv_aux.c_jv_group.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sort_entry = type { i32, i32 }

@JV_KIND_ARRAY = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @jv_group(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.sort_entry*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %11 = load i32, i32* %3, align 4
  %12 = call i64 @jv_get_kind(i32 %11)
  %13 = load i64, i64* @JV_KIND_ARRAY, align 8
  %14 = icmp eq i64 %12, %13
  %15 = zext i1 %14 to i32
  %16 = call i32 @assert(i32 %15)
  %17 = load i32, i32* %4, align 4
  %18 = call i64 @jv_get_kind(i32 %17)
  %19 = load i64, i64* @JV_KIND_ARRAY, align 8
  %20 = icmp eq i64 %18, %19
  %21 = zext i1 %20 to i32
  %22 = call i32 @assert(i32 %21)
  %23 = load i32, i32* %3, align 4
  %24 = call i32 @jv_copy(i32 %23)
  %25 = call i32 @jv_array_length(i32 %24)
  %26 = load i32, i32* %4, align 4
  %27 = call i32 @jv_copy(i32 %26)
  %28 = call i32 @jv_array_length(i32 %27)
  %29 = icmp eq i32 %25, %28
  %30 = zext i1 %29 to i32
  %31 = call i32 @assert(i32 %30)
  %32 = load i32, i32* %3, align 4
  %33 = call i32 @jv_copy(i32 %32)
  %34 = call i32 @jv_array_length(i32 %33)
  store i32 %34, i32* %5, align 4
  %35 = load i32, i32* %3, align 4
  %36 = load i32, i32* %4, align 4
  %37 = call %struct.sort_entry* @sort_items(i32 %35, i32 %36)
  store %struct.sort_entry* %37, %struct.sort_entry** %6, align 8
  %38 = call i32 (...) @jv_array()
  store i32 %38, i32* %7, align 4
  %39 = load i32, i32* %5, align 4
  %40 = icmp sgt i32 %39, 0
  br i1 %40, label %41, label %107

41:                                               ; preds = %2
  %42 = load %struct.sort_entry*, %struct.sort_entry** %6, align 8
  %43 = getelementptr inbounds %struct.sort_entry, %struct.sort_entry* %42, i64 0
  %44 = getelementptr inbounds %struct.sort_entry, %struct.sort_entry* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* %8, align 4
  %46 = call i32 (...) @jv_array()
  %47 = load %struct.sort_entry*, %struct.sort_entry** %6, align 8
  %48 = getelementptr inbounds %struct.sort_entry, %struct.sort_entry* %47, i64 0
  %49 = getelementptr inbounds %struct.sort_entry, %struct.sort_entry* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @jv_array_append(i32 %46, i32 %50)
  store i32 %51, i32* %9, align 4
  store i32 1, i32* %10, align 4
  br label %52

52:                                               ; preds = %98, %41
  %53 = load i32, i32* %10, align 4
  %54 = load i32, i32* %5, align 4
  %55 = icmp slt i32 %53, %54
  br i1 %55, label %56, label %101

56:                                               ; preds = %52
  %57 = load i32, i32* %8, align 4
  %58 = call i32 @jv_copy(i32 %57)
  %59 = load %struct.sort_entry*, %struct.sort_entry** %6, align 8
  %60 = load i32, i32* %10, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.sort_entry, %struct.sort_entry* %59, i64 %61
  %63 = getelementptr inbounds %struct.sort_entry, %struct.sort_entry* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @jv_copy(i32 %64)
  %66 = call i64 @jv_equal(i32 %58, i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %76

68:                                               ; preds = %56
  %69 = load %struct.sort_entry*, %struct.sort_entry** %6, align 8
  %70 = load i32, i32* %10, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.sort_entry, %struct.sort_entry* %69, i64 %71
  %73 = getelementptr inbounds %struct.sort_entry, %struct.sort_entry* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @jv_free(i32 %74)
  br label %89

76:                                               ; preds = %56
  %77 = load i32, i32* %8, align 4
  %78 = call i32 @jv_free(i32 %77)
  %79 = load %struct.sort_entry*, %struct.sort_entry** %6, align 8
  %80 = load i32, i32* %10, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.sort_entry, %struct.sort_entry* %79, i64 %81
  %83 = getelementptr inbounds %struct.sort_entry, %struct.sort_entry* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  store i32 %84, i32* %8, align 4
  %85 = load i32, i32* %7, align 4
  %86 = load i32, i32* %9, align 4
  %87 = call i32 @jv_array_append(i32 %85, i32 %86)
  store i32 %87, i32* %7, align 4
  %88 = call i32 (...) @jv_array()
  store i32 %88, i32* %9, align 4
  br label %89

89:                                               ; preds = %76, %68
  %90 = load i32, i32* %9, align 4
  %91 = load %struct.sort_entry*, %struct.sort_entry** %6, align 8
  %92 = load i32, i32* %10, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.sort_entry, %struct.sort_entry* %91, i64 %93
  %95 = getelementptr inbounds %struct.sort_entry, %struct.sort_entry* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @jv_array_append(i32 %90, i32 %96)
  store i32 %97, i32* %9, align 4
  br label %98

98:                                               ; preds = %89
  %99 = load i32, i32* %10, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %10, align 4
  br label %52

101:                                              ; preds = %52
  %102 = load i32, i32* %8, align 4
  %103 = call i32 @jv_free(i32 %102)
  %104 = load i32, i32* %7, align 4
  %105 = load i32, i32* %9, align 4
  %106 = call i32 @jv_array_append(i32 %104, i32 %105)
  store i32 %106, i32* %7, align 4
  br label %107

107:                                              ; preds = %101, %2
  %108 = load %struct.sort_entry*, %struct.sort_entry** %6, align 8
  %109 = call i32 @jv_mem_free(%struct.sort_entry* %108)
  %110 = load i32, i32* %7, align 4
  ret i32 %110
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @jv_get_kind(i32) #1

declare dso_local i32 @jv_array_length(i32) #1

declare dso_local i32 @jv_copy(i32) #1

declare dso_local %struct.sort_entry* @sort_items(i32, i32) #1

declare dso_local i32 @jv_array(...) #1

declare dso_local i32 @jv_array_append(i32, i32) #1

declare dso_local i64 @jv_equal(i32, i32) #1

declare dso_local i32 @jv_free(i32) #1

declare dso_local i32 @jv_mem_free(%struct.sort_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
