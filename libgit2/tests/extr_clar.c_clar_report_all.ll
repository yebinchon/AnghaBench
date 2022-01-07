; ModuleID = '/home/carl/AnghaBench/libgit2/tests/extr_clar.c_clar_report_all.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/extr_clar.c_clar_report_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.clar_report* }
%struct.clar_report = type { i64, %struct.clar_error*, %struct.clar_report* }
%struct.clar_error = type { %struct.clar_error* }

@_clar = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@CL_TEST_FAILURE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @clar_report_all to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @clar_report_all() #0 {
  %1 = alloca %struct.clar_report*, align 8
  %2 = alloca %struct.clar_error*, align 8
  %3 = alloca i32, align 4
  store i32 1, i32* %3, align 4
  %4 = load %struct.clar_report*, %struct.clar_report** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @_clar, i32 0, i32 0), align 8
  store %struct.clar_report* %4, %struct.clar_report** %1, align 8
  br label %5

5:                                                ; preds = %33, %0
  %6 = load %struct.clar_report*, %struct.clar_report** %1, align 8
  %7 = icmp ne %struct.clar_report* %6, null
  br i1 %7, label %8, label %37

8:                                                ; preds = %5
  %9 = load %struct.clar_report*, %struct.clar_report** %1, align 8
  %10 = getelementptr inbounds %struct.clar_report, %struct.clar_report* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @CL_TEST_FAILURE, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %8
  br label %33

15:                                               ; preds = %8
  %16 = load %struct.clar_report*, %struct.clar_report** %1, align 8
  %17 = getelementptr inbounds %struct.clar_report, %struct.clar_report* %16, i32 0, i32 1
  %18 = load %struct.clar_error*, %struct.clar_error** %17, align 8
  store %struct.clar_error* %18, %struct.clar_error** %2, align 8
  br label %19

19:                                               ; preds = %28, %15
  %20 = load %struct.clar_error*, %struct.clar_error** %2, align 8
  %21 = icmp ne %struct.clar_error* %20, null
  br i1 %21, label %22, label %32

22:                                               ; preds = %19
  %23 = load i32, i32* %3, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %3, align 4
  %25 = load %struct.clar_report*, %struct.clar_report** %1, align 8
  %26 = load %struct.clar_error*, %struct.clar_error** %2, align 8
  %27 = call i32 @clar_print_error(i32 %23, %struct.clar_report* %25, %struct.clar_error* %26)
  br label %28

28:                                               ; preds = %22
  %29 = load %struct.clar_error*, %struct.clar_error** %2, align 8
  %30 = getelementptr inbounds %struct.clar_error, %struct.clar_error* %29, i32 0, i32 0
  %31 = load %struct.clar_error*, %struct.clar_error** %30, align 8
  store %struct.clar_error* %31, %struct.clar_error** %2, align 8
  br label %19

32:                                               ; preds = %19
  br label %33

33:                                               ; preds = %32, %14
  %34 = load %struct.clar_report*, %struct.clar_report** %1, align 8
  %35 = getelementptr inbounds %struct.clar_report, %struct.clar_report* %34, i32 0, i32 2
  %36 = load %struct.clar_report*, %struct.clar_report** %35, align 8
  store %struct.clar_report* %36, %struct.clar_report** %1, align 8
  br label %5

37:                                               ; preds = %5
  ret void
}

declare dso_local i32 @clar_print_error(i32, %struct.clar_report*, %struct.clar_error*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
