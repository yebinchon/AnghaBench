; ModuleID = '/home/carl/AnghaBench/kphp-kdb/TL/extr_tl-parser-new.c_change_var_ptrs.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/TL/extr_tl-parser-new.c_change_var_ptrs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tl_combinator_tree = type { i64, i32, %struct.tl_combinator_tree*, %struct.tl_combinator_tree* }
%struct.tl_type = type { i32 }

@act_field = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [2 x i8] c"#\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"Type\00", align 1
@act_var = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @change_var_ptrs(%struct.tl_combinator_tree* %0, %struct.tl_combinator_tree* %1, i32** %2) #0 {
  %4 = alloca %struct.tl_combinator_tree*, align 8
  %5 = alloca %struct.tl_combinator_tree*, align 8
  %6 = alloca i32**, align 8
  %7 = alloca %struct.tl_type*, align 8
  store %struct.tl_combinator_tree* %0, %struct.tl_combinator_tree** %4, align 8
  store %struct.tl_combinator_tree* %1, %struct.tl_combinator_tree** %5, align 8
  store i32** %2, i32*** %6, align 8
  %8 = load %struct.tl_combinator_tree*, %struct.tl_combinator_tree** %4, align 8
  %9 = icmp ne %struct.tl_combinator_tree* %8, null
  br i1 %9, label %10, label %13

10:                                               ; preds = %3
  %11 = load %struct.tl_combinator_tree*, %struct.tl_combinator_tree** %5, align 8
  %12 = icmp ne %struct.tl_combinator_tree* %11, null
  br i1 %12, label %24, label %13

13:                                               ; preds = %10, %3
  %14 = load %struct.tl_combinator_tree*, %struct.tl_combinator_tree** %4, align 8
  %15 = icmp ne %struct.tl_combinator_tree* %14, null
  br i1 %15, label %20, label %16

16:                                               ; preds = %13
  %17 = load %struct.tl_combinator_tree*, %struct.tl_combinator_tree** %5, align 8
  %18 = icmp ne %struct.tl_combinator_tree* %17, null
  %19 = xor i1 %18, true
  br label %20

20:                                               ; preds = %16, %13
  %21 = phi i1 [ false, %13 ], [ %19, %16 ]
  %22 = zext i1 %21 to i32
  %23 = call i32 @assert(i32 %22)
  br label %97

24:                                               ; preds = %10
  %25 = load %struct.tl_combinator_tree*, %struct.tl_combinator_tree** %4, align 8
  %26 = getelementptr inbounds %struct.tl_combinator_tree, %struct.tl_combinator_tree* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @act_field, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %55

30:                                               ; preds = %24
  %31 = load %struct.tl_combinator_tree*, %struct.tl_combinator_tree** %4, align 8
  %32 = getelementptr inbounds %struct.tl_combinator_tree, %struct.tl_combinator_tree* %31, i32 0, i32 3
  %33 = load %struct.tl_combinator_tree*, %struct.tl_combinator_tree** %32, align 8
  %34 = call %struct.tl_type* @tl_tree_get_type(%struct.tl_combinator_tree* %33)
  store %struct.tl_type* %34, %struct.tl_type** %7, align 8
  %35 = load %struct.tl_type*, %struct.tl_type** %7, align 8
  %36 = icmp ne %struct.tl_type* %35, null
  br i1 %36, label %37, label %54

