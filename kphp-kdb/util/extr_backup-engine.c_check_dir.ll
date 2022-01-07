; ModuleID = '/home/carl/AnghaBench/kphp-kdb/util/extr_backup-engine.c_check_dir.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/util/extr_backup-engine.c_check_dir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32, i32 }

@errno = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i64 0, align 8
@MAX_DIRNAME_LEN = common dso_local global i64 0, align 8
@ENOTDIR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.stat*, i32)* @check_dir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_dir(i8* %0, %struct.stat* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.stat*, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store %struct.stat* %1, %struct.stat** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load i8*, i8** %5, align 8
  %9 = load %struct.stat*, %struct.stat** %6, align 8
  %10 = call i64 @stat(i8* %8, %struct.stat* %9)
  %11 = icmp slt i64 %10, 0
  br i1 %11, label %12, label %32

12:                                               ; preds = %3
  %13 = load i64, i64* @errno, align 8
  %14 = load i64, i64* @ENOENT, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %19, label %16

16:                                               ; preds = %12
  %17 = load i32, i32* %7, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %16, %12
  store i32 -1, i32* %4, align 4
  br label %49

20:                                               ; preds = %16
  %21 = load i8*, i8** %5, align 8
  %22 = call i64 @mkdir(i8* %21, i32 488)
  %23 = icmp slt i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %20
  store i32 -1, i32* %4, align 4
  br label %49

25:                                               ; preds = %20
  %26 = load i8*, i8** %5, align 8
  %27 = load %struct.stat*, %struct.stat** %6, align 8
  %28 = call i64 @stat(i8* %26, %struct.stat* %27)
  %29 = icmp slt i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %25
  store i32 -1, i32* %4, align 4
  br label %49

31:                                               ; preds = %25
  br label %32

32:                                               ; preds = %31, %3
  %33 = load %struct.stat*, %struct.stat** %6, align 8
  %34 = getelementptr inbounds %struct.stat, %struct.stat* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @S_ISDIR(i32 %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %32
  %39 = load i8*, i8** %5, align 8
  %40 = call i64 @strlen(i8* %39)
  %41 = load i64, i64* @MAX_DIRNAME_LEN, align 8
  %42 = icmp sgt i64 %40, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %38, %32
  %44 = load i64, i64* @ENOTDIR, align 8
  store i64 %44, i64* @errno, align 8
  store i32 -1, i32* %4, align 4
  br label %49

45:                                               ; preds = %38
  %46 = load %struct.stat*, %struct.stat** %6, align 8
  %47 = getelementptr inbounds %struct.stat, %struct.stat* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  store i32 %48, i32* %4, align 4
  br label %49

49:                                               ; preds = %45, %43, %30, %24, %19
  %50 = load i32, i32* %4, align 4
  ret i32 %50
}

declare dso_local i64 @stat(i8*, %struct.stat*) #1

declare dso_local i64 @mkdir(i8*, i32) #1

declare dso_local i32 @S_ISDIR(i32) #1

declare dso_local i64 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
