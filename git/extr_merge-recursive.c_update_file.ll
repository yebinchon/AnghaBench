; ModuleID = '/home/carl/AnghaBench/git/extr_merge-recursive.c_update_file.c'
source_filename = "/home/carl/AnghaBench/git/extr_merge-recursive.c_update_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.merge_options = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.diff_filespec = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.merge_options*, i32, %struct.diff_filespec*, i8*)* @update_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @update_file(%struct.merge_options* %0, i32 %1, %struct.diff_filespec* %2, i8* %3) #0 {
  %5 = alloca %struct.merge_options*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.diff_filespec*, align 8
  %8 = alloca i8*, align 8
  store %struct.merge_options* %0, %struct.merge_options** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.diff_filespec* %2, %struct.diff_filespec** %7, align 8
  store i8* %3, i8** %8, align 8
  %9 = load %struct.merge_options*, %struct.merge_options** %5, align 8
  %10 = load %struct.diff_filespec*, %struct.diff_filespec** %7, align 8
  %11 = load i8*, i8** %8, align 8
  %12 = load %struct.merge_options*, %struct.merge_options** %5, align 8
  %13 = getelementptr inbounds %struct.merge_options, %struct.merge_options* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %4
  %19 = load i32, i32* %6, align 4
  %20 = icmp ne i32 %19, 0
  br label %21

21:                                               ; preds = %18, %4
  %22 = phi i1 [ true, %4 ], [ %20, %18 ]
  %23 = zext i1 %22 to i32
  %24 = load %struct.merge_options*, %struct.merge_options** %5, align 8
  %25 = getelementptr inbounds %struct.merge_options, %struct.merge_options* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  %30 = xor i1 %29, true
  %31 = zext i1 %30 to i32
  %32 = call i32 @update_file_flags(%struct.merge_options* %9, %struct.diff_filespec* %10, i8* %11, i32 %23, i32 %31)
  ret i32 %32
}

declare dso_local i32 @update_file_flags(%struct.merge_options*, %struct.diff_filespec*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
