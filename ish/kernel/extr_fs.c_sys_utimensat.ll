; ModuleID = '/home/carl/AnghaBench/ish/kernel/extr_fs.c_sys_utimensat.c'
source_filename = "/home/carl/AnghaBench/ish/kernel/extr_fs.c_sys_utimensat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timespec = type { i32 }
%struct.timespec_ = type { i32 }

@_EFAULT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sys_utimensat(i32 %0, i64 %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.timespec, align 4
  %11 = alloca %struct.timespec, align 4
  %12 = alloca %struct.timespec, align 4
  %13 = alloca [2 x %struct.timespec_], align 4
  %14 = alloca %struct.timespec, align 4
  %15 = alloca %struct.timespec, align 4
  store i32 %0, i32* %6, align 4
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %16 = load i64, i64* %8, align 8
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %25

18:                                               ; preds = %4
  %19 = call i32 (...) @timespec_now()
  %20 = getelementptr inbounds %struct.timespec, %struct.timespec* %12, i32 0, i32 0
  store i32 %19, i32* %20, align 4
  %21 = bitcast %struct.timespec* %11 to i8*
  %22 = bitcast %struct.timespec* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %21, i8* align 4 %22, i64 4, i1 false)
  %23 = bitcast %struct.timespec* %10 to i8*
  %24 = bitcast %struct.timespec* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %23, i8* align 4 %24, i64 4, i1 false)
  br label %47

25:                                               ; preds = %4
  %26 = load i64, i64* %8, align 8
  %27 = getelementptr inbounds [2 x %struct.timespec_], [2 x %struct.timespec_]* %13, i64 0, i64 0
  %28 = call i64 @user_get(i64 %26, %struct.timespec_* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %25
  %31 = load i32, i32* @_EFAULT, align 4
  store i32 %31, i32* %5, align 4
  br label %56

32:                                               ; preds = %25
  %33 = getelementptr inbounds [2 x %struct.timespec_], [2 x %struct.timespec_]* %13, i64 0, i64 0
  %34 = getelementptr inbounds %struct.timespec_, %struct.timespec_* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @convert_timespec(i32 %35)
  %37 = getelementptr inbounds %struct.timespec, %struct.timespec* %14, i32 0, i32 0
  store i32 %36, i32* %37, align 4
  %38 = bitcast %struct.timespec* %10 to i8*
  %39 = bitcast %struct.timespec* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %38, i8* align 4 %39, i64 4, i1 false)
  %40 = getelementptr inbounds [2 x %struct.timespec_], [2 x %struct.timespec_]* %13, i64 0, i64 1
  %41 = getelementptr inbounds %struct.timespec_, %struct.timespec_* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @convert_timespec(i32 %42)
  %44 = getelementptr inbounds %struct.timespec, %struct.timespec* %15, i32 0, i32 0
  store i32 %43, i32* %44, align 4
  %45 = bitcast %struct.timespec* %11 to i8*
  %46 = bitcast %struct.timespec* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %45, i8* align 4 %46, i64 4, i1 false)
  br label %47

47:                                               ; preds = %32, %18
  %48 = load i32, i32* %6, align 4
  %49 = load i64, i64* %7, align 8
  %50 = load i32, i32* %9, align 4
  %51 = getelementptr inbounds %struct.timespec, %struct.timespec* %10, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = getelementptr inbounds %struct.timespec, %struct.timespec* %11, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @sys_utime_common(i32 %48, i64 %49, i32 %52, i32 %54, i32 %50)
  store i32 %55, i32* %5, align 4
  br label %56

56:                                               ; preds = %47, %30
  %57 = load i32, i32* %5, align 4
  ret i32 %57
}

declare dso_local i32 @timespec_now(...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @user_get(i64, %struct.timespec_*) #1

declare dso_local i32 @convert_timespec(i32) #1

declare dso_local i32 @sys_utime_common(i32, i64, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
