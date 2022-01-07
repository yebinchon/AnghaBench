; ModuleID = '/home/carl/AnghaBench/ish/fs/extr_fd.c_fdtable_do_cloexec.c'
source_filename = "/home/carl/AnghaBench/ish/fs/extr_fd.c_fdtable_do_cloexec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fdtable = type { i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fdtable_do_cloexec(%struct.fdtable* %0) #0 {
  %2 = alloca %struct.fdtable*, align 8
  %3 = alloca i64, align 8
  store %struct.fdtable* %0, %struct.fdtable** %2, align 8
  %4 = load %struct.fdtable*, %struct.fdtable** %2, align 8
  %5 = getelementptr inbounds %struct.fdtable, %struct.fdtable* %4, i32 0, i32 1
  %6 = call i32 @lock(i32* %5)
  store i64 0, i64* %3, align 8
  br label %7

7:                                                ; preds = %26, %1
  %8 = load i64, i64* %3, align 8
  %9 = trunc i64 %8 to i32
  %10 = load %struct.fdtable*, %struct.fdtable** %2, align 8
  %11 = getelementptr inbounds %struct.fdtable, %struct.fdtable* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp ult i32 %9, %12
  br i1 %13, label %14, label %29

14:                                               ; preds = %7
  %15 = load i64, i64* %3, align 8
  %16 = load %struct.fdtable*, %struct.fdtable** %2, align 8
  %17 = getelementptr inbounds %struct.fdtable, %struct.fdtable* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = call i64 @bit_test(i64 %15, i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %14
  %22 = load %struct.fdtable*, %struct.fdtable** %2, align 8
  %23 = load i64, i64* %3, align 8
  %24 = call i32 @fdtable_close(%struct.fdtable* %22, i64 %23)
  br label %25

25:                                               ; preds = %21, %14
  br label %26

26:                                               ; preds = %25
  %27 = load i64, i64* %3, align 8
  %28 = add nsw i64 %27, 1
  store i64 %28, i64* %3, align 8
  br label %7

29:                                               ; preds = %7
  %30 = load %struct.fdtable*, %struct.fdtable** %2, align 8
  %31 = getelementptr inbounds %struct.fdtable, %struct.fdtable* %30, i32 0, i32 1
  %32 = call i32 @unlock(i32* %31)
  ret void
}

declare dso_local i32 @lock(i32*) #1

declare dso_local i64 @bit_test(i64, i32) #1

declare dso_local i32 @fdtable_close(%struct.fdtable*, i64) #1

declare dso_local i32 @unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
