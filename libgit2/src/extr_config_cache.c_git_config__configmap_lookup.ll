; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_config_cache.c_git_config__configmap_lookup.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_config_cache.c_git_config__configmap_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.map_data = type { i32, i32, i64, i32 }
%struct.TYPE_4__ = type { i32 }

@_configmaps = common dso_local global %struct.map_data* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @git_config__configmap_lookup(i32* %0, i32* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.map_data*, align 8
  %10 = alloca %struct.TYPE_4__*, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 0, i32* %8, align 4
  %11 = load %struct.map_data*, %struct.map_data** @_configmaps, align 8
  %12 = load i64, i64* %7, align 8
  %13 = trunc i64 %12 to i32
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.map_data, %struct.map_data* %11, i64 %14
  store %struct.map_data* %15, %struct.map_data** %9, align 8
  %16 = load i32*, i32** %6, align 8
  %17 = load %struct.map_data*, %struct.map_data** %9, align 8
  %18 = getelementptr inbounds %struct.map_data, %struct.map_data* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @git_config__lookup_entry(%struct.TYPE_4__** %10, i32* %16, i32 %19, i32 0)
  store i32 %20, i32* %8, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %3
  %23 = load i32, i32* %8, align 4
  store i32 %23, i32* %4, align 4
  br label %60

24:                                               ; preds = %3
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %26 = icmp ne %struct.TYPE_4__* %25, null
  br i1 %26, label %32, label %27

27:                                               ; preds = %24
  %28 = load %struct.map_data*, %struct.map_data** %9, align 8
  %29 = getelementptr inbounds %struct.map_data, %struct.map_data* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32*, i32** %5, align 8
  store i32 %30, i32* %31, align 4
  br label %56

32:                                               ; preds = %24
  %33 = load %struct.map_data*, %struct.map_data** %9, align 8
  %34 = getelementptr inbounds %struct.map_data, %struct.map_data* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %49

37:                                               ; preds = %32
  %38 = load i32*, i32** %5, align 8
  %39 = load %struct.map_data*, %struct.map_data** %9, align 8
  %40 = getelementptr inbounds %struct.map_data, %struct.map_data* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.map_data*, %struct.map_data** %9, align 8
  %43 = getelementptr inbounds %struct.map_data, %struct.map_data* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @git_config_lookup_map_value(i32* %38, i64 %41, i32 %44, i32 %47)
  store i32 %48, i32* %8, align 4
  br label %55

49:                                               ; preds = %32
  %50 = load i32*, i32** %5, align 8
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @git_config_parse_bool(i32* %50, i32 %53)
  store i32 %54, i32* %8, align 4
  br label %55

55:                                               ; preds = %49, %37
  br label %56

56:                                               ; preds = %55, %27
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %58 = call i32 @git_config_entry_free(%struct.TYPE_4__* %57)
  %59 = load i32, i32* %8, align 4
  store i32 %59, i32* %4, align 4
  br label %60

60:                                               ; preds = %56, %22
  %61 = load i32, i32* %4, align 4
  ret i32 %61
}

declare dso_local i32 @git_config__lookup_entry(%struct.TYPE_4__**, i32*, i32, i32) #1

declare dso_local i32 @git_config_lookup_map_value(i32*, i64, i32, i32) #1

declare dso_local i32 @git_config_parse_bool(i32*, i32) #1

declare dso_local i32 @git_config_entry_free(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
