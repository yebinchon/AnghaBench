; ModuleID = '/home/carl/AnghaBench/kphp-kdb/seqmap/extr_seqmap-data.c_do_listree_iterator.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/seqmap/extr_seqmap-data.c_do_listree_iterator.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.item = type { %struct.item*, i32, i32, i32, %struct.item* }

@NODE_TYPE_UNSURE = common dso_local global i64 0, align 8
@NODE_TYPE_SURE = common dso_local global i64 0, align 8
@__index_pos = common dso_local global i32 0, align 4
@NODE_TYPE_PLUS = common dso_local global i32 0, align 4
@NODE_TYPE_ZERO = common dso_local global i32 0, align 4
@NODE_TYPE_MINUS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @do_listree_iterator(%struct.item* %0, i32 %1, i32* %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.item*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.item* %0, %struct.item** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %17 = load %struct.item*, %struct.item** %7, align 8
  %18 = icmp ne %struct.item* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %148

20:                                               ; preds = %5
  %21 = load %struct.item*, %struct.item** %7, align 8
  %22 = getelementptr inbounds %struct.item, %struct.item* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.item*, %struct.item** %7, align 8
  %25 = getelementptr inbounds %struct.item, %struct.item* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %8, align 4
  %28 = load i32*, i32** %9, align 8
  %29 = call i32 @key_cmp(i32 %23, i32 %26, i32 %27, i32* %28)
  store i32 %29, i32* %12, align 4
  %30 = load i32, i32* %12, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %41

32:                                               ; preds = %20
  %33 = load %struct.item*, %struct.item** %7, align 8
  %34 = getelementptr inbounds %struct.item, %struct.item* %33, i32 0, i32 0
  %35 = load %struct.item*, %struct.item** %34, align 8
  %36 = load i32, i32* %8, align 4
  %37 = load i32*, i32** %9, align 8
  %38 = load i32, i32* %10, align 4
  %39 = load i32*, i32** %11, align 8
  %40 = call i32 @do_listree_iterator(%struct.item* %35, i32 %36, i32* %37, i32 %38, i32* %39)
  store i32 %40, i32* %6, align 4
  br label %148

41:                                               ; preds = %20
  %42 = load %struct.item*, %struct.item** %7, align 8
  %43 = getelementptr inbounds %struct.item, %struct.item* %42, i32 0, i32 4
  %44 = load %struct.item*, %struct.item** %43, align 8
  %45 = load i32, i32* %8, align 4
  %46 = load i32*, i32** %9, align 8
  %47 = load i32, i32* %10, align 4
  %48 = load i32*, i32** %11, align 8
  %49 = call i32 @do_listree_iterator(%struct.item* %44, i32 %45, i32* %46, i32 %47, i32* %48)
  store i32 %49, i32* %13, align 4
  %50 = load i32, i32* %13, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %41
  %53 = load i32, i32* %13, align 4
  store i32 %53, i32* %6, align 4
  br label %148

54:                                               ; preds = %41
  %55 = load %struct.item*, %struct.item** %7, align 8
  %56 = getelementptr inbounds %struct.item, %struct.item* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.item*, %struct.item** %7, align 8
  %59 = getelementptr inbounds %struct.item, %struct.item* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* %10, align 4
  %62 = load i32*, i32** %11, align 8
  %63 = call i32 @key_cmp(i32 %57, i32 %60, i32 %61, i32* %62)
  store i32 %63, i32* %12, align 4
  %64 = load i32, i32* %12, align 4
  %65 = icmp sgt i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %54
  store i32 0, i32* %6, align 4
  br label %148

67:                                               ; preds = %54
  %68 = load %struct.item*, %struct.item** %7, align 8
  %69 = call i32 @NODE_TYPE_T(%struct.item* %68)
  store i32 %69, i32* %14, align 4
  %70 = load %struct.item*, %struct.item** %7, align 8
  %71 = call i64 @NODE_TYPE_S(%struct.item* %70)
  %72 = load i64, i64* @NODE_TYPE_UNSURE, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %85

74:                                               ; preds = %67
  %75 = load %struct.item*, %struct.item** %7, align 8
  %76 = getelementptr inbounds %struct.item, %struct.item* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.item*, %struct.item** %7, align 8
  %79 = getelementptr inbounds %struct.item, %struct.item* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @index_load_metafile(i32 %77, i32 %80)
  %82 = icmp eq i32 %81, -2
  br i1 %82, label %83, label %84

83:                                               ; preds = %74
  store i32 -2, i32* %6, align 4
  br label %148

84:                                               ; preds = %74
  br label %85

85:                                               ; preds = %84, %67
  %86 = load %struct.item*, %struct.item** %7, align 8
  %87 = call i64 @NODE_TYPE_S(%struct.item* %86)
  %88 = load i64, i64* @NODE_TYPE_SURE, align 8
  %89 = icmp eq i64 %87, %88
  %90 = zext i1 %89 to i32
  %91 = call i32 @assert(i32 %90)
  %92 = load i32, i32* @__index_pos, align 4
  %93 = load %struct.item*, %struct.item** %7, align 8
  %94 = getelementptr inbounds %struct.item, %struct.item* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 8
  %96 = call i32 @report_index(i32 %92, i32 %95)
  store i32 %96, i32* %13, align 4
  %97 = load i32, i32* %13, align 4
  %98 = icmp slt i32 %97, 0
  br i1 %98, label %99, label %101

99:                                               ; preds = %85
  %100 = load i32, i32* %13, align 4
  store i32 %100, i32* %6, align 4
  br label %148

101:                                              ; preds = %85
  %102 = load %struct.item*, %struct.item** %7, align 8
  %103 = getelementptr inbounds %struct.item, %struct.item* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 8
  store i32 %104, i32* @__index_pos, align 4
  %105 = load i32, i32* %14, align 4
  %106 = load i32, i32* @NODE_TYPE_PLUS, align 4
  %107 = icmp eq i32 %105, %106
  br i1 %107, label %108, label %116

108:                                              ; preds = %101
  %109 = load %struct.item*, %struct.item** %7, align 8
  %110 = call i32 @__tree_report(%struct.item* %109)
  store i32 %110, i32* %15, align 4
  %111 = load i32, i32* %15, align 4
  %112 = icmp slt i32 %111, 0
  br i1 %112, label %113, label %115

113:                                              ; preds = %108
  %114 = load i32, i32* %15, align 4
  store i32 %114, i32* %6, align 4
  br label %148

115:                                              ; preds = %108
  br label %139

116:                                              ; preds = %101
  %117 = load i32, i32* %14, align 4
  %118 = load i32, i32* @NODE_TYPE_ZERO, align 4
  %119 = icmp eq i32 %117, %118
  br i1 %119, label %120, label %130

120:                                              ; preds = %116
  %121 = load %struct.item*, %struct.item** %7, align 8
  %122 = call i32 @__tree_report(%struct.item* %121)
  store i32 %122, i32* %16, align 4
  %123 = load i32, i32* %16, align 4
  %124 = icmp slt i32 %123, 0
  br i1 %124, label %125, label %127

125:                                              ; preds = %120
  %126 = load i32, i32* %16, align 4
  store i32 %126, i32* %6, align 4
  br label %148

127:                                              ; preds = %120
  %128 = load i32, i32* @__index_pos, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* @__index_pos, align 4
  br label %138

130:                                              ; preds = %116
  %131 = load i32, i32* %14, align 4
  %132 = load i32, i32* @NODE_TYPE_MINUS, align 4
  %133 = icmp eq i32 %131, %132
  %134 = zext i1 %133 to i32
  %135 = call i32 @assert(i32 %134)
  %136 = load i32, i32* @__index_pos, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* @__index_pos, align 4
  br label %138

138:                                              ; preds = %130, %127
  br label %139

139:                                              ; preds = %138, %115
  %140 = load %struct.item*, %struct.item** %7, align 8
  %141 = getelementptr inbounds %struct.item, %struct.item* %140, i32 0, i32 0
  %142 = load %struct.item*, %struct.item** %141, align 8
  %143 = load i32, i32* %8, align 4
  %144 = load i32*, i32** %9, align 8
  %145 = load i32, i32* %10, align 4
  %146 = load i32*, i32** %11, align 8
  %147 = call i32 @do_listree_iterator(%struct.item* %142, i32 %143, i32* %144, i32 %145, i32* %146)
  store i32 %147, i32* %6, align 4
  br label %148

148:                                              ; preds = %139, %125, %113, %99, %83, %66, %52, %32, %19
  %149 = load i32, i32* %6, align 4
  ret i32 %149
}

declare dso_local i32 @key_cmp(i32, i32, i32, i32*) #1

declare dso_local i32 @NODE_TYPE_T(%struct.item*) #1

declare dso_local i64 @NODE_TYPE_S(%struct.item*) #1

declare dso_local i32 @index_load_metafile(i32, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @report_index(i32, i32) #1

declare dso_local i32 @__tree_report(%struct.item*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
