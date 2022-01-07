; ModuleID = '/home/carl/AnghaBench/git/xdiff/extr_xdiffi.c_score_add_split.c'
source_filename = "/home/carl/AnghaBench/git/xdiff/extr_xdiffi.c_score_add_split.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.split_measurement = type { i32, i32, i32, i32, i32, i64 }
%struct.split_score = type { i32, i32 }

@START_OF_FILE_PENALTY = common dso_local global i64 0, align 8
@END_OF_FILE_PENALTY = common dso_local global i64 0, align 8
@TOTAL_BLANK_WEIGHT = common dso_local global i32 0, align 4
@POST_BLANK_WEIGHT = common dso_local global i32 0, align 4
@RELATIVE_INDENT_WITH_BLANK_PENALTY = common dso_local global i64 0, align 8
@RELATIVE_INDENT_PENALTY = common dso_local global i64 0, align 8
@RELATIVE_OUTDENT_WITH_BLANK_PENALTY = common dso_local global i64 0, align 8
@RELATIVE_OUTDENT_PENALTY = common dso_local global i64 0, align 8
@RELATIVE_DEDENT_WITH_BLANK_PENALTY = common dso_local global i64 0, align 8
@RELATIVE_DEDENT_PENALTY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.split_measurement*, %struct.split_score*)* @score_add_split to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @score_add_split(%struct.split_measurement* %0, %struct.split_score* %1) #0 {
  %3 = alloca %struct.split_measurement*, align 8
  %4 = alloca %struct.split_score*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.split_measurement* %0, %struct.split_measurement** %3, align 8
  store %struct.split_score* %1, %struct.split_score** %4, align 8
  %9 = load %struct.split_measurement*, %struct.split_measurement** %3, align 8
  %10 = getelementptr inbounds %struct.split_measurement, %struct.split_measurement* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp eq i32 %11, -1
  br i1 %12, label %13, label %26

13:                                               ; preds = %2
  %14 = load %struct.split_measurement*, %struct.split_measurement** %3, align 8
  %15 = getelementptr inbounds %struct.split_measurement, %struct.split_measurement* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %26

18:                                               ; preds = %13
  %19 = load i64, i64* @START_OF_FILE_PENALTY, align 8
  %20 = load %struct.split_score*, %struct.split_score** %4, align 8
  %21 = getelementptr inbounds %struct.split_score, %struct.split_score* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = sext i32 %22 to i64
  %24 = add nsw i64 %23, %19
  %25 = trunc i64 %24 to i32
  store i32 %25, i32* %21, align 4
  br label %26

26:                                               ; preds = %18, %13, %2
  %27 = load %struct.split_measurement*, %struct.split_measurement** %3, align 8
  %28 = getelementptr inbounds %struct.split_measurement, %struct.split_measurement* %27, i32 0, i32 5
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %39

31:                                               ; preds = %26
  %32 = load i64, i64* @END_OF_FILE_PENALTY, align 8
  %33 = load %struct.split_score*, %struct.split_score** %4, align 8
  %34 = getelementptr inbounds %struct.split_score, %struct.split_score* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = sext i32 %35 to i64
  %37 = add nsw i64 %36, %32
  %38 = trunc i64 %37 to i32
  store i32 %38, i32* %34, align 4
  br label %39

39:                                               ; preds = %31, %26
  %40 = load %struct.split_measurement*, %struct.split_measurement** %3, align 8
  %41 = getelementptr inbounds %struct.split_measurement, %struct.split_measurement* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = icmp eq i32 %42, -1
  br i1 %43, label %44, label %49

44:                                               ; preds = %39
  %45 = load %struct.split_measurement*, %struct.split_measurement** %3, align 8
  %46 = getelementptr inbounds %struct.split_measurement, %struct.split_measurement* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 4
  %48 = add nsw i32 1, %47
  br label %50

49:                                               ; preds = %39
  br label %50

50:                                               ; preds = %49, %44
  %51 = phi i32 [ %48, %44 ], [ 0, %49 ]
  store i32 %51, i32* %5, align 4
  %52 = load %struct.split_measurement*, %struct.split_measurement** %3, align 8
  %53 = getelementptr inbounds %struct.split_measurement, %struct.split_measurement* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* %5, align 4
  %56 = add nsw i32 %54, %55
  store i32 %56, i32* %6, align 4
  %57 = load i32, i32* @TOTAL_BLANK_WEIGHT, align 4
  %58 = load i32, i32* %6, align 4
  %59 = mul nsw i32 %57, %58
  %60 = load %struct.split_score*, %struct.split_score** %4, align 8
  %61 = getelementptr inbounds %struct.split_score, %struct.split_score* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = add nsw i32 %62, %59
  store i32 %63, i32* %61, align 4
  %64 = load i32, i32* @POST_BLANK_WEIGHT, align 4
  %65 = load i32, i32* %5, align 4
  %66 = mul nsw i32 %64, %65
  %67 = load %struct.split_score*, %struct.split_score** %4, align 8
  %68 = getelementptr inbounds %struct.split_score, %struct.split_score* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = add nsw i32 %69, %66
  store i32 %70, i32* %68, align 4
  %71 = load %struct.split_measurement*, %struct.split_measurement** %3, align 8
  %72 = getelementptr inbounds %struct.split_measurement, %struct.split_measurement* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = icmp ne i32 %73, -1
  br i1 %74, label %75, label %79

75:                                               ; preds = %50
  %76 = load %struct.split_measurement*, %struct.split_measurement** %3, align 8
  %77 = getelementptr inbounds %struct.split_measurement, %struct.split_measurement* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 8
  store i32 %78, i32* %7, align 4
  br label %83

