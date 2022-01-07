; ModuleID = '/home/carl/AnghaBench/git/extr_diff.c_fill_mmfile.c'
source_filename = "/home/carl/AnghaBench/git/extr_diff.c_fill_mmfile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.repository = type { i32 }
%struct.TYPE_3__ = type { i8*, i64 }
%struct.diff_filespec = type { i8*, i64 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.repository*, %struct.TYPE_3__*, %struct.diff_filespec*)* @fill_mmfile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fill_mmfile(%struct.repository* %0, %struct.TYPE_3__* %1, %struct.diff_filespec* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.repository*, align 8
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca %struct.diff_filespec*, align 8
  store %struct.repository* %0, %struct.repository** %5, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %6, align 8
  store %struct.diff_filespec* %2, %struct.diff_filespec** %7, align 8
  %8 = load %struct.diff_filespec*, %struct.diff_filespec** %7, align 8
  %9 = call i32 @DIFF_FILE_VALID(%struct.diff_filespec* %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %16, label %11

11:                                               ; preds = %3
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %13, align 8
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 1
  store i64 0, i64* %15, align 8
  store i32 0, i32* %4, align 4
  br label %34

16:                                               ; preds = %3
  %17 = load %struct.repository*, %struct.repository** %5, align 8
  %18 = load %struct.diff_filespec*, %struct.diff_filespec** %7, align 8
  %19 = call i64 @diff_populate_filespec(%struct.repository* %17, %struct.diff_filespec* %18, i32 0)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %16
  store i32 -1, i32* %4, align 4
  br label %34

22:                                               ; preds = %16
  br label %23

23:                                               ; preds = %22
  %24 = load %struct.diff_filespec*, %struct.diff_filespec** %7, align 8
  %25 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %24, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  store i8* %26, i8** %28, align 8
  %29 = load %struct.diff_filespec*, %struct.diff_filespec** %7, align 8
  %30 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 1
  store i64 %31, i64* %33, align 8
  store i32 0, i32* %4, align 4
  br label %34

34:                                               ; preds = %23, %21, %11
  %35 = load i32, i32* %4, align 4
  ret i32 %35
}

declare dso_local i32 @DIFF_FILE_VALID(%struct.diff_filespec*) #1

declare dso_local i64 @diff_populate_filespec(%struct.repository*, %struct.diff_filespec*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
