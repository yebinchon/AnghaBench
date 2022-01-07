; ModuleID = '/home/carl/AnghaBench/ish/fs/extr_real.c_realfs_close.c'
source_filename = "/home/carl/AnghaBench/ish/fs/extr_real.c_realfs_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fd = type { i32, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @realfs_close(%struct.fd* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fd*, align 8
  %4 = alloca i32, align 4
  store %struct.fd* %0, %struct.fd** %3, align 8
  %5 = load %struct.fd*, %struct.fd** %3, align 8
  %6 = getelementptr inbounds %struct.fd, %struct.fd* %5, i32 0, i32 1
  %7 = load i32*, i32** %6, align 8
  %8 = icmp ne i32* %7, null
  br i1 %8, label %9, label %14

9:                                                ; preds = %1
  %10 = load %struct.fd*, %struct.fd** %3, align 8
  %11 = getelementptr inbounds %struct.fd, %struct.fd* %10, i32 0, i32 1
  %12 = load i32*, i32** %11, align 8
  %13 = call i32 @closedir(i32* %12)
  br label %14

14:                                               ; preds = %9, %1
  %15 = load %struct.fd*, %struct.fd** %3, align 8
  %16 = getelementptr inbounds %struct.fd, %struct.fd* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @close(i32 %17)
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* %4, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %14
  %22 = call i32 (...) @errno_map()
  store i32 %22, i32* %2, align 4
  br label %24

23:                                               ; preds = %14
  store i32 0, i32* %2, align 4
  br label %24

24:                                               ; preds = %23, %21
  %25 = load i32, i32* %2, align 4
  ret i32 %25
}

declare dso_local i32 @closedir(i32*) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @errno_map(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
