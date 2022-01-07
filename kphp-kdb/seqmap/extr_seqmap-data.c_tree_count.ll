; ModuleID = '/home/carl/AnghaBench/kphp-kdb/seqmap/extr_seqmap-data.c_tree_count.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/seqmap/extr_seqmap-data.c_tree_count.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.item = type { %struct.item*, %struct.item*, i64, i64, i64, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.item*, i32, i32*, i32, i32*, i32*)* @tree_count to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tree_count(%struct.item* %0, i32 %1, i32* %2, i32 %3, i32* %4, i32* %5) #0 {
  %7 = alloca %struct.item*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.item*, align 8
  %14 = alloca %struct.item*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.item* %0, %struct.item** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  store i32* %5, i32** %12, align 8
  %17 = load %struct.item*, %struct.item** %7, align 8
  store %struct.item* %17, %struct.item** %13, align 8
  %18 = load %struct.item*, %struct.item** %7, align 8
  store %struct.item* %18, %struct.item** %14, align 8
  br label %19

19:                                               ; preds = %216, %6
  %20 = load %struct.item*, %struct.item** %13, align 8
  %21 = icmp ne %struct.item* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %19
  %23 = load %struct.item*, %struct.item** %14, align 8
  %24 = icmp ne %struct.item* %23, null
  br label %25

25:                                               ; preds = %22, %19
  %26 = phi i1 [ true, %19 ], [ %24, %22 ]
  br i1 %26, label %27, label %217

27:                                               ; preds = %25
  %28 = load %struct.item*, %struct.item** %13, align 8
  %29 = icmp ne %struct.item* %28, null
  br i1 %29, label %30, label %40

30:                                               ; preds = %27
  %31 = load %struct.item*, %struct.item** %13, align 8
  %32 = getelementptr inbounds %struct.item, %struct.item* %31, i32 0, i32 6
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.item*, %struct.item** %13, align 8
  %35 = getelementptr inbounds %struct.item, %struct.item* %34, i32 0, i32 5
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* %8, align 4
  %38 = load i32*, i32** %9, align 8
  %39 = call i32 @key_cmp(i32 %33, i32 %36, i32 %37, i32* %38)
  br label %41

40:                                               ; preds = %27
  br label %41

41:                                               ; preds = %40, %30
  %42 = phi i32 [ %39, %30 ], [ 0, %40 ]
  store i32 %42, i32* %15, align 4
  %43 = load %struct.item*, %struct.item** %14, align 8
  %44 = icmp ne %struct.item* %43, null
  br i1 %44, label %45, label %55

45:                                               ; preds = %41
  %46 = load %struct.item*, %struct.item** %14, align 8
  %47 = getelementptr inbounds %struct.item, %struct.item* %46, i32 0, i32 6
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.item*, %struct.item** %14, align 8
  %50 = getelementptr inbounds %struct.item, %struct.item* %49, i32 0, i32 5
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* %10, align 4
  %53 = load i32*, i32** %11, align 8
  %54 = call i32 @key_cmp(i32 %48, i32 %51, i32 %52, i32* %53)
  br label %56

55:                                               ; preds = %41
  br label %56

56:                                               ; preds = %55, %45
  %57 = phi i32 [ %54, %45 ], [ 0, %55 ]
  store i32 %57, i32* %16, align 4
  %58 = load %struct.item*, %struct.item** %13, align 8
  %59 = load %struct.item*, %struct.item** %14, align 8
  %60 = icmp eq %struct.item* %58, %59
  br i1 %60, label %61, label %101

61:                                               ; preds = %56
  %62 = load i32, i32* %15, align 4
  %63 = icmp sle i32 %62, 0
  br i1 %63, label %64, label %75

64:                                               ; preds = %61
  %65 = load i32, i32* %15, align 4
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %64
  %68 = load %struct.item*, %struct.item** %13, align 8
  %69 = load i32*, i32** %12, align 8
  %70 = call i32 @tree_count_one(%struct.item* %68, i32* %69)
  br label %71

71:                                               ; preds = %67, %64
  %72 = load %struct.item*, %struct.item** %13, align 8
  %73 = getelementptr inbounds %struct.item, %struct.item* %72, i32 0, i32 1
  %74 = load %struct.item*, %struct.item** %73, align 8
  store %struct.item* %74, %struct.item** %14, align 8
  store %struct.item* %74, %struct.item** %13, align 8
  br label %100

75:                                               ; preds = %61
  %76 = load i32, i32* %16, align 4
  %77 = icmp sge i32 %76, 0
  br i1 %77, label %78, label %89

78:                                               ; preds = %75
  %79 = load i32, i32* %16, align 4
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %85

