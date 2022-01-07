; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_refdb_fs.c_reference_path_available.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_refdb_fs.c_reference_path_available.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.packref = type { i32 }

@GIT_ERROR_REFERENCE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [75 x i8] c"failed to write reference '%s': a reference with that name already exists.\00", align 1
@GIT_EEXISTS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [50 x i8] c"path to reference '%s' collides with existing one\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i8*, i8*, i32)* @reference_path_available to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @reference_path_available(%struct.TYPE_4__* %0, i8* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.packref*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %15 = call i32 @packed_reload(%struct.TYPE_4__* %14)
  store i32 %15, i32* %11, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %4
  %18 = load i32, i32* %11, align 4
  store i32 %18, i32* %5, align 4
  br label %84

19:                                               ; preds = %4
  %20 = load i32, i32* %9, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %39, label %22

22:                                               ; preds = %19
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %24 = bitcast %struct.TYPE_4__* %23 to i32*
  %25 = load i8*, i8** %7, align 8
  %26 = call i32 @refdb_fs_backend__exists(i32* %12, i32* %24, i8* %25)
  store i32 %26, i32* %11, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %22
  %29 = load i32, i32* %11, align 4
  store i32 %29, i32* %5, align 4
  br label %84

30:                                               ; preds = %22
  %31 = load i32, i32* %12, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %30
  %34 = load i32, i32* @GIT_ERROR_REFERENCE, align 4
  %35 = load i8*, i8** %7, align 8
  %36 = call i32 @git_error_set(i32 %34, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str, i64 0, i64 0), i8* %35)
  %37 = load i32, i32* @GIT_EEXISTS, align 4
  store i32 %37, i32* %5, align 4
  br label %84

38:                                               ; preds = %30
  br label %39

39:                                               ; preds = %38, %19
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @git_sortedcache_rlock(i32 %42)
  store i64 0, i64* %10, align 8
  br label %44

44:                                               ; preds = %76, %39
  %45 = load i64, i64* %10, align 8
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i64 @git_sortedcache_entrycount(i32 %48)
  %50 = icmp ult i64 %45, %49
  br i1 %50, label %51, label %79

51:                                               ; preds = %44
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i64, i64* %10, align 8
  %56 = call %struct.packref* @git_sortedcache_entry(i32 %54, i64 %55)
  store %struct.packref* %56, %struct.packref** %13, align 8
  %57 = load %struct.packref*, %struct.packref** %13, align 8
  %58 = icmp ne %struct.packref* %57, null
  br i1 %58, label %59, label %75

59:                                               ; preds = %51
  %60 = load i8*, i8** %8, align 8
  %61 = load i8*, i8** %7, align 8
  %62 = load %struct.packref*, %struct.packref** %13, align 8
  %63 = getelementptr inbounds %struct.packref, %struct.packref* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @ref_is_available(i8* %60, i8* %61, i32 %64)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %75, label %67

67:                                               ; preds = %59
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @git_sortedcache_runlock(i32 %70)
  %72 = load i32, i32* @GIT_ERROR_REFERENCE, align 4
  %73 = load i8*, i8** %7, align 8
  %74 = call i32 @git_error_set(i32 %72, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), i8* %73)
  store i32 -1, i32* %5, align 4
  br label %84

75:                                               ; preds = %59, %51
  br label %76

76:                                               ; preds = %75
  %77 = load i64, i64* %10, align 8
  %78 = add i64 %77, 1
  store i64 %78, i64* %10, align 8
  br label %44

79:                                               ; preds = %44
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @git_sortedcache_runlock(i32 %82)
  store i32 0, i32* %5, align 4
  br label %84

84:                                               ; preds = %79, %67, %33, %28, %17
  %85 = load i32, i32* %5, align 4
  ret i32 %85
}

declare dso_local i32 @packed_reload(%struct.TYPE_4__*) #1

declare dso_local i32 @refdb_fs_backend__exists(i32*, i32*, i8*) #1

declare dso_local i32 @git_error_set(i32, i8*, i8*) #1

declare dso_local i32 @git_sortedcache_rlock(i32) #1

declare dso_local i64 @git_sortedcache_entrycount(i32) #1

declare dso_local %struct.packref* @git_sortedcache_entry(i32, i64) #1

declare dso_local i32 @ref_is_available(i8*, i8*, i32) #1

declare dso_local i32 @git_sortedcache_runlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
