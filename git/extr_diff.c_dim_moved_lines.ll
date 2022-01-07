; ModuleID = '/home/carl/AnghaBench/git/extr_diff.c_dim_moved_lines.c'
source_filename = "/home/carl/AnghaBench/git/extr_diff.c_dim_moved_lines.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.diff_options = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, %struct.emitted_diff_symbol* }
%struct.emitted_diff_symbol = type { i64, i32 }

@DIFF_SYMBOL_PLUS = common dso_local global i64 0, align 8
@DIFF_SYMBOL_MINUS = common dso_local global i64 0, align 8
@DIFF_SYMBOL_MOVED_LINE = common dso_local global i32 0, align 4
@DIFF_SYMBOL_MOVED_LINE_ZEBRA_MASK = common dso_local global i32 0, align 4
@DIFF_SYMBOL_MOVED_LINE_UNINTERESTING = common dso_local global i32 0, align 4
@DIFF_SYMBOL_MOVED_LINE_ALT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.diff_options*)* @dim_moved_lines to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dim_moved_lines(%struct.diff_options* %0) #0 {
  %2 = alloca %struct.diff_options*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.emitted_diff_symbol*, align 8
  %5 = alloca %struct.emitted_diff_symbol*, align 8
  %6 = alloca %struct.emitted_diff_symbol*, align 8
  store %struct.diff_options* %0, %struct.diff_options** %2, align 8
  store i32 0, i32* %3, align 4
  br label %7

7:                                                ; preds = %200, %1
  %8 = load i32, i32* %3, align 4
  %9 = load %struct.diff_options*, %struct.diff_options** %2, align 8
  %10 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp slt i32 %8, %13
  br i1 %14, label %15, label %203

15:                                               ; preds = %7
  %16 = load i32, i32* %3, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %28

18:                                               ; preds = %15
  %19 = load %struct.diff_options*, %struct.diff_options** %2, align 8
  %20 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  %23 = load %struct.emitted_diff_symbol*, %struct.emitted_diff_symbol** %22, align 8
  %24 = load i32, i32* %3, align 4
  %25 = sub nsw i32 %24, 1
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.emitted_diff_symbol, %struct.emitted_diff_symbol* %23, i64 %26
  br label %29

28:                                               ; preds = %15
  br label %29

29:                                               ; preds = %28, %18
  %30 = phi %struct.emitted_diff_symbol* [ %27, %18 ], [ null, %28 ]
  store %struct.emitted_diff_symbol* %30, %struct.emitted_diff_symbol** %4, align 8
  %31 = load %struct.diff_options*, %struct.diff_options** %2, align 8
  %32 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %31, i32 0, i32 0
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 1
  %35 = load %struct.emitted_diff_symbol*, %struct.emitted_diff_symbol** %34, align 8
  %36 = load i32, i32* %3, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.emitted_diff_symbol, %struct.emitted_diff_symbol* %35, i64 %37
  store %struct.emitted_diff_symbol* %38, %struct.emitted_diff_symbol** %5, align 8
  %39 = load i32, i32* %3, align 4
  %40 = load %struct.diff_options*, %struct.diff_options** %2, align 8
  %41 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %40, i32 0, i32 0
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = sub nsw i32 %44, 1
  %46 = icmp slt i32 %39, %45
  br i1 %46, label %47, label %57

47:                                               ; preds = %29
  %48 = load %struct.diff_options*, %struct.diff_options** %2, align 8
  %49 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %48, i32 0, i32 0
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 1
  %52 = load %struct.emitted_diff_symbol*, %struct.emitted_diff_symbol** %51, align 8
  %53 = load i32, i32* %3, align 4
  %54 = add nsw i32 %53, 1
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.emitted_diff_symbol, %struct.emitted_diff_symbol* %52, i64 %55
  br label %58

57:                                               ; preds = %29
  br label %58

58:                                               ; preds = %57, %47
  %59 = phi %struct.emitted_diff_symbol* [ %56, %47 ], [ null, %57 ]
  store %struct.emitted_diff_symbol* %59, %struct.emitted_diff_symbol** %6, align 8
  %60 = load %struct.emitted_diff_symbol*, %struct.emitted_diff_symbol** %5, align 8
  %61 = getelementptr inbounds %struct.emitted_diff_symbol, %struct.emitted_diff_symbol* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @DIFF_SYMBOL_PLUS, align 8
  %64 = icmp ne i64 %62, %63
  br i1 %64, label %65, label %72

65:                                               ; preds = %58
  %66 = load %struct.emitted_diff_symbol*, %struct.emitted_diff_symbol** %5, align 8
  %67 = getelementptr inbounds %struct.emitted_diff_symbol, %struct.emitted_diff_symbol* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @DIFF_SYMBOL_MINUS, align 8
  %70 = icmp ne i64 %68, %69
  br i1 %70, label %71, label %72

71:                                               ; preds = %65
  br label %200

