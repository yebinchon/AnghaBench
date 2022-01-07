; ModuleID = '/home/carl/AnghaBench/ish/fs/extr_real.c_realfs_truncate.c'
source_filename = "/home/carl/AnghaBench/ish/fs/extr_real.c_realfs_truncate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mount = type { i32 }

@O_RDWR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @realfs_truncate(%struct.mount* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mount*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.mount* %0, %struct.mount** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.mount*, %struct.mount** %5, align 8
  %11 = getelementptr inbounds %struct.mount, %struct.mount* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i8*, i8** %6, align 8
  %14 = call i32 @fix_path(i8* %13)
  %15 = load i32, i32* @O_RDWR, align 4
  %16 = call i32 @openat(i32 %12, i32 %14, i32 %15)
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %8, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %3
  %20 = call i32 (...) @errno_map()
  store i32 %20, i32* %4, align 4
  br label %32

21:                                               ; preds = %3
  store i32 0, i32* %9, align 4
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* %7, align 4
  %24 = call i64 @ftruncate(i32 %22, i32 %23)
  %25 = icmp slt i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %21
  %27 = call i32 (...) @errno_map()
  store i32 %27, i32* %9, align 4
  br label %28

28:                                               ; preds = %26, %21
  %29 = load i32, i32* %8, align 4
  %30 = call i32 @close(i32 %29)
  %31 = load i32, i32* %9, align 4
  store i32 %31, i32* %4, align 4
  br label %32

32:                                               ; preds = %28, %19
  %33 = load i32, i32* %4, align 4
  ret i32 %33
}

declare dso_local i32 @openat(i32, i32, i32) #1

declare dso_local i32 @fix_path(i8*) #1

declare dso_local i32 @errno_map(...) #1

declare dso_local i64 @ftruncate(i32, i32) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
