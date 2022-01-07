; ModuleID = '/home/carl/AnghaBench/libgit2/tests/checkout/extr_checkout_helpers.c_tick_index.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/checkout/extr_checkout_helpers.c_tick_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { %struct.timespec }
%struct.timespec = type { i32, i64 }
%struct.p_timeval = type { i32, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tick_index(%struct.TYPE_7__* %0) #0 {
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca %struct.timespec, align 8
  %4 = alloca [2 x %struct.p_timeval], align 16
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %2, align 8
  %5 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 8
  %8 = call i32 @cl_assert(i32 %7)
  %9 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %10 = call i32 @git_index_path(%struct.TYPE_7__* %9)
  %11 = call i32 @cl_assert(i32 %10)
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %13 = call i32 @git_index_read(%struct.TYPE_7__* %12, i32 1)
  %14 = call i32 @cl_git_pass(i32 %13)
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = bitcast %struct.timespec* %3 to i8*
  %19 = bitcast %struct.timespec* %17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %18, i8* align 8 %19, i64 16, i1 false)
  %20 = getelementptr inbounds %struct.timespec, %struct.timespec* %3, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = getelementptr inbounds [2 x %struct.p_timeval], [2 x %struct.p_timeval]* %4, i64 0, i64 0
  %23 = getelementptr inbounds %struct.p_timeval, %struct.p_timeval* %22, i32 0, i32 1
  store i64 %21, i64* %23, align 8
  %24 = getelementptr inbounds %struct.timespec, %struct.timespec* %3, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = sdiv i32 %25, 1000
  %27 = getelementptr inbounds [2 x %struct.p_timeval], [2 x %struct.p_timeval]* %4, i64 0, i64 0
  %28 = getelementptr inbounds %struct.p_timeval, %struct.p_timeval* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 16
  %29 = getelementptr inbounds %struct.timespec, %struct.timespec* %3, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = add nsw i64 %30, 5
  %32 = getelementptr inbounds [2 x %struct.p_timeval], [2 x %struct.p_timeval]* %4, i64 0, i64 1
  %33 = getelementptr inbounds %struct.p_timeval, %struct.p_timeval* %32, i32 0, i32 1
  store i64 %31, i64* %33, align 8
  %34 = getelementptr inbounds %struct.timespec, %struct.timespec* %3, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = sdiv i32 %35, 1000
  %37 = getelementptr inbounds [2 x %struct.p_timeval], [2 x %struct.p_timeval]* %4, i64 0, i64 1
  %38 = getelementptr inbounds %struct.p_timeval, %struct.p_timeval* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 16
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %40 = call i32 @git_index_path(%struct.TYPE_7__* %39)
  %41 = getelementptr inbounds [2 x %struct.p_timeval], [2 x %struct.p_timeval]* %4, i64 0, i64 0
  %42 = call i32 @p_utimes(i32 %40, %struct.p_timeval* %41)
  %43 = call i32 @cl_git_pass(i32 %42)
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %45 = call i32 @git_index_read(%struct.TYPE_7__* %44, i32 1)
  %46 = call i32 @cl_git_pass(i32 %45)
  ret void
}

declare dso_local i32 @cl_assert(i32) #1

declare dso_local i32 @git_index_path(%struct.TYPE_7__*) #1

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_index_read(%struct.TYPE_7__*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @p_utimes(i32, %struct.p_timeval*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
