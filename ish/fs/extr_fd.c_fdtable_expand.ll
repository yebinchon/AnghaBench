; ModuleID = '/home/carl/AnghaBench/ish/fs/extr_fd.c_fdtable_expand.c'
source_filename = "/home/carl/AnghaBench/ish/fs/extr_fd.c_fdtable_expand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fdtable = type { i32 }

@RLIMIT_NOFILE_ = common dso_local global i32 0, align 4
@_EMFILE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fdtable*, i32)* @fdtable_expand to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fdtable_expand(%struct.fdtable* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fdtable*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.fdtable* %0, %struct.fdtable** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = add nsw i32 %7, 1
  store i32 %8, i32* %6, align 4
  %9 = load i32, i32* %6, align 4
  %10 = load i32, i32* @RLIMIT_NOFILE_, align 4
  %11 = call i32 @rlimit(i32 %10)
  %12 = icmp ugt i32 %9, %11
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load i32, i32* @_EMFILE, align 4
  store i32 %14, i32* %3, align 4
  br label %27

15:                                               ; preds = %2
  %16 = load %struct.fdtable*, %struct.fdtable** %4, align 8
  %17 = getelementptr inbounds %struct.fdtable, %struct.fdtable* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp uge i32 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %15
  store i32 0, i32* %3, align 4
  br label %27

22:                                               ; preds = %15
  %23 = load %struct.fdtable*, %struct.fdtable** %4, align 8
  %24 = load i32, i32* %5, align 4
  %25 = add nsw i32 %24, 1
  %26 = call i32 @fdtable_resize(%struct.fdtable* %23, i32 %25)
  store i32 %26, i32* %3, align 4
  br label %27

27:                                               ; preds = %22, %21, %13
  %28 = load i32, i32* %3, align 4
  ret i32 %28
}

declare dso_local i32 @rlimit(i32) #1

declare dso_local i32 @fdtable_resize(%struct.fdtable*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
