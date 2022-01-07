; ModuleID = '/home/carl/AnghaBench/libgit2/src/win32/extr_posix_w32.c_futimes.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/win32/extr_posix_w32.c_futimes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.p_timeval = type { i32 }
%struct.TYPE_6__ = type { i32 }

@INVALID_HANDLE_VALUE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @p_futimes(i32 %0, %struct.p_timeval* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.p_timeval*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_6__, align 4
  %8 = alloca %struct.TYPE_6__, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.p_timeval* %1, %struct.p_timeval** %5, align 8
  %10 = bitcast %struct.TYPE_6__* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %10, i8 0, i64 4, i1 false)
  %11 = bitcast %struct.TYPE_6__* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %11, i8 0, i64 4, i1 false)
  %12 = load %struct.p_timeval*, %struct.p_timeval** %5, align 8
  %13 = icmp eq %struct.p_timeval* %12, null
  br i1 %13, label %14, label %18

14:                                               ; preds = %2
  %15 = call i32 @GetSystemTime(i32* %9)
  %16 = call i32 @SystemTimeToFileTime(i32* %9, %struct.TYPE_6__* %7)
  %17 = call i32 @SystemTimeToFileTime(i32* %9, %struct.TYPE_6__* %8)
  br label %29

18:                                               ; preds = %2
  %19 = load %struct.p_timeval*, %struct.p_timeval** %5, align 8
  %20 = getelementptr inbounds %struct.p_timeval, %struct.p_timeval* %19, i64 0
  %21 = getelementptr inbounds %struct.p_timeval, %struct.p_timeval* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @git_win32__timeval_to_filetime(%struct.TYPE_6__* %7, i32 %22)
  %24 = load %struct.p_timeval*, %struct.p_timeval** %5, align 8
  %25 = getelementptr inbounds %struct.p_timeval, %struct.p_timeval* %24, i64 1
  %26 = getelementptr inbounds %struct.p_timeval, %struct.p_timeval* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @git_win32__timeval_to_filetime(%struct.TYPE_6__* %8, i32 %27)
  br label %29

29:                                               ; preds = %18, %14
  %30 = load i32, i32* %4, align 4
  %31 = call i64 @_get_osfhandle(i32 %30)
  store i64 %31, i64* %6, align 8
  %32 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %29
  store i32 -1, i32* %3, align 4
  br label %41

35:                                               ; preds = %29
  %36 = load i64, i64* %6, align 8
  %37 = call i64 @SetFileTime(i64 %36, i32* null, %struct.TYPE_6__* %7, %struct.TYPE_6__* %8)
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %35
  store i32 -1, i32* %3, align 4
  br label %41

40:                                               ; preds = %35
  store i32 0, i32* %3, align 4
  br label %41

41:                                               ; preds = %40, %39, %34
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @GetSystemTime(i32*) #2

declare dso_local i32 @SystemTimeToFileTime(i32*, %struct.TYPE_6__*) #2

declare dso_local i32 @git_win32__timeval_to_filetime(%struct.TYPE_6__*, i32) #2

declare dso_local i64 @_get_osfhandle(i32) #2

declare dso_local i64 @SetFileTime(i64, i32*, %struct.TYPE_6__*, %struct.TYPE_6__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