72:                                               ; preds = %65, %58
  %73 = load %struct.emitted_diff_symbol*, %struct.emitted_diff_symbol** %5, align 8
  %74 = getelementptr inbounds %struct.emitted_diff_symbol, %struct.emitted_diff_symbol* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* @DIFF_SYMBOL_MOVED_LINE, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %80, label %79

79:                                               ; preds = %72
  br label %200

80:                                               ; preds = %72
  %81 = load %struct.emitted_diff_symbol*, %struct.emitted_diff_symbol** %4, align 8
  %82 = icmp ne %struct.emitted_diff_symbol* %81, null
  br i1 %82, label %83, label %96

83:                                               ; preds = %80
  %84 = load %struct.emitted_diff_symbol*, %struct.emitted_diff_symbol** %4, align 8
  %85 = getelementptr inbounds %struct.emitted_diff_symbol, %struct.emitted_diff_symbol* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @DIFF_SYMBOL_PLUS, align 8
  %88 = icmp ne i64 %86, %87
  br i1 %88, label %89, label %96

89:                                               ; preds = %83
  %90 = load %struct.emitted_diff_symbol*, %struct.emitted_diff_symbol** %4, align 8
  %91 = getelementptr inbounds %struct.emitted_diff_symbol, %struct.emitted_diff_symbol* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* @DIFF_SYMBOL_MINUS, align 8
  %94 = icmp ne i64 %92, %93
  br i1 %94, label %95, label %96

95:                                               ; preds = %89
  store %struct.emitted_diff_symbol* null, %struct.emitted_diff_symbol** %4, align 8
  br label %96

96:                                               ; preds = %95, %89, %83, %80
  %97 = load %struct.emitted_diff_symbol*, %struct.emitted_diff_symbol** %6, align 8
  %98 = icmp ne %struct.emitted_diff_symbol* %97, null
  br i1 %98, label %99, label %112

99:                                               ; preds = %96
  %100 = load %struct.emitted_diff_symbol*, %struct.emitted_diff_symbol** %6, align 8
  %101 = getelementptr inbounds %struct.emitted_diff_symbol, %struct.emitted_diff_symbol* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = load i64, i64* @DIFF_SYMBOL_PLUS, align 8
  %104 = icmp ne i64 %102, %103
  br i1 %104, label %105, label %112

105:                                              ; preds = %99
  %106 = load %struct.emitted_diff_symbol*, %struct.emitted_diff_symbol** %6, align 8
  %107 = getelementptr inbounds %struct.emitted_diff_symbol, %struct.emitted_diff_symbol* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* @DIFF_SYMBOL_MINUS, align 8
  %110 = icmp ne i64 %108, %109
  br i1 %110, label %111, label %112

111:                                              ; preds = %105
  store %struct.emitted_diff_symbol* null, %struct.emitted_diff_symbol** %6, align 8
  br label %112

112:                                              ; preds = %111, %105, %99, %96
  %113 = load %struct.emitted_diff_symbol*, %struct.emitted_diff_symbol** %4, align 8
  %114 = icmp ne %struct.emitted_diff_symbol* %113, null
  br i1 %114, label %115, label %148

115:                                              ; preds = %112
  %116 = load %struct.emitted_diff_symbol*, %struct.emitted_diff_symbol** %4, align 8
  %117 = getelementptr inbounds %struct.emitted_diff_symbol, %struct.emitted_diff_symbol* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 8
  %119 = load i32, i32* @DIFF_SYMBOL_MOVED_LINE_ZEBRA_MASK, align 4
  %120 = and i32 %118, %119
  %121 = load %struct.emitted_diff_symbol*, %struct.emitted_diff_symbol** %5, align 8
  %122 = getelementptr inbounds %struct.emitted_diff_symbol, %struct.emitted_diff_symbol* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 8
  %124 = load i32, i32* @DIFF_SYMBOL_MOVED_LINE_ZEBRA_MASK, align 4
  %125 = and i32 %123, %124
  %126 = icmp eq i32 %120, %125
  br i1 %126, label %127, label %148

127:                                              ; preds = %115
  %128 = load %struct.emitted_diff_symbol*, %struct.emitted_diff_symbol** %6, align 8
  %129 = icmp ne %struct.emitted_diff_symbol* %128, null
  br i1 %129, label %130, label %148

130:                                              ; preds = %127
  %131 = load %struct.emitted_diff_symbol*, %struct.emitted_diff_symbol** %6, align 8
  %132 = getelementptr inbounds %struct.emitted_diff_symbol, %struct.emitted_diff_symbol* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 8
  %134 = load i32, i32* @DIFF_SYMBOL_MOVED_LINE_ZEBRA_MASK, align 4
  %135 = and i32 %133, %134
  %136 = load %struct.emitted_diff_symbol*, %struct.emitted_diff_symbol** %5, align 8
  %137 = getelementptr inbounds %struct.emitted_diff_symbol, %struct.emitted_diff_symbol* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 8
  %139 = load i32, i32* @DIFF_SYMBOL_MOVED_LINE_ZEBRA_MASK, align 4
  %140 = and i32 %138, %139
  %141 = icmp eq i32 %135, %140
  br i1 %141, label %142, label %148

