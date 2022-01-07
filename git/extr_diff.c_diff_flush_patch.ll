; ModuleID = '/home/carl/AnghaBench/git/extr_diff.c_diff_flush_patch.c'
source_filename = "/home/carl/AnghaBench/git/extr_diff.c_diff_flush_patch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.diff_filepair = type { %struct.TYPE_2__*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.diff_options = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.diff_filepair*, %struct.diff_options*)* @diff_flush_patch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @diff_flush_patch(%struct.diff_filepair* %0, %struct.diff_options* %1) #0 {
  %3 = alloca %struct.diff_filepair*, align 8
  %4 = alloca %struct.diff_options*, align 8
  store %struct.diff_filepair* %0, %struct.diff_filepair** %3, align 8
  store %struct.diff_options* %1, %struct.diff_options** %4, align 8
  %5 = load %struct.diff_filepair*, %struct.diff_filepair** %3, align 8
  %6 = call i64 @diff_unmodified_pair(%struct.diff_filepair* %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  br label %42

9:                                                ; preds = %2
  %10 = load %struct.diff_filepair*, %struct.diff_filepair** %3, align 8
  %11 = getelementptr inbounds %struct.diff_filepair, %struct.diff_filepair* %10, i32 0, i32 1
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = call i64 @DIFF_FILE_VALID(%struct.TYPE_2__* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %23

15:                                               ; preds = %9
  %16 = load %struct.diff_filepair*, %struct.diff_filepair** %3, align 8
  %17 = getelementptr inbounds %struct.diff_filepair, %struct.diff_filepair* %16, i32 0, i32 1
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i64 @S_ISDIR(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %37, label %23

23:                                               ; preds = %15, %9
  %24 = load %struct.diff_filepair*, %struct.diff_filepair** %3, align 8
  %25 = getelementptr inbounds %struct.diff_filepair, %struct.diff_filepair* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = call i64 @DIFF_FILE_VALID(%struct.TYPE_2__* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %38

29:                                               ; preds = %23
  %30 = load %struct.diff_filepair*, %struct.diff_filepair** %3, align 8
  %31 = getelementptr inbounds %struct.diff_filepair, %struct.diff_filepair* %30, i32 0, i32 0
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i64 @S_ISDIR(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %29, %15
  br label %42

38:                                               ; preds = %29, %23
  %39 = load %struct.diff_filepair*, %struct.diff_filepair** %3, align 8
  %40 = load %struct.diff_options*, %struct.diff_options** %4, align 8
  %41 = call i32 @run_diff(%struct.diff_filepair* %39, %struct.diff_options* %40)
  br label %42

42:                                               ; preds = %38, %37, %8
  ret void
}

declare dso_local i64 @diff_unmodified_pair(%struct.diff_filepair*) #1

declare dso_local i64 @DIFF_FILE_VALID(%struct.TYPE_2__*) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i32 @run_diff(%struct.diff_filepair*, %struct.diff_options*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