81:                                               ; preds = %78
  %82 = load %struct.item*, %struct.item** %13, align 8
  %83 = load i32*, i32** %12, align 8
  %84 = call i32 @tree_count_one(%struct.item* %82, i32* %83)
  br label %85

85:                                               ; preds = %81, %78
  %86 = load %struct.item*, %struct.item** %13, align 8
  %87 = getelementptr inbounds %struct.item, %struct.item* %86, i32 0, i32 0
  %88 = load %struct.item*, %struct.item** %87, align 8
  store %struct.item* %88, %struct.item** %14, align 8
  store %struct.item* %88, %struct.item** %13, align 8
  br label %99

89:                                               ; preds = %75
  %90 = load %struct.item*, %struct.item** %13, align 8
  %91 = load i32*, i32** %12, align 8
  %92 = call i32 @tree_count_one(%struct.item* %90, i32* %91)
  %93 = load %struct.item*, %struct.item** %13, align 8
  %94 = getelementptr inbounds %struct.item, %struct.item* %93, i32 0, i32 0
  %95 = load %struct.item*, %struct.item** %94, align 8
  store %struct.item* %95, %struct.item** %13, align 8
  %96 = load %struct.item*, %struct.item** %14, align 8
  %97 = getelementptr inbounds %struct.item, %struct.item* %96, i32 0, i32 1
  %98 = load %struct.item*, %struct.item** %97, align 8
  store %struct.item* %98, %struct.item** %14, align 8
  br label %99

99:                                               ; preds = %89, %85
  br label %100

100:                                              ; preds = %99, %71
  br label %216

101:                                              ; preds = %56
  %102 = load %struct.item*, %struct.item** %13, align 8
  %103 = icmp ne %struct.item* %102, null
  br i1 %103, label %104, label %158

104:                                              ; preds = %101
  %105 = load i32, i32* %15, align 4
  %106 = icmp sge i32 %105, 0
  br i1 %106, label %107, label %153

107:                                              ; preds = %104
  %108 = load %struct.item*, %struct.item** %13, align 8
  %109 = getelementptr inbounds %struct.item, %struct.item* %108, i32 0, i32 1
  %110 = load %struct.item*, %struct.item** %109, align 8
  %111 = icmp ne %struct.item* %110, null
  br i1 %111, label %112, label %146

112:                                              ; preds = %107
  %113 = load %struct.item*, %struct.item** %13, align 8
  %114 = getelementptr inbounds %struct.item, %struct.item* %113, i32 0, i32 1
  %115 = load %struct.item*, %struct.item** %114, align 8
  %116 = getelementptr inbounds %struct.item, %struct.item* %115, i32 0, i32 4
  %117 = load i64, i64* %116, align 8
  %118 = load i32*, i32** %12, align 8
  %119 = getelementptr inbounds i32, i32* %118, i64 0
  %120 = load i32, i32* %119, align 4
  %121 = sext i32 %120 to i64
  %122 = add nsw i64 %121, %117
  %123 = trunc i64 %122 to i32
  store i32 %123, i32* %119, align 4
  %124 = load %struct.item*, %struct.item** %13, align 8
  %125 = getelementptr inbounds %struct.item, %struct.item* %124, i32 0, i32 1
  %126 = load %struct.item*, %struct.item** %125, align 8
  %127 = getelementptr inbounds %struct.item, %struct.item* %126, i32 0, i32 3
  %128 = load i64, i64* %127, align 8
  %129 = load i32*, i32** %12, align 8
  %130 = getelementptr inbounds i32, i32* %129, i64 1
  %131 = load i32, i32* %130, align 4
  %132 = sext i32 %131 to i64
  %133 = add nsw i64 %132, %128
  %134 = trunc i64 %133 to i32
  store i32 %134, i32* %130, align 4
  %135 = load %struct.item*, %struct.item** %13, align 8
  %136 = getelementptr inbounds %struct.item, %struct.item* %135, i32 0, i32 1
  %137 = load %struct.item*, %struct.item** %136, align 8
  %138 = getelementptr inbounds %struct.item, %struct.item* %137, i32 0, i32 2
  %139 = load i64, i64* %138, align 8
  %140 = load i32*, i32** %12, align 8
  %141 = getelementptr inbounds i32, i32* %140, i64 2
  %142 = load i32, i32* %141, align 4
  %143 = sext i32 %142 to i64
  %144 = add nsw i64 %143, %139
  %145 = trunc i64 %144 to i32
  store i32 %145, i32* %141, align 4
  br label %146

146:                                              ; preds = %112, %107
  %147 = load %struct.item*, %struct.item** %13, align 8
  %148 = load i32*, i32** %12, align 8
  %149 = call i32 @tree_count_one(%struct.item* %147, i32* %148)
  %150 = load %struct.item*, %struct.item** %13, align 8
  %151 = getelementptr inbounds %struct.item, %struct.item* %150, i32 0, i32 0
  %152 = load %struct.item*, %struct.item** %151, align 8
  store %struct.item* %152, %struct.item** %13, align 8
  br label %157

