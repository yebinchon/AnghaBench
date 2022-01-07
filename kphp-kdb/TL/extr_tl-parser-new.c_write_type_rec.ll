; ModuleID = '/home/carl/AnghaBench/kphp-kdb/TL/extr_tl-parser-new.c_write_type_rec.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/TL/extr_tl-parser-new.c_write_type_rec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tl_combinator_tree = type { i64, i32, %struct.tl_type*, %struct.TYPE_2__*, %struct.tl_combinator_tree* }
%struct.tl_type = type { i32 }
%struct.TYPE_2__ = type { i64 }

@act_arg = common dso_local global i64 0, align 8
@schema_version = common dso_local global i32 0, align 4
@type_num_value = common dso_local global i64 0, align 8
@type_num = common dso_local global i64 0, align 8
@TLS_EXPR_NAT = common dso_local global i32 0, align 4
@TLS_EXPR_TYPE = common dso_local global i32 0, align 4
@act_var = common dso_local global i64 0, align 8
@act_type = common dso_local global i64 0, align 8
@TLS_TREE_TYPE_VAR = common dso_local global i32 0, align 4
@TLS_TYPE_VAR = common dso_local global i32 0, align 4
@TLS_TREE_TYPE = common dso_local global i32 0, align 4
@TLS_TYPE_EXPR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @write_type_rec(%struct.tl_combinator_tree* %0, i32 %1, i32** %2, i32* %3) #0 {
  %5 = alloca %struct.tl_combinator_tree*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32**, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.tl_type*, align 8
  store %struct.tl_combinator_tree* %0, %struct.tl_combinator_tree** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32** %2, i32*** %7, align 8
  store i32* %3, i32** %8, align 8
  %10 = load %struct.tl_combinator_tree*, %struct.tl_combinator_tree** %5, align 8
  %11 = getelementptr inbounds %struct.tl_combinator_tree, %struct.tl_combinator_tree* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @act_arg, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %55

15:                                               ; preds = %4
  %16 = load %struct.tl_combinator_tree*, %struct.tl_combinator_tree** %5, align 8
  %17 = getelementptr inbounds %struct.tl_combinator_tree, %struct.tl_combinator_tree* %16, i32 0, i32 4
  %18 = load %struct.tl_combinator_tree*, %struct.tl_combinator_tree** %17, align 8
  %19 = load i32, i32* %6, align 4
  %20 = add nsw i32 %19, 1
  %21 = load i32**, i32*** %7, align 8
  %22 = load i32*, i32** %8, align 8
  call void @write_type_rec(%struct.tl_combinator_tree* %18, i32 %20, i32** %21, i32* %22)
  %23 = load i32, i32* @schema_version, align 4
  %24 = icmp sge i32 %23, 2
  br i1 %24, label %25, label %48

25:                                               ; preds = %15
  %26 = load %struct.tl_combinator_tree*, %struct.tl_combinator_tree** %5, align 8
  %27 = getelementptr inbounds %struct.tl_combinator_tree, %struct.tl_combinator_tree* %26, i32 0, i32 3
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @type_num_value, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %41, label %33

33:                                               ; preds = %25
  %34 = load %struct.tl_combinator_tree*, %struct.tl_combinator_tree** %5, align 8
  %35 = getelementptr inbounds %struct.tl_combinator_tree, %struct.tl_combinator_tree* %34, i32 0, i32 3
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @type_num, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %33, %25
  %42 = load i32, i32* @TLS_EXPR_NAT, align 4
  %43 = call i32 @wint(i32 %42)
  br label %47

44:                                               ; preds = %33
  %45 = load i32, i32* @TLS_EXPR_TYPE, align 4
  %46 = call i32 @wint(i32 %45)
  br label %47

47:                                               ; preds = %44, %41
  br label %48

48:                                               ; preds = %47, %15
  %49 = load %struct.tl_combinator_tree*, %struct.tl_combinator_tree** %5, align 8
  %50 = getelementptr inbounds %struct.tl_combinator_tree, %struct.tl_combinator_tree* %49, i32 0, i32 3
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = load i32**, i32*** %7, align 8
  %53 = load i32*, i32** %8, align 8
  %54 = call i32 @write_tree(%struct.TYPE_2__* %51, i32 0, i32** %52, i32* %53)
  br label %137

55:                                               ; preds = %4
  %56 = load %struct.tl_combinator_tree*, %struct.tl_combinator_tree** %5, align 8
  %57 = getelementptr inbounds %struct.tl_combinator_tree, %struct.tl_combinator_tree* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @act_var, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %67, label %61

61:                                               ; preds = %55
  %62 = load %struct.tl_combinator_tree*, %struct.tl_combinator_tree** %5, align 8
  %63 = getelementptr inbounds %struct.tl_combinator_tree, %struct.tl_combinator_tree* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @act_type, align 8
  %66 = icmp eq i64 %64, %65
  br label %67

