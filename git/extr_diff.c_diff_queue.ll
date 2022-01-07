; ModuleID = '/home/carl/AnghaBench/git/extr_diff.c_diff_queue.c'
source_filename = "/home/carl/AnghaBench/git/extr_diff.c_diff_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.diff_filepair = type { %struct.diff_filespec*, %struct.diff_filespec* }
%struct.diff_queue_struct = type { i32 }
%struct.diff_filespec = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.diff_filepair* @diff_queue(%struct.diff_queue_struct* %0, %struct.diff_filespec* %1, %struct.diff_filespec* %2) #0 {
  %4 = alloca %struct.diff_queue_struct*, align 8
  %5 = alloca %struct.diff_filespec*, align 8
  %6 = alloca %struct.diff_filespec*, align 8
  %7 = alloca %struct.diff_filepair*, align 8
  store %struct.diff_queue_struct* %0, %struct.diff_queue_struct** %4, align 8
  store %struct.diff_filespec* %1, %struct.diff_filespec** %5, align 8
  store %struct.diff_filespec* %2, %struct.diff_filespec** %6, align 8
  %8 = call %struct.diff_filepair* @xcalloc(i32 1, i32 16)
  store %struct.diff_filepair* %8, %struct.diff_filepair** %7, align 8
  %9 = load %struct.diff_filespec*, %struct.diff_filespec** %5, align 8
  %10 = load %struct.diff_filepair*, %struct.diff_filepair** %7, align 8
  %11 = getelementptr inbounds %struct.diff_filepair, %struct.diff_filepair* %10, i32 0, i32 1
  store %struct.diff_filespec* %9, %struct.diff_filespec** %11, align 8
  %12 = load %struct.diff_filespec*, %struct.diff_filespec** %6, align 8
  %13 = load %struct.diff_filepair*, %struct.diff_filepair** %7, align 8
  %14 = getelementptr inbounds %struct.diff_filepair, %struct.diff_filepair* %13, i32 0, i32 0
  store %struct.diff_filespec* %12, %struct.diff_filespec** %14, align 8
  %15 = load %struct.diff_queue_struct*, %struct.diff_queue_struct** %4, align 8
  %16 = icmp ne %struct.diff_queue_struct* %15, null
  br i1 %16, label %17, label %21

17:                                               ; preds = %3
  %18 = load %struct.diff_queue_struct*, %struct.diff_queue_struct** %4, align 8
  %19 = load %struct.diff_filepair*, %struct.diff_filepair** %7, align 8
  %20 = call i32 @diff_q(%struct.diff_queue_struct* %18, %struct.diff_filepair* %19)
  br label %21

21:                                               ; preds = %17, %3
  %22 = load %struct.diff_filepair*, %struct.diff_filepair** %7, align 8
  ret %struct.diff_filepair* %22
}

declare dso_local %struct.diff_filepair* @xcalloc(i32, i32) #1

declare dso_local i32 @diff_q(%struct.diff_queue_struct*, %struct.diff_filepair*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
