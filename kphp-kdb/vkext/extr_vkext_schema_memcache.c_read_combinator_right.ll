; ModuleID = '/home/carl/AnghaBench/kphp-kdb/vkext/extr_vkext_schema_memcache.c_read_combinator_right.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/vkext/extr_vkext_schema_memcache.c_read_combinator_right.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tl_combinator = type { i32, i32 }

@schema_version = common dso_local global i32 0, align 4
@TLS_COMBINATOR_RIGHT_V2 = common dso_local global i64 0, align 8
@TLS_COMBINATOR_RIGHT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @read_combinator_right(%struct.tl_combinator* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tl_combinator*, align 8
  store %struct.tl_combinator* %0, %struct.tl_combinator** %3, align 8
  %4 = load i32, i32* @schema_version, align 4
  %5 = icmp sge i32 %4, 2
  br i1 %5, label %6, label %20

6:                                                ; preds = %1
  %7 = call i64 (...) @tl_parse_int()
  %8 = load i64, i64* @TLS_COMBINATOR_RIGHT_V2, align 8
  %9 = icmp ne i64 %7, %8
  br i1 %9, label %13, label %10

10:                                               ; preds = %6
  %11 = call i64 (...) @tl_parse_error()
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %10, %6
  store i32 -1, i32* %2, align 4
  br label %41

14:                                               ; preds = %10
  %15 = load %struct.tl_combinator*, %struct.tl_combinator** %3, align 8
  %16 = getelementptr inbounds %struct.tl_combinator, %struct.tl_combinator* %15, i32 0, i32 1
  %17 = call i32 @read_type_expr(i32* %16)
  %18 = load %struct.tl_combinator*, %struct.tl_combinator** %3, align 8
  %19 = getelementptr inbounds %struct.tl_combinator, %struct.tl_combinator* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 4
  br label %34

20:                                               ; preds = %1
  %21 = call i64 (...) @tl_parse_int()
  %22 = load i64, i64* @TLS_COMBINATOR_RIGHT, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %27, label %24

24:                                               ; preds = %20
  %25 = call i64 (...) @tl_parse_error()
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %24, %20
  store i32 -1, i32* %2, align 4
  br label %41

28:                                               ; preds = %24
  %29 = load %struct.tl_combinator*, %struct.tl_combinator** %3, align 8
  %30 = getelementptr inbounds %struct.tl_combinator, %struct.tl_combinator* %29, i32 0, i32 1
  %31 = call i32 @read_tree(i32* %30)
  %32 = load %struct.tl_combinator*, %struct.tl_combinator** %3, align 8
  %33 = getelementptr inbounds %struct.tl_combinator, %struct.tl_combinator* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 4
  br label %34

34:                                               ; preds = %28, %14
  %35 = load %struct.tl_combinator*, %struct.tl_combinator** %3, align 8
  %36 = getelementptr inbounds %struct.tl_combinator, %struct.tl_combinator* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %34
  store i32 -1, i32* %2, align 4
  br label %41

40:                                               ; preds = %34
  store i32 1, i32* %2, align 4
  br label %41

41:                                               ; preds = %40, %39, %27, %13
  %42 = load i32, i32* %2, align 4
  ret i32 %42
}

declare dso_local i64 @tl_parse_int(...) #1

declare dso_local i64 @tl_parse_error(...) #1

declare dso_local i32 @read_type_expr(i32*) #1

declare dso_local i32 @read_tree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