67:                                               ; preds = %61, %55
  %68 = phi i1 [ true, %55 ], [ %66, %61 ]
  %69 = zext i1 %68 to i32
  %70 = call i32 @assert(i32 %69)
  %71 = load %struct.tl_combinator_tree*, %struct.tl_combinator_tree** %5, align 8
  %72 = getelementptr inbounds %struct.tl_combinator_tree, %struct.tl_combinator_tree* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @act_var, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %107

76:                                               ; preds = %67
  %77 = load i32, i32* %6, align 4
  %78 = icmp ne i32 %77, 0
  %79 = xor i1 %78, true
  %80 = zext i1 %79 to i32
  %81 = call i32 @assert(i32 %80)
  %82 = load i32, i32* @schema_version, align 4
  %83 = icmp eq i32 %82, 1
  br i1 %83, label %84, label %87

84:                                               ; preds = %76
  %85 = load i32, i32* @TLS_TREE_TYPE_VAR, align 4
  %86 = call i32 @wint(i32 %85)
  br label %96

87:                                               ; preds = %76
  %88 = load i32, i32* @schema_version, align 4
  %89 = icmp eq i32 %88, 2
  br i1 %89, label %90, label %93

90:                                               ; preds = %87
  %91 = load i32, i32* @TLS_TYPE_VAR, align 4
  %92 = call i32 @wint(i32 %91)
  br label %95

93:                                               ; preds = %87
  %94 = call i32 @wint(i32 -6)
  br label %95

95:                                               ; preds = %93, %90
  br label %96

96:                                               ; preds = %95, %84
  %97 = load i32**, i32*** %7, align 8
  %98 = load %struct.tl_combinator_tree*, %struct.tl_combinator_tree** %5, align 8
  %99 = getelementptr inbounds %struct.tl_combinator_tree, %struct.tl_combinator_tree* %98, i32 0, i32 2
  %100 = load %struct.tl_type*, %struct.tl_type** %99, align 8
  %101 = call i32 @tl_get_var_value_num(i32** %97, %struct.tl_type* %100)
  %102 = call i32 @wint(i32 %101)
  %103 = load %struct.tl_combinator_tree*, %struct.tl_combinator_tree** %5, align 8
  %104 = getelementptr inbounds %struct.tl_combinator_tree, %struct.tl_combinator_tree* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 8
  %106 = call i32 @write_var_type_flags(i32 %105)
  br label %136

107:                                              ; preds = %67
  %108 = load i32, i32* @schema_version, align 4
  %109 = icmp eq i32 %108, 1
  br i1 %109, label %110, label %113

110:                                              ; preds = %107
  %111 = load i32, i32* @TLS_TREE_TYPE, align 4
  %112 = call i32 @wint(i32 %111)
  br label %122

113:                                              ; preds = %107
  %114 = load i32, i32* @schema_version, align 4
  %115 = icmp eq i32 %114, 2
  br i1 %115, label %116, label %119

116:                                              ; preds = %113
  %117 = load i32, i32* @TLS_TYPE_EXPR, align 4
  %118 = call i32 @wint(i32 %117)
  br label %121

119:                                              ; preds = %113
  %120 = call i32 @wint(i32 -7)
  br label %121

121:                                              ; preds = %119, %116
  br label %122

122:                                              ; preds = %121, %110
  %123 = load %struct.tl_combinator_tree*, %struct.tl_combinator_tree** %5, align 8
  %124 = getelementptr inbounds %struct.tl_combinator_tree, %struct.tl_combinator_tree* %123, i32 0, i32 2
  %125 = load %struct.tl_type*, %struct.tl_type** %124, align 8
  store %struct.tl_type* %125, %struct.tl_type** %9, align 8
  %126 = load %struct.tl_type*, %struct.tl_type** %9, align 8
  %127 = getelementptr inbounds %struct.tl_type, %struct.tl_type* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = call i32 @wint(i32 %128)
  %130 = load %struct.tl_combinator_tree*, %struct.tl_combinator_tree** %5, align 8
  %131 = getelementptr inbounds %struct.tl_combinator_tree, %struct.tl_combinator_tree* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 8
  %133 = call i32 @write_type_flags(i32 %132)
  %134 = load i32, i32* %6, align 4
  %135 = call i32 @wint(i32 %134)
  br label %136

136:                                              ; preds = %122, %96
  br label %137

137:                                              ; preds = %136, %48
  ret void
}

declare dso_local i32 @wint(i32) #1

declare dso_local i32 @write_tree(%struct.TYPE_2__*, i32, i32**, i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @tl_get_var_value_num(i32**, %struct.tl_type*) #1

declare dso_local i32 @write_var_type_flags(i32) #1

declare dso_local i32 @write_type_flags(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
