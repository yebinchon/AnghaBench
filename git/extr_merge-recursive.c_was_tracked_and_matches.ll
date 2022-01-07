; ModuleID = '/home/carl/AnghaBench/git/extr_merge-recursive.c_was_tracked_and_matches.c'
source_filename = "/home/carl/AnghaBench/git/extr_merge-recursive.c_was_tracked_and_matches.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.merge_options = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.cache_entry** }
%struct.cache_entry = type { i64, i32 }
%struct.diff_filespec = type { i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.merge_options*, i8*, %struct.diff_filespec*)* @was_tracked_and_matches to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @was_tracked_and_matches(%struct.merge_options* %0, i8* %1, %struct.diff_filespec* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.merge_options*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.diff_filespec*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.cache_entry*, align 8
  store %struct.merge_options* %0, %struct.merge_options** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.diff_filespec* %2, %struct.diff_filespec** %7, align 8
  %10 = load %struct.merge_options*, %struct.merge_options** %5, align 8
  %11 = getelementptr inbounds %struct.merge_options, %struct.merge_options* %10, i32 0, i32 0
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i8*, i8** %6, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = call i32 @strlen(i8* %15)
  %17 = call i32 @index_name_pos(%struct.TYPE_4__* %13, i8* %14, i32 %16)
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %8, align 4
  %19 = icmp sgt i32 0, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %49

21:                                               ; preds = %3
  %22 = load %struct.merge_options*, %struct.merge_options** %5, align 8
  %23 = getelementptr inbounds %struct.merge_options, %struct.merge_options* %22, i32 0, i32 0
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load %struct.cache_entry**, %struct.cache_entry*** %26, align 8
  %28 = load i32, i32* %8, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.cache_entry*, %struct.cache_entry** %27, i64 %29
  %31 = load %struct.cache_entry*, %struct.cache_entry** %30, align 8
  store %struct.cache_entry* %31, %struct.cache_entry** %9, align 8
  %32 = load %struct.cache_entry*, %struct.cache_entry** %9, align 8
  %33 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %32, i32 0, i32 1
  %34 = load %struct.diff_filespec*, %struct.diff_filespec** %7, align 8
  %35 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %34, i32 0, i32 1
  %36 = call i64 @oid_eq(i32* %33, i32* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %46

38:                                               ; preds = %21
  %39 = load %struct.cache_entry*, %struct.cache_entry** %9, align 8
  %40 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.diff_filespec*, %struct.diff_filespec** %7, align 8
  %43 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp eq i64 %41, %44
  br label %46

46:                                               ; preds = %38, %21
  %47 = phi i1 [ false, %21 ], [ %45, %38 ]
  %48 = zext i1 %47 to i32
  store i32 %48, i32* %4, align 4
  br label %49

49:                                               ; preds = %46, %20
  %50 = load i32, i32* %4, align 4
  ret i32 %50
}

declare dso_local i32 @index_name_pos(%struct.TYPE_4__*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @oid_eq(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
