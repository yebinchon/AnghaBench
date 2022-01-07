; ModuleID = '/home/carl/AnghaBench/git/extr_packfile.c_cache_or_unpack_entry.c'
source_filename = "/home/carl/AnghaBench/git/extr_packfile.c_cache_or_unpack_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.repository = type { i32 }
%struct.packed_git = type { i32 }
%struct.delta_base_cache_entry = type { i32, i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.repository*, %struct.packed_git*, i32, i64*, i32*)* @cache_or_unpack_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @cache_or_unpack_entry(%struct.repository* %0, %struct.packed_git* %1, i32 %2, i64* %3, i32* %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca %struct.repository*, align 8
  %8 = alloca %struct.packed_git*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.delta_base_cache_entry*, align 8
  store %struct.repository* %0, %struct.repository** %7, align 8
  store %struct.packed_git* %1, %struct.packed_git** %8, align 8
  store i32 %2, i32* %9, align 4
  store i64* %3, i64** %10, align 8
  store i32* %4, i32** %11, align 8
  %13 = load %struct.packed_git*, %struct.packed_git** %8, align 8
  %14 = load i32, i32* %9, align 4
  %15 = call %struct.delta_base_cache_entry* @get_delta_base_cache_entry(%struct.packed_git* %13, i32 %14)
  store %struct.delta_base_cache_entry* %15, %struct.delta_base_cache_entry** %12, align 8
  %16 = load %struct.delta_base_cache_entry*, %struct.delta_base_cache_entry** %12, align 8
  %17 = icmp ne %struct.delta_base_cache_entry* %16, null
  br i1 %17, label %25, label %18

18:                                               ; preds = %5
  %19 = load %struct.repository*, %struct.repository** %7, align 8
  %20 = load %struct.packed_git*, %struct.packed_git** %8, align 8
  %21 = load i32, i32* %9, align 4
  %22 = load i32*, i32** %11, align 8
  %23 = load i64*, i64** %10, align 8
  %24 = call i8* @unpack_entry(%struct.repository* %19, %struct.packed_git* %20, i32 %21, i32* %22, i64* %23)
  store i8* %24, i8** %6, align 8
  br label %49

25:                                               ; preds = %5
  %26 = load i32*, i32** %11, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %28, label %33

28:                                               ; preds = %25
  %29 = load %struct.delta_base_cache_entry*, %struct.delta_base_cache_entry** %12, align 8
  %30 = getelementptr inbounds %struct.delta_base_cache_entry, %struct.delta_base_cache_entry* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32*, i32** %11, align 8
  store i32 %31, i32* %32, align 4
  br label %33

33:                                               ; preds = %28, %25
  %34 = load i64*, i64** %10, align 8
  %35 = icmp ne i64* %34, null
  br i1 %35, label %36, label %41

36:                                               ; preds = %33
  %37 = load %struct.delta_base_cache_entry*, %struct.delta_base_cache_entry** %12, align 8
  %38 = getelementptr inbounds %struct.delta_base_cache_entry, %struct.delta_base_cache_entry* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load i64*, i64** %10, align 8
  store i64 %39, i64* %40, align 8
  br label %41

41:                                               ; preds = %36, %33
  %42 = load %struct.delta_base_cache_entry*, %struct.delta_base_cache_entry** %12, align 8
  %43 = getelementptr inbounds %struct.delta_base_cache_entry, %struct.delta_base_cache_entry* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.delta_base_cache_entry*, %struct.delta_base_cache_entry** %12, align 8
  %46 = getelementptr inbounds %struct.delta_base_cache_entry, %struct.delta_base_cache_entry* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = call i8* @xmemdupz(i32 %44, i64 %47)
  store i8* %48, i8** %6, align 8
  br label %49

49:                                               ; preds = %41, %18
  %50 = load i8*, i8** %6, align 8
  ret i8* %50
}

declare dso_local %struct.delta_base_cache_entry* @get_delta_base_cache_entry(%struct.packed_git*, i32) #1

declare dso_local i8* @unpack_entry(%struct.repository*, %struct.packed_git*, i32, i32*, i64*) #1

declare dso_local i8* @xmemdupz(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
