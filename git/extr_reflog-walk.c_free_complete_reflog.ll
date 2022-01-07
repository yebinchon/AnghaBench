; ModuleID = '/home/carl/AnghaBench/git/extr_reflog-walk.c_free_complete_reflog.c'
source_filename = "/home/carl/AnghaBench/git/extr_reflog-walk.c_free_complete_reflog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.complete_reflogs = type { i32, %struct.complete_reflogs*, %struct.complete_reflogs*, %struct.complete_reflogs*, %struct.complete_reflogs* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.complete_reflogs*)* @free_complete_reflog to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_complete_reflog(%struct.complete_reflogs* %0) #0 {
  %2 = alloca %struct.complete_reflogs*, align 8
  %3 = alloca i32, align 4
  store %struct.complete_reflogs* %0, %struct.complete_reflogs** %2, align 8
  %4 = load %struct.complete_reflogs*, %struct.complete_reflogs** %2, align 8
  %5 = icmp ne %struct.complete_reflogs* %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  br label %47

7:                                                ; preds = %1
  store i32 0, i32* %3, align 4
  br label %8

8:                                                ; preds = %33, %7
  %9 = load i32, i32* %3, align 4
  %10 = load %struct.complete_reflogs*, %struct.complete_reflogs** %2, align 8
  %11 = getelementptr inbounds %struct.complete_reflogs, %struct.complete_reflogs* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp slt i32 %9, %12
  br i1 %13, label %14, label %36

14:                                               ; preds = %8
  %15 = load %struct.complete_reflogs*, %struct.complete_reflogs** %2, align 8
  %16 = getelementptr inbounds %struct.complete_reflogs, %struct.complete_reflogs* %15, i32 0, i32 2
  %17 = load %struct.complete_reflogs*, %struct.complete_reflogs** %16, align 8
  %18 = load i32, i32* %3, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.complete_reflogs, %struct.complete_reflogs* %17, i64 %19
  %21 = getelementptr inbounds %struct.complete_reflogs, %struct.complete_reflogs* %20, i32 0, i32 4
  %22 = load %struct.complete_reflogs*, %struct.complete_reflogs** %21, align 8
  %23 = call i32 @free(%struct.complete_reflogs* %22)
  %24 = load %struct.complete_reflogs*, %struct.complete_reflogs** %2, align 8
  %25 = getelementptr inbounds %struct.complete_reflogs, %struct.complete_reflogs* %24, i32 0, i32 2
  %26 = load %struct.complete_reflogs*, %struct.complete_reflogs** %25, align 8
  %27 = load i32, i32* %3, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.complete_reflogs, %struct.complete_reflogs* %26, i64 %28
  %30 = getelementptr inbounds %struct.complete_reflogs, %struct.complete_reflogs* %29, i32 0, i32 3
  %31 = load %struct.complete_reflogs*, %struct.complete_reflogs** %30, align 8
  %32 = call i32 @free(%struct.complete_reflogs* %31)
  br label %33

33:                                               ; preds = %14
  %34 = load i32, i32* %3, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %3, align 4
  br label %8

36:                                               ; preds = %8
  %37 = load %struct.complete_reflogs*, %struct.complete_reflogs** %2, align 8
  %38 = getelementptr inbounds %struct.complete_reflogs, %struct.complete_reflogs* %37, i32 0, i32 2
  %39 = load %struct.complete_reflogs*, %struct.complete_reflogs** %38, align 8
  %40 = call i32 @free(%struct.complete_reflogs* %39)
  %41 = load %struct.complete_reflogs*, %struct.complete_reflogs** %2, align 8
  %42 = getelementptr inbounds %struct.complete_reflogs, %struct.complete_reflogs* %41, i32 0, i32 1
  %43 = load %struct.complete_reflogs*, %struct.complete_reflogs** %42, align 8
  %44 = call i32 @free(%struct.complete_reflogs* %43)
  %45 = load %struct.complete_reflogs*, %struct.complete_reflogs** %2, align 8
  %46 = call i32 @free(%struct.complete_reflogs* %45)
  br label %47

47:                                               ; preds = %36, %6
  ret void
}

declare dso_local i32 @free(%struct.complete_reflogs*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
