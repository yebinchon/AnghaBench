; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_tsort.c_collapse.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_tsort.c_collapse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tsort_run = type { i32 }
%struct.tsort_store = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**, %struct.tsort_run*, i32, %struct.tsort_store*, i32)* @collapse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @collapse(i8** %0, %struct.tsort_run* %1, i32 %2, %struct.tsort_store* %3, i32 %4) #0 {
  %6 = alloca i8**, align 8
  %7 = alloca %struct.tsort_run*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.tsort_store*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i8** %0, i8*** %6, align 8
  store %struct.tsort_run* %1, %struct.tsort_run** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.tsort_store* %3, %struct.tsort_store** %9, align 8
  store i32 %4, i32* %10, align 4
  br label %14

14:                                               ; preds = %5, %206
  %15 = load i32, i32* %8, align 4
  %16 = icmp sle i32 %15, 1
  br i1 %16, label %17, label %18

17:                                               ; preds = %14
  br label %207

18:                                               ; preds = %14
  %19 = load i32, i32* %8, align 4
  %20 = icmp eq i32 %19, 2
  br i1 %20, label %21, label %50

21:                                               ; preds = %18
  %22 = load %struct.tsort_run*, %struct.tsort_run** %7, align 8
  %23 = getelementptr inbounds %struct.tsort_run, %struct.tsort_run* %22, i64 0
  %24 = getelementptr inbounds %struct.tsort_run, %struct.tsort_run* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.tsort_run*, %struct.tsort_run** %7, align 8
  %27 = getelementptr inbounds %struct.tsort_run, %struct.tsort_run* %26, i64 1
  %28 = getelementptr inbounds %struct.tsort_run, %struct.tsort_run* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = add nsw i32 %25, %29
  %31 = load i32, i32* %10, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %50

33:                                               ; preds = %21
  %34 = load i8**, i8*** %6, align 8
  %35 = load %struct.tsort_run*, %struct.tsort_run** %7, align 8
  %36 = load i32, i32* %8, align 4
  %37 = load %struct.tsort_store*, %struct.tsort_store** %9, align 8
  %38 = call i32 @merge(i8** %34, %struct.tsort_run* %35, i32 %36, %struct.tsort_store* %37)
  %39 = load %struct.tsort_run*, %struct.tsort_run** %7, align 8
  %40 = getelementptr inbounds %struct.tsort_run, %struct.tsort_run* %39, i64 1
  %41 = getelementptr inbounds %struct.tsort_run, %struct.tsort_run* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.tsort_run*, %struct.tsort_run** %7, align 8
  %44 = getelementptr inbounds %struct.tsort_run, %struct.tsort_run* %43, i64 0
  %45 = getelementptr inbounds %struct.tsort_run, %struct.tsort_run* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = add nsw i32 %46, %42
  store i32 %47, i32* %45, align 4
  %48 = load i32, i32* %8, align 4
  %49 = add nsw i32 %48, -1
  store i32 %49, i32* %8, align 4
  br label %207

50:                                               ; preds = %21, %18
  %51 = load i32, i32* %8, align 4
  %52 = icmp eq i32 %51, 2
  br i1 %52, label %53, label %80

53:                                               ; preds = %50
  %54 = load %struct.tsort_run*, %struct.tsort_run** %7, align 8
  %55 = getelementptr inbounds %struct.tsort_run, %struct.tsort_run* %54, i64 0
  %56 = getelementptr inbounds %struct.tsort_run, %struct.tsort_run* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.tsort_run*, %struct.tsort_run** %7, align 8
  %59 = getelementptr inbounds %struct.tsort_run, %struct.tsort_run* %58, i64 1
  %60 = getelementptr inbounds %struct.tsort_run, %struct.tsort_run* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = icmp sle i32 %57, %61
  br i1 %62, label %63, label %80

