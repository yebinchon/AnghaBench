; ModuleID = '/home/carl/AnghaBench/kphp-kdb/TL/extr_tl-scheme.c_tl_scheme_length.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/TL/extr_tl-scheme.c_tl_scheme_length.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tl_scheme_object = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.tl_scheme_object* }

@tlso_list = common dso_local global i64 0, align 8
@obj_empty_list = common dso_local global %struct.tl_scheme_object zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tl_scheme_length(%struct.tl_scheme_object* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tl_scheme_object*, align 8
  %4 = alloca i32, align 4
  store %struct.tl_scheme_object* %0, %struct.tl_scheme_object** %3, align 8
  %5 = load %struct.tl_scheme_object*, %struct.tl_scheme_object** %3, align 8
  %6 = getelementptr inbounds %struct.tl_scheme_object, %struct.tl_scheme_object* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @tlso_list, align 8
  %9 = icmp ne i64 %7, %8
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %32

11:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %12

12:                                               ; preds = %15, %11
  %13 = load %struct.tl_scheme_object*, %struct.tl_scheme_object** %3, align 8
  %14 = icmp ne %struct.tl_scheme_object* %13, @obj_empty_list
  br i1 %14, label %15, label %30

15:                                               ; preds = %12
  %16 = load %struct.tl_scheme_object*, %struct.tl_scheme_object** %3, align 8
  %17 = getelementptr inbounds %struct.tl_scheme_object, %struct.tl_scheme_object* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @tlso_list, align 8
  %20 = icmp eq i64 %18, %19
  %21 = zext i1 %20 to i32
  %22 = call i32 @assert(i32 %21)
  %23 = load i32, i32* %4, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %4, align 4
  %25 = load %struct.tl_scheme_object*, %struct.tl_scheme_object** %3, align 8
  %26 = getelementptr inbounds %struct.tl_scheme_object, %struct.tl_scheme_object* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load %struct.tl_scheme_object*, %struct.tl_scheme_object** %28, align 8
  store %struct.tl_scheme_object* %29, %struct.tl_scheme_object** %3, align 8
  br label %12

30:                                               ; preds = %12
  %31 = load i32, i32* %4, align 4
  store i32 %31, i32* %2, align 4
  br label %32

32:                                               ; preds = %30, %10
  %33 = load i32, i32* %2, align 4
  ret i32 %33
}

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
