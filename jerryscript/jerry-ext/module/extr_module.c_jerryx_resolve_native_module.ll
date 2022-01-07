; ModuleID = '/home/carl/AnghaBench/jerryscript/jerry-ext/module/extr_module.c_jerryx_resolve_native_module.c'
source_filename = "/home/carl/AnghaBench/jerryscript/jerry-ext/module/extr_module.c_jerryx_resolve_native_module.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 (...)*, i32*, %struct.TYPE_3__* }

@jerry_char_t = common dso_local global i32 0, align 4
@name_string = common dso_local global i64 0, align 8
@first_module_p = common dso_local global %struct.TYPE_3__* null, align 8
@JERRY_ERROR_TYPE = common dso_local global i32 0, align 4
@on_resolve_absent = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*)* @jerryx_resolve_native_module to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jerryx_resolve_native_module(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  store %struct.TYPE_3__* null, %struct.TYPE_3__** %6, align 8
  %8 = load i32, i32* %4, align 4
  %9 = call i64 @jerry_get_utf8_string_size(i32 %8)
  store i64 %9, i64* %7, align 8
  %10 = load i32, i32* @jerry_char_t, align 4
  %11 = load i64, i64* @name_string, align 8
  %12 = load i64, i64* %7, align 8
  %13 = call i32 @JERRY_VLA(i32 %10, i64 %11, i64 %12)
  %14 = load i32, i32* %4, align 4
  %15 = load i64, i64* @name_string, align 8
  %16 = load i64, i64* %7, align 8
  %17 = call i32 @jerry_string_to_utf8_char_buffer(i32 %14, i64 %15, i64 %16)
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** @first_module_p, align 8
  store %struct.TYPE_3__* %18, %struct.TYPE_3__** %6, align 8
  br label %19

19:                                               ; preds = %64, %2
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %21 = icmp ne %struct.TYPE_3__* %20, null
  br i1 %21, label %22, label %68

22:                                               ; preds = %19
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 1
  %25 = load i32*, i32** %24, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %27, label %63

27:                                               ; preds = %22
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 1
  %30 = load i32*, i32** %29, align 8
  %31 = bitcast i32* %30 to i8*
  %32 = call i64 @strlen(i8* %31)
  %33 = load i64, i64* %7, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %63

35:                                               ; preds = %27
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 1
  %38 = load i32*, i32** %37, align 8
  %39 = bitcast i32* %38 to i8*
  %40 = load i64, i64* @name_string, align 8
  %41 = inttoptr i64 %40 to i8*
  %42 = load i64, i64* %7, align 8
  %43 = call i32 @strncmp(i8* %39, i8* %41, i64 %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %63, label %45

45:                                               ; preds = %35
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = load i32 (...)*, i32 (...)** %47, align 8
  %49 = icmp ne i32 (...)* %48, null
  br i1 %49, label %50, label %55

50:                                               ; preds = %45
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  %53 = load i32 (...)*, i32 (...)** %52, align 8
  %54 = call i32 (...) %53()
  br label %60

55:                                               ; preds = %45
  %56 = load i32, i32* @JERRY_ERROR_TYPE, align 4
  %57 = load i32, i32* @on_resolve_absent, align 4
  %58 = load i32, i32* %4, align 4
  %59 = call i32 @jerryx_module_create_error(i32 %56, i32 %57, i32 %58)
  br label %60

60:                                               ; preds = %55, %50
  %61 = phi i32 [ %54, %50 ], [ %59, %55 ]
  %62 = load i32*, i32** %5, align 8
  store i32 %61, i32* %62, align 4
  store i32 1, i32* %3, align 4
  br label %69

63:                                               ; preds = %35, %27, %22
  br label %64

64:                                               ; preds = %63
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 2
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %66, align 8
  store %struct.TYPE_3__* %67, %struct.TYPE_3__** %6, align 8
  br label %19

68:                                               ; preds = %19
  store i32 0, i32* %3, align 4
  br label %69

69:                                               ; preds = %68, %60
  %70 = load i32, i32* %3, align 4
  ret i32 %70
}

declare dso_local i64 @jerry_get_utf8_string_size(i32) #1

declare dso_local i32 @JERRY_VLA(i32, i64, i64) #1

declare dso_local i32 @jerry_string_to_utf8_char_buffer(i32, i64, i64) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @strncmp(i8*, i8*, i64) #1

declare dso_local i32 @jerryx_module_create_error(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
