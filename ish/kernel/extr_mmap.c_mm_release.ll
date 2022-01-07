; ModuleID = '/home/carl/AnghaBench/ish/kernel/extr_mmap.c_mm_release.c'
source_filename = "/home/carl/AnghaBench/ish/kernel/extr_mmap.c_mm_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mm = type { i64, i32, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mm_release(%struct.mm* %0) #0 {
  %2 = alloca %struct.mm*, align 8
  store %struct.mm* %0, %struct.mm** %2, align 8
  %3 = load %struct.mm*, %struct.mm** %2, align 8
  %4 = getelementptr inbounds %struct.mm, %struct.mm* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = add nsw i64 %5, -1
  store i64 %6, i64* %4, align 8
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %8, label %24

8:                                                ; preds = %1
  %9 = load %struct.mm*, %struct.mm** %2, align 8
  %10 = getelementptr inbounds %struct.mm, %struct.mm* %9, i32 0, i32 2
  %11 = load i32*, i32** %10, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %13, label %18

13:                                               ; preds = %8
  %14 = load %struct.mm*, %struct.mm** %2, align 8
  %15 = getelementptr inbounds %struct.mm, %struct.mm* %14, i32 0, i32 2
  %16 = load i32*, i32** %15, align 8
  %17 = call i32 @fd_close(i32* %16)
  br label %18

18:                                               ; preds = %13, %8
  %19 = load %struct.mm*, %struct.mm** %2, align 8
  %20 = getelementptr inbounds %struct.mm, %struct.mm* %19, i32 0, i32 1
  %21 = call i32 @mem_destroy(i32* %20)
  %22 = load %struct.mm*, %struct.mm** %2, align 8
  %23 = call i32 @free(%struct.mm* %22)
  br label %24

24:                                               ; preds = %18, %1
  ret void
}

declare dso_local i32 @fd_close(i32*) #1

declare dso_local i32 @mem_destroy(i32*) #1

declare dso_local i32 @free(%struct.mm*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
