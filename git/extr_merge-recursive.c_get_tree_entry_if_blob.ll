; ModuleID = '/home/carl/AnghaBench/git/extr_merge-recursive.c_get_tree_entry_if_blob.c'
source_filename = "/home/carl/AnghaBench/git/extr_merge-recursive.c_get_tree_entry_if_blob.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.repository = type { i32 }
%struct.object_id = type { i32 }
%struct.diff_filespec = type { i64, i32 }

@null_oid = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.repository*, %struct.object_id*, i8*, %struct.diff_filespec*)* @get_tree_entry_if_blob to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_tree_entry_if_blob(%struct.repository* %0, %struct.object_id* %1, i8* %2, %struct.diff_filespec* %3) #0 {
  %5 = alloca %struct.repository*, align 8
  %6 = alloca %struct.object_id*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.diff_filespec*, align 8
  %9 = alloca i32, align 4
  store %struct.repository* %0, %struct.repository** %5, align 8
  store %struct.object_id* %1, %struct.object_id** %6, align 8
  store i8* %2, i8** %7, align 8
  store %struct.diff_filespec* %3, %struct.diff_filespec** %8, align 8
  %10 = load %struct.repository*, %struct.repository** %5, align 8
  %11 = load %struct.object_id*, %struct.object_id** %6, align 8
  %12 = load i8*, i8** %7, align 8
  %13 = load %struct.diff_filespec*, %struct.diff_filespec** %8, align 8
  %14 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %13, i32 0, i32 1
  %15 = load %struct.diff_filespec*, %struct.diff_filespec** %8, align 8
  %16 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %15, i32 0, i32 0
  %17 = call i32 @get_tree_entry(%struct.repository* %10, %struct.object_id* %11, i8* %12, i32* %14, i64* %16)
  store i32 %17, i32* %9, align 4
  %18 = load %struct.diff_filespec*, %struct.diff_filespec** %8, align 8
  %19 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = call i64 @S_ISDIR(i64 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %4
  %24 = load %struct.diff_filespec*, %struct.diff_filespec** %8, align 8
  %25 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %24, i32 0, i32 1
  %26 = call i32 @oidcpy(i32* %25, i32* @null_oid)
  %27 = load %struct.diff_filespec*, %struct.diff_filespec** %8, align 8
  %28 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %27, i32 0, i32 0
  store i64 0, i64* %28, align 8
  br label %29

29:                                               ; preds = %23, %4
  %30 = load i32, i32* %9, align 4
  ret i32 %30
}

declare dso_local i32 @get_tree_entry(%struct.repository*, %struct.object_id*, i8*, i32*, i64*) #1

declare dso_local i64 @S_ISDIR(i64) #1

declare dso_local i32 @oidcpy(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
