; ModuleID = '/home/carl/AnghaBench/kphp-kdb/TL/extr_tl-parser-new.c_check_nat_val.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/TL/extr_tl-parser-new.c_check_nat_val.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tl_combinator_tree = type { i64, i64, i32 }
%struct.tl_var_value = type { i64, %struct.tl_combinator_tree* }

@__tok = common dso_local global i64 0, align 8
@type_type = common dso_local global i64 0, align 8
@type_num_value = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [37 x i8] c"Variable has negative value. Error.\0A\00", align 1
@type_num = common dso_local global i64 0, align 8
@_T = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @check_nat_val(i64 %0, %struct.tl_combinator_tree* %1) #0 {
  %3 = alloca %struct.tl_var_value, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.tl_combinator_tree*, align 8
  %6 = bitcast %struct.tl_var_value* %3 to { i64, %struct.tl_combinator_tree* }*
  %7 = getelementptr inbounds { i64, %struct.tl_combinator_tree* }, { i64, %struct.tl_combinator_tree* }* %6, i32 0, i32 0
  store i64 %0, i64* %7, align 8
  %8 = getelementptr inbounds { i64, %struct.tl_combinator_tree* }, { i64, %struct.tl_combinator_tree* }* %6, i32 0, i32 1
  store %struct.tl_combinator_tree* %1, %struct.tl_combinator_tree** %8, align 8
  %9 = load i64, i64* @__tok, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  br label %69

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.tl_var_value, %struct.tl_var_value* %3, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  store i64 %14, i64* %4, align 8
  %15 = getelementptr inbounds %struct.tl_var_value, %struct.tl_var_value* %3, i32 0, i32 1
  %16 = load %struct.tl_combinator_tree*, %struct.tl_combinator_tree** %15, align 8
  store %struct.tl_combinator_tree* %16, %struct.tl_combinator_tree** %5, align 8
  %17 = load %struct.tl_combinator_tree*, %struct.tl_combinator_tree** %5, align 8
  %18 = getelementptr inbounds %struct.tl_combinator_tree, %struct.tl_combinator_tree* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @type_type, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %12
  br label %69

23:                                               ; preds = %12
  br label %24

24:                                               ; preds = %23, %68
  %25 = load %struct.tl_combinator_tree*, %struct.tl_combinator_tree** %5, align 8
  %26 = getelementptr inbounds %struct.tl_combinator_tree, %struct.tl_combinator_tree* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @type_num_value, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %40

30:                                               ; preds = %24
  %31 = load i64, i64* %4, align 8
  %32 = load %struct.tl_combinator_tree*, %struct.tl_combinator_tree** %5, align 8
  %33 = getelementptr inbounds %struct.tl_combinator_tree, %struct.tl_combinator_tree* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = add nsw i64 %31, %34
  %36 = icmp slt i64 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %30
  store i64 0, i64* @__tok, align 8
  %38 = call i32 @vkprintf(i32 3, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  br label %69

39:                                               ; preds = %30
  br label %69

40:                                               ; preds = %24
  %41 = load %struct.tl_combinator_tree*, %struct.tl_combinator_tree** %5, align 8
  %42 = getelementptr inbounds %struct.tl_combinator_tree, %struct.tl_combinator_tree* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @type_num, align 8
  %45 = icmp eq i64 %43, %44
  %46 = zext i1 %45 to i32
  %47 = call i32 @assert(i32 %46)
  %48 = load %struct.tl_combinator_tree*, %struct.tl_combinator_tree** %5, align 8
  %49 = getelementptr inbounds %struct.tl_combinator_tree, %struct.tl_combinator_tree* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* %4, align 8
  %52 = add nsw i64 %51, %50
  store i64 %52, i64* %4, align 8
  %53 = load i32, i32* @_T, align 4
  %54 = load %struct.tl_combinator_tree*, %struct.tl_combinator_tree** %5, align 8
  %55 = getelementptr inbounds %struct.tl_combinator_tree, %struct.tl_combinator_tree* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = call i64 @tl_get_var_value_num(i32 %53, i32 %56)
  %58 = load i64, i64* %4, align 8
  %59 = add nsw i64 %58, %57
  store i64 %59, i64* %4, align 8
  %60 = load i32, i32* @_T, align 4
  %61 = load %struct.tl_combinator_tree*, %struct.tl_combinator_tree** %5, align 8
  %62 = getelementptr inbounds %struct.tl_combinator_tree, %struct.tl_combinator_tree* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = call %struct.tl_combinator_tree* @tl_get_var_value(i32 %60, i32 %63)
  store %struct.tl_combinator_tree* %64, %struct.tl_combinator_tree** %5, align 8
  %65 = load %struct.tl_combinator_tree*, %struct.tl_combinator_tree** %5, align 8
  %66 = icmp ne %struct.tl_combinator_tree* %65, null
  br i1 %66, label %68, label %67

67:                                               ; preds = %40
  br label %69

68:                                               ; preds = %40
  br label %24

69:                                               ; preds = %67, %39, %37, %22, %11
  ret void
}

declare dso_local i32 @vkprintf(i32, i8*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @tl_get_var_value_num(i32, i32) #1

declare dso_local %struct.tl_combinator_tree* @tl_get_var_value(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
