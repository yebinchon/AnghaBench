; ModuleID = '/home/carl/AnghaBench/kphp-kdb/TL/extr_tl-scheme.c_tl_scheme_reverse.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/TL/extr_tl-scheme.c_tl_scheme_reverse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tl_scheme_object = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.tl_scheme_object* }

@verbosity = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"(reverse \00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c")\0A\00", align 1
@tlso_list = common dso_local global i64 0, align 8
@obj_empty_list = common dso_local global %struct.tl_scheme_object zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.tl_scheme_object* @tl_scheme_reverse(%struct.tl_scheme_object* %0) #0 {
  %2 = alloca %struct.tl_scheme_object*, align 8
  %3 = alloca %struct.tl_scheme_object*, align 8
  %4 = alloca %struct.tl_scheme_object*, align 8
  %5 = alloca %struct.tl_scheme_object*, align 8
  %6 = alloca %struct.tl_scheme_object*, align 8
  store %struct.tl_scheme_object* %0, %struct.tl_scheme_object** %3, align 8
  %7 = load i32, i32* @verbosity, align 4
  %8 = icmp sge i32 %7, 3
  br i1 %8, label %9, label %17

9:                                                ; preds = %1
  %10 = load i32, i32* @stderr, align 4
  %11 = call i32 @fprintf(i32 %10, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %12 = load i32, i32* @stderr, align 4
  %13 = load %struct.tl_scheme_object*, %struct.tl_scheme_object** %3, align 8
  %14 = call i32 @tl_scheme_object_dump(i32 %12, %struct.tl_scheme_object* %13)
  %15 = load i32, i32* @stderr, align 4
  %16 = call i32 @fprintf(i32 %15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  br label %17

17:                                               ; preds = %9, %1
  %18 = load %struct.tl_scheme_object*, %struct.tl_scheme_object** %3, align 8
  %19 = getelementptr inbounds %struct.tl_scheme_object, %struct.tl_scheme_object* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @tlso_list, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %17
  store %struct.tl_scheme_object* null, %struct.tl_scheme_object** %2, align 8
  br label %52

24:                                               ; preds = %17
  store %struct.tl_scheme_object* @obj_empty_list, %struct.tl_scheme_object** %4, align 8
  %25 = load %struct.tl_scheme_object*, %struct.tl_scheme_object** %3, align 8
  store %struct.tl_scheme_object* %25, %struct.tl_scheme_object** %5, align 8
  br label %26

26:                                               ; preds = %48, %24
  %27 = load %struct.tl_scheme_object*, %struct.tl_scheme_object** %5, align 8
  %28 = icmp ne %struct.tl_scheme_object* %27, @obj_empty_list
  br i1 %28, label %29, label %50

29:                                               ; preds = %26
  %30 = load %struct.tl_scheme_object*, %struct.tl_scheme_object** %5, align 8
  %31 = getelementptr inbounds %struct.tl_scheme_object, %struct.tl_scheme_object* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @tlso_list, align 8
  %34 = icmp eq i64 %32, %33
  %35 = zext i1 %34 to i32
  %36 = call i32 @assert(i32 %35)
  %37 = load %struct.tl_scheme_object*, %struct.tl_scheme_object** %5, align 8
  %38 = getelementptr inbounds %struct.tl_scheme_object, %struct.tl_scheme_object* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load %struct.tl_scheme_object*, %struct.tl_scheme_object** %40, align 8
  store %struct.tl_scheme_object* %41, %struct.tl_scheme_object** %6, align 8
  %42 = load %struct.tl_scheme_object*, %struct.tl_scheme_object** %4, align 8
  %43 = load %struct.tl_scheme_object*, %struct.tl_scheme_object** %5, align 8
  %44 = getelementptr inbounds %struct.tl_scheme_object, %struct.tl_scheme_object* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  store %struct.tl_scheme_object* %42, %struct.tl_scheme_object** %46, align 8
  %47 = load %struct.tl_scheme_object*, %struct.tl_scheme_object** %5, align 8
  store %struct.tl_scheme_object* %47, %struct.tl_scheme_object** %4, align 8
  br label %48

48:                                               ; preds = %29
  %49 = load %struct.tl_scheme_object*, %struct.tl_scheme_object** %6, align 8
  store %struct.tl_scheme_object* %49, %struct.tl_scheme_object** %5, align 8
  br label %26

50:                                               ; preds = %26
  %51 = load %struct.tl_scheme_object*, %struct.tl_scheme_object** %4, align 8
  store %struct.tl_scheme_object* %51, %struct.tl_scheme_object** %2, align 8
  br label %52

52:                                               ; preds = %50, %23
  %53 = load %struct.tl_scheme_object*, %struct.tl_scheme_object** %2, align 8
  ret %struct.tl_scheme_object* %53
}

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i32 @tl_scheme_object_dump(i32, %struct.tl_scheme_object*) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
