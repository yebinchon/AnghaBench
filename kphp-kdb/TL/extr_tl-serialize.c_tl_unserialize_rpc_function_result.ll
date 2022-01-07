; ModuleID = '/home/carl/AnghaBench/kphp-kdb/TL/extr_tl-serialize.c_tl_unserialize_rpc_function_result.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/TL/extr_tl-serialize.c_tl_unserialize_rpc_function_result.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tl_compiler = type { i32 }
%struct.tl_buffer = type { i32 }
%struct.tl_scheme_object = type { i32 }

@TL_SECTION_TYPES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tl_unserialize_rpc_function_result(%struct.tl_compiler* %0, %struct.tl_buffer* %1, i32* %2, i32 %3, i8* %4, i32 %5) #0 {
  %7 = alloca %struct.tl_compiler*, align 8
  %8 = alloca %struct.tl_buffer*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.tl_scheme_object*, align 8
  %14 = alloca i32, align 4
  store %struct.tl_compiler* %0, %struct.tl_compiler** %7, align 8
  store %struct.tl_buffer* %1, %struct.tl_buffer** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  store i32 %5, i32* %12, align 4
  store %struct.tl_scheme_object* null, %struct.tl_scheme_object** %13, align 8
  %15 = load %struct.tl_compiler*, %struct.tl_compiler** %7, align 8
  %16 = call i32 @tl_compiler_clear_errors(%struct.tl_compiler* %15)
  %17 = load %struct.tl_compiler*, %struct.tl_compiler** %7, align 8
  %18 = load i32*, i32** %9, align 8
  %19 = load i32, i32* %10, align 4
  %20 = load i32, i32* @TL_SECTION_TYPES, align 4
  %21 = shl i32 1, %20
  %22 = load i8*, i8** %11, align 8
  %23 = call i32 @tl_expression_unserialize(%struct.tl_compiler* %17, i32* %18, i32 %19, i32 %21, i8* %22, %struct.tl_scheme_object** %13)
  store i32 %23, i32* %14, align 4
  %24 = load i32, i32* %14, align 4
  %25 = icmp sge i32 %24, 0
  br i1 %25, label %26, label %43

26:                                               ; preds = %6
  %27 = load %struct.tl_scheme_object*, %struct.tl_scheme_object** %13, align 8
  %28 = icmp ne %struct.tl_scheme_object* %27, null
  br i1 %28, label %29, label %43

29:                                               ; preds = %26
  %30 = load i32, i32* %12, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %29
  %33 = load %struct.tl_buffer*, %struct.tl_buffer** %8, align 8
  %34 = load %struct.tl_scheme_object*, %struct.tl_scheme_object** %13, align 8
  %35 = call i32 @tl_scheme_object_sbdump_indent(%struct.tl_buffer* %33, %struct.tl_scheme_object* %34, i32 0)
  br label %40

36:                                               ; preds = %29
  %37 = load %struct.tl_buffer*, %struct.tl_buffer** %8, align 8
  %38 = load %struct.tl_scheme_object*, %struct.tl_scheme_object** %13, align 8
  %39 = call i32 @tl_scheme_object_sbdump(%struct.tl_buffer* %37, %struct.tl_scheme_object* %38)
  br label %40

40:                                               ; preds = %36, %32
  %41 = load %struct.tl_scheme_object*, %struct.tl_scheme_object** %13, align 8
  %42 = call i32 @tl_scheme_object_free(%struct.tl_scheme_object* %41)
  br label %43

43:                                               ; preds = %40, %26, %6
  %44 = load i32, i32* %14, align 4
  ret i32 %44
}

declare dso_local i32 @tl_compiler_clear_errors(%struct.tl_compiler*) #1

declare dso_local i32 @tl_expression_unserialize(%struct.tl_compiler*, i32*, i32, i32, i8*, %struct.tl_scheme_object**) #1

declare dso_local i32 @tl_scheme_object_sbdump_indent(%struct.tl_buffer*, %struct.tl_scheme_object*, i32) #1

declare dso_local i32 @tl_scheme_object_sbdump(%struct.tl_buffer*, %struct.tl_scheme_object*) #1

declare dso_local i32 @tl_scheme_object_free(%struct.tl_scheme_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
