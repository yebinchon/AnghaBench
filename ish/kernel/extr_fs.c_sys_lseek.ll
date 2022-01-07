; ModuleID = '/home/carl/AnghaBench/ish/kernel/extr_fs.c_sys_lseek.c'
source_filename = "/home/carl/AnghaBench/ish/kernel/extr_fs.c_sys_lseek.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fd = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 (%struct.fd*, i64, i64)* }

@_EBADF = common dso_local global i64 0, align 8
@_ESPIPE = common dso_local global i64 0, align 8
@_EOVERFLOW = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @sys_lseek(i32 %0, i64 %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.fd*, align 8
  %9 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load i32, i32* %5, align 4
  %11 = call %struct.fd* @f_get(i32 %10)
  store %struct.fd* %11, %struct.fd** %8, align 8
  %12 = load %struct.fd*, %struct.fd** %8, align 8
  %13 = icmp eq %struct.fd* %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %3
  %15 = load i64, i64* @_EBADF, align 8
  store i64 %15, i64* %4, align 8
  br label %48

16:                                               ; preds = %3
  %17 = load %struct.fd*, %struct.fd** %8, align 8
  %18 = getelementptr inbounds %struct.fd, %struct.fd* %17, i32 0, i32 1
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i64 (%struct.fd*, i64, i64)*, i64 (%struct.fd*, i64, i64)** %20, align 8
  %22 = icmp ne i64 (%struct.fd*, i64, i64)* %21, null
  br i1 %22, label %25, label %23

23:                                               ; preds = %16
  %24 = load i64, i64* @_ESPIPE, align 8
  store i64 %24, i64* %4, align 8
  br label %48

25:                                               ; preds = %16
  %26 = load %struct.fd*, %struct.fd** %8, align 8
  %27 = getelementptr inbounds %struct.fd, %struct.fd* %26, i32 0, i32 0
  %28 = call i32 @lock(i32* %27)
  %29 = load %struct.fd*, %struct.fd** %8, align 8
  %30 = getelementptr inbounds %struct.fd, %struct.fd* %29, i32 0, i32 1
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i64 (%struct.fd*, i64, i64)*, i64 (%struct.fd*, i64, i64)** %32, align 8
  %34 = load %struct.fd*, %struct.fd** %8, align 8
  %35 = load i64, i64* %6, align 8
  %36 = load i64, i64* %7, align 8
  %37 = call i64 %33(%struct.fd* %34, i64 %35, i64 %36)
  store i64 %37, i64* %9, align 8
  %38 = load %struct.fd*, %struct.fd** %8, align 8
  %39 = getelementptr inbounds %struct.fd, %struct.fd* %38, i32 0, i32 0
  %40 = call i32 @unlock(i32* %39)
  %41 = load i64, i64* %9, align 8
  %42 = load i64, i64* %9, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %25
  %45 = load i64, i64* @_EOVERFLOW, align 8
  store i64 %45, i64* %4, align 8
  br label %48

46:                                               ; preds = %25
  %47 = load i64, i64* %9, align 8
  store i64 %47, i64* %4, align 8
  br label %48

48:                                               ; preds = %46, %44, %23, %14
  %49 = load i64, i64* %4, align 8
  ret i64 %49
}

declare dso_local %struct.fd* @f_get(i32) #1

declare dso_local i32 @lock(i32*) #1

declare dso_local i32 @unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
