; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_indexer.c_save_entry.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_indexer.c_save_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32*, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.entry = type { %struct.TYPE_6__, i64, i64 }
%struct.TYPE_6__ = type { i32* }
%struct.git_pack_entry = type { i32, i64 }

@UINT31_MAX = common dso_local global i64 0, align 8
@UINT32_MAX = common dso_local global i64 0, align 8
@GIT_ERROR_INDEXER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"cannot insert object into pack\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, %struct.entry*, %struct.git_pack_entry*, i64)* @save_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @save_entry(%struct.TYPE_7__* %0, %struct.entry* %1, %struct.git_pack_entry* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca %struct.entry*, align 8
  %8 = alloca %struct.git_pack_entry*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %6, align 8
  store %struct.entry* %1, %struct.entry** %7, align 8
  store %struct.git_pack_entry* %2, %struct.git_pack_entry** %8, align 8
  store i64 %3, i64* %9, align 8
  %11 = load i64, i64* %9, align 8
  %12 = load i64, i64* @UINT31_MAX, align 8
  %13 = icmp sgt i64 %11, %12
  br i1 %13, label %14, label %21

14:                                               ; preds = %4
  %15 = load i64, i64* @UINT32_MAX, align 8
  %16 = load %struct.entry*, %struct.entry** %7, align 8
  %17 = getelementptr inbounds %struct.entry, %struct.entry* %16, i32 0, i32 1
  store i64 %15, i64* %17, align 8
  %18 = load i64, i64* %9, align 8
  %19 = load %struct.entry*, %struct.entry** %7, align 8
  %20 = getelementptr inbounds %struct.entry, %struct.entry* %19, i32 0, i32 2
  store i64 %18, i64* %20, align 8
  br label %25

21:                                               ; preds = %4
  %22 = load i64, i64* %9, align 8
  %23 = load %struct.entry*, %struct.entry** %7, align 8
  %24 = getelementptr inbounds %struct.entry, %struct.entry* %23, i32 0, i32 1
  store i64 %22, i64* %24, align 8
  br label %25

25:                                               ; preds = %21, %14
  %26 = load i64, i64* %9, align 8
  %27 = load %struct.git_pack_entry*, %struct.git_pack_entry** %8, align 8
  %28 = getelementptr inbounds %struct.git_pack_entry, %struct.git_pack_entry* %27, i32 0, i32 1
  store i64 %26, i64* %28, align 8
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 2
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.git_pack_entry*, %struct.git_pack_entry** %8, align 8
  %35 = getelementptr inbounds %struct.git_pack_entry, %struct.git_pack_entry* %34, i32 0, i32 0
  %36 = call i64 @git_oidmap_exists(i32 %33, i32* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %49, label %38

38:                                               ; preds = %25
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 2
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.git_pack_entry*, %struct.git_pack_entry** %8, align 8
  %45 = getelementptr inbounds %struct.git_pack_entry, %struct.git_pack_entry* %44, i32 0, i32 0
  %46 = load %struct.git_pack_entry*, %struct.git_pack_entry** %8, align 8
  %47 = call i64 @git_oidmap_set(i32 %43, i32* %45, %struct.git_pack_entry* %46)
  %48 = icmp slt i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %38, %25
  %50 = load i32, i32* @GIT_ERROR_INDEXER, align 4
  %51 = call i32 @git_error_set(i32 %50, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  br label %82

52:                                               ; preds = %38
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 1
  %55 = load %struct.entry*, %struct.entry** %7, align 8
  %56 = call i64 @git_vector_insert(i32* %54, %struct.entry* %55)
  %57 = icmp slt i64 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %52
  store i32 -1, i32* %5, align 4
  br label %82

59:                                               ; preds = %52
  %60 = load %struct.entry*, %struct.entry** %7, align 8
  %61 = getelementptr inbounds %struct.entry, %struct.entry* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  %63 = load i32*, i32** %62, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 0
  %65 = load i32, i32* %64, align 4
  store i32 %65, i32* %10, align 4
  br label %66

66:                                               ; preds = %78, %59
  %67 = load i32, i32* %10, align 4
  %68 = icmp slt i32 %67, 256
  br i1 %68, label %69, label %81

69:                                               ; preds = %66
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 0
  %72 = load i32*, i32** %71, align 8
  %73 = load i32, i32* %10, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %72, i64 %74
  %76 = load i32, i32* %75, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %75, align 4
  br label %78

78:                                               ; preds = %69
  %79 = load i32, i32* %10, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %10, align 4
  br label %66

81:                                               ; preds = %66
  store i32 0, i32* %5, align 4
  br label %82

82:                                               ; preds = %81, %58, %49
  %83 = load i32, i32* %5, align 4
  ret i32 %83
}

declare dso_local i64 @git_oidmap_exists(i32, i32*) #1

declare dso_local i64 @git_oidmap_set(i32, i32*, %struct.git_pack_entry*) #1

declare dso_local i32 @git_error_set(i32, i8*) #1

declare dso_local i64 @git_vector_insert(i32*, %struct.entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
