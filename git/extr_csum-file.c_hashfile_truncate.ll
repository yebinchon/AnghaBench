; ModuleID = '/home/carl/AnghaBench/git/extr_csum-file.c_hashfile_truncate.c'
source_filename = "/home/carl/AnghaBench/git/extr_csum-file.c_hashfile_truncate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hashfile = type { i64, i32, i64, i32 }
%struct.hashfile_checkpoint = type { i64, i32 }

@SEEK_SET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hashfile_truncate(%struct.hashfile* %0, %struct.hashfile_checkpoint* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hashfile*, align 8
  %5 = alloca %struct.hashfile_checkpoint*, align 8
  %6 = alloca i64, align 8
  store %struct.hashfile* %0, %struct.hashfile** %4, align 8
  store %struct.hashfile_checkpoint* %1, %struct.hashfile_checkpoint** %5, align 8
  %7 = load %struct.hashfile_checkpoint*, %struct.hashfile_checkpoint** %5, align 8
  %8 = getelementptr inbounds %struct.hashfile_checkpoint, %struct.hashfile_checkpoint* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  store i64 %9, i64* %6, align 8
  %10 = load %struct.hashfile*, %struct.hashfile** %4, align 8
  %11 = getelementptr inbounds %struct.hashfile, %struct.hashfile* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 8
  %13 = load i64, i64* %6, align 8
  %14 = call i64 @ftruncate(i32 %12, i64 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %25, label %16

16:                                               ; preds = %2
  %17 = load %struct.hashfile*, %struct.hashfile** %4, align 8
  %18 = getelementptr inbounds %struct.hashfile, %struct.hashfile* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 8
  %20 = load i64, i64* %6, align 8
  %21 = load i32, i32* @SEEK_SET, align 4
  %22 = call i64 @lseek(i32 %19, i64 %20, i32 %21)
  %23 = load i64, i64* %6, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %16, %2
  store i32 -1, i32* %3, align 4
  br label %37

26:                                               ; preds = %16
  %27 = load i64, i64* %6, align 8
  %28 = load %struct.hashfile*, %struct.hashfile** %4, align 8
  %29 = getelementptr inbounds %struct.hashfile, %struct.hashfile* %28, i32 0, i32 2
  store i64 %27, i64* %29, align 8
  %30 = load %struct.hashfile_checkpoint*, %struct.hashfile_checkpoint** %5, align 8
  %31 = getelementptr inbounds %struct.hashfile_checkpoint, %struct.hashfile_checkpoint* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.hashfile*, %struct.hashfile** %4, align 8
  %34 = getelementptr inbounds %struct.hashfile, %struct.hashfile* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 8
  %35 = load %struct.hashfile*, %struct.hashfile** %4, align 8
  %36 = getelementptr inbounds %struct.hashfile, %struct.hashfile* %35, i32 0, i32 0
  store i64 0, i64* %36, align 8
  store i32 0, i32* %3, align 4
  br label %37

37:                                               ; preds = %26, %25
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

declare dso_local i64 @ftruncate(i32, i64) #1

declare dso_local i64 @lseek(i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
