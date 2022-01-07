; ModuleID = '/home/carl/AnghaBench/libgit2/tests/extr_clar.c_clar_report_errors.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/extr_clar.c_clar_report_errors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.clar_report = type { %struct.clar_error* }
%struct.clar_error = type { %struct.clar_error* }

@_clar = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.clar_report*)* @clar_report_errors to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @clar_report_errors(%struct.clar_report* %0) #0 {
  %2 = alloca %struct.clar_report*, align 8
  %3 = alloca %struct.clar_error*, align 8
  %4 = alloca i32, align 4
  store %struct.clar_report* %0, %struct.clar_report** %2, align 8
  store i32 1, i32* %4, align 4
  %5 = load %struct.clar_report*, %struct.clar_report** %2, align 8
  %6 = getelementptr inbounds %struct.clar_report, %struct.clar_report* %5, i32 0, i32 0
  %7 = load %struct.clar_error*, %struct.clar_error** %6, align 8
  store %struct.clar_error* %7, %struct.clar_error** %3, align 8
  br label %8

8:                                                ; preds = %17, %1
  %9 = load %struct.clar_error*, %struct.clar_error** %3, align 8
  %10 = icmp ne %struct.clar_error* %9, null
  br i1 %10, label %11, label %21

11:                                               ; preds = %8
  %12 = load i32, i32* %4, align 4
  %13 = add nsw i32 %12, 1
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @_clar, i32 0, i32 0), align 4
  %15 = load %struct.clar_error*, %struct.clar_error** %3, align 8
  %16 = call i32 @clar_print_error(i32 %12, i32 %14, %struct.clar_error* %15)
  br label %17

17:                                               ; preds = %11
  %18 = load %struct.clar_error*, %struct.clar_error** %3, align 8
  %19 = getelementptr inbounds %struct.clar_error, %struct.clar_error* %18, i32 0, i32 0
  %20 = load %struct.clar_error*, %struct.clar_error** %19, align 8
  store %struct.clar_error* %20, %struct.clar_error** %3, align 8
  br label %8

21:                                               ; preds = %8
  ret void
}

declare dso_local i32 @clar_print_error(i32, i32, %struct.clar_error*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
