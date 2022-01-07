; ModuleID = '/home/carl/AnghaBench/kphp-kdb/TL/extr_tl-scheme.c_tl_scheme_cons_number.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/TL/extr_tl-scheme.c_tl_scheme_cons_number.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tl_scheme_object = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64 }

@INT_MIN = common dso_local global i64 0, align 8
@INT_MAX = common dso_local global i64 0, align 8
@tlso_int = common dso_local global i32 0, align 4
@tlso_long = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.tl_scheme_object* (i64, %struct.tl_scheme_object*)* @tl_scheme_cons_number to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.tl_scheme_object* @tl_scheme_cons_number(i64 %0, %struct.tl_scheme_object* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.tl_scheme_object*, align 8
  %5 = alloca %struct.tl_scheme_object*, align 8
  store i64 %0, i64* %3, align 8
  store %struct.tl_scheme_object* %1, %struct.tl_scheme_object** %4, align 8
  %6 = load i64, i64* @INT_MIN, align 8
  %7 = load i64, i64* %3, align 8
  %8 = icmp sle i64 %6, %7
  br i1 %8, label %9, label %21

9:                                                ; preds = %2
  %10 = load i64, i64* %3, align 8
  %11 = load i64, i64* @INT_MAX, align 8
  %12 = icmp sle i64 %10, %11
  br i1 %12, label %13, label %21

13:                                               ; preds = %9
  %14 = load i32, i32* @tlso_int, align 4
  %15 = call %struct.tl_scheme_object* @tl_scheme_object_new(i32 %14)
  store %struct.tl_scheme_object* %15, %struct.tl_scheme_object** %5, align 8
  %16 = load i64, i64* %3, align 8
  %17 = trunc i64 %16 to i32
  %18 = load %struct.tl_scheme_object*, %struct.tl_scheme_object** %5, align 8
  %19 = getelementptr inbounds %struct.tl_scheme_object, %struct.tl_scheme_object* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  store i32 %17, i32* %20, align 8
  br label %28

21:                                               ; preds = %9, %2
  %22 = load i32, i32* @tlso_long, align 4
  %23 = call %struct.tl_scheme_object* @tl_scheme_object_new(i32 %22)
  store %struct.tl_scheme_object* %23, %struct.tl_scheme_object** %5, align 8
  %24 = load i64, i64* %3, align 8
  %25 = load %struct.tl_scheme_object*, %struct.tl_scheme_object** %5, align 8
  %26 = getelementptr inbounds %struct.tl_scheme_object, %struct.tl_scheme_object* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  store i64 %24, i64* %27, align 8
  br label %28

28:                                               ; preds = %21, %13
  %29 = load %struct.tl_scheme_object*, %struct.tl_scheme_object** %5, align 8
  %30 = load %struct.tl_scheme_object*, %struct.tl_scheme_object** %4, align 8
  %31 = call %struct.tl_scheme_object* @tl_scheme_cons(%struct.tl_scheme_object* %29, %struct.tl_scheme_object* %30)
  store %struct.tl_scheme_object* %31, %struct.tl_scheme_object** %4, align 8
  %32 = load %struct.tl_scheme_object*, %struct.tl_scheme_object** %4, align 8
  %33 = call i32 @assert(%struct.tl_scheme_object* %32)
  %34 = load %struct.tl_scheme_object*, %struct.tl_scheme_object** %4, align 8
  ret %struct.tl_scheme_object* %34
}

declare dso_local %struct.tl_scheme_object* @tl_scheme_object_new(i32) #1

declare dso_local %struct.tl_scheme_object* @tl_scheme_cons(%struct.tl_scheme_object*, %struct.tl_scheme_object*) #1

declare dso_local i32 @assert(%struct.tl_scheme_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