153:                                              ; preds = %104
  %154 = load %struct.item*, %struct.item** %13, align 8
  %155 = getelementptr inbounds %struct.item, %struct.item* %154, i32 0, i32 1
  %156 = load %struct.item*, %struct.item** %155, align 8
  store %struct.item* %156, %struct.item** %13, align 8
  br label %157

157:                                              ; preds = %153, %146
  br label %158

158:                                              ; preds = %157, %101
  %159 = load %struct.item*, %struct.item** %14, align 8
  %160 = icmp ne %struct.item* %159, null
  br i1 %160, label %161, label %215

161:                                              ; preds = %158
  %162 = load i32, i32* %16, align 4
  %163 = icmp sle i32 %162, 0
  br i1 %163, label %164, label %210

164:                                              ; preds = %161
  %165 = load %struct.item*, %struct.item** %14, align 8
  %166 = getelementptr inbounds %struct.item, %struct.item* %165, i32 0, i32 0
  %167 = load %struct.item*, %struct.item** %166, align 8
  %168 = icmp ne %struct.item* %167, null
  br i1 %168, label %169, label %203

169:                                              ; preds = %164
  %170 = load %struct.item*, %struct.item** %14, align 8
  %171 = getelementptr inbounds %struct.item, %struct.item* %170, i32 0, i32 0
  %172 = load %struct.item*, %struct.item** %171, align 8
  %173 = getelementptr inbounds %struct.item, %struct.item* %172, i32 0, i32 4
  %174 = load i64, i64* %173, align 8
  %175 = load i32*, i32** %12, align 8
  %176 = getelementptr inbounds i32, i32* %175, i64 0
  %177 = load i32, i32* %176, align 4
  %178 = sext i32 %177 to i64
  %179 = add nsw i64 %178, %174
  %180 = trunc i64 %179 to i32
  store i32 %180, i32* %176, align 4
  %181 = load %struct.item*, %struct.item** %14, align 8
  %182 = getelementptr inbounds %struct.item, %struct.item* %181, i32 0, i32 0
  %183 = load %struct.item*, %struct.item** %182, align 8
  %184 = getelementptr inbounds %struct.item, %struct.item* %183, i32 0, i32 3
  %185 = load i64, i64* %184, align 8
  %186 = load i32*, i32** %12, align 8
  %187 = getelementptr inbounds i32, i32* %186, i64 1
  %188 = load i32, i32* %187, align 4
  %189 = sext i32 %188 to i64
  %190 = add nsw i64 %189, %185
  %191 = trunc i64 %190 to i32
  store i32 %191, i32* %187, align 4
  %192 = load %struct.item*, %struct.item** %14, align 8
  %193 = getelementptr inbounds %struct.item, %struct.item* %192, i32 0, i32 0
  %194 = load %struct.item*, %struct.item** %193, align 8
  %195 = getelementptr inbounds %struct.item, %struct.item* %194, i32 0, i32 2
  %196 = load i64, i64* %195, align 8
  %197 = load i32*, i32** %12, align 8
  %198 = getelementptr inbounds i32, i32* %197, i64 2
  %199 = load i32, i32* %198, align 4
  %200 = sext i32 %199 to i64
  %201 = add nsw i64 %200, %196
  %202 = trunc i64 %201 to i32
  store i32 %202, i32* %198, align 4
  br label %203

203:                                              ; preds = %169, %164
  %204 = load %struct.item*, %struct.item** %14, align 8
  %205 = load i32*, i32** %12, align 8
  %206 = call i32 @tree_count_one(%struct.item* %204, i32* %205)
  %207 = load %struct.item*, %struct.item** %14, align 8
  %208 = getelementptr inbounds %struct.item, %struct.item* %207, i32 0, i32 1
  %209 = load %struct.item*, %struct.item** %208, align 8
  store %struct.item* %209, %struct.item** %14, align 8
  br label %214

210:                                              ; preds = %161
  %211 = load %struct.item*, %struct.item** %14, align 8
  %212 = getelementptr inbounds %struct.item, %struct.item* %211, i32 0, i32 0
  %213 = load %struct.item*, %struct.item** %212, align 8
  store %struct.item* %213, %struct.item** %14, align 8
  br label %214

214:                                              ; preds = %210, %203
  br label %215

215:                                              ; preds = %214, %158
  br label %216

216:                                              ; preds = %215, %100
  br label %19

217:                                              ; preds = %25
  ret void
}

declare dso_local i32 @key_cmp(i32, i32, i32, i32*) #1

declare dso_local i32 @tree_count_one(%struct.item*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
