; ModuleID = '/home/carl/AnghaBench/git/extr_line-log.c_free_diffqueues.c'
source_filename = "/home/carl/AnghaBench/git/extr_line-log.c_free_diffqueues.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.diff_queue_struct = type { i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.diff_queue_struct*)* @free_diffqueues to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_diffqueues(i32 %0, %struct.diff_queue_struct* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.diff_queue_struct*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.diff_queue_struct* %1, %struct.diff_queue_struct** %4, align 8
  store i32 0, i32* %5, align 4
  br label %7

7:                                                ; preds = %37, %2
  %8 = load i32, i32* %5, align 4
  %9 = load i32, i32* %3, align 4
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %40

11:                                               ; preds = %7
  store i32 0, i32* %6, align 4
  br label %12

12:                                               ; preds = %33, %11
  %13 = load i32, i32* %6, align 4
  %14 = load %struct.diff_queue_struct*, %struct.diff_queue_struct** %4, align 8
  %15 = load i32, i32* %5, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.diff_queue_struct, %struct.diff_queue_struct* %14, i64 %16
  %18 = getelementptr inbounds %struct.diff_queue_struct, %struct.diff_queue_struct* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp slt i32 %13, %19
  br i1 %20, label %21, label %36

21:                                               ; preds = %12
  %22 = load %struct.diff_queue_struct*, %struct.diff_queue_struct** %4, align 8
  %23 = load i32, i32* %5, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.diff_queue_struct, %struct.diff_queue_struct* %22, i64 %24
  %26 = getelementptr inbounds %struct.diff_queue_struct, %struct.diff_queue_struct* %25, i32 0, i32 1
  %27 = load i32*, i32** %26, align 8
  %28 = load i32, i32* %6, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @diff_free_filepair(i32 %31)
  br label %33

33:                                               ; preds = %21
  %34 = load i32, i32* %6, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %6, align 4
  br label %12

36:                                               ; preds = %12
  br label %37

37:                                               ; preds = %36
  %38 = load i32, i32* %5, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %5, align 4
  br label %7

40:                                               ; preds = %7
  %41 = load %struct.diff_queue_struct*, %struct.diff_queue_struct** %4, align 8
  %42 = call i32 @free(%struct.diff_queue_struct* %41)
  ret void
}

declare dso_local i32 @diff_free_filepair(i32) #1

declare dso_local i32 @free(%struct.diff_queue_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
