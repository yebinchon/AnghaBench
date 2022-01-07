; ModuleID = '/home/carl/AnghaBench/git/extr_read-cache.c_make_cache_entry.c'
source_filename = "/home/carl/AnghaBench/git/extr_read-cache.c_make_cache_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cache_entry = type { i32, i32, i32, i32, i32 }
%struct.index_state = type { i32 }
%struct.object_id = type { i32 }

@.str = private unnamed_addr constant [18 x i8] c"invalid path '%s'\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.cache_entry* @make_cache_entry(%struct.index_state* %0, i32 %1, %struct.object_id* %2, i8* %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.cache_entry*, align 8
  %8 = alloca %struct.index_state*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.object_id*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.cache_entry*, align 8
  %15 = alloca %struct.cache_entry*, align 8
  %16 = alloca i32, align 4
  store %struct.index_state* %0, %struct.index_state** %8, align 8
  store i32 %1, i32* %9, align 4
  store %struct.object_id* %2, %struct.object_id** %10, align 8
  store i8* %3, i8** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %17 = load i8*, i8** %11, align 8
  %18 = load i32, i32* %9, align 4
  %19 = call i32 @verify_path(i8* %17, i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %6
  %22 = call i32 @_(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %23 = load i8*, i8** %11, align 8
  %24 = call i32 @error(i32 %22, i8* %23)
  store %struct.cache_entry* null, %struct.cache_entry** %7, align 8
  br label %64

25:                                               ; preds = %6
  %26 = load i8*, i8** %11, align 8
  %27 = call i32 @strlen(i8* %26)
  store i32 %27, i32* %16, align 4
  %28 = load %struct.index_state*, %struct.index_state** %8, align 8
  %29 = load i32, i32* %16, align 4
  %30 = call %struct.cache_entry* @make_empty_cache_entry(%struct.index_state* %28, i32 %29)
  store %struct.cache_entry* %30, %struct.cache_entry** %14, align 8
  %31 = load %struct.cache_entry*, %struct.cache_entry** %14, align 8
  %32 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %31, i32 0, i32 4
  %33 = load %struct.object_id*, %struct.object_id** %10, align 8
  %34 = call i32 @oidcpy(i32* %32, %struct.object_id* %33)
  %35 = load %struct.cache_entry*, %struct.cache_entry** %14, align 8
  %36 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 4
  %38 = load i8*, i8** %11, align 8
  %39 = load i32, i32* %16, align 4
  %40 = call i32 @memcpy(i32 %37, i8* %38, i32 %39)
  %41 = load i32, i32* %12, align 4
  %42 = call i32 @create_ce_flags(i32 %41)
  %43 = load %struct.cache_entry*, %struct.cache_entry** %14, align 8
  %44 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %43, i32 0, i32 2
  store i32 %42, i32* %44, align 4
  %45 = load i32, i32* %16, align 4
  %46 = load %struct.cache_entry*, %struct.cache_entry** %14, align 8
  %47 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 4
  %48 = load i32, i32* %9, align 4
  %49 = call i32 @create_ce_mode(i32 %48)
  %50 = load %struct.cache_entry*, %struct.cache_entry** %14, align 8
  %51 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %50, i32 0, i32 1
  store i32 %49, i32* %51, align 4
  %52 = load %struct.index_state*, %struct.index_state** %8, align 8
  %53 = load %struct.cache_entry*, %struct.cache_entry** %14, align 8
  %54 = load i32, i32* %13, align 4
  %55 = call %struct.cache_entry* @refresh_cache_entry(%struct.index_state* %52, %struct.cache_entry* %53, i32 %54)
  store %struct.cache_entry* %55, %struct.cache_entry** %15, align 8
  %56 = load %struct.cache_entry*, %struct.cache_entry** %15, align 8
  %57 = load %struct.cache_entry*, %struct.cache_entry** %14, align 8
  %58 = icmp ne %struct.cache_entry* %56, %57
  br i1 %58, label %59, label %62

59:                                               ; preds = %25
  %60 = load %struct.cache_entry*, %struct.cache_entry** %14, align 8
  %61 = call i32 @discard_cache_entry(%struct.cache_entry* %60)
  br label %62

62:                                               ; preds = %59, %25
  %63 = load %struct.cache_entry*, %struct.cache_entry** %15, align 8
  store %struct.cache_entry* %63, %struct.cache_entry** %7, align 8
  br label %64

64:                                               ; preds = %62, %21
  %65 = load %struct.cache_entry*, %struct.cache_entry** %7, align 8
  ret %struct.cache_entry* %65
}

declare dso_local i32 @verify_path(i8*, i32) #1

declare dso_local i32 @error(i32, i8*) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local %struct.cache_entry* @make_empty_cache_entry(%struct.index_state*, i32) #1

declare dso_local i32 @oidcpy(i32*, %struct.object_id*) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i32 @create_ce_flags(i32) #1

declare dso_local i32 @create_ce_mode(i32) #1

declare dso_local %struct.cache_entry* @refresh_cache_entry(%struct.index_state*, %struct.cache_entry*, i32) #1

declare dso_local i32 @discard_cache_entry(%struct.cache_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
