; ModuleID = '/home/carl/AnghaBench/kphp-kdb/TL/extr_tl-serialize.c_tl_serialize_rpc_function_call.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/TL/extr_tl-serialize.c_tl_serialize_rpc_function_call.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tl_compiler = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_7__* }
%struct.tl_scheme_object = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32* }

@obj_empty_list = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"expected single rpc call\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tl_serialize_rpc_function_call(%struct.tl_compiler* %0, i8* %1, i32* %2, i32 %3, i8** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.tl_compiler*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8**, align 8
  %12 = alloca %struct.tl_scheme_object*, align 8
  %13 = alloca i32, align 4
  store %struct.tl_compiler* %0, %struct.tl_compiler** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i8** %4, i8*** %11, align 8
  %14 = load %struct.tl_compiler*, %struct.tl_compiler** %7, align 8
  %15 = load i8*, i8** %8, align 8
  %16 = call %struct.tl_scheme_object* @tl_scheme_parse(%struct.tl_compiler* %14, i8* %15)
  store %struct.tl_scheme_object* %16, %struct.tl_scheme_object** %12, align 8
  %17 = load i8**, i8*** %11, align 8
  store i8* null, i8** %17, align 8
  %18 = load %struct.tl_scheme_object*, %struct.tl_scheme_object** %12, align 8
  %19 = icmp eq %struct.tl_scheme_object* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %5
  store i32 -1, i32* %6, align 4
  br label %66

21:                                               ; preds = %5
  %22 = load %struct.tl_scheme_object*, %struct.tl_scheme_object** %12, align 8
  %23 = getelementptr inbounds %struct.tl_scheme_object, %struct.tl_scheme_object* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = icmp ne i32* %26, @obj_empty_list
  br i1 %27, label %28, label %35

28:                                               ; preds = %21
  %29 = load %struct.tl_compiler*, %struct.tl_compiler** %7, align 8
  %30 = call i32 @tl_compiler_clear_errors(%struct.tl_compiler* %29)
  %31 = load %struct.tl_scheme_object*, %struct.tl_scheme_object** %12, align 8
  %32 = call i32 @tl_scheme_object_free(%struct.tl_scheme_object* %31)
  %33 = load %struct.tl_compiler*, %struct.tl_compiler** %7, align 8
  %34 = call i32 @tl_failf(%struct.tl_compiler* %33, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  store i32 %34, i32* %6, align 4
  br label %66

35:                                               ; preds = %21
  %36 = load %struct.tl_compiler*, %struct.tl_compiler** %7, align 8
  %37 = load %struct.tl_scheme_object*, %struct.tl_scheme_object** %12, align 8
  %38 = load i32*, i32** %9, align 8
  %39 = load i32, i32* %10, align 4
  %40 = call i32 @tl_serialize(%struct.tl_compiler* %36, %struct.tl_scheme_object* %37, i32* %38, i32 %39)
  store i32 %40, i32* %13, align 4
  %41 = load i32, i32* %13, align 4
  %42 = icmp sge i32 %41, 0
  br i1 %42, label %43, label %64

43:                                               ; preds = %35
  %44 = load i8**, i8*** %11, align 8
  %45 = icmp ne i8** %44, null
  br i1 %45, label %46, label %64

46:                                               ; preds = %43
  %47 = load %struct.tl_compiler*, %struct.tl_compiler** %7, align 8
  %48 = getelementptr inbounds %struct.tl_compiler, %struct.tl_compiler* %47, i32 0, i32 0
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %48, align 8
  %50 = call i32 @assert(%struct.TYPE_7__* %49)
  %51 = load %struct.tl_compiler*, %struct.tl_compiler** %7, align 8
  %52 = getelementptr inbounds %struct.tl_compiler, %struct.tl_compiler* %51, i32 0, i32 0
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 0
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %54, align 8
  %56 = call i32 @assert(%struct.TYPE_7__* %55)
  %57 = load %struct.tl_compiler*, %struct.tl_compiler** %7, align 8
  %58 = getelementptr inbounds %struct.tl_compiler, %struct.tl_compiler* %57, i32 0, i32 0
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 0
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %60, align 8
  %62 = call i8* @cstr_dup(%struct.TYPE_7__* %61)
  %63 = load i8**, i8*** %11, align 8
  store i8* %62, i8** %63, align 8
  br label %64

64:                                               ; preds = %46, %43, %35
  %65 = load i32, i32* %13, align 4
  store i32 %65, i32* %6, align 4
  br label %66

66:                                               ; preds = %64, %28, %20
  %67 = load i32, i32* %6, align 4
  ret i32 %67
}

declare dso_local %struct.tl_scheme_object* @tl_scheme_parse(%struct.tl_compiler*, i8*) #1

declare dso_local i32 @tl_compiler_clear_errors(%struct.tl_compiler*) #1

declare dso_local i32 @tl_scheme_object_free(%struct.tl_scheme_object*) #1

declare dso_local i32 @tl_failf(%struct.tl_compiler*, i8*) #1

declare dso_local i32 @tl_serialize(%struct.tl_compiler*, %struct.tl_scheme_object*, i32*, i32) #1

declare dso_local i32 @assert(%struct.TYPE_7__*) #1

declare dso_local i8* @cstr_dup(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
