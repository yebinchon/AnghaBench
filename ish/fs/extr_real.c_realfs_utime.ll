; ModuleID = '/home/carl/AnghaBench/ish/fs/extr_real.c_realfs_utime.c'
source_filename = "/home/carl/AnghaBench/ish/fs/extr_real.c_realfs_utime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mount = type { i32 }
%struct.timespec = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @realfs_utime(%struct.mount* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.timespec, align 4
  %7 = alloca %struct.timespec, align 4
  %8 = alloca %struct.mount*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca [2 x %struct.timespec], align 4
  %11 = alloca i32, align 4
  %12 = getelementptr inbounds %struct.timespec, %struct.timespec* %6, i32 0, i32 0
  store i32 %2, i32* %12, align 4
  %13 = getelementptr inbounds %struct.timespec, %struct.timespec* %7, i32 0, i32 0
  store i32 %3, i32* %13, align 4
  store %struct.mount* %0, %struct.mount** %8, align 8
  store i8* %1, i8** %9, align 8
  %14 = getelementptr inbounds [2 x %struct.timespec], [2 x %struct.timespec]* %10, i64 0, i64 0
  %15 = bitcast %struct.timespec* %14 to i8*
  %16 = bitcast %struct.timespec* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %15, i8* align 4 %16, i64 4, i1 false)
  %17 = getelementptr inbounds %struct.timespec, %struct.timespec* %14, i64 1
  %18 = bitcast %struct.timespec* %17 to i8*
  %19 = bitcast %struct.timespec* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %18, i8* align 4 %19, i64 4, i1 false)
  %20 = load %struct.mount*, %struct.mount** %8, align 8
  %21 = getelementptr inbounds %struct.mount, %struct.mount* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i8*, i8** %9, align 8
  %24 = call i32 @fix_path(i8* %23)
  %25 = getelementptr inbounds [2 x %struct.timespec], [2 x %struct.timespec]* %10, i64 0, i64 0
  %26 = call i32 @utimensat(i32 %22, i32 %24, %struct.timespec* %25, i32 0)
  store i32 %26, i32* %11, align 4
  %27 = load i32, i32* %11, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %4
  %30 = call i32 (...) @errno_map()
  store i32 %30, i32* %5, align 4
  br label %32

31:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %32

32:                                               ; preds = %31, %29
  %33 = load i32, i32* %5, align 4
  ret i32 %33
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @utimensat(i32, i32, %struct.timespec*, i32) #2

declare dso_local i32 @fix_path(i8*) #2

declare dso_local i32 @errno_map(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
