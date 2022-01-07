; ModuleID = '/home/carl/AnghaBench/git/xdiff/extr_xmerge.c_xdl_fill_merge_buffer.c'
source_filename = "/home/carl/AnghaBench/git/xdiff/extr_xmerge.c_xdl_fill_merge_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_15__ = type { i32, i32, i32, i32, i32, %struct.TYPE_15__* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_16__*, i8*, %struct.TYPE_16__*, i8*, i8*, i32, %struct.TYPE_15__*, i8*, i32, i32)* @xdl_fill_merge_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xdl_fill_merge_buffer(%struct.TYPE_16__* %0, i8* %1, %struct.TYPE_16__* %2, i8* %3, i8* %4, i32 %5, %struct.TYPE_15__* %6, i8* %7, i32 %8, i32 %9) #0 {
  %11 = alloca %struct.TYPE_16__*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.TYPE_16__*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_15__*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %11, align 8
  store i8* %1, i8** %12, align 8
  store %struct.TYPE_16__* %2, %struct.TYPE_16__** %13, align 8
  store i8* %3, i8** %14, align 8
  store i8* %4, i8** %15, align 8
  store i32 %5, i32* %16, align 4
  store %struct.TYPE_15__* %6, %struct.TYPE_15__** %17, align 8
  store i8* %7, i8** %18, align 8
  store i32 %8, i32* %19, align 4
  store i32 %9, i32* %20, align 4
  store i32 0, i32* %22, align 4
  store i32 0, i32* %21, align 4
  br label %24

24:                                               ; preds = %163, %10
  %25 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %26 = icmp ne %struct.TYPE_15__* %25, null
  br i1 %26, label %27, label %167

27:                                               ; preds = %24
  %28 = load i32, i32* %16, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %39

30:                                               ; preds = %27
  %31 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %32 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %39, label %35

35:                                               ; preds = %30
  %36 = load i32, i32* %16, align 4
  %37 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %38 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 8
  br label %39

39:                                               ; preds = %35, %30, %27
  %40 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %41 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %57

44:                                               ; preds = %39
  %45 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %46 = load i8*, i8** %12, align 8
  %47 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %48 = load i8*, i8** %14, align 8
  %49 = load i8*, i8** %15, align 8
  %50 = load i32, i32* %21, align 4
  %51 = load i32, i32* %22, align 4
  %52 = load i32, i32* %19, align 4
  %53 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %54 = load i8*, i8** %18, align 8
  %55 = load i32, i32* %20, align 4
  %56 = call i32 @fill_conflict_hunk(%struct.TYPE_16__* %45, i8* %46, %struct.TYPE_16__* %47, i8* %48, i8* %49, i32 %50, i32 %51, i32 %52, %struct.TYPE_15__* %53, i8* %54, i32 %55)
  store i32 %56, i32* %21, align 4
  br label %155

57:                                               ; preds = %39
  %58 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %59 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = and i32 %60, 3
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %153

63:                                               ; preds = %57
  %64 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %65 = load i32, i32* %22, align 4
  %66 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %67 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* %22, align 4
  %70 = sub nsw i32 %68, %69
  %71 = load i8*, i8** %18, align 8
  %72 = icmp ne i8* %71, null
  br i1 %72, label %73, label %78

73:                                               ; preds = %63
  %74 = load i8*, i8** %18, align 8
  %75 = load i32, i32* %21, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i8, i8* %74, i64 %76
  br label %79

78:                                               ; preds = %63
  br label %79

79:                                               ; preds = %78, %73
  %80 = phi i8* [ %77, %73 ], [ null, %78 ]
  %81 = call i64 @xdl_recs_copy(%struct.TYPE_16__* %64, i32 %65, i32 %70, i32 0, i32 0, i8* %80)
  %82 = load i32, i32* %21, align 4
  %83 = sext i32 %82 to i64
  %84 = add nsw i64 %83, %81
  %85 = trunc i64 %84 to i32
  store i32 %85, i32* %21, align 4
  %86 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %87 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = and i32 %88, 1
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %123

91:                                               ; preds = %79
  %92 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %93 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %94 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %95 = call i32 @is_cr_needed(%struct.TYPE_16__* %92, %struct.TYPE_16__* %93, %struct.TYPE_15__* %94)
  store i32 %95, i32* %23, align 4
  %96 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %97 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %98 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %101 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 8
  %103 = load i32, i32* %23, align 4
  %104 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %105 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = and i32 %106, 2
  %108 = load i8*, i8** %18, align 8
  %109 = icmp ne i8* %108, null
  br i1 %109, label %110, label %115

