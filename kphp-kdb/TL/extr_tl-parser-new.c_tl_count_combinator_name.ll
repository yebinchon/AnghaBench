; ModuleID = '/home/carl/AnghaBench/kphp-kdb/TL/extr_tl-parser-new.c_tl_count_combinator_name.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/TL/extr_tl-parser-new.c_tl_count_combinator_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tl_constructor = type { i32, i32, i32, i64, i64 }

@.str = private unnamed_addr constant [2 x i8] c"=\00", align 1
@buf = common dso_local global i32 0, align 4
@buf_pos = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tl_count_combinator_name(%struct.tl_constructor* %0) #0 {
  %2 = alloca %struct.tl_constructor*, align 8
  store %struct.tl_constructor* %0, %struct.tl_constructor** %2, align 8
  %3 = load %struct.tl_constructor*, %struct.tl_constructor** %2, align 8
  %4 = call i32 @assert(%struct.tl_constructor* %3)
  %5 = call i32 (...) @tl_buf_reset()
  %6 = load %struct.tl_constructor*, %struct.tl_constructor** %2, align 8
  %7 = getelementptr inbounds %struct.tl_constructor, %struct.tl_constructor* %6, i32 0, i32 4
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %1
  %11 = load %struct.tl_constructor*, %struct.tl_constructor** %2, align 8
  %12 = getelementptr inbounds %struct.tl_constructor, %struct.tl_constructor* %11, i32 0, i32 4
  %13 = load i64, i64* %12, align 8
  br label %18

14:                                               ; preds = %1
  %15 = load %struct.tl_constructor*, %struct.tl_constructor** %2, align 8
  %16 = getelementptr inbounds %struct.tl_constructor, %struct.tl_constructor* %15, i32 0, i32 3
  %17 = load i64, i64* %16, align 8
  br label %18

18:                                               ; preds = %14, %10
  %19 = phi i64 [ %13, %10 ], [ %17, %14 ]
  %20 = call i32 @tl_buf_add_string_nospace(i64 %19, i32 -1)
  %21 = load %struct.tl_constructor*, %struct.tl_constructor** %2, align 8
  %22 = getelementptr inbounds %struct.tl_constructor, %struct.tl_constructor* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @tl_buf_add_tree(i32 %23, i32 1)
  %25 = call i32 @tl_buf_add_string(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 -1)
  %26 = load %struct.tl_constructor*, %struct.tl_constructor** %2, align 8
  %27 = getelementptr inbounds %struct.tl_constructor, %struct.tl_constructor* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @tl_buf_add_tree(i32 %28, i32 1)
  %30 = load %struct.tl_constructor*, %struct.tl_constructor** %2, align 8
  %31 = getelementptr inbounds %struct.tl_constructor, %struct.tl_constructor* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %40, label %34

34:                                               ; preds = %18
  %35 = load i32, i32* @buf, align 4
  %36 = load i32, i32* @buf_pos, align 4
  %37 = call i32 @compute_crc32(i32 %35, i32 %36)
  %38 = load %struct.tl_constructor*, %struct.tl_constructor** %2, align 8
  %39 = getelementptr inbounds %struct.tl_constructor, %struct.tl_constructor* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 8
  br label %40

40:                                               ; preds = %34, %18
  %41 = load %struct.tl_constructor*, %struct.tl_constructor** %2, align 8
  %42 = getelementptr inbounds %struct.tl_constructor, %struct.tl_constructor* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  ret i32 %43
}

declare dso_local i32 @assert(%struct.tl_constructor*) #1

declare dso_local i32 @tl_buf_reset(...) #1

declare dso_local i32 @tl_buf_add_string_nospace(i64, i32) #1

declare dso_local i32 @tl_buf_add_tree(i32, i32) #1

declare dso_local i32 @tl_buf_add_string(i8*, i32) #1

declare dso_local i32 @compute_crc32(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
