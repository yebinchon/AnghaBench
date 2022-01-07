; ModuleID = '/home/carl/AnghaBench/ish/kernel/extr_fs.c_sys_fchown32.c'
source_filename = "/home/carl/AnghaBench/ish/kernel/extr_fs.c_sys_fchown32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fd = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.fd*, i32)* }

@_EBADF = common dso_local global i32 0, align 4
@uid = common dso_local global i32 0, align 4
@gid = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sys_fchown32(i32 %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.fd*, align 8
  %9 = alloca i32, align 4
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
  %15 = load i32, i32* @_EBADF, align 4
  store i32 %15, i32* %4, align 4
  br label %59

16:                                               ; preds = %3
  %17 = load i64, i64* %6, align 8
  %18 = icmp ne i64 %17, -1
  br i1 %18, label %19, label %37

19:                                               ; preds = %16
  %20 = load %struct.fd*, %struct.fd** %8, align 8
  %21 = getelementptr inbounds %struct.fd, %struct.fd* %20, i32 0, i32 0
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32 (%struct.fd*, i32)*, i32 (%struct.fd*, i32)** %25, align 8
  %27 = load %struct.fd*, %struct.fd** %8, align 8
  %28 = load i32, i32* @uid, align 4
  %29 = load i64, i64* %6, align 8
  %30 = call i32 @make_attr(i32 %28, i64 %29)
  %31 = call i32 %26(%struct.fd* %27, i32 %30)
  store i32 %31, i32* %9, align 4
  %32 = load i32, i32* %9, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %19
  %35 = load i32, i32* %9, align 4
  store i32 %35, i32* %4, align 4
  br label %59

36:                                               ; preds = %19
  br label %37

37:                                               ; preds = %36, %16
  %38 = load i64, i64* %7, align 8
  %39 = icmp ne i64 %38, -1
  br i1 %39, label %40, label %58

40:                                               ; preds = %37
  %41 = load %struct.fd*, %struct.fd** %8, align 8
  %42 = getelementptr inbounds %struct.fd, %struct.fd* %41, i32 0, i32 0
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load i32 (%struct.fd*, i32)*, i32 (%struct.fd*, i32)** %46, align 8
  %48 = load %struct.fd*, %struct.fd** %8, align 8
  %49 = load i32, i32* @gid, align 4
  %50 = load i64, i64* %7, align 8
  %51 = call i32 @make_attr(i32 %49, i64 %50)
  %52 = call i32 %47(%struct.fd* %48, i32 %51)
  store i32 %52, i32* %9, align 4
  %53 = load i32, i32* %9, align 4
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %40
  %56 = load i32, i32* %9, align 4
  store i32 %56, i32* %4, align 4
  br label %59

57:                                               ; preds = %40
  br label %58

58:                                               ; preds = %57, %37
  store i32 0, i32* %4, align 4
  br label %59

59:                                               ; preds = %58, %55, %34, %14
  %60 = load i32, i32* %4, align 4
  ret i32 %60
}

declare dso_local %struct.fd* @f_get(i32) #1

declare dso_local i32 @make_attr(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