63:                                               ; preds = %53
  %64 = load i8**, i8*** %6, align 8
  %65 = load %struct.tsort_run*, %struct.tsort_run** %7, align 8
  %66 = load i32, i32* %8, align 4
  %67 = load %struct.tsort_store*, %struct.tsort_store** %9, align 8
  %68 = call i32 @merge(i8** %64, %struct.tsort_run* %65, i32 %66, %struct.tsort_store* %67)
  %69 = load %struct.tsort_run*, %struct.tsort_run** %7, align 8
  %70 = getelementptr inbounds %struct.tsort_run, %struct.tsort_run* %69, i64 1
  %71 = getelementptr inbounds %struct.tsort_run, %struct.tsort_run* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.tsort_run*, %struct.tsort_run** %7, align 8
  %74 = getelementptr inbounds %struct.tsort_run, %struct.tsort_run* %73, i64 0
  %75 = getelementptr inbounds %struct.tsort_run, %struct.tsort_run* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = add nsw i32 %76, %72
  store i32 %77, i32* %75, align 4
  %78 = load i32, i32* %8, align 4
  %79 = add nsw i32 %78, -1
  store i32 %79, i32* %8, align 4
  br label %207

80:                                               ; preds = %53, %50
  %81 = load i32, i32* %8, align 4
  %82 = icmp eq i32 %81, 2
  br i1 %82, label %83, label %84

83:                                               ; preds = %80
  br label %207

84:                                               ; preds = %80
  br label %85

85:                                               ; preds = %84
  br label %86

86:                                               ; preds = %85
  %87 = load %struct.tsort_run*, %struct.tsort_run** %7, align 8
  %88 = load i32, i32* %8, align 4
  %89 = sub nsw i32 %88, 3
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.tsort_run, %struct.tsort_run* %87, i64 %90
  %92 = getelementptr inbounds %struct.tsort_run, %struct.tsort_run* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  store i32 %93, i32* %11, align 4
  %94 = load %struct.tsort_run*, %struct.tsort_run** %7, align 8
  %95 = load i32, i32* %8, align 4
  %96 = sub nsw i32 %95, 2
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.tsort_run, %struct.tsort_run* %94, i64 %97
  %99 = getelementptr inbounds %struct.tsort_run, %struct.tsort_run* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  store i32 %100, i32* %12, align 4
  %101 = load %struct.tsort_run*, %struct.tsort_run** %7, align 8
  %102 = load i32, i32* %8, align 4
  %103 = sub nsw i32 %102, 1
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.tsort_run, %struct.tsort_run* %101, i64 %104
  %106 = getelementptr inbounds %struct.tsort_run, %struct.tsort_run* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  store i32 %107, i32* %13, align 4
  %108 = load i32, i32* %11, align 4
  %109 = load i32, i32* %12, align 4
  %110 = load i32, i32* %13, align 4
  %111 = add nsw i32 %109, %110
  %112 = icmp sle i32 %108, %111
  br i1 %112, label %113, label %177

113:                                              ; preds = %86
  %114 = load i32, i32* %11, align 4
  %115 = load i32, i32* %13, align 4
  %116 = icmp slt i32 %114, %115
  br i1 %116, label %117, label %153

117:                                              ; preds = %113
  %118 = load i8**, i8*** %6, align 8
  %119 = load %struct.tsort_run*, %struct.tsort_run** %7, align 8
  %120 = load i32, i32* %8, align 4
  %121 = sub nsw i32 %120, 1
  %122 = load %struct.tsort_store*, %struct.tsort_store** %9, align 8
  %123 = call i32 @merge(i8** %118, %struct.tsort_run* %119, i32 %121, %struct.tsort_store* %122)
  %124 = load %struct.tsort_run*, %struct.tsort_run** %7, align 8
  %125 = load i32, i32* %8, align 4
  %126 = sub nsw i32 %125, 2
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds %struct.tsort_run, %struct.tsort_run* %124, i64 %127
  %129 = getelementptr inbounds %struct.tsort_run, %struct.tsort_run* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.tsort_run*, %struct.tsort_run** %7, align 8
  %132 = load i32, i32* %8, align 4
  %133 = sub nsw i32 %132, 3
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds %struct.tsort_run, %struct.tsort_run* %131, i64 %134
  %136 = getelementptr inbounds %struct.tsort_run, %struct.tsort_run* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = add nsw i32 %137, %130
  store i32 %138, i32* %136, align 4
  %139 = load %struct.tsort_run*, %struct.tsort_run** %7, align 8
  %140 = load i32, i32* %8, align 4
  %141 = sub nsw i32 %140, 2
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds %struct.tsort_run, %struct.tsort_run* %139, i64 %142
  %144 = load %struct.tsort_run*, %struct.tsort_run** %7, align 8
  %145 = load i32, i32* %8, align 4
  %146 = sub nsw i32 %145, 1
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds %struct.tsort_run, %struct.tsort_run* %144, i64 %147
  %149 = bitcast %struct.tsort_run* %143 to i8*
  %150 = bitcast %struct.tsort_run* %148 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %149, i8* align 4 %150, i64 4, i1 false)
  %151 = load i32, i32* %8, align 4
  %152 = add nsw i32 %151, -1
  store i32 %152, i32* %8, align 4
  br label %176

