; ModuleID = '/home/carl/AnghaBench/kphp-kdb/TL/extr_tl-parser-new.c_write_types.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/TL/extr_tl-parser-new.c_write_types.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__f = common dso_local global i32 0, align 4
@schema_version = common dso_local global i32 0, align 4
@TLS_SCHEMA = common dso_local global i32 0, align 4
@TLS_SCHEMA_V2 = common dso_local global i32 0, align 4
@MAGIC = common dso_local global i32 0, align 4
@num = common dso_local global i64 0, align 8
@total_types_num = common dso_local global i32 0, align 4
@tl_type_tree = common dso_local global i32 0, align 4
@write_type = common dso_local global i32 0, align 4
@total_constructors_num = common dso_local global i32 0, align 4
@write_type_constructors = common dso_local global i32 0, align 4
@total_functions_num = common dso_local global i32 0, align 4
@tl_function_tree = common dso_local global i32 0, align 4
@write_function = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @write_types(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  store i32 %3, i32* @__f, align 4
  %4 = load i32, i32* @schema_version, align 4
  %5 = icmp eq i32 %4, 1
  br i1 %5, label %6, label %9

6:                                                ; preds = %1
  %7 = load i32, i32* @TLS_SCHEMA, align 4
  %8 = call i32 @wint(i32 %7)
  br label %19

9:                                                ; preds = %1
  %10 = load i32, i32* @schema_version, align 4
  %11 = icmp eq i32 %10, 2
  br i1 %11, label %12, label %15

12:                                               ; preds = %9
  %13 = load i32, i32* @TLS_SCHEMA_V2, align 4
  %14 = call i32 @wint(i32 %13)
  br label %18

15:                                               ; preds = %9
  %16 = load i32, i32* @MAGIC, align 4
  %17 = call i32 @wint(i32 %16)
  br label %18

18:                                               ; preds = %15, %12
  br label %19

19:                                               ; preds = %18, %6
  %20 = load i32, i32* @schema_version, align 4
  %21 = icmp sge i32 %20, 1
  br i1 %21, label %22, label %26

22:                                               ; preds = %19
  %23 = call i32 @wint(i32 0)
  %24 = call i32 @time(i32 0)
  %25 = call i32 @wint(i32 %24)
  br label %26

26:                                               ; preds = %22, %19
  store i64 0, i64* @num, align 8
  %27 = load i32, i32* @schema_version, align 4
  %28 = icmp sge i32 %27, 1
  br i1 %28, label %29, label %32

29:                                               ; preds = %26
  %30 = load i32, i32* @total_types_num, align 4
  %31 = call i32 @wint(i32 %30)
  br label %32

32:                                               ; preds = %29, %26
  %33 = load i32, i32* @tl_type_tree, align 4
  %34 = load i32, i32* @write_type, align 4
  %35 = call i32 @tree_act_tl_type(i32 %33, i32 %34)
  %36 = load i32, i32* @schema_version, align 4
  %37 = icmp sge i32 %36, 1
  br i1 %37, label %38, label %41

38:                                               ; preds = %32
  %39 = load i32, i32* @total_constructors_num, align 4
  %40 = call i32 @wint(i32 %39)
  br label %41

41:                                               ; preds = %38, %32
  %42 = load i32, i32* @tl_type_tree, align 4
  %43 = load i32, i32* @write_type_constructors, align 4
  %44 = call i32 @tree_act_tl_type(i32 %42, i32 %43)
  %45 = load i32, i32* @schema_version, align 4
  %46 = icmp sge i32 %45, 1
  br i1 %46, label %47, label %50

47:                                               ; preds = %41
  %48 = load i32, i32* @total_functions_num, align 4
  %49 = call i32 @wint(i32 %48)
  br label %50

50:                                               ; preds = %47, %41
  %51 = load i32, i32* @tl_function_tree, align 4
  %52 = load i32, i32* @write_function, align 4
  %53 = call i32 @tree_act_tl_constructor(i32 %51, i32 %52)
  ret void
}

declare dso_local i32 @wint(i32) #1

declare dso_local i32 @time(i32) #1

declare dso_local i32 @tree_act_tl_type(i32, i32) #1

declare dso_local i32 @tree_act_tl_constructor(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