37:                                               ; preds = %30
  %38 = load %struct.tl_type*, %struct.tl_type** %7, align 8
  %39 = getelementptr inbounds %struct.tl_type, %struct.tl_type* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @strcmp(i32 %40, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %37
  %44 = load %struct.tl_type*, %struct.tl_type** %7, align 8
  %45 = getelementptr inbounds %struct.tl_type, %struct.tl_type* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @strcmp(i32 %46, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %54, label %49

49:                                               ; preds = %43, %37
  %50 = load i32**, i32*** %6, align 8
  %51 = load %struct.tl_combinator_tree*, %struct.tl_combinator_tree** %4, align 8
  %52 = load %struct.tl_combinator_tree*, %struct.tl_combinator_tree** %5, align 8
  %53 = call i32 @tl_set_var_value(i32** %50, %struct.tl_combinator_tree* %51, %struct.tl_combinator_tree* %52)
  br label %54

54:                                               ; preds = %49, %43, %30
  br label %55

55:                                               ; preds = %54, %24
  %56 = load %struct.tl_combinator_tree*, %struct.tl_combinator_tree** %4, align 8
  %57 = getelementptr inbounds %struct.tl_combinator_tree, %struct.tl_combinator_tree* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @act_var, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %82

61:                                               ; preds = %55
  %62 = load %struct.tl_combinator_tree*, %struct.tl_combinator_tree** %5, align 8
  %63 = getelementptr inbounds %struct.tl_combinator_tree, %struct.tl_combinator_tree* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.tl_combinator_tree*, %struct.tl_combinator_tree** %4, align 8
  %66 = getelementptr inbounds %struct.tl_combinator_tree, %struct.tl_combinator_tree* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = icmp eq i32 %64, %67
  %69 = zext i1 %68 to i32
  %70 = call i32 @assert(i32 %69)
  %71 = load i32**, i32*** %6, align 8
  %72 = load %struct.tl_combinator_tree*, %struct.tl_combinator_tree** %4, align 8
  %73 = getelementptr inbounds %struct.tl_combinator_tree, %struct.tl_combinator_tree* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @tl_get_var_value(i32** %71, i32 %74)
  %76 = load %struct.tl_combinator_tree*, %struct.tl_combinator_tree** %5, align 8
  %77 = getelementptr inbounds %struct.tl_combinator_tree, %struct.tl_combinator_tree* %76, i32 0, i32 1
  store i32 %75, i32* %77, align 8
  %78 = load %struct.tl_combinator_tree*, %struct.tl_combinator_tree** %5, align 8
  %79 = getelementptr inbounds %struct.tl_combinator_tree, %struct.tl_combinator_tree* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @assert(i32 %80)
  br label %82

82:                                               ; preds = %61, %55
  %83 = load %struct.tl_combinator_tree*, %struct.tl_combinator_tree** %4, align 8
  %84 = getelementptr inbounds %struct.tl_combinator_tree, %struct.tl_combinator_tree* %83, i32 0, i32 3
  %85 = load %struct.tl_combinator_tree*, %struct.tl_combinator_tree** %84, align 8
  %86 = load %struct.tl_combinator_tree*, %struct.tl_combinator_tree** %5, align 8
  %87 = getelementptr inbounds %struct.tl_combinator_tree, %struct.tl_combinator_tree* %86, i32 0, i32 3
  %88 = load %struct.tl_combinator_tree*, %struct.tl_combinator_tree** %87, align 8
  %89 = load i32**, i32*** %6, align 8
  call void @change_var_ptrs(%struct.tl_combinator_tree* %85, %struct.tl_combinator_tree* %88, i32** %89)
  %90 = load %struct.tl_combinator_tree*, %struct.tl_combinator_tree** %4, align 8
  %91 = getelementptr inbounds %struct.tl_combinator_tree, %struct.tl_combinator_tree* %90, i32 0, i32 2
  %92 = load %struct.tl_combinator_tree*, %struct.tl_combinator_tree** %91, align 8
  %93 = load %struct.tl_combinator_tree*, %struct.tl_combinator_tree** %5, align 8
  %94 = getelementptr inbounds %struct.tl_combinator_tree, %struct.tl_combinator_tree* %93, i32 0, i32 2
  %95 = load %struct.tl_combinator_tree*, %struct.tl_combinator_tree** %94, align 8
  %96 = load i32**, i32*** %6, align 8
  call void @change_var_ptrs(%struct.tl_combinator_tree* %92, %struct.tl_combinator_tree* %95, i32** %96)
  br label %97

97:                                               ; preds = %82, %20
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.tl_type* @tl_tree_get_type(%struct.tl_combinator_tree*) #1

declare dso_local i32 @strcmp(i32, i8*) #1

declare dso_local i32 @tl_set_var_value(i32**, %struct.tl_combinator_tree*, %struct.tl_combinator_tree*) #1

declare dso_local i32 @tl_get_var_value(i32**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
