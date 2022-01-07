; ModuleID = '/home/carl/AnghaBench/git/extr_line-log.c_fill_blob_sha1.c'
source_filename = "/home/carl/AnghaBench/git/extr_line-log.c_fill_blob_sha1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.repository = type { i32 }
%struct.commit = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.diff_filespec = type { i32 }
%struct.object_id = type { i32 }

@.str = private unnamed_addr constant [34 x i8] c"There is no path %s in the commit\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.repository*, %struct.commit*, %struct.diff_filespec*)* @fill_blob_sha1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fill_blob_sha1(%struct.repository* %0, %struct.commit* %1, %struct.diff_filespec* %2) #0 {
  %4 = alloca %struct.repository*, align 8
  %5 = alloca %struct.commit*, align 8
  %6 = alloca %struct.diff_filespec*, align 8
  %7 = alloca i16, align 2
  %8 = alloca %struct.object_id, align 4
  store %struct.repository* %0, %struct.repository** %4, align 8
  store %struct.commit* %1, %struct.commit** %5, align 8
  store %struct.diff_filespec* %2, %struct.diff_filespec** %6, align 8
  %9 = load %struct.repository*, %struct.repository** %4, align 8
  %10 = load %struct.commit*, %struct.commit** %5, align 8
  %11 = getelementptr inbounds %struct.commit, %struct.commit* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load %struct.diff_filespec*, %struct.diff_filespec** %6, align 8
  %14 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i64 @get_tree_entry(%struct.repository* %9, i32* %12, i32 %15, %struct.object_id* %8, i16* %7)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %3
  %19 = load %struct.diff_filespec*, %struct.diff_filespec** %6, align 8
  %20 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @die(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %21)
  br label %23

23:                                               ; preds = %18, %3
  %24 = load %struct.diff_filespec*, %struct.diff_filespec** %6, align 8
  %25 = load i16, i16* %7, align 2
  %26 = call i32 @fill_filespec(%struct.diff_filespec* %24, %struct.object_id* %8, i32 1, i16 zeroext %25)
  ret void
}

declare dso_local i64 @get_tree_entry(%struct.repository*, i32*, i32, %struct.object_id*, i16*) #1

declare dso_local i32 @die(i8*, i32) #1

declare dso_local i32 @fill_filespec(%struct.diff_filespec*, %struct.object_id*, i32, i16 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
