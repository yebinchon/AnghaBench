; ModuleID = '/home/carl/AnghaBench/git/extr_diff.c_is_summary_empty.c'
source_filename = "/home/carl/AnghaBench/git/extr_diff.c_is_summary_empty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.diff_queue_struct = type { i32, %struct.diff_filepair** }
%struct.diff_filepair = type { i32, %struct.TYPE_4__*, %struct.TYPE_3__*, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.diff_queue_struct*)* @is_summary_empty to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_summary_empty(%struct.diff_queue_struct* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.diff_queue_struct*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.diff_filepair*, align 8
  store %struct.diff_queue_struct* %0, %struct.diff_queue_struct** %3, align 8
  store i32 0, i32* %4, align 4
  br label %6

6:                                                ; preds = %59, %1
  %7 = load i32, i32* %4, align 4
  %8 = load %struct.diff_queue_struct*, %struct.diff_queue_struct** %3, align 8
  %9 = getelementptr inbounds %struct.diff_queue_struct, %struct.diff_queue_struct* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp slt i32 %7, %10
  br i1 %11, label %12, label %62

12:                                               ; preds = %6
  %13 = load %struct.diff_queue_struct*, %struct.diff_queue_struct** %3, align 8
  %14 = getelementptr inbounds %struct.diff_queue_struct, %struct.diff_queue_struct* %13, i32 0, i32 1
  %15 = load %struct.diff_filepair**, %struct.diff_filepair*** %14, align 8
  %16 = load i32, i32* %4, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.diff_filepair*, %struct.diff_filepair** %15, i64 %17
  %19 = load %struct.diff_filepair*, %struct.diff_filepair** %18, align 8
  store %struct.diff_filepair* %19, %struct.diff_filepair** %5, align 8
  %20 = load %struct.diff_filepair*, %struct.diff_filepair** %5, align 8
  %21 = getelementptr inbounds %struct.diff_filepair, %struct.diff_filepair* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  switch i32 %22, label %24 [
    i32 129, label %23
    i32 131, label %23
    i32 130, label %23
    i32 128, label %23
  ]

23:                                               ; preds = %12, %12, %12, %12
  store i32 0, i32* %2, align 4
  br label %63

24:                                               ; preds = %12
  %25 = load %struct.diff_filepair*, %struct.diff_filepair** %5, align 8
  %26 = getelementptr inbounds %struct.diff_filepair, %struct.diff_filepair* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 8
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %24
  store i32 0, i32* %2, align 4
  br label %63

30:                                               ; preds = %24
  %31 = load %struct.diff_filepair*, %struct.diff_filepair** %5, align 8
  %32 = getelementptr inbounds %struct.diff_filepair, %struct.diff_filepair* %31, i32 0, i32 2
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %57

37:                                               ; preds = %30
  %38 = load %struct.diff_filepair*, %struct.diff_filepair** %5, align 8
  %39 = getelementptr inbounds %struct.diff_filepair, %struct.diff_filepair* %38, i32 0, i32 1
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %57

44:                                               ; preds = %37
  %45 = load %struct.diff_filepair*, %struct.diff_filepair** %5, align 8
  %46 = getelementptr inbounds %struct.diff_filepair, %struct.diff_filepair* %45, i32 0, i32 2
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.diff_filepair*, %struct.diff_filepair** %5, align 8
  %51 = getelementptr inbounds %struct.diff_filepair, %struct.diff_filepair* %50, i32 0, i32 1
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = icmp ne i32 %49, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %44
  store i32 0, i32* %2, align 4
  br label %63

57:                                               ; preds = %44, %37, %30
  br label %58

58:                                               ; preds = %57
  br label %59

59:                                               ; preds = %58
  %60 = load i32, i32* %4, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %4, align 4
  br label %6

62:                                               ; preds = %6
  store i32 1, i32* %2, align 4
  br label %63

63:                                               ; preds = %62, %56, %29, %23
  %64 = load i32, i32* %2, align 4
  ret i32 %64
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
