; ModuleID = '/home/carl/AnghaBench/kphp-kdb/lists/extr_lists-data.c_load_metafile.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/lists/extr_lists-data.c_load_metafile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@dyn_top = common dso_local global i64 0, align 8
@dyn_cur = common dso_local global i64 0, align 8
@idx_fsize = common dso_local global i64 0, align 8
@idx_bytes = common dso_local global i64 0, align 8
@Snapshot = common dso_local global %struct.TYPE_3__* null, align 8
@idx_kfs_headers_size = common dso_local global i64 0, align 8
@SEEK_SET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [90 x i8] c"error reading data from index file: read %lld bytes instead of %lld at position %lld: %m\0A\00", align 1
@idx_loaded_bytes = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @load_metafile(i8* %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  store i8* %0, i8** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %12 = load i64, i64* %8, align 8
  %13 = icmp sge i64 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %4
  %15 = load i64, i64* %8, align 8
  %16 = load i64, i64* @dyn_top, align 8
  %17 = load i64, i64* @dyn_cur, align 8
  %18 = sub nsw i64 %16, %17
  %19 = icmp sle i64 %15, %18
  br label %20

20:                                               ; preds = %14, %4
  %21 = phi i1 [ false, %4 ], [ %19, %14 ]
  %22 = zext i1 %21 to i32
  %23 = call i32 @assert(i32 %22)
  %24 = load i64, i64* %7, align 8
  %25 = icmp sge i64 %24, 0
  br i1 %25, label %26, label %36

26:                                               ; preds = %20
  %27 = load i64, i64* %7, align 8
  %28 = load i64, i64* @idx_fsize, align 8
  %29 = icmp sle i64 %27, %28
  br i1 %29, label %30, label %36

30:                                               ; preds = %26
  %31 = load i64, i64* %7, align 8
  %32 = load i64, i64* %8, align 8
  %33 = add nsw i64 %31, %32
  %34 = load i64, i64* @idx_fsize, align 8
  %35 = icmp sle i64 %33, %34
  br label %36

36:                                               ; preds = %30, %26, %20
  %37 = phi i1 [ false, %26 ], [ false, %20 ], [ %35, %30 ]
  %38 = zext i1 %37 to i32
  %39 = call i32 @assert(i32 %38)
  %40 = load i8*, i8** %6, align 8
  %41 = icmp eq i8* %40, inttoptr (i64 -1 to i8*)
  br i1 %41, label %42, label %45

42:                                               ; preds = %36
  %43 = load i64, i64* %8, align 8
  %44 = call i8* @zzmalloc(i64 %43)
  store i8* %44, i8** %6, align 8
  br label %45

45:                                               ; preds = %42, %36
  %46 = load i8*, i8** %6, align 8
  %47 = icmp ne i8* %46, null
  br i1 %47, label %54, label %48

48:                                               ; preds = %45
  %49 = load i64, i64* %8, align 8
  %50 = call i8* @zmalloc(i64 %49)
  store i8* %50, i8** %6, align 8
  %51 = load i64, i64* %8, align 8
  %52 = load i64, i64* @idx_bytes, align 8
  %53 = add nsw i64 %52, %51
  store i64 %53, i64* @idx_bytes, align 8
  br label %54

54:                                               ; preds = %48, %45
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** @Snapshot, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i64, i64* %7, align 8
  %59 = load i64, i64* @idx_kfs_headers_size, align 8
  %60 = add nsw i64 %58, %59
  %61 = load i32, i32* @SEEK_SET, align 4
  %62 = call i64 @lseek(i32 %57, i64 %60, i32 %61)
  %63 = load i64, i64* %7, align 8
  %64 = load i64, i64* @idx_kfs_headers_size, align 8
  %65 = add nsw i64 %63, %64
  %66 = icmp eq i64 %62, %65
  %67 = zext i1 %66 to i32
  %68 = call i32 @assert(i32 %67)
  %69 = load i8*, i8** %6, align 8
  store i8* %69, i8** %10, align 8
  br label %70

70:                                               ; preds = %96, %54
  %71 = load i64, i64* %8, align 8
  %72 = icmp sgt i64 %71, 0
  br i1 %72, label %73, label %106

73:                                               ; preds = %70
  %74 = load %struct.TYPE_3__*, %struct.TYPE_3__** @Snapshot, align 8
  %75 = load i8*, i8** %10, align 8
  %76 = load i64, i64* %8, align 8
  %77 = call i64 @kfs_read_file(%struct.TYPE_3__* %74, i8* %75, i64 %76)
  store i64 %77, i64* %11, align 8
  %78 = load i64, i64* %11, align 8
  %79 = icmp sle i64 %78, 0
  br i1 %79, label %80, label %96

80:                                               ; preds = %73
  %81 = load i64, i64* %11, align 8
  %82 = load i64, i64* %8, align 8
  %83 = load i64, i64* %7, align 8
  %84 = load i8*, i8** %10, align 8
  %85 = load i8*, i8** %6, align 8
  %86 = ptrtoint i8* %84 to i64
  %87 = ptrtoint i8* %85 to i64
  %88 = sub i64 %86, %87
  %89 = add nsw i64 %83, %88
  %90 = call i32 @vkprintf(i32 0, i8* getelementptr inbounds ([90 x i8], [90 x i8]* @.str, i64 0, i64 0), i64 %81, i64 %82, i64 %89)
  %91 = load i64, i64* %11, align 8
  %92 = load i64, i64* %8, align 8
  %93 = icmp eq i64 %91, %92
  %94 = zext i1 %93 to i32
  %95 = call i32 @assert(i32 %94)
  store i8* null, i8** %5, align 8
  br label %108

96:                                               ; preds = %73
  %97 = load i64, i64* %11, align 8
  %98 = load i8*, i8** %10, align 8
  %99 = getelementptr inbounds i8, i8* %98, i64 %97
  store i8* %99, i8** %10, align 8
  %100 = load i64, i64* %11, align 8
  %101 = load i64, i64* %8, align 8
  %102 = sub nsw i64 %101, %100
  store i64 %102, i64* %8, align 8
  %103 = load i64, i64* %11, align 8
  %104 = load i64, i64* @idx_loaded_bytes, align 8
  %105 = add nsw i64 %104, %103
  store i64 %105, i64* @idx_loaded_bytes, align 8
  br label %70

106:                                              ; preds = %70
  %107 = load i8*, i8** %6, align 8
  store i8* %107, i8** %5, align 8
  br label %108

108:                                              ; preds = %106, %80
  %109 = load i8*, i8** %5, align 8
  ret i8* %109
}

declare dso_local i32 @assert(i32) #1

declare dso_local i8* @zzmalloc(i64) #1

declare dso_local i8* @zmalloc(i64) #1

declare dso_local i64 @lseek(i32, i64, i32) #1

declare dso_local i64 @kfs_read_file(%struct.TYPE_3__*, i8*, i64) #1

declare dso_local i32 @vkprintf(i32, i8*, i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
