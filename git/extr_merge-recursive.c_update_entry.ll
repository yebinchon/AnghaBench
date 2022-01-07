; ModuleID = '/home/carl/AnghaBench/git/extr_merge-recursive.c_update_entry.c'
source_filename = "/home/carl/AnghaBench/git/extr_merge-recursive.c_update_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stage_data = type { %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.diff_filespec = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.stage_data*, %struct.diff_filespec*, %struct.diff_filespec*, %struct.diff_filespec*)* @update_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_entry(%struct.stage_data* %0, %struct.diff_filespec* %1, %struct.diff_filespec* %2, %struct.diff_filespec* %3) #0 {
  %5 = alloca %struct.stage_data*, align 8
  %6 = alloca %struct.diff_filespec*, align 8
  %7 = alloca %struct.diff_filespec*, align 8
  %8 = alloca %struct.diff_filespec*, align 8
  store %struct.stage_data* %0, %struct.stage_data** %5, align 8
  store %struct.diff_filespec* %1, %struct.diff_filespec** %6, align 8
  store %struct.diff_filespec* %2, %struct.diff_filespec** %7, align 8
  store %struct.diff_filespec* %3, %struct.diff_filespec** %8, align 8
  %9 = load %struct.stage_data*, %struct.stage_data** %5, align 8
  %10 = getelementptr inbounds %struct.stage_data, %struct.stage_data* %9, i32 0, i32 1
  store i64 0, i64* %10, align 8
  %11 = load %struct.diff_filespec*, %struct.diff_filespec** %6, align 8
  %12 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.stage_data*, %struct.stage_data** %5, align 8
  %15 = getelementptr inbounds %struct.stage_data, %struct.stage_data* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i64 1
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  store i32 %13, i32* %18, align 4
  %19 = load %struct.diff_filespec*, %struct.diff_filespec** %7, align 8
  %20 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.stage_data*, %struct.stage_data** %5, align 8
  %23 = getelementptr inbounds %struct.stage_data, %struct.stage_data* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i64 2
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  store i32 %21, i32* %26, align 4
  %27 = load %struct.diff_filespec*, %struct.diff_filespec** %8, align 8
  %28 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.stage_data*, %struct.stage_data** %5, align 8
  %31 = getelementptr inbounds %struct.stage_data, %struct.stage_data* %30, i32 0, i32 0
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i64 3
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 1
  store i32 %29, i32* %34, align 4
  %35 = load %struct.stage_data*, %struct.stage_data** %5, align 8
  %36 = getelementptr inbounds %struct.stage_data, %struct.stage_data* %35, i32 0, i32 0
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i64 1
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load %struct.diff_filespec*, %struct.diff_filespec** %6, align 8
  %41 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %40, i32 0, i32 0
  %42 = call i32 @oidcpy(i32* %39, i32* %41)
  %43 = load %struct.stage_data*, %struct.stage_data** %5, align 8
  %44 = getelementptr inbounds %struct.stage_data, %struct.stage_data* %43, i32 0, i32 0
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i64 2
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load %struct.diff_filespec*, %struct.diff_filespec** %7, align 8
  %49 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %48, i32 0, i32 0
  %50 = call i32 @oidcpy(i32* %47, i32* %49)
  %51 = load %struct.stage_data*, %struct.stage_data** %5, align 8
  %52 = getelementptr inbounds %struct.stage_data, %struct.stage_data* %51, i32 0, i32 0
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i64 3
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load %struct.diff_filespec*, %struct.diff_filespec** %8, align 8
  %57 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %56, i32 0, i32 0
  %58 = call i32 @oidcpy(i32* %55, i32* %57)
  ret void
}

declare dso_local i32 @oidcpy(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
