; ModuleID = '/home/carl/AnghaBench/git/extr_diff.c_diff_q.c'
source_filename = "/home/carl/AnghaBench/git/extr_diff.c_diff_q.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.diff_queue_struct = type { i64, %struct.diff_filepair**, i32 }
%struct.diff_filepair = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @diff_q(%struct.diff_queue_struct* %0, %struct.diff_filepair* %1) #0 {
  %3 = alloca %struct.diff_queue_struct*, align 8
  %4 = alloca %struct.diff_filepair*, align 8
  store %struct.diff_queue_struct* %0, %struct.diff_queue_struct** %3, align 8
  store %struct.diff_filepair* %1, %struct.diff_filepair** %4, align 8
  %5 = load %struct.diff_queue_struct*, %struct.diff_queue_struct** %3, align 8
  %6 = getelementptr inbounds %struct.diff_queue_struct, %struct.diff_queue_struct* %5, i32 0, i32 1
  %7 = load %struct.diff_filepair**, %struct.diff_filepair*** %6, align 8
  %8 = load %struct.diff_queue_struct*, %struct.diff_queue_struct** %3, align 8
  %9 = getelementptr inbounds %struct.diff_queue_struct, %struct.diff_queue_struct* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = add nsw i64 %10, 1
  %12 = load %struct.diff_queue_struct*, %struct.diff_queue_struct** %3, align 8
  %13 = getelementptr inbounds %struct.diff_queue_struct, %struct.diff_queue_struct* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @ALLOC_GROW(%struct.diff_filepair** %7, i64 %11, i32 %14)
  %16 = load %struct.diff_filepair*, %struct.diff_filepair** %4, align 8
  %17 = load %struct.diff_queue_struct*, %struct.diff_queue_struct** %3, align 8
  %18 = getelementptr inbounds %struct.diff_queue_struct, %struct.diff_queue_struct* %17, i32 0, i32 1
  %19 = load %struct.diff_filepair**, %struct.diff_filepair*** %18, align 8
  %20 = load %struct.diff_queue_struct*, %struct.diff_queue_struct** %3, align 8
  %21 = getelementptr inbounds %struct.diff_queue_struct, %struct.diff_queue_struct* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = add nsw i64 %22, 1
  store i64 %23, i64* %21, align 8
  %24 = getelementptr inbounds %struct.diff_filepair*, %struct.diff_filepair** %19, i64 %22
  store %struct.diff_filepair* %16, %struct.diff_filepair** %24, align 8
  ret void
}

declare dso_local i32 @ALLOC_GROW(%struct.diff_filepair**, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
