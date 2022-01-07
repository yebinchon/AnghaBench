; ModuleID = '/home/carl/AnghaBench/git/xdiff/extr_xdiffi.c_xdl_recs_cmp.c'
source_filename = "/home/carl/AnghaBench/git/xdiff/extr_xdiffi.c_xdl_recs_cmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64*, i8*, i64* }
%struct.TYPE_6__ = type { i64, i64, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xdl_recs_cmp(%struct.TYPE_7__* %0, i64 %1, i64 %2, %struct.TYPE_7__* %3, i64 %4, i64 %5, i64* %6, i64* %7, i32 %8, i32* %9) #0 {
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_7__*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.TYPE_7__*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64*, align 8
  %19 = alloca i64*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32*, align 8
  %22 = alloca i64*, align 8
  %23 = alloca i64*, align 8
  %24 = alloca i8*, align 8
  %25 = alloca i64*, align 8
  %26 = alloca i8*, align 8
  %27 = alloca i64*, align 8
  %28 = alloca %struct.TYPE_6__, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %12, align 8
  store i64 %1, i64* %13, align 8
  store i64 %2, i64* %14, align 8
  store %struct.TYPE_7__* %3, %struct.TYPE_7__** %15, align 8
  store i64 %4, i64* %16, align 8
  store i64 %5, i64* %17, align 8
  store i64* %6, i64** %18, align 8
  store i64* %7, i64** %19, align 8
  store i32 %8, i32* %20, align 4
  store i32* %9, i32** %21, align 8
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  %31 = load i64*, i64** %30, align 8
  store i64* %31, i64** %22, align 8
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 0
  %34 = load i64*, i64** %33, align 8
  store i64* %34, i64** %23, align 8
  br label %35

35:                                               ; preds = %56, %10
  %36 = load i64, i64* %13, align 8
  %37 = load i64, i64* %14, align 8
  %38 = icmp slt i64 %36, %37
  br i1 %38, label %39, label %53

39:                                               ; preds = %35
  %40 = load i64, i64* %16, align 8
  %41 = load i64, i64* %17, align 8
  %42 = icmp slt i64 %40, %41
  br i1 %42, label %43, label %53

43:                                               ; preds = %39
  %44 = load i64*, i64** %22, align 8
  %45 = load i64, i64* %13, align 8
  %46 = getelementptr inbounds i64, i64* %44, i64 %45
  %47 = load i64, i64* %46, align 8
  %48 = load i64*, i64** %23, align 8
  %49 = load i64, i64* %16, align 8
  %50 = getelementptr inbounds i64, i64* %48, i64 %49
  %51 = load i64, i64* %50, align 8
  %52 = icmp eq i64 %47, %51
  br label %53

53:                                               ; preds = %43, %39, %35
  %54 = phi i1 [ false, %39 ], [ false, %35 ], [ %52, %43 ]
  br i1 %54, label %55, label %61

55:                                               ; preds = %53
  br label %56

56:                                               ; preds = %55
  %57 = load i64, i64* %13, align 8
  %58 = add nsw i64 %57, 1
  store i64 %58, i64* %13, align 8
  %59 = load i64, i64* %16, align 8
  %60 = add nsw i64 %59, 1
  store i64 %60, i64* %16, align 8
  br label %35

61:                                               ; preds = %53
  br label %62

62:                                               ; preds = %85, %61
  %63 = load i64, i64* %13, align 8
  %64 = load i64, i64* %14, align 8
  %65 = icmp slt i64 %63, %64
  br i1 %65, label %66, label %82

66:                                               ; preds = %62
  %67 = load i64, i64* %16, align 8
  %68 = load i64, i64* %17, align 8
  %69 = icmp slt i64 %67, %68
  br i1 %69, label %70, label %82

70:                                               ; preds = %66
  %71 = load i64*, i64** %22, align 8
  %72 = load i64, i64* %14, align 8
  %73 = sub nsw i64 %72, 1
  %74 = getelementptr inbounds i64, i64* %71, i64 %73
  %75 = load i64, i64* %74, align 8
  %76 = load i64*, i64** %23, align 8
  %77 = load i64, i64* %17, align 8
  %78 = sub nsw i64 %77, 1
  %79 = getelementptr inbounds i64, i64* %76, i64 %78
  %80 = load i64, i64* %79, align 8
  %81 = icmp eq i64 %75, %80
  br label %82

82:                                               ; preds = %70, %66, %62
  %83 = phi i1 [ false, %66 ], [ false, %62 ], [ %81, %70 ]
  br i1 %83, label %84, label %90

84:                                               ; preds = %82
  br label %85

85:                                               ; preds = %84
  %86 = load i64, i64* %14, align 8
  %87 = add nsw i64 %86, -1
  store i64 %87, i64* %14, align 8
  %88 = load i64, i64* %17, align 8
  %89 = add nsw i64 %88, -1
  store i64 %89, i64* %17, align 8
  br label %62

90:                                               ; preds = %82
  %91 = load i64, i64* %13, align 8
  %92 = load i64, i64* %14, align 8
  %93 = icmp eq i64 %91, %92
  br i1 %93, label %94, label %116

94:                                               ; preds = %90
  %95 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i32 0, i32 1
  %97 = load i8*, i8** %96, align 8
  store i8* %97, i8** %24, align 8
  %98 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i32 0, i32 2
  %100 = load i64*, i64** %99, align 8
  store i64* %100, i64** %25, align 8
  br label %101

101:                                              ; preds = %112, %94
  %102 = load i64, i64* %16, align 8
  %103 = load i64, i64* %17, align 8
  %104 = icmp slt i64 %102, %103
  br i1 %104, label %105, label %115

105:                                              ; preds = %101
  %106 = load i8*, i8** %24, align 8
  %107 = load i64*, i64** %25, align 8
  %108 = load i64, i64* %16, align 8
  %109 = getelementptr inbounds i64, i64* %107, i64 %108
  %110 = load i64, i64* %109, align 8
  %111 = getelementptr inbounds i8, i8* %106, i64 %110
  store i8 1, i8* %111, align 1
  br label %112

112:                                              ; preds = %105
  %113 = load i64, i64* %16, align 8
  %114 = add nsw i64 %113, 1
  store i64 %114, i64* %16, align 8
  br label %101

115:                                              ; preds = %101
  br label %193

116:                                              ; preds = %90
  %117 = load i64, i64* %16, align 8
  %118 = load i64, i64* %17, align 8
  %119 = icmp eq i64 %117, %118
  br i1 %119, label %120, label %142

120:                                              ; preds = %116
  %121 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %122 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %121, i32 0, i32 1
  %123 = load i8*, i8** %122, align 8
  store i8* %123, i8** %26, align 8
  %124 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %125 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %124, i32 0, i32 2
  %126 = load i64*, i64** %125, align 8
  store i64* %126, i64** %27, align 8
  br label %127

127:                                              ; preds = %138, %120
  %128 = load i64, i64* %13, align 8
  %129 = load i64, i64* %14, align 8
  %130 = icmp slt i64 %128, %129
  br i1 %130, label %131, label %141

131:                                              ; preds = %127
  %132 = load i8*, i8** %26, align 8
  %133 = load i64*, i64** %27, align 8
  %134 = load i64, i64* %13, align 8
  %135 = getelementptr inbounds i64, i64* %133, i64 %134
  %136 = load i64, i64* %135, align 8
  %137 = getelementptr inbounds i8, i8* %132, i64 %136
  store i8 1, i8* %137, align 1
  br label %138

138:                                              ; preds = %131
  %139 = load i64, i64* %13, align 8
  %140 = add nsw i64 %139, 1
  store i64 %140, i64* %13, align 8
  br label %127

141:                                              ; preds = %127
  br label %192

142:                                              ; preds = %116
  %143 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 1
  store i64 0, i64* %143, align 8
  %144 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  store i64 0, i64* %144, align 8
  %145 = load i64*, i64** %22, align 8
  %146 = load i64, i64* %13, align 8
  %147 = load i64, i64* %14, align 8
  %148 = load i64*, i64** %23, align 8
  %149 = load i64, i64* %16, align 8
  %150 = load i64, i64* %17, align 8
  %151 = load i64*, i64** %18, align 8
  %152 = load i64*, i64** %19, align 8
  %153 = load i32, i32* %20, align 4
  %154 = load i32*, i32** %21, align 8
  %155 = call i64 @xdl_split(i64* %145, i64 %146, i64 %147, i64* %148, i64 %149, i64 %150, i64* %151, i64* %152, i32 %153, %struct.TYPE_6__* %28, i32* %154)
  %156 = icmp slt i64 %155, 0
  br i1 %156, label %157, label %158

157:                                              ; preds = %142
  store i32 -1, i32* %11, align 4
  br label %194

158:                                              ; preds = %142
  %159 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %160 = load i64, i64* %13, align 8
  %161 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %162 = load i64, i64* %161, align 8
  %163 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %164 = load i64, i64* %16, align 8
  %165 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 1
  %166 = load i64, i64* %165, align 8
  %167 = load i64*, i64** %18, align 8
  %168 = load i64*, i64** %19, align 8
  %169 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 2
  %170 = load i32, i32* %169, align 8
  %171 = load i32*, i32** %21, align 8
  %172 = call i32 @xdl_recs_cmp(%struct.TYPE_7__* %159, i64 %160, i64 %162, %struct.TYPE_7__* %163, i64 %164, i64 %166, i64* %167, i64* %168, i32 %170, i32* %171)
  %173 = icmp slt i32 %172, 0
  br i1 %173, label %190, label %174

174:                                              ; preds = %158
  %175 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %176 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %177 = load i64, i64* %176, align 8
  %178 = load i64, i64* %14, align 8
  %179 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %180 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 1
  %181 = load i64, i64* %180, align 8
  %182 = load i64, i64* %17, align 8
  %183 = load i64*, i64** %18, align 8
  %184 = load i64*, i64** %19, align 8
  %185 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 3
  %186 = load i32, i32* %185, align 4
  %187 = load i32*, i32** %21, align 8
  %188 = call i32 @xdl_recs_cmp(%struct.TYPE_7__* %175, i64 %177, i64 %178, %struct.TYPE_7__* %179, i64 %181, i64 %182, i64* %183, i64* %184, i32 %186, i32* %187)
  %189 = icmp slt i32 %188, 0
  br i1 %189, label %190, label %191

190:                                              ; preds = %174, %158
  store i32 -1, i32* %11, align 4
  br label %194

191:                                              ; preds = %174
  br label %192

192:                                              ; preds = %191, %141
  br label %193

193:                                              ; preds = %192, %115
  store i32 0, i32* %11, align 4
  br label %194

194:                                              ; preds = %193, %190, %157
  %195 = load i32, i32* %11, align 4
  ret i32 %195
}

declare dso_local i64 @xdl_split(i64*, i64, i64, i64*, i64, i64, i64*, i64*, i32, %struct.TYPE_6__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
