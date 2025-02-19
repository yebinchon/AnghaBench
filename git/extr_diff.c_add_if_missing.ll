; ModuleID = '/home/carl/AnghaBench/git/extr_diff.c_add_if_missing.c'
source_filename = "/home/carl/AnghaBench/git/extr_diff.c_add_if_missing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.repository = type { i32 }
%struct.oid_array = type { i32 }
%struct.diff_filespec = type { i32, i32, i64 }

@OBJECT_INFO_FOR_PREFETCH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.repository*, %struct.oid_array*, %struct.diff_filespec*)* @add_if_missing to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_if_missing(%struct.repository* %0, %struct.oid_array* %1, %struct.diff_filespec* %2) #0 {
  %4 = alloca %struct.repository*, align 8
  %5 = alloca %struct.oid_array*, align 8
  %6 = alloca %struct.diff_filespec*, align 8
  store %struct.repository* %0, %struct.repository** %4, align 8
  store %struct.oid_array* %1, %struct.oid_array** %5, align 8
  store %struct.diff_filespec* %2, %struct.diff_filespec** %6, align 8
  %7 = load %struct.diff_filespec*, %struct.diff_filespec** %6, align 8
  %8 = icmp ne %struct.diff_filespec* %7, null
  br i1 %8, label %9, label %32

9:                                                ; preds = %3
  %10 = load %struct.diff_filespec*, %struct.diff_filespec** %6, align 8
  %11 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %10, i32 0, i32 2
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %32

14:                                               ; preds = %9
  %15 = load %struct.diff_filespec*, %struct.diff_filespec** %6, align 8
  %16 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @S_ISGITLINK(i32 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %32, label %20

20:                                               ; preds = %14
  %21 = load %struct.repository*, %struct.repository** %4, align 8
  %22 = load %struct.diff_filespec*, %struct.diff_filespec** %6, align 8
  %23 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %22, i32 0, i32 0
  %24 = load i32, i32* @OBJECT_INFO_FOR_PREFETCH, align 4
  %25 = call i64 @oid_object_info_extended(%struct.repository* %21, i32* %23, i32* null, i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %20
  %28 = load %struct.oid_array*, %struct.oid_array** %5, align 8
  %29 = load %struct.diff_filespec*, %struct.diff_filespec** %6, align 8
  %30 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %29, i32 0, i32 0
  %31 = call i32 @oid_array_append(%struct.oid_array* %28, i32* %30)
  br label %32

32:                                               ; preds = %27, %20, %14, %9, %3
  ret void
}

declare dso_local i32 @S_ISGITLINK(i32) #1

declare dso_local i64 @oid_object_info_extended(%struct.repository*, i32*, i32*, i32) #1

declare dso_local i32 @oid_array_append(%struct.oid_array*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
