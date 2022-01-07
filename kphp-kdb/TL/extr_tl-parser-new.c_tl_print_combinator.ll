; ModuleID = '/home/carl/AnghaBench/kphp-kdb/TL/extr_tl-parser-new.c_tl_print_combinator.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/TL/extr_tl-parser-new.c_tl_print_combinator.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tl_constructor = type { i8*, i8*, i32, i32, i32 }

@tl_print_combinator._buf = internal global [10 x i8] zeroinitializer, align 1
@.str = private unnamed_addr constant [6 x i8] c"#%08x\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"=\00", align 1
@output_expressions = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"%.*s\0A\00", align 1
@buf_pos = common dso_local global i8* null, align 8
@buf = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tl_print_combinator(%struct.tl_constructor* %0) #0 {
  %2 = alloca %struct.tl_constructor*, align 8
  store %struct.tl_constructor* %0, %struct.tl_constructor** %2, align 8
  %3 = call i32 (...) @tl_buf_reset()
  %4 = load %struct.tl_constructor*, %struct.tl_constructor** %2, align 8
  %5 = getelementptr inbounds %struct.tl_constructor, %struct.tl_constructor* %4, i32 0, i32 0
  %6 = load i8*, i8** %5, align 8
  %7 = icmp ne i8* %6, null
  br i1 %7, label %8, label %12

8:                                                ; preds = %1
  %9 = load %struct.tl_constructor*, %struct.tl_constructor** %2, align 8
  %10 = getelementptr inbounds %struct.tl_constructor, %struct.tl_constructor* %9, i32 0, i32 0
  %11 = load i8*, i8** %10, align 8
  br label %16

12:                                               ; preds = %1
  %13 = load %struct.tl_constructor*, %struct.tl_constructor** %2, align 8
  %14 = getelementptr inbounds %struct.tl_constructor, %struct.tl_constructor* %13, i32 0, i32 1
  %15 = load i8*, i8** %14, align 8
  br label %16

16:                                               ; preds = %12, %8
  %17 = phi i8* [ %11, %8 ], [ %15, %12 ]
  %18 = call i32 @tl_buf_add_string_nospace(i8* %17, i32 -1)
  %19 = load %struct.tl_constructor*, %struct.tl_constructor** %2, align 8
  %20 = getelementptr inbounds %struct.tl_constructor, %struct.tl_constructor* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @sprintf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @tl_print_combinator._buf, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %21)
  %23 = call i32 @tl_buf_add_string_nospace(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @tl_print_combinator._buf, i64 0, i64 0), i32 -1)
  %24 = load %struct.tl_constructor*, %struct.tl_constructor** %2, align 8
  %25 = getelementptr inbounds %struct.tl_constructor, %struct.tl_constructor* %24, i32 0, i32 4
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @tl_buf_add_tree(i32 %26, i32 1)
  %28 = call i32 @tl_buf_add_string(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 -1)
  %29 = load %struct.tl_constructor*, %struct.tl_constructor** %2, align 8
  %30 = getelementptr inbounds %struct.tl_constructor, %struct.tl_constructor* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @tl_buf_add_tree(i32 %31, i32 1)
  %33 = load i32, i32* @output_expressions, align 4
  %34 = icmp sge i32 %33, 1
  br i1 %34, label %35, label %40

35:                                               ; preds = %16
  %36 = load i32, i32* @stderr, align 4
  %37 = load i8*, i8** @buf_pos, align 8
  %38 = load i32, i32* @buf, align 4
  %39 = call i32 @fprintf(i32 %36, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* %37, i32 %38)
  br label %40

40:                                               ; preds = %35, %16
  %41 = load %struct.tl_constructor*, %struct.tl_constructor** %2, align 8
  %42 = getelementptr inbounds %struct.tl_constructor, %struct.tl_constructor* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  ret i32 %43
}

declare dso_local i32 @tl_buf_reset(...) #1

declare dso_local i32 @tl_buf_add_string_nospace(i8*, i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @tl_buf_add_tree(i32, i32) #1

declare dso_local i32 @tl_buf_add_string(i8*, i32) #1

declare dso_local i32 @fprintf(i32, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
