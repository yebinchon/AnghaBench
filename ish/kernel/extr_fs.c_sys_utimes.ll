; ModuleID = '/home/carl/AnghaBench/ish/kernel/extr_fs.c_sys_utimes.c'
source_filename = "/home/carl/AnghaBench/ish/kernel/extr_fs.c_sys_utimes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timespec = type { i32 }
%struct.timeval_ = type { i32 }

@_EFAULT = common dso_local global i32 0, align 4
@AT_FDCWD_ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sys_utimes(i64 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.timespec, align 4
  %7 = alloca %struct.timespec, align 4
  %8 = alloca %struct.timespec, align 4
  %9 = alloca [2 x %struct.timeval_], align 4
  %10 = alloca %struct.timespec, align 4
  %11 = alloca %struct.timespec, align 4
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  %12 = load i64, i64* %5, align 8
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %21

14:                                               ; preds = %2
  %15 = call i32 (...) @timespec_now()
  %16 = getelementptr inbounds %struct.timespec, %struct.timespec* %8, i32 0, i32 0
  store i32 %15, i32* %16, align 4
  %17 = bitcast %struct.timespec* %7 to i8*
  %18 = bitcast %struct.timespec* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %17, i8* align 4 %18, i64 4, i1 false)
  %19 = bitcast %struct.timespec* %6 to i8*
  %20 = bitcast %struct.timespec* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %19, i8* align 4 %20, i64 4, i1 false)
  br label %43

21:                                               ; preds = %2
  %22 = load i64, i64* %5, align 8
  %23 = getelementptr inbounds [2 x %struct.timeval_], [2 x %struct.timeval_]* %9, i64 0, i64 0
  %24 = call i64 @user_get(i64 %22, %struct.timeval_* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %21
  %27 = load i32, i32* @_EFAULT, align 4
  store i32 %27, i32* %3, align 4
  br label %51

28:                                               ; preds = %21
  %29 = getelementptr inbounds [2 x %struct.timeval_], [2 x %struct.timeval_]* %9, i64 0, i64 0
  %30 = getelementptr inbounds %struct.timeval_, %struct.timeval_* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @convert_timeval(i32 %31)
  %33 = getelementptr inbounds %struct.timespec, %struct.timespec* %10, i32 0, i32 0
  store i32 %32, i32* %33, align 4
  %34 = bitcast %struct.timespec* %6 to i8*
  %35 = bitcast %struct.timespec* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %34, i8* align 4 %35, i64 4, i1 false)
  %36 = getelementptr inbounds [2 x %struct.timeval_], [2 x %struct.timeval_]* %9, i64 0, i64 1
  %37 = getelementptr inbounds %struct.timeval_, %struct.timeval_* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @convert_timeval(i32 %38)
  %40 = getelementptr inbounds %struct.timespec, %struct.timespec* %11, i32 0, i32 0
  store i32 %39, i32* %40, align 4
  %41 = bitcast %struct.timespec* %7 to i8*
  %42 = bitcast %struct.timespec* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %41, i8* align 4 %42, i64 4, i1 false)
  br label %43

43:                                               ; preds = %28, %14
  %44 = load i32, i32* @AT_FDCWD_, align 4
  %45 = load i64, i64* %4, align 8
  %46 = getelementptr inbounds %struct.timespec, %struct.timespec* %6, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = getelementptr inbounds %struct.timespec, %struct.timespec* %7, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @sys_utime_common(i32 %44, i64 %45, i32 %47, i32 %49, i32 0)
  store i32 %50, i32* %3, align 4
  br label %51

51:                                               ; preds = %43, %26
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local i32 @timespec_now(...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @user_get(i64, %struct.timeval_*) #1

declare dso_local i32 @convert_timeval(i32) #1

declare dso_local i32 @sys_utime_common(i32, i64, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
