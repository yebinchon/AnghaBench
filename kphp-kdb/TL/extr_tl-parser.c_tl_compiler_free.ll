; ModuleID = '/home/carl/AnghaBench/kphp-kdb/TL/extr_tl-parser.c_tl_compiler_free.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/TL/extr_tl-parser.c_tl_compiler_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tl_compiler = type { i32, i32*, i32*, i32, i32* }

@TL_MAX_ERRORS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tl_compiler_free(%struct.tl_compiler* %0) #0 {
  %2 = alloca %struct.tl_compiler*, align 8
  %3 = alloca i32, align 4
  store %struct.tl_compiler* %0, %struct.tl_compiler** %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %16, %1
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* @TL_MAX_ERRORS, align 4
  %7 = icmp slt i32 %5, %6
  br i1 %7, label %8, label %19

8:                                                ; preds = %4
  %9 = load %struct.tl_compiler*, %struct.tl_compiler** %2, align 8
  %10 = getelementptr inbounds %struct.tl_compiler, %struct.tl_compiler* %9, i32 0, i32 4
  %11 = load i32*, i32** %10, align 8
  %12 = load i32, i32* %3, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i32, i32* %11, i64 %13
  %15 = call i32 @cstr_free(i32* %14)
  br label %16

16:                                               ; preds = %8
  %17 = load i32, i32* %3, align 4
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* %3, align 4
  br label %4

19:                                               ; preds = %4
  %20 = load %struct.tl_compiler*, %struct.tl_compiler** %2, align 8
  %21 = getelementptr inbounds %struct.tl_compiler, %struct.tl_compiler* %20, i32 0, i32 3
  %22 = call i32 @tl_string_buffer_free(i32* %21)
  store i32 0, i32* %3, align 4
  br label %23

23:                                               ; preds = %44, %19
  %24 = load i32, i32* %3, align 4
  %25 = icmp slt i32 %24, 2
  br i1 %25, label %26, label %47

26:                                               ; preds = %23
  %27 = load %struct.tl_compiler*, %struct.tl_compiler** %2, align 8
  %28 = load i32, i32* %3, align 4
  %29 = call i32 @tl_list_expressions_free(%struct.tl_compiler* %27, i32 %28)
  %30 = load %struct.tl_compiler*, %struct.tl_compiler** %2, align 8
  %31 = getelementptr inbounds %struct.tl_compiler, %struct.tl_compiler* %30, i32 0, i32 2
  %32 = load i32*, i32** %31, align 8
  %33 = load i32, i32* %3, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  %36 = call i32 @tl_hashmap_free(i32* %35)
  %37 = load %struct.tl_compiler*, %struct.tl_compiler** %2, align 8
  %38 = getelementptr inbounds %struct.tl_compiler, %struct.tl_compiler* %37, i32 0, i32 1
  %39 = load i32*, i32** %38, align 8
  %40 = load i32, i32* %3, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  %43 = call i32 @tl_hashmap_free(i32* %42)
  br label %44

44:                                               ; preds = %26
  %45 = load i32, i32* %3, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %3, align 4
  br label %23

47:                                               ; preds = %23
  %48 = load %struct.tl_compiler*, %struct.tl_compiler** %2, align 8
  %49 = getelementptr inbounds %struct.tl_compiler, %struct.tl_compiler* %48, i32 0, i32 0
  %50 = call i32 @tl_hashmap_free(i32* %49)
  ret void
}

declare dso_local i32 @cstr_free(i32*) #1

declare dso_local i32 @tl_string_buffer_free(i32*) #1

declare dso_local i32 @tl_list_expressions_free(%struct.tl_compiler*, i32) #1

declare dso_local i32 @tl_hashmap_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
