; ModuleID = '/home/carl/AnghaBench/git/extr_diff.c_diff_flush_patch_id.c'
source_filename = "/home/carl/AnghaBench/git/extr_diff.c_diff_flush_patch_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.diff_queue_struct = type { i32, i32* }
%struct.diff_options = type { i32 }
%struct.object_id = type { i32 }

@diff_queued_diff = common dso_local global %struct.diff_queue_struct zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @diff_flush_patch_id(%struct.diff_options* %0, %struct.object_id* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.diff_options*, align 8
  %6 = alloca %struct.object_id*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.diff_queue_struct*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.diff_options* %0, %struct.diff_options** %5, align 8
  store %struct.object_id* %1, %struct.object_id** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store %struct.diff_queue_struct* @diff_queued_diff, %struct.diff_queue_struct** %9, align 8
  %12 = load %struct.diff_options*, %struct.diff_options** %5, align 8
  %13 = load %struct.object_id*, %struct.object_id** %6, align 8
  %14 = load i32, i32* %7, align 4
  %15 = load i32, i32* %8, align 4
  %16 = call i32 @diff_get_patch_id(%struct.diff_options* %12, %struct.object_id* %13, i32 %14, i32 %15)
  store i32 %16, i32* %11, align 4
  store i32 0, i32* %10, align 4
  br label %17

17:                                               ; preds = %32, %4
  %18 = load i32, i32* %10, align 4
  %19 = load %struct.diff_queue_struct*, %struct.diff_queue_struct** %9, align 8
  %20 = getelementptr inbounds %struct.diff_queue_struct, %struct.diff_queue_struct* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp slt i32 %18, %21
  br i1 %22, label %23, label %35

23:                                               ; preds = %17
  %24 = load %struct.diff_queue_struct*, %struct.diff_queue_struct** %9, align 8
  %25 = getelementptr inbounds %struct.diff_queue_struct, %struct.diff_queue_struct* %24, i32 0, i32 1
  %26 = load i32*, i32** %25, align 8
  %27 = load i32, i32* %10, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @diff_free_filepair(i32 %30)
  br label %32

32:                                               ; preds = %23
  %33 = load i32, i32* %10, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %10, align 4
  br label %17

35:                                               ; preds = %17
  %36 = load %struct.diff_queue_struct*, %struct.diff_queue_struct** %9, align 8
  %37 = getelementptr inbounds %struct.diff_queue_struct, %struct.diff_queue_struct* %36, i32 0, i32 1
  %38 = load i32*, i32** %37, align 8
  %39 = call i32 @free(i32* %38)
  %40 = load %struct.diff_queue_struct*, %struct.diff_queue_struct** %9, align 8
  %41 = call i32 @DIFF_QUEUE_CLEAR(%struct.diff_queue_struct* %40)
  %42 = load i32, i32* %11, align 4
  ret i32 %42
}

declare dso_local i32 @diff_get_patch_id(%struct.diff_options*, %struct.object_id*, i32, i32) #1

declare dso_local i32 @diff_free_filepair(i32) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i32 @DIFF_QUEUE_CLEAR(%struct.diff_queue_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
