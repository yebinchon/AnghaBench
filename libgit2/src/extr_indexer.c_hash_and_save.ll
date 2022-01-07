; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_indexer.c_hash_and_save.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_indexer.c_hash_and_save.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_8__*, i64 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_9__ = type { %struct.git_pack_entry* }
%struct.git_pack_entry = type { i32, i32, i32 }
%struct.entry = type { i32, i32, i32 }

@GIT_ERROR_INDEXER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"failed to hash object\00", align 1
@Z_NULL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*, %struct.TYPE_9__*, i64)* @hash_and_save to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hash_and_save(%struct.TYPE_10__* %0, %struct.TYPE_9__* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.entry*, align 8
  %11 = alloca %struct.git_pack_entry*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %5, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %6, align 8
  store i64 %2, i64* %7, align 8
  store %struct.git_pack_entry* null, %struct.git_pack_entry** %11, align 8
  %12 = call %struct.git_pack_entry* @git__calloc(i32 1, i32 12)
  %13 = bitcast %struct.git_pack_entry* %12 to %struct.entry*
  store %struct.entry* %13, %struct.entry** %10, align 8
  %14 = load %struct.entry*, %struct.entry** %10, align 8
  %15 = bitcast %struct.entry* %14 to %struct.git_pack_entry*
  %16 = call i32 @GIT_ERROR_CHECK_ALLOC(%struct.git_pack_entry* %15)
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %18 = call i64 @git_odb__hashobj(i32* %8, %struct.TYPE_9__* %17)
  %19 = icmp slt i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %3
  %21 = load i32, i32* @GIT_ERROR_INDEXER, align 4
  %22 = call i32 @git_error_set(i32 %21, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %60

23:                                               ; preds = %3
  %24 = call %struct.git_pack_entry* @git__calloc(i32 1, i32 12)
  store %struct.git_pack_entry* %24, %struct.git_pack_entry** %11, align 8
  %25 = load %struct.git_pack_entry*, %struct.git_pack_entry** %11, align 8
  %26 = call i32 @GIT_ERROR_CHECK_ALLOC(%struct.git_pack_entry* %25)
  %27 = load %struct.git_pack_entry*, %struct.git_pack_entry** %11, align 8
  %28 = getelementptr inbounds %struct.git_pack_entry, %struct.git_pack_entry* %27, i32 0, i32 2
  %29 = call i32 @git_oid_cpy(i32* %28, i32* %8)
  %30 = load %struct.entry*, %struct.entry** %10, align 8
  %31 = getelementptr inbounds %struct.entry, %struct.entry* %30, i32 0, i32 1
  %32 = call i32 @git_oid_cpy(i32* %31, i32* %8)
  %33 = load i32, i32* @Z_NULL, align 4
  %34 = call i32 @crc32(i64 0, i32 %33, i32 0)
  %35 = load %struct.entry*, %struct.entry** %10, align 8
  %36 = getelementptr inbounds %struct.entry, %struct.entry* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 4
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* %7, align 8
  %41 = sub nsw i64 %39, %40
  store i64 %41, i64* %9, align 8
  %42 = load %struct.entry*, %struct.entry** %10, align 8
  %43 = getelementptr inbounds %struct.entry, %struct.entry* %42, i32 0, i32 0
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 0
  %48 = load i64, i64* %7, align 8
  %49 = load i64, i64* %9, align 8
  %50 = call i64 @crc_object(i32* %43, i32* %47, i64 %48, i64 %49)
  %51 = icmp slt i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %23
  br label %60

53:                                               ; preds = %23
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %55 = load %struct.entry*, %struct.entry** %10, align 8
  %56 = bitcast %struct.entry* %55 to %struct.git_pack_entry*
  %57 = load %struct.git_pack_entry*, %struct.git_pack_entry** %11, align 8
  %58 = load i64, i64* %7, align 8
  %59 = call i32 @save_entry(%struct.TYPE_10__* %54, %struct.git_pack_entry* %56, %struct.git_pack_entry* %57, i64 %58)
  store i32 %59, i32* %4, align 4
  br label %70

60:                                               ; preds = %52, %20
  %61 = load %struct.git_pack_entry*, %struct.git_pack_entry** %11, align 8
  %62 = call i32 @git__free(%struct.git_pack_entry* %61)
  %63 = load %struct.entry*, %struct.entry** %10, align 8
  %64 = bitcast %struct.entry* %63 to %struct.git_pack_entry*
  %65 = call i32 @git__free(%struct.git_pack_entry* %64)
  %66 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 0
  %68 = load %struct.git_pack_entry*, %struct.git_pack_entry** %67, align 8
  %69 = call i32 @git__free(%struct.git_pack_entry* %68)
  store i32 -1, i32* %4, align 4
  br label %70

70:                                               ; preds = %60, %53
  %71 = load i32, i32* %4, align 4
  ret i32 %71
}

declare dso_local %struct.git_pack_entry* @git__calloc(i32, i32) #1

declare dso_local i32 @GIT_ERROR_CHECK_ALLOC(%struct.git_pack_entry*) #1

declare dso_local i64 @git_odb__hashobj(i32*, %struct.TYPE_9__*) #1

declare dso_local i32 @git_error_set(i32, i8*) #1

declare dso_local i32 @git_oid_cpy(i32*, i32*) #1

declare dso_local i32 @crc32(i64, i32, i32) #1

declare dso_local i64 @crc_object(i32*, i32*, i64, i64) #1

declare dso_local i32 @save_entry(%struct.TYPE_10__*, %struct.git_pack_entry*, %struct.git_pack_entry*, i64) #1

declare dso_local i32 @git__free(%struct.git_pack_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