110:                                              ; preds = %91
  %111 = load i8*, i8** %18, align 8
  %112 = load i32, i32* %21, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i8, i8* %111, i64 %113
  br label %116

115:                                              ; preds = %91
  br label %116

116:                                              ; preds = %115, %110
  %117 = phi i8* [ %114, %110 ], [ null, %115 ]
  %118 = call i64 @xdl_recs_copy(%struct.TYPE_16__* %96, i32 %99, i32 %102, i32 %103, i32 %107, i8* %117)
  %119 = load i32, i32* %21, align 4
  %120 = sext i32 %119 to i64
  %121 = add nsw i64 %120, %118
  %122 = trunc i64 %121 to i32
  store i32 %122, i32* %21, align 4
  br label %123

123:                                              ; preds = %116, %79
  %124 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %125 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = and i32 %126, 2
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %152

129:                                              ; preds = %123
  %130 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %131 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %132 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %131, i32 0, i32 3
  %133 = load i32, i32* %132, align 4
  %134 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %135 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %134, i32 0, i32 4
  %136 = load i32, i32* %135, align 8
  %137 = load i8*, i8** %18, align 8
  %138 = icmp ne i8* %137, null
  br i1 %138, label %139, label %144

139:                                              ; preds = %129
  %140 = load i8*, i8** %18, align 8
  %141 = load i32, i32* %21, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i8, i8* %140, i64 %142
  br label %145

144:                                              ; preds = %129
  br label %145

145:                                              ; preds = %144, %139
  %146 = phi i8* [ %143, %139 ], [ null, %144 ]
  %147 = call i64 @xdl_recs_copy(%struct.TYPE_16__* %130, i32 %133, i32 %136, i32 0, i32 0, i8* %146)
  %148 = load i32, i32* %21, align 4
  %149 = sext i32 %148 to i64
  %150 = add nsw i64 %149, %147
  %151 = trunc i64 %150 to i32
  store i32 %151, i32* %21, align 4
  br label %152

152:                                              ; preds = %145, %123
  br label %154

153:                                              ; preds = %57
  br label %163

154:                                              ; preds = %152
  br label %155

155:                                              ; preds = %154, %44
  %156 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %157 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 4
  %159 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %160 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %159, i32 0, i32 2
  %161 = load i32, i32* %160, align 8
  %162 = add nsw i32 %158, %161
  store i32 %162, i32* %22, align 4
  br label %163

163:                                              ; preds = %155, %153
  %164 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %165 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %164, i32 0, i32 5
  %166 = load %struct.TYPE_15__*, %struct.TYPE_15__** %165, align 8
  store %struct.TYPE_15__* %166, %struct.TYPE_15__** %17, align 8
  br label %24

167:                                              ; preds = %24
  %168 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %169 = load i32, i32* %22, align 4
  %170 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %171 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %170, i32 0, i32 0
  %172 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 4
  %174 = load i32, i32* %22, align 4
  %175 = sub nsw i32 %173, %174
  %176 = load i8*, i8** %18, align 8
  %177 = icmp ne i8* %176, null
  br i1 %177, label %178, label %183

178:                                              ; preds = %167
  %179 = load i8*, i8** %18, align 8
  %180 = load i32, i32* %21, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds i8, i8* %179, i64 %181
  br label %184

183:                                              ; preds = %167
  br label %184

184:                                              ; preds = %183, %178
  %185 = phi i8* [ %182, %178 ], [ null, %183 ]
  %186 = call i64 @xdl_recs_copy(%struct.TYPE_16__* %168, i32 %169, i32 %175, i32 0, i32 0, i8* %185)
  %187 = load i32, i32* %21, align 4
  %188 = sext i32 %187 to i64
  %189 = add nsw i64 %188, %186
  %190 = trunc i64 %189 to i32
  store i32 %190, i32* %21, align 4
  %191 = load i32, i32* %21, align 4
  ret i32 %191
}

declare dso_local i32 @fill_conflict_hunk(%struct.TYPE_16__*, i8*, %struct.TYPE_16__*, i8*, i8*, i32, i32, i32, %struct.TYPE_15__*, i8*, i32) #1

declare dso_local i64 @xdl_recs_copy(%struct.TYPE_16__*, i32, i32, i32, i32, i8*) #1

declare dso_local i32 @is_cr_needed(%struct.TYPE_16__*, %struct.TYPE_16__*, %struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
