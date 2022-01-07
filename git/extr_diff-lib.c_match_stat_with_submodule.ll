; ModuleID = '/home/carl/AnghaBench/git/extr_diff-lib.c_match_stat_with_submodule.c'
source_filename = "/home/carl/AnghaBench/git/extr_diff-lib.c_match_stat_with_submodule.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.diff_options = type { %struct.diff_flags, %struct.TYPE_2__* }
%struct.diff_flags = type { i32, i64, i32, i64, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.cache_entry = type { i32, i32 }
%struct.stat = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.diff_options*, %struct.cache_entry*, %struct.stat*, i32, i32*)* @match_stat_with_submodule to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @match_stat_with_submodule(%struct.diff_options* %0, %struct.cache_entry* %1, %struct.stat* %2, i32 %3, i32* %4) #0 {
  %6 = alloca %struct.diff_options*, align 8
  %7 = alloca %struct.cache_entry*, align 8
  %8 = alloca %struct.stat*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.diff_flags, align 8
  store %struct.diff_options* %0, %struct.diff_options** %6, align 8
  store %struct.cache_entry* %1, %struct.cache_entry** %7, align 8
  store %struct.stat* %2, %struct.stat** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32* %4, i32** %10, align 8
  %13 = load %struct.diff_options*, %struct.diff_options** %6, align 8
  %14 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %13, i32 0, i32 1
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.cache_entry*, %struct.cache_entry** %7, align 8
  %19 = load %struct.stat*, %struct.stat** %8, align 8
  %20 = load i32, i32* %9, align 4
  %21 = call i32 @ie_match_stat(i32 %17, %struct.cache_entry* %18, %struct.stat* %19, i32 %20)
  store i32 %21, i32* %11, align 4
  %22 = load %struct.cache_entry*, %struct.cache_entry** %7, align 8
  %23 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i64 @S_ISGITLINK(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %81

27:                                               ; preds = %5
  %28 = load %struct.diff_options*, %struct.diff_options** %6, align 8
  %29 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %28, i32 0, i32 0
  %30 = bitcast %struct.diff_flags* %12 to i8*
  %31 = bitcast %struct.diff_flags* %29 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %30, i8* align 8 %31, i64 40, i1 false)
  %32 = load %struct.diff_options*, %struct.diff_options** %6, align 8
  %33 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.diff_flags, %struct.diff_flags* %33, i32 0, i32 4
  %35 = load i32, i32* %34, align 8
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %43, label %37

37:                                               ; preds = %27
  %38 = load %struct.diff_options*, %struct.diff_options** %6, align 8
  %39 = load %struct.cache_entry*, %struct.cache_entry** %7, align 8
  %40 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @set_diffopt_flags_from_submodule_config(%struct.diff_options* %38, i32 %41)
  br label %43

43:                                               ; preds = %37, %27
  %44 = load %struct.diff_options*, %struct.diff_options** %6, align 8
  %45 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.diff_flags, %struct.diff_flags* %45, i32 0, i32 3
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %43
  store i32 0, i32* %11, align 4
  br label %76

50:                                               ; preds = %43
  %51 = load %struct.diff_options*, %struct.diff_options** %6, align 8
  %52 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.diff_flags, %struct.diff_flags* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %75, label %56

56:                                               ; preds = %50
  %57 = load i32, i32* %11, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %65

59:                                               ; preds = %56
  %60 = load %struct.diff_options*, %struct.diff_options** %6, align 8
  %61 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.diff_flags, %struct.diff_flags* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %75

65:                                               ; preds = %59, %56
  %66 = load %struct.cache_entry*, %struct.cache_entry** %7, align 8
  %67 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.diff_options*, %struct.diff_options** %6, align 8
  %70 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.diff_flags, %struct.diff_flags* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @is_submodule_modified(i32 %68, i32 %72)
  %74 = load i32*, i32** %10, align 8
  store i32 %73, i32* %74, align 4
  br label %75

75:                                               ; preds = %65, %59, %50
  br label %76

76:                                               ; preds = %75, %49
  %77 = load %struct.diff_options*, %struct.diff_options** %6, align 8
  %78 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %77, i32 0, i32 0
  %79 = bitcast %struct.diff_flags* %78 to i8*
  %80 = bitcast %struct.diff_flags* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %79, i8* align 8 %80, i64 40, i1 false)
  br label %81

81:                                               ; preds = %76, %5
  %82 = load i32, i32* %11, align 4
  ret i32 %82
}

declare dso_local i32 @ie_match_stat(i32, %struct.cache_entry*, %struct.stat*, i32) #1

declare dso_local i64 @S_ISGITLINK(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @set_diffopt_flags_from_submodule_config(%struct.diff_options*, i32) #1

declare dso_local i32 @is_submodule_modified(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
