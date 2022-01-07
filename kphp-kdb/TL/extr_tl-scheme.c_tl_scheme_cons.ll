; ModuleID = '/home/carl/AnghaBench/kphp-kdb/TL/extr_tl-scheme.c_tl_scheme_cons.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/TL/extr_tl-scheme.c_tl_scheme_cons.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tl_scheme_object = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.tl_scheme_object*, %struct.tl_scheme_object* }

@verbosity = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"(cons \00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c")\0A\00", align 1
@tlso_list = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.tl_scheme_object* @tl_scheme_cons(%struct.tl_scheme_object* %0, %struct.tl_scheme_object* %1) #0 {
  %3 = alloca %struct.tl_scheme_object*, align 8
  %4 = alloca %struct.tl_scheme_object*, align 8
  %5 = alloca %struct.tl_scheme_object*, align 8
  %6 = alloca %struct.tl_scheme_object*, align 8
  store %struct.tl_scheme_object* %0, %struct.tl_scheme_object** %4, align 8
  store %struct.tl_scheme_object* %1, %struct.tl_scheme_object** %5, align 8
  %7 = load i32, i32* @verbosity, align 4
  %8 = icmp sge i32 %7, 3
  br i1 %8, label %9, label %22

9:                                                ; preds = %2
  %10 = load i32, i32* @stderr, align 4
  %11 = call i32 @fprintf(i32 %10, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %12 = load i32, i32* @stderr, align 4
  %13 = load %struct.tl_scheme_object*, %struct.tl_scheme_object** %4, align 8
  %14 = call i32 @tl_scheme_object_dump(i32 %12, %struct.tl_scheme_object* %13)
  %15 = load i32, i32* @stderr, align 4
  %16 = call i32 @fprintf(i32 %15, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %17 = load i32, i32* @stderr, align 4
  %18 = load %struct.tl_scheme_object*, %struct.tl_scheme_object** %5, align 8
  %19 = call i32 @tl_scheme_object_dump(i32 %17, %struct.tl_scheme_object* %18)
  %20 = load i32, i32* @stderr, align 4
  %21 = call i32 @fprintf(i32 %20, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  br label %22

22:                                               ; preds = %9, %2
  %23 = load %struct.tl_scheme_object*, %struct.tl_scheme_object** %5, align 8
  %24 = getelementptr inbounds %struct.tl_scheme_object, %struct.tl_scheme_object* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @tlso_list, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %22
  store %struct.tl_scheme_object* null, %struct.tl_scheme_object** %3, align 8
  br label %45

29:                                               ; preds = %22
  %30 = call %struct.tl_scheme_object* @zmalloc0(i32 24)
  store %struct.tl_scheme_object* %30, %struct.tl_scheme_object** %6, align 8
  %31 = load i64, i64* @tlso_list, align 8
  %32 = load %struct.tl_scheme_object*, %struct.tl_scheme_object** %6, align 8
  %33 = getelementptr inbounds %struct.tl_scheme_object, %struct.tl_scheme_object* %32, i32 0, i32 0
  store i64 %31, i64* %33, align 8
  %34 = load %struct.tl_scheme_object*, %struct.tl_scheme_object** %4, align 8
  %35 = load %struct.tl_scheme_object*, %struct.tl_scheme_object** %6, align 8
  %36 = getelementptr inbounds %struct.tl_scheme_object, %struct.tl_scheme_object* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 1
  store %struct.tl_scheme_object* %34, %struct.tl_scheme_object** %38, align 8
  %39 = load %struct.tl_scheme_object*, %struct.tl_scheme_object** %5, align 8
  %40 = load %struct.tl_scheme_object*, %struct.tl_scheme_object** %6, align 8
  %41 = getelementptr inbounds %struct.tl_scheme_object, %struct.tl_scheme_object* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  store %struct.tl_scheme_object* %39, %struct.tl_scheme_object** %43, align 8
  %44 = load %struct.tl_scheme_object*, %struct.tl_scheme_object** %6, align 8
  store %struct.tl_scheme_object* %44, %struct.tl_scheme_object** %3, align 8
  br label %45

45:                                               ; preds = %29, %28
  %46 = load %struct.tl_scheme_object*, %struct.tl_scheme_object** %3, align 8
  ret %struct.tl_scheme_object* %46
}

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i32 @tl_scheme_object_dump(i32, %struct.tl_scheme_object*) #1

declare dso_local %struct.tl_scheme_object* @zmalloc0(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
