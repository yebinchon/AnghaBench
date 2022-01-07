; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_odb_pack.c_pack_entry_find_prefix.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_odb_pack.c_pack_entry_find_prefix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.git_pack_entry = type { i32 }
%struct.pack_backend = type { %struct.git_pack_file*, %struct.TYPE_11__ }
%struct.git_pack_file = type { i32 }
%struct.TYPE_11__ = type { i64 }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }

@GIT_EAMBIGUOUS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"found multiple pack entries\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"no matching pack entry for prefix\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.git_pack_entry*, %struct.pack_backend*, %struct.TYPE_10__*, i64)* @pack_entry_find_prefix to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pack_entry_find_prefix(%struct.git_pack_entry* %0, %struct.pack_backend* %1, %struct.TYPE_10__* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.git_pack_entry*, align 8
  %7 = alloca %struct.pack_backend*, align 8
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_10__, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.git_pack_file*, align 8
  %15 = alloca %struct.git_pack_file*, align 8
  store %struct.git_pack_entry* %0, %struct.git_pack_entry** %6, align 8
  store %struct.pack_backend* %1, %struct.pack_backend** %7, align 8
  store %struct.TYPE_10__* %2, %struct.TYPE_10__** %8, align 8
  store i64 %3, i64* %9, align 8
  %16 = bitcast %struct.TYPE_10__* %12 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %16, i8 0, i64 4, i1 false)
  store i32 0, i32* %13, align 4
  %17 = load %struct.pack_backend*, %struct.pack_backend** %7, align 8
  %18 = getelementptr inbounds %struct.pack_backend, %struct.pack_backend* %17, i32 0, i32 0
  %19 = load %struct.git_pack_file*, %struct.git_pack_file** %18, align 8
  store %struct.git_pack_file* %19, %struct.git_pack_file** %14, align 8
  %20 = load %struct.git_pack_file*, %struct.git_pack_file** %14, align 8
  %21 = icmp ne %struct.git_pack_file* %20, null
  br i1 %21, label %22, label %41

22:                                               ; preds = %4
  %23 = load %struct.git_pack_entry*, %struct.git_pack_entry** %6, align 8
  %24 = load %struct.git_pack_file*, %struct.git_pack_file** %14, align 8
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %26 = load i64, i64* %9, align 8
  %27 = call i32 @git_pack_entry_find(%struct.git_pack_entry* %23, %struct.git_pack_file* %24, %struct.TYPE_10__* %25, i64 %26)
  store i32 %27, i32* %10, align 4
  %28 = load i32, i32* %10, align 4
  %29 = load i32, i32* @GIT_EAMBIGUOUS, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %22
  %32 = load i32, i32* %10, align 4
  store i32 %32, i32* %5, align 4
  br label %101

33:                                               ; preds = %22
  %34 = load i32, i32* %10, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %40, label %36

36:                                               ; preds = %33
  %37 = load %struct.git_pack_entry*, %struct.git_pack_entry** %6, align 8
  %38 = getelementptr inbounds %struct.git_pack_entry, %struct.git_pack_entry* %37, i32 0, i32 0
  %39 = call i32 @git_oid_cpy(%struct.TYPE_10__* %12, i32* %38)
  store i32 1, i32* %13, align 4
  br label %40

40:                                               ; preds = %36, %33
  br label %41

41:                                               ; preds = %40, %4
  store i64 0, i64* %11, align 8
  br label %42

42:                                               ; preds = %90, %41
  %43 = load i64, i64* %11, align 8
  %44 = load %struct.pack_backend*, %struct.pack_backend** %7, align 8
  %45 = getelementptr inbounds %struct.pack_backend, %struct.pack_backend* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp ult i64 %43, %47
  br i1 %48, label %49, label %93

49:                                               ; preds = %42
  %50 = load %struct.pack_backend*, %struct.pack_backend** %7, align 8
  %51 = getelementptr inbounds %struct.pack_backend, %struct.pack_backend* %50, i32 0, i32 1
  %52 = load i64, i64* %11, align 8
  %53 = call %struct.git_pack_file* @git_vector_get(%struct.TYPE_11__* %51, i64 %52)
  store %struct.git_pack_file* %53, %struct.git_pack_file** %15, align 8
  %54 = load %struct.git_pack_file*, %struct.git_pack_file** %15, align 8
  %55 = load %struct.git_pack_file*, %struct.git_pack_file** %14, align 8
  %56 = icmp eq %struct.git_pack_file* %54, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %49
  br label %90