153:                                              ; preds = %113
  %154 = load i8**, i8*** %6, align 8
  %155 = load %struct.tsort_run*, %struct.tsort_run** %7, align 8
  %156 = load i32, i32* %8, align 4
  %157 = load %struct.tsort_store*, %struct.tsort_store** %9, align 8
  %158 = call i32 @merge(i8** %154, %struct.tsort_run* %155, i32 %156, %struct.tsort_store* %157)
  %159 = load %struct.tsort_run*, %struct.tsort_run** %7, align 8
  %160 = load i32, i32* %8, align 4
  %161 = sub nsw i32 %160, 1
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds %struct.tsort_run, %struct.tsort_run* %159, i64 %162
  %164 = getelementptr inbounds %struct.tsort_run, %struct.tsort_run* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 4
  %166 = load %struct.tsort_run*, %struct.tsort_run** %7, align 8
  %167 = load i32, i32* %8, align 4
  %168 = sub nsw i32 %167, 2
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds %struct.tsort_run, %struct.tsort_run* %166, i64 %169
  %171 = getelementptr inbounds %struct.tsort_run, %struct.tsort_run* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 4
  %173 = add nsw i32 %172, %165
  store i32 %173, i32* %171, align 4
  %174 = load i32, i32* %8, align 4
  %175 = add nsw i32 %174, -1
  store i32 %175, i32* %8, align 4
  br label %176

176:                                              ; preds = %153, %117
  br label %206

177:                                              ; preds = %86
  %178 = load i32, i32* %12, align 4
  %179 = load i32, i32* %13, align 4
  %180 = icmp sle i32 %178, %179
  br i1 %180, label %181, label %204

181:                                              ; preds = %177
  %182 = load i8**, i8*** %6, align 8
  %183 = load %struct.tsort_run*, %struct.tsort_run** %7, align 8
  %184 = load i32, i32* %8, align 4
  %185 = load %struct.tsort_store*, %struct.tsort_store** %9, align 8
  %186 = call i32 @merge(i8** %182, %struct.tsort_run* %183, i32 %184, %struct.tsort_store* %185)
  %187 = load %struct.tsort_run*, %struct.tsort_run** %7, align 8
  %188 = load i32, i32* %8, align 4
  %189 = sub nsw i32 %188, 1
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds %struct.tsort_run, %struct.tsort_run* %187, i64 %190
  %192 = getelementptr inbounds %struct.tsort_run, %struct.tsort_run* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 4
  %194 = load %struct.tsort_run*, %struct.tsort_run** %7, align 8
  %195 = load i32, i32* %8, align 4
  %196 = sub nsw i32 %195, 2
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds %struct.tsort_run, %struct.tsort_run* %194, i64 %197
  %199 = getelementptr inbounds %struct.tsort_run, %struct.tsort_run* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 4
  %201 = add nsw i32 %200, %193
  store i32 %201, i32* %199, align 4
  %202 = load i32, i32* %8, align 4
  %203 = add nsw i32 %202, -1
  store i32 %203, i32* %8, align 4
  br label %205

204:                                              ; preds = %177
  br label %207

205:                                              ; preds = %181
  br label %206

206:                                              ; preds = %205, %176
  br label %14

207:                                              ; preds = %204, %83, %63, %33, %17
  %208 = load i32, i32* %8, align 4
  ret i32 %208
}

declare dso_local i32 @merge(i8**, %struct.tsort_run*, i32, %struct.tsort_store*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
