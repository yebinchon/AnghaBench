; ModuleID = '/home/carl/AnghaBench/kphp-kdb/seqmap/extr_seqmap-data.c_get_range.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/seqmap/extr_seqmap-data.c_get_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@R_MAX = common dso_local global i32 0, align 4
@index_entries = common dso_local global i32 0, align 4
@item_tree = common dso_local global i32 0, align 4
@Rmax = common dso_local global i32 0, align 4
@RR = common dso_local global i32* null, align 8
@cmp = common dso_local global i32 0, align 4
@array_ifwrite = common dso_local global i32 0, align 4
@__array_report = common dso_local global i32 0, align 4
@tree_ifwrite = common dso_local global i32 0, align 4
@__tree_report = common dso_local global i32 0, align 4
@B = common dso_local global i32* null, align 8
@Bpos = common dso_local global i64 0, align 8
@Bsize = common dso_local global i32 0, align 4
@Rpos = common dso_local global i64 0, align 8
@Rt = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_range(i32 %0, i32* %1, i32 %2, i32* %3, i32 %4, i32* %5, i32 %6, i32* %7, i32* %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca [3 x i32], align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  store i32 %0, i32* %11, align 4
  store i32* %1, i32** %12, align 8
  store i32 %2, i32* %13, align 4
  store i32* %3, i32** %14, align 8
  store i32 %4, i32* %15, align 4
  store i32* %5, i32** %16, align 8
  store i32 %6, i32* %17, align 4
  store i32* %7, i32** %18, align 8
  store i32* %8, i32** %19, align 8
  %27 = load i32, i32* %11, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %42

29:                                               ; preds = %9
  %30 = load i32, i32* %13, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %42

32:                                               ; preds = %29
  %33 = load i32, i32* %11, align 4
  %34 = load i32*, i32** %12, align 8
  %35 = load i32, i32* %13, align 4
  %36 = load i32*, i32** %14, align 8
  %37 = call i64 @key_cmp(i32 %33, i32* %34, i32 %35, i32* %36)
  %38 = icmp sgt i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %32
  %40 = load i32*, i32** %19, align 8
  store i32 0, i32* %40, align 4
  %41 = load i32*, i32** %18, align 8
  store i32 0, i32* %41, align 4
  store i32 0, i32* %10, align 4
  br label %176

42:                                               ; preds = %32, %29, %9
  %43 = load i32, i32* %15, align 4
  %44 = load i32, i32* @R_MAX, align 4
  %45 = icmp sgt i32 %43, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %42
  %47 = load i32, i32* @R_MAX, align 4
  store i32 %47, i32* %15, align 4
  br label %48

48:                                               ; preds = %46, %42
  %49 = load i32, i32* %11, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %48
  br label %56

52:                                               ; preds = %48
  %53 = load i32, i32* %11, align 4
  %54 = load i32*, i32** %12, align 8
  %55 = call i32 @get_index_pos(i32 %53, i32* %54)
  br label %56

56:                                               ; preds = %52, %51
  %57 = phi i32 [ 0, %51 ], [ %55, %52 ]
  store i32 %57, i32* %20, align 4
  %58 = load i32, i32* %13, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %56
  %61 = load i32, i32* @index_entries, align 4
  br label %66

62:                                               ; preds = %56
  %63 = load i32, i32* %13, align 4
  %64 = load i32*, i32** %14, align 8
  %65 = call i32 @get_index_pos(i32 %63, i32* %64)
  br label %66

66:                                               ; preds = %62, %60
  %67 = phi i32 [ %61, %60 ], [ %65, %62 ]
  store i32 %67, i32* %21, align 4
  %68 = load i32, i32* %20, align 4
  %69 = icmp eq i32 %68, -2
  br i1 %69, label %73, label %70

70:                                               ; preds = %66
  %71 = load i32, i32* %21, align 4
  %72 = icmp eq i32 %71, -2
  br i1 %72, label %73, label %74

73:                                               ; preds = %70, %66
  store i32 -2, i32* %10, align 4
  br label %176

74:                                               ; preds = %70
  %75 = getelementptr inbounds [3 x i32], [3 x i32]* %22, i64 0, i64 0
  %76 = call i32 @memset(i32* %75, i32 0, i32 12)
  %77 = load i32, i32* @item_tree, align 4
  %78 = load i32, i32* %11, align 4
  %79 = load i32*, i32** %12, align 8
  %80 = load i32, i32* %13, align 4
  %81 = load i32*, i32** %14, align 8
  %82 = getelementptr inbounds [3 x i32], [3 x i32]* %22, i64 0, i64 0
  %83 = call i32 @tree_count(i32 %77, i32 %78, i32* %79, i32 %80, i32* %81, i32* %82)
  %84 = getelementptr inbounds [3 x i32], [3 x i32]* %22, i64 0, i64 1
  %85 = load i32, i32* %84, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %92, label %87

87:                                               ; preds = %74
  %88 = getelementptr inbounds [3 x i32], [3 x i32]* %22, i64 0, i64 2
  %89 = load i32, i32* %88, align 4
  %90 = icmp ne i32 %89, 0
  %91 = xor i1 %90, true
  br label %92

92:                                               ; preds = %87, %74
  %93 = phi i1 [ false, %74 ], [ %91, %87 ]
  %94 = zext i1 %93 to i32
  %95 = call i32 @assert(i32 %94)
  %96 = getelementptr inbounds [3 x i32], [3 x i32]* %22, i64 0, i64 0
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* %21, align 4
  %99 = load i32, i32* %20, align 4
  %100 = sub nsw i32 %98, %99
  %101 = add nsw i32 %97, %100
  store i32 %101, i32* %23, align 4
  %102 = load i32, i32* %23, align 4
  %103 = load i32, i32* %15, align 4
  %104 = icmp sgt i32 %102, %103
  br i1 %104, label %105, label %107

105:                                              ; preds = %92
  %106 = load i32, i32* %15, align 4
  store i32 %106, i32* @Rmax, align 4
  br label %109

107:                                              ; preds = %92
  %108 = load i32, i32* %23, align 4
  store i32 %108, i32* @Rmax, align 4
  br label %109

109:                                              ; preds = %107, %105
  %110 = load i32, i32* %23, align 4
  %111 = load i32*, i32** %19, align 8
  store i32 %110, i32* %111, align 4
  store i32 0, i32* %24, align 4
  br label %112

112:                                              ; preds = %142, %109
  %113 = load i32, i32* %24, align 4
  %114 = load i32, i32* %23, align 4
  %115 = icmp slt i32 %113, %114
  br i1 %115, label %116, label %145

116:                                              ; preds = %112
  %117 = load i32, i32* %24, align 4
  %118 = load i32, i32* @Rmax, align 4
  %119 = icmp slt i32 %117, %118
  br i1 %119, label %120, label %126

120:                                              ; preds = %116
  %121 = load i32, i32* %24, align 4
  %122 = load i32*, i32** @RR, align 8
  %123 = load i32, i32* %24, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i32, i32* %122, i64 %124
  store i32 %121, i32* %125, align 4
  br label %141

126:                                              ; preds = %116
  %127 = call i32 (...) @lrand48()
  %128 = load i32, i32* %24, align 4
  %129 = add nsw i32 %128, 1
  %130 = srem i32 %127, %129
  store i32 %130, i32* %25, align 4
  %131 = load i32, i32* %25, align 4
  %132 = load i32, i32* @Rmax, align 4
  %133 = icmp slt i32 %131, %132
  br i1 %133, label %134, label %140

134:                                              ; preds = %126
  %135 = load i32, i32* %24, align 4
  %136 = load i32*, i32** @RR, align 8
  %137 = load i32, i32* %25, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i32, i32* %136, i64 %138
  store i32 %135, i32* %139, align 4
  br label %140

140:                                              ; preds = %134, %126
  br label %141

141:                                              ; preds = %140, %120
  br label %142

142:                                              ; preds = %141
  %143 = load i32, i32* %24, align 4
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %24, align 4
  br label %112

145:                                              ; preds = %112
  %146 = load i32, i32* %23, align 4
  %147 = load i32, i32* @Rmax, align 4
  %148 = icmp sgt i32 %146, %147
  br i1 %148, label %149, label %154

149:                                              ; preds = %145
  %150 = load i32*, i32** @RR, align 8
  %151 = load i32, i32* @Rmax, align 4
  %152 = load i32, i32* @cmp, align 4
  %153 = call i32 @qsort(i32* %150, i32 %151, i32 4, i32 %152)
  br label %154

154:                                              ; preds = %149, %145
  %155 = load i32, i32* @array_ifwrite, align 4
  store i32 %155, i32* @__array_report, align 4
  %156 = load i32, i32* @tree_ifwrite, align 4
  store i32 %156, i32* @__tree_report, align 4
  %157 = load i32*, i32** %16, align 8
  store i32* %157, i32** @B, align 8
  store i64 0, i64* @Bpos, align 8
  %158 = load i32, i32* %17, align 4
  store i32 %158, i32* @Bsize, align 4
  store i64 0, i64* @Rpos, align 8
  store i64 0, i64* @Rt, align 8
  %159 = load i32, i32* %11, align 4
  %160 = load i32*, i32** %12, align 8
  %161 = load i32, i32* %13, align 4
  %162 = load i32*, i32** %14, align 8
  %163 = load i32, i32* %20, align 4
  %164 = load i32, i32* %21, align 4
  %165 = call i32 @listree_iterator(i32 %159, i32* %160, i32 %161, i32* %162, i32 %163, i32 %164)
  store i32 %165, i32* %26, align 4
  %166 = load i32, i32* %26, align 4
  %167 = icmp eq i32 %166, -2
  br i1 %167, label %168, label %170

168:                                              ; preds = %154
  %169 = load i32, i32* %26, align 4
  store i32 %169, i32* %10, align 4
  br label %176

170:                                              ; preds = %154
  %171 = load i32, i32* @Rmax, align 4
  %172 = load i32*, i32** %18, align 8
  store i32 %171, i32* %172, align 4
  %173 = load i32, i32* %17, align 4
  %174 = load i32, i32* @Bsize, align 4
  %175 = sub nsw i32 %173, %174
  store i32 %175, i32* %10, align 4
  br label %176

176:                                              ; preds = %170, %168, %73, %39
  %177 = load i32, i32* %10, align 4
  ret i32 %177
}

declare dso_local i64 @key_cmp(i32, i32*, i32, i32*) #1

declare dso_local i32 @get_index_pos(i32, i32*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @tree_count(i32, i32, i32*, i32, i32*, i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @lrand48(...) #1

declare dso_local i32 @qsort(i32*, i32, i32, i32) #1

declare dso_local i32 @listree_iterator(i32, i32*, i32, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
