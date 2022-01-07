; ModuleID = '/home/carl/AnghaBench/i3/src/extr_sd-daemon.c_sd_is_fifo.c'
source_filename = "/home/carl/AnghaBench/i3/src/extr_sd-daemon.c_sd_is_fifo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i64, i64, i32 }

@EINVAL = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@ENOTDIR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sd_is_fifo(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.stat, align 8
  %7 = alloca %struct.stat, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %8 = load i32, i32* %4, align 4
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = load i32, i32* @EINVAL, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %3, align 4
  br label %63

13:                                               ; preds = %2
  %14 = call i32 @memset(%struct.stat* %6, i32 0, i32 24)
  %15 = load i32, i32* %4, align 4
  %16 = call i64 @fstat(i32 %15, %struct.stat* %6)
  %17 = icmp slt i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %13
  %19 = load i32, i32* @errno, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %63

21:                                               ; preds = %13
  %22 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @S_ISFIFO(i32 %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %21
  store i32 0, i32* %3, align 4
  br label %63

27:                                               ; preds = %21
  %28 = load i8*, i8** %5, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %30, label %62

30:                                               ; preds = %27
  %31 = call i32 @memset(%struct.stat* %7, i32 0, i32 24)
  %32 = load i8*, i8** %5, align 8
  %33 = call i64 @stat(i8* %32, %struct.stat* %7)
  %34 = icmp slt i64 %33, 0
  br i1 %34, label %35, label %47

35:                                               ; preds = %30
  %36 = load i32, i32* @errno, align 4
  %37 = load i32, i32* @ENOENT, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %43, label %39

39:                                               ; preds = %35
  %40 = load i32, i32* @errno, align 4
  %41 = load i32, i32* @ENOTDIR, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %39, %35
  store i32 0, i32* %3, align 4
  br label %63

44:                                               ; preds = %39
  %45 = load i32, i32* @errno, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %3, align 4
  br label %63

47:                                               ; preds = %30
  %48 = getelementptr inbounds %struct.stat, %struct.stat* %7, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp eq i64 %49, %51
  br i1 %52, label %53, label %59

53:                                               ; preds = %47
  %54 = getelementptr inbounds %struct.stat, %struct.stat* %7, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = icmp eq i64 %55, %57
  br label %59

59:                                               ; preds = %53, %47
  %60 = phi i1 [ false, %47 ], [ %58, %53 ]
  %61 = zext i1 %60 to i32
  store i32 %61, i32* %3, align 4
  br label %63

62:                                               ; preds = %27
  store i32 1, i32* %3, align 4
  br label %63

63:                                               ; preds = %62, %59, %44, %43, %26, %18, %10
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

declare dso_local i32 @memset(%struct.stat*, i32, i32) #1

declare dso_local i64 @fstat(i32, %struct.stat*) #1

declare dso_local i32 @S_ISFIFO(i32) #1

declare dso_local i64 @stat(i8*, %struct.stat*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
