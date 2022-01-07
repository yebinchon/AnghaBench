; ModuleID = '/home/carl/AnghaBench/kphp-kdb/search/extr_search-value-buffer.c_value_buffer_init.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/search/extr_search-value-buffer.c_value_buffer_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.value_buffer = type { i32, i64, i64, i64, %struct.connection*, i64, i32**, i32**, i32*, i32*, i32* }
%struct.connection = type { i32 }

@value_buffer_output_int_text = common dso_local global i32 0, align 4
@value_buffer_output_long_text = common dso_local global i32 0, align 4
@value_buffer_output_char_text = common dso_local global i32 0, align 4
@value_buffer_output_item_id_text = common dso_local global i32* null, align 8
@value_buffer_output_hex_long_text = common dso_local global i32* null, align 8
@value_buffer_output_int_raw = common dso_local global i32* null, align 8
@value_buffer_output_long_raw = common dso_local global i32* null, align 8
@value_buffer_output_char_noop = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"VALUE \00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c" 0 .........\0D\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @value_buffer_init(%struct.value_buffer* %0, %struct.connection* %1, i8* %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.value_buffer*, align 8
  %9 = alloca %struct.connection*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.value_buffer* %0, %struct.value_buffer** %8, align 8
  store %struct.connection* %1, %struct.connection** %9, align 8
  store i8* %2, i8** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %14 = load i32, i32* %13, align 4
  %15 = sub nsw i32 512, %14
  %16 = load %struct.value_buffer*, %struct.value_buffer** %8, align 8
  %17 = getelementptr inbounds %struct.value_buffer, %struct.value_buffer* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 8
  %18 = load i32, i32* %12, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %31, label %20

20:                                               ; preds = %6
  %21 = load %struct.value_buffer*, %struct.value_buffer** %8, align 8
  %22 = getelementptr inbounds %struct.value_buffer, %struct.value_buffer* %21, i32 0, i32 10
  store i32* @value_buffer_output_int_text, i32** %22, align 8
  %23 = load %struct.value_buffer*, %struct.value_buffer** %8, align 8
  %24 = getelementptr inbounds %struct.value_buffer, %struct.value_buffer* %23, i32 0, i32 9
  store i32* @value_buffer_output_long_text, i32** %24, align 8
  %25 = load %struct.value_buffer*, %struct.value_buffer** %8, align 8
  %26 = getelementptr inbounds %struct.value_buffer, %struct.value_buffer* %25, i32 0, i32 8
  store i32* @value_buffer_output_char_text, i32** %26, align 8
  %27 = load %struct.value_buffer*, %struct.value_buffer** %8, align 8
  %28 = getelementptr inbounds %struct.value_buffer, %struct.value_buffer* %27, i32 0, i32 7
  store i32** @value_buffer_output_item_id_text, i32*** %28, align 8
  %29 = load %struct.value_buffer*, %struct.value_buffer** %8, align 8
  %30 = getelementptr inbounds %struct.value_buffer, %struct.value_buffer* %29, i32 0, i32 6
  store i32** @value_buffer_output_hex_long_text, i32*** %30, align 8
  br label %44

31:                                               ; preds = %6
  %32 = load i32*, i32** @value_buffer_output_int_raw, align 8
  %33 = load %struct.value_buffer*, %struct.value_buffer** %8, align 8
  %34 = getelementptr inbounds %struct.value_buffer, %struct.value_buffer* %33, i32 0, i32 10
  store i32* %32, i32** %34, align 8
  %35 = load i32*, i32** @value_buffer_output_long_raw, align 8
  %36 = load %struct.value_buffer*, %struct.value_buffer** %8, align 8
  %37 = getelementptr inbounds %struct.value_buffer, %struct.value_buffer* %36, i32 0, i32 9
  store i32* %35, i32** %37, align 8
  %38 = load %struct.value_buffer*, %struct.value_buffer** %8, align 8
  %39 = getelementptr inbounds %struct.value_buffer, %struct.value_buffer* %38, i32 0, i32 8
  store i32* @value_buffer_output_char_noop, i32** %39, align 8
  %40 = load %struct.value_buffer*, %struct.value_buffer** %8, align 8
  %41 = getelementptr inbounds %struct.value_buffer, %struct.value_buffer* %40, i32 0, i32 7
  store i32** @value_buffer_output_long_raw, i32*** %41, align 8
  %42 = load %struct.value_buffer*, %struct.value_buffer** %8, align 8
  %43 = getelementptr inbounds %struct.value_buffer, %struct.value_buffer* %42, i32 0, i32 6
  store i32** @value_buffer_output_long_raw, i32*** %43, align 8
  br label %44

44:                                               ; preds = %31, %20
  %45 = load %struct.connection*, %struct.connection** %9, align 8
  %46 = getelementptr inbounds %struct.connection, %struct.connection* %45, i32 0, i32 0
  %47 = call i32 @write_out(i32* %46, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 6)
  %48 = load %struct.connection*, %struct.connection** %9, align 8
  %49 = getelementptr inbounds %struct.connection, %struct.connection* %48, i32 0, i32 0
  %50 = load i8*, i8** %10, align 8
  %51 = load i32, i32* %11, align 4
  %52 = call i32 @write_out(i32* %49, i8* %50, i32 %51)
  %53 = load %struct.value_buffer*, %struct.value_buffer** %8, align 8
  %54 = getelementptr inbounds %struct.value_buffer, %struct.value_buffer* %53, i32 0, i32 5
  store i64 0, i64* %54, align 8
  %55 = load %struct.connection*, %struct.connection** %9, align 8
  %56 = getelementptr inbounds %struct.connection, %struct.connection* %55, i32 0, i32 0
  %57 = call i64 @get_write_ptr(i32* %56, i32 512)
  %58 = load %struct.value_buffer*, %struct.value_buffer** %8, align 8
  %59 = getelementptr inbounds %struct.value_buffer, %struct.value_buffer* %58, i32 0, i32 1
  store i64 %57, i64* %59, align 8
  %60 = load %struct.value_buffer*, %struct.value_buffer** %8, align 8
  %61 = getelementptr inbounds %struct.value_buffer, %struct.value_buffer* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %65, label %64

64:                                               ; preds = %44
  store i32 0, i32* %7, align 4
  br label %93

65:                                               ; preds = %44
  %66 = load %struct.connection*, %struct.connection** %9, align 8
  %67 = load %struct.value_buffer*, %struct.value_buffer** %8, align 8
  %68 = getelementptr inbounds %struct.value_buffer, %struct.value_buffer* %67, i32 0, i32 4
  store %struct.connection* %66, %struct.connection** %68, align 8
  %69 = load %struct.value_buffer*, %struct.value_buffer** %8, align 8
  %70 = getelementptr inbounds %struct.value_buffer, %struct.value_buffer* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.value_buffer*, %struct.value_buffer** %8, align 8
  %73 = getelementptr inbounds %struct.value_buffer, %struct.value_buffer* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = sext i32 %74 to i64
  %76 = add nsw i64 %71, %75
  %77 = load %struct.value_buffer*, %struct.value_buffer** %8, align 8
  %78 = getelementptr inbounds %struct.value_buffer, %struct.value_buffer* %77, i32 0, i32 3
  store i64 %76, i64* %78, align 8
  %79 = load %struct.value_buffer*, %struct.value_buffer** %8, align 8
  %80 = getelementptr inbounds %struct.value_buffer, %struct.value_buffer* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = call i32 @memcpy(i64 %81, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 14)
  %83 = load %struct.value_buffer*, %struct.value_buffer** %8, align 8
  %84 = getelementptr inbounds %struct.value_buffer, %struct.value_buffer* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = add nsw i64 %85, 3
  %87 = load %struct.value_buffer*, %struct.value_buffer** %8, align 8
  %88 = getelementptr inbounds %struct.value_buffer, %struct.value_buffer* %87, i32 0, i32 2
  store i64 %86, i64* %88, align 8
  %89 = load %struct.value_buffer*, %struct.value_buffer** %8, align 8
  %90 = getelementptr inbounds %struct.value_buffer, %struct.value_buffer* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = add nsw i64 %91, 14
  store i64 %92, i64* %90, align 8
  store i32 1, i32* %7, align 4
  br label %93

93:                                               ; preds = %65, %64
  %94 = load i32, i32* %7, align 4
  ret i32 %94
}

declare dso_local i32 @write_out(i32*, i8*, i32) #1

declare dso_local i64 @get_write_ptr(i32*, i32) #1

declare dso_local i32 @memcpy(i64, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