142:                                              ; preds = %130
  %143 = load i32, i32* @DIFF_SYMBOL_MOVED_LINE_UNINTERESTING, align 4
  %144 = load %struct.emitted_diff_symbol*, %struct.emitted_diff_symbol** %5, align 8
  %145 = getelementptr inbounds %struct.emitted_diff_symbol, %struct.emitted_diff_symbol* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 8
  %147 = or i32 %146, %143
  store i32 %147, i32* %145, align 8
  br label %200

148:                                              ; preds = %130, %127, %115, %112
  %149 = load %struct.emitted_diff_symbol*, %struct.emitted_diff_symbol** %4, align 8
  %150 = icmp ne %struct.emitted_diff_symbol* %149, null
  br i1 %150, label %151, label %171

151:                                              ; preds = %148
  %152 = load %struct.emitted_diff_symbol*, %struct.emitted_diff_symbol** %4, align 8
  %153 = getelementptr inbounds %struct.emitted_diff_symbol, %struct.emitted_diff_symbol* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 8
  %155 = load i32, i32* @DIFF_SYMBOL_MOVED_LINE, align 4
  %156 = and i32 %154, %155
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %171

158:                                              ; preds = %151
  %159 = load %struct.emitted_diff_symbol*, %struct.emitted_diff_symbol** %4, align 8
  %160 = getelementptr inbounds %struct.emitted_diff_symbol, %struct.emitted_diff_symbol* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 8
  %162 = load i32, i32* @DIFF_SYMBOL_MOVED_LINE_ALT, align 4
  %163 = and i32 %161, %162
  %164 = load %struct.emitted_diff_symbol*, %struct.emitted_diff_symbol** %5, align 8
  %165 = getelementptr inbounds %struct.emitted_diff_symbol, %struct.emitted_diff_symbol* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 8
  %167 = load i32, i32* @DIFF_SYMBOL_MOVED_LINE_ALT, align 4
  %168 = and i32 %166, %167
  %169 = icmp ne i32 %163, %168
  br i1 %169, label %170, label %171

170:                                              ; preds = %158
  br label %200

171:                                              ; preds = %158, %151, %148
  %172 = load %struct.emitted_diff_symbol*, %struct.emitted_diff_symbol** %6, align 8
  %173 = icmp ne %struct.emitted_diff_symbol* %172, null
  br i1 %173, label %174, label %194

174:                                              ; preds = %171
  %175 = load %struct.emitted_diff_symbol*, %struct.emitted_diff_symbol** %6, align 8
  %176 = getelementptr inbounds %struct.emitted_diff_symbol, %struct.emitted_diff_symbol* %175, i32 0, i32 1
  %177 = load i32, i32* %176, align 8
  %178 = load i32, i32* @DIFF_SYMBOL_MOVED_LINE, align 4
  %179 = and i32 %177, %178
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %194

181:                                              ; preds = %174
  %182 = load %struct.emitted_diff_symbol*, %struct.emitted_diff_symbol** %6, align 8
  %183 = getelementptr inbounds %struct.emitted_diff_symbol, %struct.emitted_diff_symbol* %182, i32 0, i32 1
  %184 = load i32, i32* %183, align 8
  %185 = load i32, i32* @DIFF_SYMBOL_MOVED_LINE_ALT, align 4
  %186 = and i32 %184, %185
  %187 = load %struct.emitted_diff_symbol*, %struct.emitted_diff_symbol** %5, align 8
  %188 = getelementptr inbounds %struct.emitted_diff_symbol, %struct.emitted_diff_symbol* %187, i32 0, i32 1
  %189 = load i32, i32* %188, align 8
  %190 = load i32, i32* @DIFF_SYMBOL_MOVED_LINE_ALT, align 4
  %191 = and i32 %189, %190
  %192 = icmp ne i32 %186, %191
  br i1 %192, label %193, label %194

193:                                              ; preds = %181
  br label %200

194:                                              ; preds = %181, %174, %171
  %195 = load i32, i32* @DIFF_SYMBOL_MOVED_LINE_UNINTERESTING, align 4
  %196 = load %struct.emitted_diff_symbol*, %struct.emitted_diff_symbol** %5, align 8
  %197 = getelementptr inbounds %struct.emitted_diff_symbol, %struct.emitted_diff_symbol* %196, i32 0, i32 1
  %198 = load i32, i32* %197, align 8
  %199 = or i32 %198, %195
  store i32 %199, i32* %197, align 8
  br label %200

200:                                              ; preds = %194, %193, %170, %142, %79, %71
  %201 = load i32, i32* %3, align 4
  %202 = add nsw i32 %201, 1
  store i32 %202, i32* %3, align 4
  br label %7

203:                                              ; preds = %7
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
