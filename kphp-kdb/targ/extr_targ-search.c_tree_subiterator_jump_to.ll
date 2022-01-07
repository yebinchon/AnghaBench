; ModuleID = '/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-search.c_tree_subiterator_jump_to.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-search.c_tree_subiterator_jump_to.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tree_subiterator = type { i32, i64, i8**, i32 }
%struct.intree_node = type { i32, i32, i8*, i8* }

@WordSpace = common dso_local global i32 0, align 4
@MAX_DEPTH = common dso_local global i64 0, align 8
@INFTY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tree_subiterator_jump_to(%struct.tree_subiterator* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tree_subiterator*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.intree_node*, align 8
  %9 = alloca i8*, align 8
  store %struct.tree_subiterator* %0, %struct.tree_subiterator** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = load %struct.tree_subiterator*, %struct.tree_subiterator** %4, align 8
  %12 = getelementptr inbounds %struct.tree_subiterator, %struct.tree_subiterator* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = add nsw i32 %13, 1
  %15 = icmp eq i32 %10, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load %struct.tree_subiterator*, %struct.tree_subiterator** %4, align 8
  %18 = call i32 @tree_subiterator_next(%struct.tree_subiterator* %17)
  store i32 %18, i32* %3, align 4
  br label %178

19:                                               ; preds = %2
  %20 = load i32, i32* %5, align 4
  %21 = load %struct.tree_subiterator*, %struct.tree_subiterator** %4, align 8
  %22 = getelementptr inbounds %struct.tree_subiterator, %struct.tree_subiterator* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp sgt i32 %20, %23
  br i1 %24, label %25, label %30

25:                                               ; preds = %19
  %26 = load %struct.tree_subiterator*, %struct.tree_subiterator** %4, align 8
  %27 = getelementptr inbounds %struct.tree_subiterator, %struct.tree_subiterator* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = icmp sgt i64 %28, 0
  br label %30

30:                                               ; preds = %25, %19
  %31 = phi i1 [ false, %19 ], [ %29, %25 ]
  %32 = zext i1 %31 to i32
  %33 = call i32 @assert(i32 %32)
  %34 = load %struct.tree_subiterator*, %struct.tree_subiterator** %4, align 8
  %35 = getelementptr inbounds %struct.tree_subiterator, %struct.tree_subiterator* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  store i64 %36, i64* %6, align 8
  %37 = load i32, i32* @WordSpace, align 4
  store i32 %37, i32* %7, align 4
  br label %38

38:                                               ; preds = %56, %30
  %39 = load i64, i64* %6, align 8
  %40 = icmp sgt i64 %39, 1
  br i1 %40, label %41, label %54

41:                                               ; preds = %38
  %42 = load %struct.tree_subiterator*, %struct.tree_subiterator** %4, align 8
  %43 = getelementptr inbounds %struct.tree_subiterator, %struct.tree_subiterator* %42, i32 0, i32 2
  %44 = load i8**, i8*** %43, align 8
  %45 = load i64, i64* %6, align 8
  %46 = sub nsw i64 %45, 2
  %47 = getelementptr inbounds i8*, i8** %44, i64 %46
  %48 = load i8*, i8** %47, align 8
  %49 = call %struct.intree_node* @TS_NODE(i8* %48)
  %50 = getelementptr inbounds %struct.intree_node, %struct.intree_node* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* %5, align 4
  %53 = icmp sle i32 %51, %52
  br label %54

54:                                               ; preds = %41, %38
  %55 = phi i1 [ false, %38 ], [ %53, %41 ]
  br i1 %55, label %56, label %59

56:                                               ; preds = %54
  %57 = load i64, i64* %6, align 8
  %58 = add nsw i64 %57, -1
  store i64 %58, i64* %6, align 8
  br label %38

59:                                               ; preds = %54
  %60 = load %struct.tree_subiterator*, %struct.tree_subiterator** %4, align 8
  %61 = getelementptr inbounds %struct.tree_subiterator, %struct.tree_subiterator* %60, i32 0, i32 2
  %62 = load i8**, i8*** %61, align 8
  %63 = load i64, i64* %6, align 8
  %64 = sub nsw i64 %63, 1
  %65 = getelementptr inbounds i8*, i8** %62, i64 %64
  %66 = load i8*, i8** %65, align 8
  %67 = call %struct.intree_node* @TS_NODE(i8* %66)
  store %struct.intree_node* %67, %struct.intree_node** %8, align 8
  %68 = load %struct.intree_node*, %struct.intree_node** %8, align 8
  %69 = getelementptr inbounds %struct.intree_node, %struct.intree_node* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* %5, align 4
  %72 = icmp eq i32 %70, %71
  br i1 %72, label %73, label %85

73:                                               ; preds = %59
  %74 = load i64, i64* %6, align 8
  %75 = load %struct.tree_subiterator*, %struct.tree_subiterator** %4, align 8
  %76 = getelementptr inbounds %struct.tree_subiterator, %struct.tree_subiterator* %75, i32 0, i32 1
  store i64 %74, i64* %76, align 8
  %77 = load %struct.intree_node*, %struct.intree_node** %8, align 8
  %78 = getelementptr inbounds %struct.intree_node, %struct.intree_node* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.tree_subiterator*, %struct.tree_subiterator** %4, align 8
  %81 = getelementptr inbounds %struct.tree_subiterator, %struct.tree_subiterator* %80, i32 0, i32 3
  store i32 %79, i32* %81, align 8
  %82 = load i32, i32* %5, align 4
  %83 = load %struct.tree_subiterator*, %struct.tree_subiterator** %4, align 8
  %84 = getelementptr inbounds %struct.tree_subiterator, %struct.tree_subiterator* %83, i32 0, i32 0
  store i32 %82, i32* %84, align 8
  store i32 %82, i32* %3, align 4
  br label %178

85:                                               ; preds = %59
  %86 = load i64, i64* %6, align 8
  %87 = add nsw i64 %86, -1
  store i64 %87, i64* %6, align 8
  %88 = load %struct.intree_node*, %struct.intree_node** %8, align 8
  %89 = getelementptr inbounds %struct.intree_node, %struct.intree_node* %88, i32 0, i32 2
  %90 = load i8*, i8** %89, align 8
  store i8* %90, i8** %9, align 8
  br label %91

91:                                               ; preds = %143, %85
  %92 = load i8*, i8** %9, align 8
  %93 = icmp ne i8* %92, null
  br i1 %93, label %94, label %144

94:                                               ; preds = %91
  %95 = load i8*, i8** %9, align 8
  %96 = call %struct.intree_node* @TS_NODE(i8* %95)
  store %struct.intree_node* %96, %struct.intree_node** %8, align 8
  %97 = load i32, i32* %5, align 4
  %98 = load %struct.intree_node*, %struct.intree_node** %8, align 8
  %99 = getelementptr inbounds %struct.intree_node, %struct.intree_node* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = icmp slt i32 %97, %100
  br i1 %101, label %102, label %113

102:                                              ; preds = %94
  %103 = load i8*, i8** %9, align 8
  %104 = load %struct.tree_subiterator*, %struct.tree_subiterator** %4, align 8
  %105 = getelementptr inbounds %struct.tree_subiterator, %struct.tree_subiterator* %104, i32 0, i32 2
  %106 = load i8**, i8*** %105, align 8
  %107 = load i64, i64* %6, align 8
  %108 = add nsw i64 %107, 1
  store i64 %108, i64* %6, align 8
  %109 = getelementptr inbounds i8*, i8** %106, i64 %107
  store i8* %103, i8** %109, align 8
  %110 = load %struct.intree_node*, %struct.intree_node** %8, align 8
  %111 = getelementptr inbounds %struct.intree_node, %struct.intree_node* %110, i32 0, i32 3
  %112 = load i8*, i8** %111, align 8
  store i8* %112, i8** %9, align 8
  br label %143

113:                                              ; preds = %94
  %114 = load i32, i32* %5, align 4
  %115 = load %struct.intree_node*, %struct.intree_node** %8, align 8
  %116 = getelementptr inbounds %struct.intree_node, %struct.intree_node* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = icmp eq i32 %114, %117
  br i1 %118, label %119, label %138

119:                                              ; preds = %113
  %120 = load i8*, i8** %9, align 8
  %121 = load %struct.tree_subiterator*, %struct.tree_subiterator** %4, align 8
  %122 = getelementptr inbounds %struct.tree_subiterator, %struct.tree_subiterator* %121, i32 0, i32 2
  %123 = load i8**, i8*** %122, align 8
  %124 = load i64, i64* %6, align 8
  %125 = add nsw i64 %124, 1
  store i64 %125, i64* %6, align 8
  %126 = getelementptr inbounds i8*, i8** %123, i64 %124
  store i8* %120, i8** %126, align 8
  %127 = load i64, i64* %6, align 8
  %128 = load %struct.tree_subiterator*, %struct.tree_subiterator** %4, align 8
  %129 = getelementptr inbounds %struct.tree_subiterator, %struct.tree_subiterator* %128, i32 0, i32 1
  store i64 %127, i64* %129, align 8
  %130 = load %struct.intree_node*, %struct.intree_node** %8, align 8
  %131 = getelementptr inbounds %struct.intree_node, %struct.intree_node* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = load %struct.tree_subiterator*, %struct.tree_subiterator** %4, align 8
  %134 = getelementptr inbounds %struct.tree_subiterator, %struct.tree_subiterator* %133, i32 0, i32 3
  store i32 %132, i32* %134, align 8
  %135 = load i32, i32* %5, align 4
  %136 = load %struct.tree_subiterator*, %struct.tree_subiterator** %4, align 8
  %137 = getelementptr inbounds %struct.tree_subiterator, %struct.tree_subiterator* %136, i32 0, i32 0
  store i32 %135, i32* %137, align 8
  store i32 %135, i32* %3, align 4
  br label %178

138:                                              ; preds = %113
  %139 = load %struct.intree_node*, %struct.intree_node** %8, align 8
  %140 = getelementptr inbounds %struct.intree_node, %struct.intree_node* %139, i32 0, i32 2
  %141 = load i8*, i8** %140, align 8
  store i8* %141, i8** %9, align 8
  br label %142

142:                                              ; preds = %138
  br label %143

143:                                              ; preds = %142, %102
  br label %91

144:                                              ; preds = %91
  %145 = load i64, i64* %6, align 8
  %146 = load i64, i64* @MAX_DEPTH, align 8
  %147 = icmp sle i64 %145, %146
  %148 = zext i1 %147 to i32
  %149 = call i32 @assert(i32 %148)
  %150 = load i64, i64* %6, align 8
  %151 = load %struct.tree_subiterator*, %struct.tree_subiterator** %4, align 8
  %152 = getelementptr inbounds %struct.tree_subiterator, %struct.tree_subiterator* %151, i32 0, i32 1
  store i64 %150, i64* %152, align 8
  %153 = load i64, i64* %6, align 8
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %159, label %155

155:                                              ; preds = %144
  %156 = load i32, i32* @INFTY, align 4
  %157 = load %struct.tree_subiterator*, %struct.tree_subiterator** %4, align 8
  %158 = getelementptr inbounds %struct.tree_subiterator, %struct.tree_subiterator* %157, i32 0, i32 0
  store i32 %156, i32* %158, align 8
  store i32 %156, i32* %3, align 4
  br label %178

159:                                              ; preds = %144
  %160 = load %struct.tree_subiterator*, %struct.tree_subiterator** %4, align 8
  %161 = getelementptr inbounds %struct.tree_subiterator, %struct.tree_subiterator* %160, i32 0, i32 2
  %162 = load i8**, i8*** %161, align 8
  %163 = load i64, i64* %6, align 8
  %164 = sub nsw i64 %163, 1
  %165 = getelementptr inbounds i8*, i8** %162, i64 %164
  %166 = load i8*, i8** %165, align 8
  %167 = call %struct.intree_node* @TS_NODE(i8* %166)
  store %struct.intree_node* %167, %struct.intree_node** %8, align 8
  %168 = load %struct.intree_node*, %struct.intree_node** %8, align 8
  %169 = getelementptr inbounds %struct.intree_node, %struct.intree_node* %168, i32 0, i32 1
  %170 = load i32, i32* %169, align 4
  %171 = load %struct.tree_subiterator*, %struct.tree_subiterator** %4, align 8
  %172 = getelementptr inbounds %struct.tree_subiterator, %struct.tree_subiterator* %171, i32 0, i32 3
  store i32 %170, i32* %172, align 8
  %173 = load %struct.intree_node*, %struct.intree_node** %8, align 8
  %174 = getelementptr inbounds %struct.intree_node, %struct.intree_node* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 8
  %176 = load %struct.tree_subiterator*, %struct.tree_subiterator** %4, align 8
  %177 = getelementptr inbounds %struct.tree_subiterator, %struct.tree_subiterator* %176, i32 0, i32 0
  store i32 %175, i32* %177, align 8
  store i32 %175, i32* %3, align 4
  br label %178

178:                                              ; preds = %159, %155, %119, %73, %16
  %179 = load i32, i32* %3, align 4
  ret i32 %179
}

declare dso_local i32 @tree_subiterator_next(%struct.tree_subiterator*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.intree_node* @TS_NODE(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
