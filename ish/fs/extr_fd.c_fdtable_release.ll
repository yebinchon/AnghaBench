; ModuleID = '/home/carl/AnghaBench/ish/fs/extr_fd.c_fdtable_release.c'
source_filename = "/home/carl/AnghaBench/ish/fs/extr_fd.c_fdtable_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fdtable = type { i64, i32, i32, %struct.fdtable*, %struct.fdtable* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fdtable_release(%struct.fdtable* %0) #0 {
  %2 = alloca %struct.fdtable*, align 8
  %3 = alloca i64, align 8
  store %struct.fdtable* %0, %struct.fdtable** %2, align 8
  %4 = load %struct.fdtable*, %struct.fdtable** %2, align 8
  %5 = getelementptr inbounds %struct.fdtable, %struct.fdtable* %4, i32 0, i32 2
  %6 = call i32 @lock(i32* %5)
  %7 = load %struct.fdtable*, %struct.fdtable** %2, align 8
  %8 = getelementptr inbounds %struct.fdtable, %struct.fdtable* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = add nsw i64 %9, -1
  store i64 %10, i64* %8, align 8
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %41

12:                                               ; preds = %1
  store i64 0, i64* %3, align 8
  br label %13

13:                                               ; preds = %24, %12
  %14 = load i64, i64* %3, align 8
  %15 = trunc i64 %14 to i32
  %16 = load %struct.fdtable*, %struct.fdtable** %2, align 8
  %17 = getelementptr inbounds %struct.fdtable, %struct.fdtable* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = icmp ult i32 %15, %18
  br i1 %19, label %20, label %27

20:                                               ; preds = %13
  %21 = load %struct.fdtable*, %struct.fdtable** %2, align 8
  %22 = load i64, i64* %3, align 8
  %23 = call i32 @fdtable_close(%struct.fdtable* %21, i64 %22)
  br label %24

24:                                               ; preds = %20
  %25 = load i64, i64* %3, align 8
  %26 = add nsw i64 %25, 1
  store i64 %26, i64* %3, align 8
  br label %13

27:                                               ; preds = %13
  %28 = load %struct.fdtable*, %struct.fdtable** %2, align 8
  %29 = getelementptr inbounds %struct.fdtable, %struct.fdtable* %28, i32 0, i32 4
  %30 = load %struct.fdtable*, %struct.fdtable** %29, align 8
  %31 = call i32 @free(%struct.fdtable* %30)
  %32 = load %struct.fdtable*, %struct.fdtable** %2, align 8
  %33 = getelementptr inbounds %struct.fdtable, %struct.fdtable* %32, i32 0, i32 3
  %34 = load %struct.fdtable*, %struct.fdtable** %33, align 8
  %35 = call i32 @free(%struct.fdtable* %34)
  %36 = load %struct.fdtable*, %struct.fdtable** %2, align 8
  %37 = getelementptr inbounds %struct.fdtable, %struct.fdtable* %36, i32 0, i32 2
  %38 = call i32 @unlock(i32* %37)
  %39 = load %struct.fdtable*, %struct.fdtable** %2, align 8
  %40 = call i32 @free(%struct.fdtable* %39)
  br label %45

41:                                               ; preds = %1
  %42 = load %struct.fdtable*, %struct.fdtable** %2, align 8
  %43 = getelementptr inbounds %struct.fdtable, %struct.fdtable* %42, i32 0, i32 2
  %44 = call i32 @unlock(i32* %43)
  br label %45

45:                                               ; preds = %41, %27
  ret void
}

declare dso_local i32 @lock(i32*) #1

declare dso_local i32 @fdtable_close(%struct.fdtable*, i64) #1

declare dso_local i32 @free(%struct.fdtable*) #1

declare dso_local i32 @unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
