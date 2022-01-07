; ModuleID = '/home/carl/AnghaBench/git/extr_read-cache.c_fill_stat_data.c'
source_filename = "/home/carl/AnghaBench/git/extr_read-cache.c_fill_stat_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat_data = type { i32, i32, i32, i32, i32, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.stat = type { i32, i32, i32, i32, i32, i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fill_stat_data(%struct.stat_data* %0, %struct.stat* %1) #0 {
  %3 = alloca %struct.stat_data*, align 8
  %4 = alloca %struct.stat*, align 8
  store %struct.stat_data* %0, %struct.stat_data** %3, align 8
  store %struct.stat* %1, %struct.stat** %4, align 8
  %5 = load %struct.stat*, %struct.stat** %4, align 8
  %6 = getelementptr inbounds %struct.stat, %struct.stat* %5, i32 0, i32 6
  %7 = load i64, i64* %6, align 8
  %8 = trunc i64 %7 to i32
  %9 = load %struct.stat_data*, %struct.stat_data** %3, align 8
  %10 = getelementptr inbounds %struct.stat_data, %struct.stat_data* %9, i32 0, i32 6
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  store i32 %8, i32* %11, align 4
  %12 = load %struct.stat*, %struct.stat** %4, align 8
  %13 = getelementptr inbounds %struct.stat, %struct.stat* %12, i32 0, i32 5
  %14 = load i64, i64* %13, align 8
  %15 = trunc i64 %14 to i32
  %16 = load %struct.stat_data*, %struct.stat_data** %3, align 8
  %17 = getelementptr inbounds %struct.stat_data, %struct.stat_data* %16, i32 0, i32 5
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  store i32 %15, i32* %18, align 4
  %19 = load %struct.stat*, %struct.stat** %4, align 8
  %20 = call i32 @ST_CTIME_NSEC(%struct.stat* byval(%struct.stat) align 8 %19)
  %21 = load %struct.stat_data*, %struct.stat_data** %3, align 8
  %22 = getelementptr inbounds %struct.stat_data, %struct.stat_data* %21, i32 0, i32 6
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 1
  store i32 %20, i32* %23, align 4
  %24 = load %struct.stat*, %struct.stat** %4, align 8
  %25 = call i32 @ST_MTIME_NSEC(%struct.stat* byval(%struct.stat) align 8 %24)
  %26 = load %struct.stat_data*, %struct.stat_data** %3, align 8
  %27 = getelementptr inbounds %struct.stat_data, %struct.stat_data* %26, i32 0, i32 5
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 1
  store i32 %25, i32* %28, align 4
  %29 = load %struct.stat*, %struct.stat** %4, align 8
  %30 = getelementptr inbounds %struct.stat, %struct.stat* %29, i32 0, i32 4
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.stat_data*, %struct.stat_data** %3, align 8
  %33 = getelementptr inbounds %struct.stat_data, %struct.stat_data* %32, i32 0, i32 4
  store i32 %31, i32* %33, align 4
  %34 = load %struct.stat*, %struct.stat** %4, align 8
  %35 = getelementptr inbounds %struct.stat, %struct.stat* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.stat_data*, %struct.stat_data** %3, align 8
  %38 = getelementptr inbounds %struct.stat_data, %struct.stat_data* %37, i32 0, i32 3
  store i32 %36, i32* %38, align 4
  %39 = load %struct.stat*, %struct.stat** %4, align 8
  %40 = getelementptr inbounds %struct.stat, %struct.stat* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.stat_data*, %struct.stat_data** %3, align 8
  %43 = getelementptr inbounds %struct.stat_data, %struct.stat_data* %42, i32 0, i32 2
  store i32 %41, i32* %43, align 4
  %44 = load %struct.stat*, %struct.stat** %4, align 8
  %45 = getelementptr inbounds %struct.stat, %struct.stat* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.stat_data*, %struct.stat_data** %3, align 8
  %48 = getelementptr inbounds %struct.stat_data, %struct.stat_data* %47, i32 0, i32 1
  store i32 %46, i32* %48, align 4
  %49 = load %struct.stat*, %struct.stat** %4, align 8
  %50 = getelementptr inbounds %struct.stat, %struct.stat* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.stat_data*, %struct.stat_data** %3, align 8
  %53 = getelementptr inbounds %struct.stat_data, %struct.stat_data* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 4
  ret void
}

declare dso_local i32 @ST_CTIME_NSEC(%struct.stat* byval(%struct.stat) align 8) #1

declare dso_local i32 @ST_MTIME_NSEC(%struct.stat* byval(%struct.stat) align 8) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
