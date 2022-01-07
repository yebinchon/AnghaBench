; ModuleID = '/home/carl/AnghaBench/kphp-kdb/TL/extr_tl-parser-new.c_write_opt_type.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/TL/extr_tl-parser-new.c_write_opt_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tl_combinator_tree = type { i32, i32, %struct.tl_combinator_tree*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@schema_version = common dso_local global i32 0, align 4
@act_array = common dso_local global i32 0, align 4
@act_type = common dso_local global i32 0, align 4
@act_var = common dso_local global i32 0, align 4
@act_arg = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @write_opt_type(%struct.tl_combinator_tree* %0, i32** %1, i32* %2) #0 {
  %4 = alloca %struct.tl_combinator_tree*, align 8
  %5 = alloca i32**, align 8
  %6 = alloca i32*, align 8
  store %struct.tl_combinator_tree* %0, %struct.tl_combinator_tree** %4, align 8
  store i32** %1, i32*** %5, align 8
  store i32* %2, i32** %6, align 8
  %7 = load i32, i32* @schema_version, align 4
  %8 = icmp sge i32 %7, 1
  br i1 %8, label %9, label %10

9:                                                ; preds = %3
  br label %12

10:                                               ; preds = %3
  %11 = call i32 @wint(i32 -20)
  br label %12

12:                                               ; preds = %10, %9
  %13 = load i32**, i32*** %5, align 8
  %14 = load %struct.tl_combinator_tree*, %struct.tl_combinator_tree** %4, align 8
  %15 = getelementptr inbounds %struct.tl_combinator_tree, %struct.tl_combinator_tree* %14, i32 0, i32 3
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @tl_get_var_value_num(i32** %13, i32 %18)
  %20 = call i32 @wint(i32 %19)
  %21 = load %struct.tl_combinator_tree*, %struct.tl_combinator_tree** %4, align 8
  %22 = getelementptr inbounds %struct.tl_combinator_tree, %struct.tl_combinator_tree* %21, i32 0, i32 3
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @wint(i32 %25)
  %27 = load %struct.tl_combinator_tree*, %struct.tl_combinator_tree** %4, align 8
  %28 = call i32 @assert(%struct.tl_combinator_tree* %27)
  %29 = load %struct.tl_combinator_tree*, %struct.tl_combinator_tree** %4, align 8
  %30 = getelementptr inbounds %struct.tl_combinator_tree, %struct.tl_combinator_tree* %29, i32 0, i32 2
  %31 = load %struct.tl_combinator_tree*, %struct.tl_combinator_tree** %30, align 8
  store %struct.tl_combinator_tree* %31, %struct.tl_combinator_tree** %4, align 8
  %32 = load %struct.tl_combinator_tree*, %struct.tl_combinator_tree** %4, align 8
  %33 = getelementptr inbounds %struct.tl_combinator_tree, %struct.tl_combinator_tree* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  switch i32 %34, label %73 [
    i32 128, label %35
  ]

35:                                               ; preds = %12
  %36 = load %struct.tl_combinator_tree*, %struct.tl_combinator_tree** %4, align 8
  %37 = getelementptr inbounds %struct.tl_combinator_tree, %struct.tl_combinator_tree* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @act_array, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %46

41:                                               ; preds = %35
  %42 = load %struct.tl_combinator_tree*, %struct.tl_combinator_tree** %4, align 8
  %43 = load i32**, i32*** %5, align 8
  %44 = load i32*, i32** %6, align 8
  %45 = call i32 @write_array(%struct.tl_combinator_tree* %42, i32** %43, i32* %44)
  br label %72

46:                                               ; preds = %35
  %47 = load %struct.tl_combinator_tree*, %struct.tl_combinator_tree** %4, align 8
  %48 = getelementptr inbounds %struct.tl_combinator_tree, %struct.tl_combinator_tree* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @act_type, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %64, label %52

52:                                               ; preds = %46
  %53 = load %struct.tl_combinator_tree*, %struct.tl_combinator_tree** %4, align 8
  %54 = getelementptr inbounds %struct.tl_combinator_tree, %struct.tl_combinator_tree* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @act_var, align 4
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %64, label %58

58:                                               ; preds = %52
  %59 = load %struct.tl_combinator_tree*, %struct.tl_combinator_tree** %4, align 8
  %60 = getelementptr inbounds %struct.tl_combinator_tree, %struct.tl_combinator_tree* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @act_arg, align 4
  %63 = icmp eq i32 %61, %62
  br i1 %63, label %64, label %69

64:                                               ; preds = %58, %52, %46
  %65 = load %struct.tl_combinator_tree*, %struct.tl_combinator_tree** %4, align 8
  %66 = load i32**, i32*** %5, align 8
  %67 = load i32*, i32** %6, align 8
  %68 = call i32 @write_type_rec(%struct.tl_combinator_tree* %65, i32 0, i32** %66, i32* %67)
  br label %71

69:                                               ; preds = %58
  %70 = call i32 @assert(%struct.tl_combinator_tree* null)
  br label %71

71:                                               ; preds = %69, %64
  br label %72

72:                                               ; preds = %71, %41
  br label %75

73:                                               ; preds = %12
  %74 = call i32 @assert(%struct.tl_combinator_tree* null)
  br label %75

75:                                               ; preds = %73, %72
  ret void
}

declare dso_local i32 @wint(i32) #1

declare dso_local i32 @tl_get_var_value_num(i32**, i32) #1

declare dso_local i32 @assert(%struct.tl_combinator_tree*) #1

declare dso_local i32 @write_array(%struct.tl_combinator_tree*, i32**, i32*) #1

declare dso_local i32 @write_type_rec(%struct.tl_combinator_tree*, i32, i32**, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
