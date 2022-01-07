; ModuleID = '/home/carl/AnghaBench/ish/fs/extr_stat.c_sys_fstat64.c'
source_filename = "/home/carl/AnghaBench/ish/fs/extr_stat.c_sys_fstat64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fd = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.fd*, %struct.statbuf*)* }
%struct.statbuf = type { i32 }
%struct.newstat64 = type { i32 }

@.str = private unnamed_addr constant [18 x i8] c"fstat64(%d, 0x%x)\00", align 1
@_EBADF = common dso_local global i32 0, align 4
@_EFAULT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sys_fstat64(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.fd*, align 8
  %7 = alloca %struct.statbuf, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.newstat64, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* %5, align 4
  %12 = call i32 @STRACE(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %10, i32 %11)
  %13 = load i32, i32* %4, align 4
  %14 = call %struct.fd* @f_get(i32 %13)
  store %struct.fd* %14, %struct.fd** %6, align 8
  %15 = load %struct.fd*, %struct.fd** %6, align 8
  %16 = icmp eq %struct.fd* %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = load i32, i32* @_EBADF, align 4
  store i32 %18, i32* %3, align 4
  br label %47

19:                                               ; preds = %2
  %20 = bitcast %struct.statbuf* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %20, i8 0, i64 4, i1 false)
  %21 = load %struct.fd*, %struct.fd** %6, align 8
  %22 = getelementptr inbounds %struct.fd, %struct.fd* %21, i32 0, i32 0
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32 (%struct.fd*, %struct.statbuf*)*, i32 (%struct.fd*, %struct.statbuf*)** %26, align 8
  %28 = load %struct.fd*, %struct.fd** %6, align 8
  %29 = call i32 %27(%struct.fd* %28, %struct.statbuf* %7)
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* %8, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %19
  %33 = load i32, i32* %8, align 4
  store i32 %33, i32* %3, align 4
  br label %47

34:                                               ; preds = %19
  %35 = getelementptr inbounds %struct.statbuf, %struct.statbuf* %7, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @stat_convert_newstat64(i32 %36)
  %38 = getelementptr inbounds %struct.newstat64, %struct.newstat64* %9, i32 0, i32 0
  store i32 %37, i32* %38, align 4
  %39 = load i32, i32* %5, align 4
  %40 = getelementptr inbounds %struct.newstat64, %struct.newstat64* %9, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i64 @user_put(i32 %39, i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %34
  %45 = load i32, i32* @_EFAULT, align 4
  store i32 %45, i32* %3, align 4
  br label %47

46:                                               ; preds = %34
  store i32 0, i32* %3, align 4
  br label %47

47:                                               ; preds = %46, %44, %32, %17
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

declare dso_local i32 @STRACE(i8*, i32, i32) #1

declare dso_local %struct.fd* @f_get(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @stat_convert_newstat64(i32) #1

declare dso_local i64 @user_put(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
