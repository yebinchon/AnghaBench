; ModuleID = '/home/carl/AnghaBench/kphp-kdb/TL/extr_tl-serialize.c_tl_serialize.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/TL/extr_tl-serialize.c_tl_serialize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tl_scheme_object = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, %struct.tl_scheme_object* }
%struct.tl_compiler = type { i32 }
%struct.tl_int_array = type { i32 }

@obj_empty_list = common dso_local global %struct.tl_scheme_object zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tl_serialize(%struct.tl_compiler* %0, %struct.tl_scheme_object* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.tl_compiler*, align 8
  %7 = alloca %struct.tl_scheme_object*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.tl_int_array, align 4
  %11 = alloca %struct.tl_scheme_object*, align 8
  %12 = alloca %struct.tl_scheme_object*, align 8
  %13 = alloca i32, align 4
  store %struct.tl_compiler* %0, %struct.tl_compiler** %6, align 8
  store %struct.tl_scheme_object* %1, %struct.tl_scheme_object** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = load %struct.tl_compiler*, %struct.tl_compiler** %6, align 8
  %15 = call i32 @tl_compiler_clear_errors(%struct.tl_compiler* %14)
  %16 = load i32*, i32** %8, align 8
  %17 = load i32, i32* %9, align 4
  %18 = call i32 @tl_int_array_init(%struct.tl_int_array* %10, i32* %16, i32 %17)
  %19 = load %struct.tl_scheme_object*, %struct.tl_scheme_object** %7, align 8
  store %struct.tl_scheme_object* %19, %struct.tl_scheme_object** %11, align 8
  %20 = load %struct.tl_scheme_object*, %struct.tl_scheme_object** %11, align 8
  store %struct.tl_scheme_object* %20, %struct.tl_scheme_object** %12, align 8
  br label %21

21:                                               ; preds = %37, %4
  %22 = load %struct.tl_scheme_object*, %struct.tl_scheme_object** %12, align 8
  %23 = icmp ne %struct.tl_scheme_object* %22, @obj_empty_list
  br i1 %23, label %24, label %43

24:                                               ; preds = %21
  %25 = load %struct.tl_compiler*, %struct.tl_compiler** %6, align 8
  %26 = load %struct.tl_scheme_object*, %struct.tl_scheme_object** %12, align 8
  %27 = getelementptr inbounds %struct.tl_scheme_object, %struct.tl_scheme_object* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @tl_expression_serialize(%struct.tl_compiler* %25, i32 %30, %struct.tl_int_array* %10)
  store i32 %31, i32* %13, align 4
  %32 = load i32, i32* %13, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %24
  %35 = load i32, i32* %13, align 4
  store i32 %35, i32* %5, align 4
  br label %46

36:                                               ; preds = %24
  br label %37

37:                                               ; preds = %36
  %38 = load %struct.tl_scheme_object*, %struct.tl_scheme_object** %12, align 8
  %39 = getelementptr inbounds %struct.tl_scheme_object, %struct.tl_scheme_object* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 1
  %42 = load %struct.tl_scheme_object*, %struct.tl_scheme_object** %41, align 8
  store %struct.tl_scheme_object* %42, %struct.tl_scheme_object** %12, align 8
  br label %21

43:                                               ; preds = %21
  %44 = getelementptr inbounds %struct.tl_int_array, %struct.tl_int_array* %10, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* %5, align 4
  br label %46

46:                                               ; preds = %43, %34
  %47 = load i32, i32* %5, align 4
  ret i32 %47
}

declare dso_local i32 @tl_compiler_clear_errors(%struct.tl_compiler*) #1

declare dso_local i32 @tl_int_array_init(%struct.tl_int_array*, i32*, i32) #1

declare dso_local i32 @tl_expression_serialize(%struct.tl_compiler*, i32, %struct.tl_int_array*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
