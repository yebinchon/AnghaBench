; ModuleID = '/home/carl/AnghaBench/kphp-kdb/TL/extr_tl-parser.c_tl_write_expressions_to_file.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/TL/extr_tl-parser.c_tl_write_expressions_to_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tl_compiler = type { i32* }

@.str = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"fopen (\22%s\22, \22w\22) fail. %m\00", align 1
@TL_SECTION_TYPES = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [17 x i8] c"---functions---\0A\00", align 1
@TL_SECTION_FUNCTIONS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tl_write_expressions_to_file(%struct.tl_compiler* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tl_compiler*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  store %struct.tl_compiler* %0, %struct.tl_compiler** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load i8*, i8** %5, align 8
  %8 = call i32* @fopen(i8* %7, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %8, i32** %6, align 8
  %9 = load i32*, i32** %6, align 8
  %10 = icmp eq i32* %9, null
  br i1 %10, label %11, label %15

11:                                               ; preds = %2
  %12 = load %struct.tl_compiler*, %struct.tl_compiler** %4, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = call i32 @tl_failf(%struct.tl_compiler* %12, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i8* %13)
  store i32 %14, i32* %3, align 4
  br label %36

15:                                               ; preds = %2
  %16 = load i32*, i32** %6, align 8
  %17 = load %struct.tl_compiler*, %struct.tl_compiler** %4, align 8
  %18 = load %struct.tl_compiler*, %struct.tl_compiler** %4, align 8
  %19 = getelementptr inbounds %struct.tl_compiler, %struct.tl_compiler* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = load i64, i64* @TL_SECTION_TYPES, align 8
  %22 = getelementptr inbounds i32, i32* %20, i64 %21
  %23 = call i32 @tl_write_list_expressions_free_to_file(i32* %16, %struct.tl_compiler* %17, i32* %22)
  %24 = load i32*, i32** %6, align 8
  %25 = call i32 @fprintf(i32* %24, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  %26 = load i32*, i32** %6, align 8
  %27 = load %struct.tl_compiler*, %struct.tl_compiler** %4, align 8
  %28 = load %struct.tl_compiler*, %struct.tl_compiler** %4, align 8
  %29 = getelementptr inbounds %struct.tl_compiler, %struct.tl_compiler* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = load i64, i64* @TL_SECTION_FUNCTIONS, align 8
  %32 = getelementptr inbounds i32, i32* %30, i64 %31
  %33 = call i32 @tl_write_list_expressions_free_to_file(i32* %26, %struct.tl_compiler* %27, i32* %32)
  %34 = load i32*, i32** %6, align 8
  %35 = call i32 @fclose(i32* %34)
  store i32 0, i32* %3, align 4
  br label %36

36:                                               ; preds = %15, %11
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @tl_failf(%struct.tl_compiler*, i8*, i8*) #1

declare dso_local i32 @tl_write_list_expressions_free_to_file(i32*, %struct.tl_compiler*, i32*) #1

declare dso_local i32 @fprintf(i32*, i8*) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
