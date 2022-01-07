; ModuleID = '/home/carl/AnghaBench/kphp-kdb/storage/extr_storage-data.c_unload_metafiles.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/storage/extr_storage-data.c_unload_metafiles.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, %struct.TYPE_4__* }

@lru_meta_lst = common dso_local global %struct.TYPE_4__* null, align 8
@metafile_bucket_bytes = common dso_local global i64* null, align 8
@max_metafiles_bytes = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [91 x i8] c"unload_metafile: max_metafiles_bytes = %d, metafile_bucket_bytes[%d] = %d, metafiles = %d\0A\00", align 1
@metafiles = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @unload_metafiles to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @unload_metafiles(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca %struct.TYPE_4__*, align 8
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %3, align 4
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** @lru_meta_lst, align 8
  %7 = load i32, i32* %2, align 4
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i64 %8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 1
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  store %struct.TYPE_4__* %11, %struct.TYPE_4__** %4, align 8
  br label %12

12:                                               ; preds = %38, %34, %1
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** @lru_meta_lst, align 8
  %15 = load i32, i32* %2, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i64 %16
  %18 = icmp ne %struct.TYPE_4__* %13, %17
  br i1 %18, label %19, label %27

19:                                               ; preds = %12
  %20 = load i64*, i64** @metafile_bucket_bytes, align 8
  %21 = load i32, i32* %2, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i64, i64* %20, i64 %22
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @max_metafiles_bytes, align 8
  %26 = icmp sgt i64 %24, %25
  br label %27

27:                                               ; preds = %19, %12
  %28 = phi i1 [ false, %12 ], [ %26, %19 ]
  br i1 %28, label %29, label %47

29:                                               ; preds = %27
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp sgt i64 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %29
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 1
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  store %struct.TYPE_4__* %37, %struct.TYPE_4__** %4, align 8
  br label %12

38:                                               ; preds = %29
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 1
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  store %struct.TYPE_4__* %41, %struct.TYPE_4__** %5, align 8
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %43 = call i32 @metafile_free(%struct.TYPE_4__* %42)
  %44 = load i32, i32* %3, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %3, align 4
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  store %struct.TYPE_4__* %46, %struct.TYPE_4__** %4, align 8
  br label %12

47:                                               ; preds = %27
  %48 = load i64*, i64** @metafile_bucket_bytes, align 8
  %49 = load i32, i32* %2, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i64, i64* %48, i64 %50
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @max_metafiles_bytes, align 8
  %54 = icmp sgt i64 %52, %53
  br i1 %54, label %55, label %68

55:                                               ; preds = %47
  %56 = load i32, i32* %3, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %68, label %58

58:                                               ; preds = %55
  %59 = load i64, i64* @max_metafiles_bytes, align 8
  %60 = load i32, i32* %2, align 4
  %61 = load i64*, i64** @metafile_bucket_bytes, align 8
  %62 = load i32, i32* %2, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i64, i64* %61, i64 %63
  %65 = load i64, i64* %64, align 8
  %66 = load i32, i32* @metafiles, align 4
  %67 = call i32 @vkprintf(i32 2, i8* getelementptr inbounds ([91 x i8], [91 x i8]* @.str, i64 0, i64 0), i64 %59, i32 %60, i64 %65, i32 %66)
  br label %68

68:                                               ; preds = %58, %55, %47
  ret void
}

declare dso_local i32 @metafile_free(%struct.TYPE_4__*) #1

declare dso_local i32 @vkprintf(i32, i8*, i64, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
