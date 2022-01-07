; ModuleID = '/home/carl/AnghaBench/ish/fs/extr_real.c_realfs_statfs.c'
source_filename = "/home/carl/AnghaBench/ish/fs/extr_real.c_realfs_statfs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mount = type { i32 }
%struct.statfsbuf = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.statvfs = type { i32, i32, i32, i32, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @realfs_statfs(%struct.mount* %0, %struct.statfsbuf* %1) #0 {
  %3 = alloca %struct.mount*, align 8
  %4 = alloca %struct.statfsbuf*, align 8
  %5 = alloca %struct.statvfs, align 4
  store %struct.mount* %0, %struct.mount** %3, align 8
  store %struct.statfsbuf* %1, %struct.statfsbuf** %4, align 8
  %6 = bitcast %struct.statvfs* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %6, i8 0, i64 32, i1 false)
  %7 = load %struct.mount*, %struct.mount** %3, align 8
  %8 = getelementptr inbounds %struct.mount, %struct.mount* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @fstatvfs(i32 %9, %struct.statvfs* %5)
  %11 = getelementptr inbounds %struct.statvfs, %struct.statvfs* %5, i32 0, i32 7
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.statfsbuf*, %struct.statfsbuf** %4, align 8
  %14 = getelementptr inbounds %struct.statfsbuf, %struct.statfsbuf* %13, i32 0, i32 7
  store i32 %12, i32* %14, align 4
  %15 = getelementptr inbounds %struct.statvfs, %struct.statvfs* %5, i32 0, i32 6
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.statfsbuf*, %struct.statfsbuf** %4, align 8
  %18 = getelementptr inbounds %struct.statfsbuf, %struct.statfsbuf* %17, i32 0, i32 6
  store i32 %16, i32* %18, align 4
  %19 = getelementptr inbounds %struct.statvfs, %struct.statvfs* %5, i32 0, i32 5
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.statfsbuf*, %struct.statfsbuf** %4, align 8
  %22 = getelementptr inbounds %struct.statfsbuf, %struct.statfsbuf* %21, i32 0, i32 5
  store i32 %20, i32* %22, align 4
  %23 = getelementptr inbounds %struct.statvfs, %struct.statvfs* %5, i32 0, i32 4
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.statfsbuf*, %struct.statfsbuf** %4, align 8
  %26 = getelementptr inbounds %struct.statfsbuf, %struct.statfsbuf* %25, i32 0, i32 4
  store i32 %24, i32* %26, align 4
  %27 = getelementptr inbounds %struct.statvfs, %struct.statvfs* %5, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.statfsbuf*, %struct.statfsbuf** %4, align 8
  %30 = getelementptr inbounds %struct.statfsbuf, %struct.statfsbuf* %29, i32 0, i32 3
  store i32 %28, i32* %30, align 4
  %31 = getelementptr inbounds %struct.statvfs, %struct.statvfs* %5, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.statfsbuf*, %struct.statfsbuf** %4, align 8
  %34 = getelementptr inbounds %struct.statfsbuf, %struct.statfsbuf* %33, i32 0, i32 2
  store i32 %32, i32* %34, align 4
  %35 = getelementptr inbounds %struct.statvfs, %struct.statvfs* %5, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.statfsbuf*, %struct.statfsbuf** %4, align 8
  %38 = getelementptr inbounds %struct.statfsbuf, %struct.statfsbuf* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 4
  %39 = getelementptr inbounds %struct.statvfs, %struct.statvfs* %5, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.statfsbuf*, %struct.statfsbuf** %4, align 8
  %42 = getelementptr inbounds %struct.statfsbuf, %struct.statfsbuf* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 4
  ret i32 0
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @fstatvfs(i32, %struct.statvfs*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
