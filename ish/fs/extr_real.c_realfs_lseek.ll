; ModuleID = '/home/carl/AnghaBench/ish/fs/extr_real.c_realfs_lseek.c'
source_filename = "/home/carl/AnghaBench/ish/fs/extr_real.c_realfs_lseek.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fd = type { i32, i32* }

@LSEEK_SET = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4
@LSEEK_CUR = common dso_local global i32 0, align 4
@SEEK_CUR = common dso_local global i32 0, align 4
@LSEEK_END = common dso_local global i32 0, align 4
@SEEK_END = common dso_local global i32 0, align 4
@_EINVAL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @realfs_lseek(%struct.fd* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.fd*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.fd* %0, %struct.fd** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.fd*, %struct.fd** %5, align 8
  %10 = getelementptr inbounds %struct.fd, %struct.fd* %9, i32 0, i32 1
  %11 = load i32*, i32** %10, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %13, label %22

13:                                               ; preds = %3
  %14 = load i32, i32* %7, align 4
  %15 = load i32, i32* @LSEEK_SET, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %22

17:                                               ; preds = %13
  %18 = load %struct.fd*, %struct.fd** %5, align 8
  %19 = load i64, i64* %6, align 8
  %20 = call i32 @realfs_seekdir(%struct.fd* %18, i64 %19)
  %21 = load i64, i64* %6, align 8
  store i64 %21, i64* %4, align 8
  br label %57

22:                                               ; preds = %13, %3
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* @LSEEK_SET, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %22
  %27 = load i32, i32* @SEEK_SET, align 4
  store i32 %27, i32* %7, align 4
  br label %44

28:                                               ; preds = %22
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* @LSEEK_CUR, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %28
  %33 = load i32, i32* @SEEK_CUR, align 4
  store i32 %33, i32* %7, align 4
  br label %43

34:                                               ; preds = %28
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* @LSEEK_END, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %34
  %39 = load i32, i32* @SEEK_END, align 4
  store i32 %39, i32* %7, align 4
  br label %42

40:                                               ; preds = %34
  %41 = load i64, i64* @_EINVAL, align 8
  store i64 %41, i64* %4, align 8
  br label %57

42:                                               ; preds = %38
  br label %43

43:                                               ; preds = %42, %32
  br label %44

44:                                               ; preds = %43, %26
  %45 = load %struct.fd*, %struct.fd** %5, align 8
  %46 = getelementptr inbounds %struct.fd, %struct.fd* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i64, i64* %6, align 8
  %49 = load i32, i32* %7, align 4
  %50 = call i64 @lseek(i32 %47, i64 %48, i32 %49)
  store i64 %50, i64* %8, align 8
  %51 = load i64, i64* %8, align 8
  %52 = icmp slt i64 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %44
  %54 = call i64 (...) @errno_map()
  store i64 %54, i64* %4, align 8
  br label %57

55:                                               ; preds = %44
  %56 = load i64, i64* %8, align 8
  store i64 %56, i64* %4, align 8
  br label %57

57:                                               ; preds = %55, %53, %40, %17
  %58 = load i64, i64* %4, align 8
  ret i64 %58
}

declare dso_local i32 @realfs_seekdir(%struct.fd*, i64) #1

declare dso_local i64 @lseek(i32, i64, i32) #1

declare dso_local i64 @errno_map(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
