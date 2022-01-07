; ModuleID = '/home/carl/AnghaBench/ish/fs/extr_real.c_realfs_fsetattr.c'
source_filename = "/home/carl/AnghaBench/ish/fs/extr_real.c_realfs_fsetattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fd = type { i32 }
%struct.attr = type { i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fd*, %struct.attr*)* @realfs_fsetattr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @realfs_fsetattr(%struct.fd* %0, %struct.attr* byval(%struct.attr) align 8 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fd*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.fd* %0, %struct.fd** %4, align 8
  %7 = load %struct.fd*, %struct.fd** %4, align 8
  %8 = getelementptr inbounds %struct.fd, %struct.fd* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  store i32 %9, i32* %5, align 4
  %10 = getelementptr inbounds %struct.attr, %struct.attr* %1, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  switch i32 %11, label %32 [
    i32 128, label %12
    i32 131, label %17
    i32 130, label %22
    i32 129, label %27
  ]

12:                                               ; preds = %2
  %13 = load i32, i32* %5, align 4
  %14 = getelementptr inbounds %struct.attr, %struct.attr* %1, i32 0, i32 4
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @fchown(i32 %13, i32 %15, i32 -1)
  store i32 %16, i32* %6, align 4
  br label %32

17:                                               ; preds = %2
  %18 = load i32, i32* %5, align 4
  %19 = getelementptr inbounds %struct.attr, %struct.attr* %1, i32 0, i32 3
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @fchown(i32 %18, i32 %20, i32 -1)
  store i32 %21, i32* %6, align 4
  br label %32

22:                                               ; preds = %2
  %23 = load i32, i32* %5, align 4
  %24 = getelementptr inbounds %struct.attr, %struct.attr* %1, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @fchmod(i32 %23, i32 %25)
  store i32 %26, i32* %6, align 4
  br label %32

27:                                               ; preds = %2
  %28 = load i32, i32* %5, align 4
  %29 = getelementptr inbounds %struct.attr, %struct.attr* %1, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @ftruncate(i32 %28, i32 %30)
  store i32 %31, i32* %6, align 4
  br label %32

32:                                               ; preds = %2, %27, %22, %17, %12
  %33 = load i32, i32* %6, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %32
  %36 = call i32 (...) @errno_map()
  store i32 %36, i32* %3, align 4
  br label %39

37:                                               ; preds = %32
  %38 = load i32, i32* %6, align 4
  store i32 %38, i32* %3, align 4
  br label %39

39:                                               ; preds = %37, %35
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

declare dso_local i32 @fchown(i32, i32, i32) #1

declare dso_local i32 @fchmod(i32, i32) #1

declare dso_local i32 @ftruncate(i32, i32) #1

declare dso_local i32 @errno_map(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
