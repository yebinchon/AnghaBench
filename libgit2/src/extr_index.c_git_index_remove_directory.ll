; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_index.c_git_index_remove_directory.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_index.c_git_index_remove_directory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, i32 }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { i32 }

@GIT_BUF_INIT = common dso_local global %struct.TYPE_15__ zeroinitializer, align 4
@GIT_INDEX_STAGE_ANY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @git_index_remove_directory(%struct.TYPE_14__* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_15__, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_13__*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = bitcast %struct.TYPE_15__* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %11, i8* align 4 bitcast (%struct.TYPE_15__* @GIT_BUF_INIT to i8*), i64 8, i1 false)
  store i32 0, i32* %8, align 4
  %12 = load i8*, i8** %5, align 8
  %13 = call i32 @git_buf_sets(%struct.TYPE_15__* %7, i8* %12)
  store i32 %13, i32* %8, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %26, label %15

15:                                               ; preds = %3
  %16 = call i32 @git_path_to_dir(%struct.TYPE_15__* %7)
  store i32 %16, i32* %8, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %26, label %18

18:                                               ; preds = %15
  %19 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %7, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %7, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @GIT_INDEX_STAGE_ANY, align 4
  %25 = call i32 @index_find(i64* %9, %struct.TYPE_14__* %19, i32 %21, i32 %23, i32 %24)
  br label %26

26:                                               ; preds = %18, %15, %3
  br label %27

27:                                               ; preds = %55, %52, %26
  %28 = load i32, i32* %8, align 4
  %29 = icmp ne i32 %28, 0
  %30 = xor i1 %29, true
  br i1 %30, label %31, label %59

31:                                               ; preds = %27
  %32 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %32, i32 0, i32 0
  %34 = load i64, i64* %9, align 8
  %35 = call %struct.TYPE_13__* @git_vector_get(i32* %33, i64 %34)
  store %struct.TYPE_13__* %35, %struct.TYPE_13__** %10, align 8
  %36 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %37 = icmp ne %struct.TYPE_13__* %36, null
  br i1 %37, label %38, label %46

38:                                               ; preds = %31
  %39 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %40 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %7, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i64 @git__prefixcmp(i32 %41, i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %38, %31
  br label %59

47:                                               ; preds = %38
  %48 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %49 = call i32 @GIT_INDEX_ENTRY_STAGE(%struct.TYPE_13__* %48)
  %50 = load i32, i32* %6, align 4
  %51 = icmp ne i32 %49, %50
  br i1 %51, label %52, label %55

52:                                               ; preds = %47
  %53 = load i64, i64* %9, align 8
  %54 = add i64 %53, 1
  store i64 %54, i64* %9, align 8
  br label %27

55:                                               ; preds = %47
  %56 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %57 = load i64, i64* %9, align 8
  %58 = call i32 @index_remove_entry(%struct.TYPE_14__* %56, i64 %57)
  store i32 %58, i32* %8, align 4
  br label %27

59:                                               ; preds = %46, %27
  %60 = call i32 @git_buf_dispose(%struct.TYPE_15__* %7)
  %61 = load i32, i32* %8, align 4
  ret i32 %61
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @git_buf_sets(%struct.TYPE_15__*, i8*) #2

declare dso_local i32 @git_path_to_dir(%struct.TYPE_15__*) #2

declare dso_local i32 @index_find(i64*, %struct.TYPE_14__*, i32, i32, i32) #2

declare dso_local %struct.TYPE_13__* @git_vector_get(i32*, i64) #2

declare dso_local i64 @git__prefixcmp(i32, i32) #2

declare dso_local i32 @GIT_INDEX_ENTRY_STAGE(%struct.TYPE_13__*) #2

declare dso_local i32 @index_remove_entry(%struct.TYPE_14__*, i64) #2

declare dso_local i32 @git_buf_dispose(%struct.TYPE_15__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
