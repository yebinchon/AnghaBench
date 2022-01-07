; ModuleID = '/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-index.c_sort_word_dictionary.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-index.c_sort_word_dictionary.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.targ_index_word_directory_entry = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.targ_index_word_directory_entry*, i32)* @sort_word_dictionary to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sort_word_dictionary(%struct.targ_index_word_directory_entry* %0, i32 %1) #0 {
  %3 = alloca %struct.targ_index_word_directory_entry*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.targ_index_word_directory_entry, align 8
  store %struct.targ_index_word_directory_entry* %0, %struct.targ_index_word_directory_entry** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp sle i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  br label %91

12:                                               ; preds = %2
  store i32 0, i32* %5, align 4
  %13 = load i32, i32* %4, align 4
  store i32 %13, i32* %6, align 4
  %14 = load %struct.targ_index_word_directory_entry*, %struct.targ_index_word_directory_entry** %3, align 8
  %15 = load i32, i32* %4, align 4
  %16 = ashr i32 %15, 1
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.targ_index_word_directory_entry, %struct.targ_index_word_directory_entry* %14, i64 %17
  %19 = getelementptr inbounds %struct.targ_index_word_directory_entry, %struct.targ_index_word_directory_entry* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  store i64 %20, i64* %7, align 8
  br label %21

21:                                               ; preds = %77, %12
  br label %22

22:                                               ; preds = %31, %21
  %23 = load %struct.targ_index_word_directory_entry*, %struct.targ_index_word_directory_entry** %3, align 8
  %24 = load i32, i32* %5, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.targ_index_word_directory_entry, %struct.targ_index_word_directory_entry* %23, i64 %25
  %27 = getelementptr inbounds %struct.targ_index_word_directory_entry, %struct.targ_index_word_directory_entry* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* %7, align 8
  %30 = icmp slt i64 %28, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %22
  %32 = load i32, i32* %5, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %5, align 4
  br label %22

34:                                               ; preds = %22
  br label %35

35:                                               ; preds = %44, %34
  %36 = load %struct.targ_index_word_directory_entry*, %struct.targ_index_word_directory_entry** %3, align 8
  %37 = load i32, i32* %6, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.targ_index_word_directory_entry, %struct.targ_index_word_directory_entry* %36, i64 %38
  %40 = getelementptr inbounds %struct.targ_index_word_directory_entry, %struct.targ_index_word_directory_entry* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* %7, align 8
  %43 = icmp sgt i64 %41, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %35
  %45 = load i32, i32* %6, align 4
  %46 = add nsw i32 %45, -1
  store i32 %46, i32* %6, align 4
  br label %35

47:                                               ; preds = %35
  %48 = load i32, i32* %5, align 4
  %49 = load i32, i32* %6, align 4
  %50 = icmp sle i32 %48, %49
  br i1 %50, label %51, label %76

51:                                               ; preds = %47
  %52 = load %struct.targ_index_word_directory_entry*, %struct.targ_index_word_directory_entry** %3, align 8
  %53 = load i32, i32* %5, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.targ_index_word_directory_entry, %struct.targ_index_word_directory_entry* %52, i64 %54
  %56 = bitcast %struct.targ_index_word_directory_entry* %8 to i8*
  %57 = bitcast %struct.targ_index_word_directory_entry* %55 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %56, i8* align 8 %57, i64 8, i1 false)
  %58 = load %struct.targ_index_word_directory_entry*, %struct.targ_index_word_directory_entry** %3, align 8
  %59 = load i32, i32* %5, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %5, align 4
  %61 = sext i32 %59 to i64
  %62 = getelementptr inbounds %struct.targ_index_word_directory_entry, %struct.targ_index_word_directory_entry* %58, i64 %61
  %63 = load %struct.targ_index_word_directory_entry*, %struct.targ_index_word_directory_entry** %3, align 8
  %64 = load i32, i32* %6, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.targ_index_word_directory_entry, %struct.targ_index_word_directory_entry* %63, i64 %65
  %67 = bitcast %struct.targ_index_word_directory_entry* %62 to i8*
  %68 = bitcast %struct.targ_index_word_directory_entry* %66 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %67, i8* align 8 %68, i64 8, i1 false)
  %69 = load %struct.targ_index_word_directory_entry*, %struct.targ_index_word_directory_entry** %3, align 8
  %70 = load i32, i32* %6, align 4
  %71 = add nsw i32 %70, -1
  store i32 %71, i32* %6, align 4
  %72 = sext i32 %70 to i64
  %73 = getelementptr inbounds %struct.targ_index_word_directory_entry, %struct.targ_index_word_directory_entry* %69, i64 %72
  %74 = bitcast %struct.targ_index_word_directory_entry* %73 to i8*
  %75 = bitcast %struct.targ_index_word_directory_entry* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %74, i8* align 8 %75, i64 8, i1 false)
  br label %76

76:                                               ; preds = %51, %47
  br label %77

77:                                               ; preds = %76
  %78 = load i32, i32* %5, align 4
  %79 = load i32, i32* %6, align 4
  %80 = icmp sle i32 %78, %79
  br i1 %80, label %21, label %81

81:                                               ; preds = %77
  %82 = load %struct.targ_index_word_directory_entry*, %struct.targ_index_word_directory_entry** %3, align 8
  %83 = load i32, i32* %6, align 4
  call void @sort_word_dictionary(%struct.targ_index_word_directory_entry* %82, i32 %83)
  %84 = load %struct.targ_index_word_directory_entry*, %struct.targ_index_word_directory_entry** %3, align 8
  %85 = load i32, i32* %5, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.targ_index_word_directory_entry, %struct.targ_index_word_directory_entry* %84, i64 %86
  %88 = load i32, i32* %4, align 4
  %89 = load i32, i32* %5, align 4
  %90 = sub nsw i32 %88, %89
  call void @sort_word_dictionary(%struct.targ_index_word_directory_entry* %87, i32 %90)
  br label %91

91:                                               ; preds = %81, %11
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
