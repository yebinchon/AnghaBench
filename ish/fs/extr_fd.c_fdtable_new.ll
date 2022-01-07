; ModuleID = '/home/carl/AnghaBench/ish/fs/extr_fd.c_fdtable_new.c'
source_filename = "/home/carl/AnghaBench/ish/fs/extr_fd.c_fdtable_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fdtable = type { i32, i32, i32*, i32*, i64 }

@_ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.fdtable* @fdtable_new(i32 %0) #0 {
  %2 = alloca %struct.fdtable*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.fdtable*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %6 = call %struct.fdtable* @malloc(i32 32)
  store %struct.fdtable* %6, %struct.fdtable** %4, align 8
  %7 = load %struct.fdtable*, %struct.fdtable** %4, align 8
  %8 = icmp eq %struct.fdtable* %7, null
  br i1 %8, label %9, label %12

9:                                                ; preds = %1
  %10 = load i32, i32* @_ENOMEM, align 4
  %11 = call %struct.fdtable* @ERR_PTR(i32 %10)
  store %struct.fdtable* %11, %struct.fdtable** %2, align 8
  br label %36

12:                                               ; preds = %1
  %13 = load %struct.fdtable*, %struct.fdtable** %4, align 8
  %14 = getelementptr inbounds %struct.fdtable, %struct.fdtable* %13, i32 0, i32 0
  store i32 1, i32* %14, align 8
  %15 = load %struct.fdtable*, %struct.fdtable** %4, align 8
  %16 = getelementptr inbounds %struct.fdtable, %struct.fdtable* %15, i32 0, i32 4
  store i64 0, i64* %16, align 8
  %17 = load %struct.fdtable*, %struct.fdtable** %4, align 8
  %18 = getelementptr inbounds %struct.fdtable, %struct.fdtable* %17, i32 0, i32 3
  store i32* null, i32** %18, align 8
  %19 = load %struct.fdtable*, %struct.fdtable** %4, align 8
  %20 = getelementptr inbounds %struct.fdtable, %struct.fdtable* %19, i32 0, i32 2
  store i32* null, i32** %20, align 8
  %21 = load %struct.fdtable*, %struct.fdtable** %4, align 8
  %22 = getelementptr inbounds %struct.fdtable, %struct.fdtable* %21, i32 0, i32 1
  %23 = call i32 @lock_init(i32* %22)
  %24 = load %struct.fdtable*, %struct.fdtable** %4, align 8
  %25 = load i32, i32* %3, align 4
  %26 = call i32 @fdtable_resize(%struct.fdtable* %24, i32 %25)
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* %5, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %12
  %30 = load %struct.fdtable*, %struct.fdtable** %4, align 8
  %31 = call i32 @free(%struct.fdtable* %30)
  %32 = load i32, i32* %5, align 4
  %33 = call %struct.fdtable* @ERR_PTR(i32 %32)
  store %struct.fdtable* %33, %struct.fdtable** %2, align 8
  br label %36

34:                                               ; preds = %12
  %35 = load %struct.fdtable*, %struct.fdtable** %4, align 8
  store %struct.fdtable* %35, %struct.fdtable** %2, align 8
  br label %36

36:                                               ; preds = %34, %29, %9
  %37 = load %struct.fdtable*, %struct.fdtable** %2, align 8
  ret %struct.fdtable* %37
}

declare dso_local %struct.fdtable* @malloc(i32) #1

declare dso_local %struct.fdtable* @ERR_PTR(i32) #1

declare dso_local i32 @lock_init(i32*) #1

declare dso_local i32 @fdtable_resize(%struct.fdtable*, i32) #1

declare dso_local i32 @free(%struct.fdtable*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