79:                                               ; preds = %50
  %80 = load %struct.split_measurement*, %struct.split_measurement** %3, align 8
  %81 = getelementptr inbounds %struct.split_measurement, %struct.split_measurement* %80, i32 0, i32 4
  %82 = load i32, i32* %81, align 8
  store i32 %82, i32* %7, align 4
  br label %83

83:                                               ; preds = %79, %75
  %84 = load i32, i32* %6, align 4
  %85 = icmp ne i32 %84, 0
  %86 = zext i1 %85 to i32
  store i32 %86, i32* %8, align 4
  %87 = load i32, i32* %7, align 4
  %88 = load %struct.split_score*, %struct.split_score** %4, align 8
  %89 = getelementptr inbounds %struct.split_score, %struct.split_score* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = add nsw i32 %90, %87
  store i32 %91, i32* %89, align 4
  %92 = load i32, i32* %7, align 4
  %93 = icmp eq i32 %92, -1
  br i1 %93, label %94, label %95

94:                                               ; preds = %83
  br label %174

95:                                               ; preds = %83
  %96 = load %struct.split_measurement*, %struct.split_measurement** %3, align 8
  %97 = getelementptr inbounds %struct.split_measurement, %struct.split_measurement* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = icmp eq i32 %98, -1
  br i1 %99, label %100, label %101

100:                                              ; preds = %95
  br label %173

101:                                              ; preds = %95
  %102 = load i32, i32* %7, align 4
  %103 = load %struct.split_measurement*, %struct.split_measurement** %3, align 8
  %104 = getelementptr inbounds %struct.split_measurement, %struct.split_measurement* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = icmp sgt i32 %102, %105
  br i1 %106, label %107, label %122

107:                                              ; preds = %101
  %108 = load i32, i32* %8, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %112

110:                                              ; preds = %107
  %111 = load i64, i64* @RELATIVE_INDENT_WITH_BLANK_PENALTY, align 8
  br label %114

112:                                              ; preds = %107
  %113 = load i64, i64* @RELATIVE_INDENT_PENALTY, align 8
  br label %114

114:                                              ; preds = %112, %110
  %115 = phi i64 [ %111, %110 ], [ %113, %112 ]
  %116 = load %struct.split_score*, %struct.split_score** %4, align 8
  %117 = getelementptr inbounds %struct.split_score, %struct.split_score* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = sext i32 %118 to i64
  %120 = add nsw i64 %119, %115
  %121 = trunc i64 %120 to i32
  store i32 %121, i32* %117, align 4
  br label %172

122:                                              ; preds = %101
  %123 = load i32, i32* %7, align 4
  %124 = load %struct.split_measurement*, %struct.split_measurement** %3, align 8
  %125 = getelementptr inbounds %struct.split_measurement, %struct.split_measurement* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = icmp eq i32 %123, %126
  br i1 %127, label %128, label %129

128:                                              ; preds = %122
  br label %171

129:                                              ; preds = %122
  %130 = load %struct.split_measurement*, %struct.split_measurement** %3, align 8
  %131 = getelementptr inbounds %struct.split_measurement, %struct.split_measurement* %130, i32 0, i32 4
  %132 = load i32, i32* %131, align 8
  %133 = icmp ne i32 %132, -1
  br i1 %133, label %134, label %155

134:                                              ; preds = %129
  %135 = load %struct.split_measurement*, %struct.split_measurement** %3, align 8
  %136 = getelementptr inbounds %struct.split_measurement, %struct.split_measurement* %135, i32 0, i32 4
  %137 = load i32, i32* %136, align 8
  %138 = load i32, i32* %7, align 4
  %139 = icmp sgt i32 %137, %138
  br i1 %139, label %140, label %155

140:                                              ; preds = %134
  %141 = load i32, i32* %8, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %145

143:                                              ; preds = %140
  %144 = load i64, i64* @RELATIVE_OUTDENT_WITH_BLANK_PENALTY, align 8
  br label %147

145:                                              ; preds = %140
  %146 = load i64, i64* @RELATIVE_OUTDENT_PENALTY, align 8
  br label %147

147:                                              ; preds = %145, %143
  %148 = phi i64 [ %144, %143 ], [ %146, %145 ]
  %149 = load %struct.split_score*, %struct.split_score** %4, align 8
  %150 = getelementptr inbounds %struct.split_score, %struct.split_score* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = sext i32 %151 to i64
  %153 = add nsw i64 %152, %148
  %154 = trunc i64 %153 to i32
  store i32 %154, i32* %150, align 4
  br label %170

155:                                              ; preds = %134, %129
  %156 = load i32, i32* %8, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %160

158:                                              ; preds = %155
  %159 = load i64, i64* @RELATIVE_DEDENT_WITH_BLANK_PENALTY, align 8
  br label %162

160:                                              ; preds = %155
  %161 = load i64, i64* @RELATIVE_DEDENT_PENALTY, align 8
  br label %162

162:                                              ; preds = %160, %158
  %163 = phi i64 [ %159, %158 ], [ %161, %160 ]
  %164 = load %struct.split_score*, %struct.split_score** %4, align 8
  %165 = getelementptr inbounds %struct.split_score, %struct.split_score* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 4
  %167 = sext i32 %166 to i64
  %168 = add nsw i64 %167, %163
  %169 = trunc i64 %168 to i32
  store i32 %169, i32* %165, align 4
  br label %170

170:                                              ; preds = %162, %147
  br label %171

171:                                              ; preds = %170, %128
  br label %172

172:                                              ; preds = %171, %114
  br label %173

173:                                              ; preds = %172, %100
  br label %174

174:                                              ; preds = %173, %94
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
