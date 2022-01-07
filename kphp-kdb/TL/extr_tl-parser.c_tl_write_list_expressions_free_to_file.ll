; ModuleID = '/home/carl/AnghaBench/kphp-kdb/TL/extr_tl-parser.c_tl_write_list_expressions_free_to_file.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/TL/extr_tl-parser.c_tl_write_list_expressions_free_to_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tl_compiler = type { i32 }
%struct.tl_expression = type { %struct.tl_expression* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tl_write_list_expressions_free_to_file(i32* %0, %struct.tl_compiler* %1, %struct.tl_expression* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.tl_compiler*, align 8
  %6 = alloca %struct.tl_expression*, align 8
  %7 = alloca %struct.tl_expression*, align 8
  %8 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.tl_compiler* %1, %struct.tl_compiler** %5, align 8
  store %struct.tl_expression* %2, %struct.tl_expression** %6, align 8
  %9 = load %struct.tl_compiler*, %struct.tl_compiler** %5, align 8
  %10 = getelementptr inbounds %struct.tl_compiler, %struct.tl_compiler* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %8, align 4
  %12 = load %struct.tl_compiler*, %struct.tl_compiler** %5, align 8
  %13 = getelementptr inbounds %struct.tl_compiler, %struct.tl_compiler* %12, i32 0, i32 0
  store i32 1, i32* %13, align 4
  %14 = load %struct.tl_expression*, %struct.tl_expression** %6, align 8
  %15 = getelementptr inbounds %struct.tl_expression, %struct.tl_expression* %14, i32 0, i32 0
  %16 = load %struct.tl_expression*, %struct.tl_expression** %15, align 8
  store %struct.tl_expression* %16, %struct.tl_expression** %7, align 8
  br label %17

17:                                               ; preds = %26, %3
  %18 = load %struct.tl_expression*, %struct.tl_expression** %7, align 8
  %19 = load %struct.tl_expression*, %struct.tl_expression** %6, align 8
  %20 = icmp ne %struct.tl_expression* %18, %19
  br i1 %20, label %21, label %30

21:                                               ; preds = %17
  %22 = load i32*, i32** %4, align 8
  %23 = load %struct.tl_compiler*, %struct.tl_compiler** %5, align 8
  %24 = load %struct.tl_expression*, %struct.tl_expression** %7, align 8
  %25 = call i32 @tl_expression_write_to_file(i32* %22, %struct.tl_compiler* %23, %struct.tl_expression* %24)
  br label %26

26:                                               ; preds = %21
  %27 = load %struct.tl_expression*, %struct.tl_expression** %7, align 8
  %28 = getelementptr inbounds %struct.tl_expression, %struct.tl_expression* %27, i32 0, i32 0
  %29 = load %struct.tl_expression*, %struct.tl_expression** %28, align 8
  store %struct.tl_expression* %29, %struct.tl_expression** %7, align 8
  br label %17

30:                                               ; preds = %17
  %31 = load i32, i32* %8, align 4
  %32 = load %struct.tl_compiler*, %struct.tl_compiler** %5, align 8
  %33 = getelementptr inbounds %struct.tl_compiler, %struct.tl_compiler* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 4
  ret void
}

declare dso_local i32 @tl_expression_write_to_file(i32*, %struct.tl_compiler*, %struct.tl_expression*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