58:                                               ; preds = %49
  %59 = load %struct.git_pack_entry*, %struct.git_pack_entry** %6, align 8
  %60 = load %struct.git_pack_file*, %struct.git_pack_file** %15, align 8
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %62 = load i64, i64* %9, align 8
  %63 = call i32 @git_pack_entry_find(%struct.git_pack_entry* %59, %struct.git_pack_file* %60, %struct.TYPE_10__* %61, i64 %62)
  store i32 %63, i32* %10, align 4
  %64 = load i32, i32* %10, align 4
  %65 = load i32, i32* @GIT_EAMBIGUOUS, align 4
  %66 = icmp eq i32 %64, %65
  br i1 %66, label %67, label %69

67:                                               ; preds = %58
  %68 = load i32, i32* %10, align 4
  store i32 %68, i32* %5, align 4
  br label %101

69:                                               ; preds = %58
  %70 = load i32, i32* %10, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %89, label %72

72:                                               ; preds = %69
  %73 = load i32, i32* %13, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %82

75:                                               ; preds = %72
  %76 = load %struct.git_pack_entry*, %struct.git_pack_entry** %6, align 8
  %77 = getelementptr inbounds %struct.git_pack_entry, %struct.git_pack_entry* %76, i32 0, i32 0
  %78 = call i64 @git_oid_cmp(i32* %77, %struct.TYPE_10__* %12)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %75
  %81 = call i32 @git_odb__error_ambiguous(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  store i32 %81, i32* %5, align 4
  br label %101

82:                                               ; preds = %75, %72
  %83 = load %struct.git_pack_entry*, %struct.git_pack_entry** %6, align 8
  %84 = getelementptr inbounds %struct.git_pack_entry, %struct.git_pack_entry* %83, i32 0, i32 0
  %85 = call i32 @git_oid_cpy(%struct.TYPE_10__* %12, i32* %84)
  store i32 1, i32* %13, align 4
  %86 = load %struct.git_pack_file*, %struct.git_pack_file** %15, align 8
  %87 = load %struct.pack_backend*, %struct.pack_backend** %7, align 8
  %88 = getelementptr inbounds %struct.pack_backend, %struct.pack_backend* %87, i32 0, i32 0
  store %struct.git_pack_file* %86, %struct.git_pack_file** %88, align 8
  br label %89

89:                                               ; preds = %82, %69
  br label %90

90:                                               ; preds = %89, %57
  %91 = load i64, i64* %11, align 8
  %92 = add i64 %91, 1
  store i64 %92, i64* %11, align 8
  br label %42

93:                                               ; preds = %42
  %94 = load i32, i32* %13, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %100, label %96

96:                                               ; preds = %93
  %97 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %98 = load i64, i64* %9, align 8
  %99 = call i32 @git_odb__error_notfound(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_10__* %97, i64 %98)
  store i32 %99, i32* %5, align 4
  br label %101

100:                                              ; preds = %93
  store i32 0, i32* %5, align 4
  br label %101

101:                                              ; preds = %100, %96, %80, %67, %31
  %102 = load i32, i32* %5, align 4
  ret i32 %102
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @git_pack_entry_find(%struct.git_pack_entry*, %struct.git_pack_file*, %struct.TYPE_10__*, i64) #2

declare dso_local i32 @git_oid_cpy(%struct.TYPE_10__*, i32*) #2

declare dso_local %struct.git_pack_file* @git_vector_get(%struct.TYPE_11__*, i64) #2

declare dso_local i64 @git_oid_cmp(i32*, %struct.TYPE_10__*) #2

declare dso_local i32 @git_odb__error_ambiguous(i8*) #2

declare dso_local i32 @git_odb__error_notfound(i8*, %struct.TYPE_10__*, i64) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
