; ModuleID = '/home/carl/AnghaBench/git/extr_diff.c_diff_flush_stat.c'
source_filename = "/home/carl/AnghaBench/git/extr_diff.c_diff_flush_stat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.diff_filepair = type { %struct.TYPE_2__*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.diff_options = type { i32 }
%struct.diffstat_t = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.diff_filepair*, %struct.diff_options*, %struct.diffstat_t*)* @diff_flush_stat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @diff_flush_stat(%struct.diff_filepair* %0, %struct.diff_options* %1, %struct.diffstat_t* %2) #0 {
  %4 = alloca %struct.diff_filepair*, align 8
  %5 = alloca %struct.diff_options*, align 8
  %6 = alloca %struct.diffstat_t*, align 8
  store %struct.diff_filepair* %0, %struct.diff_filepair** %4, align 8
  store %struct.diff_options* %1, %struct.diff_options** %5, align 8
  store %struct.diffstat_t* %2, %struct.diffstat_t** %6, align 8
  %7 = load %struct.diff_filepair*, %struct.diff_filepair** %4, align 8
  %8 = call i64 @diff_unmodified_pair(%struct.diff_filepair* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %3
  br label %45

11:                                               ; preds = %3
  %12 = load %struct.diff_filepair*, %struct.diff_filepair** %4, align 8
  %13 = getelementptr inbounds %struct.diff_filepair, %struct.diff_filepair* %12, i32 0, i32 1
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = call i64 @DIFF_FILE_VALID(%struct.TYPE_2__* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %25

17:                                               ; preds = %11
  %18 = load %struct.diff_filepair*, %struct.diff_filepair** %4, align 8
  %19 = getelementptr inbounds %struct.diff_filepair, %struct.diff_filepair* %18, i32 0, i32 1
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i64 @S_ISDIR(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %39, label %25

25:                                               ; preds = %17, %11
  %26 = load %struct.diff_filepair*, %struct.diff_filepair** %4, align 8
  %27 = getelementptr inbounds %struct.diff_filepair, %struct.diff_filepair* %26, i32 0, i32 0
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = call i64 @DIFF_FILE_VALID(%struct.TYPE_2__* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %40

31:                                               ; preds = %25
  %32 = load %struct.diff_filepair*, %struct.diff_filepair** %4, align 8
  %33 = getelementptr inbounds %struct.diff_filepair, %struct.diff_filepair* %32, i32 0, i32 0
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i64 @S_ISDIR(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %31, %17
  br label %45

40:                                               ; preds = %31, %25
  %41 = load %struct.diff_filepair*, %struct.diff_filepair** %4, align 8
  %42 = load %struct.diff_options*, %struct.diff_options** %5, align 8
  %43 = load %struct.diffstat_t*, %struct.diffstat_t** %6, align 8
  %44 = call i32 @run_diffstat(%struct.diff_filepair* %41, %struct.diff_options* %42, %struct.diffstat_t* %43)
  br label %45

45:                                               ; preds = %40, %39, %10
  ret void
}

declare dso_local i64 @diff_unmodified_pair(%struct.diff_filepair*) #1

declare dso_local i64 @DIFF_FILE_VALID(%struct.TYPE_2__*) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i32 @run_diffstat(%struct.diff_filepair*, %struct.diff_options*, %struct.diffstat_t*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
