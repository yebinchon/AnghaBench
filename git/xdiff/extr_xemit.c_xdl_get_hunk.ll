; ModuleID = '/home/carl/AnghaBench/git/xdiff/extr_xemit.c_xdl_get_hunk.c'
source_filename = "/home/carl/AnghaBench/git/xdiff/extr_xemit.c_xdl_get_hunk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i64, i64, i64, %struct.TYPE_7__* }
%struct.TYPE_6__ = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_7__* @xdl_get_hunk(%struct.TYPE_7__** %0, %struct.TYPE_6__* %1) #0 {
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca %struct.TYPE_7__**, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.TYPE_7__** %0, %struct.TYPE_7__*** %4, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %5, align 8
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = mul nsw i32 2, %15
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = add nsw i32 %16, %19
  %21 = sext i32 %20 to i64
  store i64 %21, i64* %9, align 8
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = sext i32 %24 to i64
  store i64 %25, i64* %10, align 8
  store i64 0, i64* %11, align 8
  %26 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %4, align 8
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %26, align 8
  store %struct.TYPE_7__* %27, %struct.TYPE_7__** %7, align 8
  br label %28

28:                                               ; preds = %62, %2
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %30 = icmp ne %struct.TYPE_7__* %29, null
  br i1 %30, label %31, label %36

31:                                               ; preds = %28
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 3
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br label %36

36:                                               ; preds = %31, %28
  %37 = phi i1 [ false, %28 ], [ %35, %31 ]
  br i1 %37, label %38, label %66

38:                                               ; preds = %36
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 4
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %40, align 8
  store %struct.TYPE_7__* %41, %struct.TYPE_7__** %6, align 8
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %43 = icmp eq %struct.TYPE_7__* %42, null
  br i1 %43, label %58, label %44

44:                                               ; preds = %38
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = add nsw i64 %50, %53
  %55 = sub nsw i64 %47, %54
  %56 = load i64, i64* %10, align 8
  %57 = icmp sge i64 %55, %56
  br i1 %57, label %58, label %61

58:                                               ; preds = %44, %38
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %60 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %4, align 8
  store %struct.TYPE_7__* %59, %struct.TYPE_7__** %60, align 8
  br label %61

61:                                               ; preds = %58, %44
  br label %62

62:                                               ; preds = %61
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 4
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %64, align 8
  store %struct.TYPE_7__* %65, %struct.TYPE_7__** %7, align 8
  br label %28

66:                                               ; preds = %36
  %67 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %4, align 8
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %67, align 8
  %69 = icmp eq %struct.TYPE_7__* %68, null
  br i1 %69, label %70, label %71

70:                                               ; preds = %66
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %3, align 8
  br label %173

71:                                               ; preds = %66
  %72 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %4, align 8
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %72, align 8
  store %struct.TYPE_7__* %73, %struct.TYPE_7__** %8, align 8
  %74 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %4, align 8
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** %74, align 8
  store %struct.TYPE_7__* %75, %struct.TYPE_7__** %7, align 8
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 4
  %78 = load %struct.TYPE_7__*, %struct.TYPE_7__** %77, align 8
  store %struct.TYPE_7__* %78, %struct.TYPE_7__** %6, align 8
  br label %79

79:                                               ; preds = %166, %71
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %81 = icmp ne %struct.TYPE_7__* %80, null
  br i1 %81, label %82, label %171

82:                                               ; preds = %79
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = add nsw i64 %88, %91
  %93 = sub nsw i64 %85, %92
  store i64 %93, i64* %12, align 8
  %94 = load i64, i64* %12, align 8
  %95 = load i64, i64* %9, align 8
  %96 = icmp sgt i64 %94, %95
  br i1 %96, label %97, label %98

97:                                               ; preds = %82
  br label %171

98:                                               ; preds = %82
  %99 = load i64, i64* %12, align 8
  %100 = load i64, i64* %10, align 8
  %101 = icmp slt i64 %99, %100
  br i1 %101, label %102, label %113

102:                                              ; preds = %98
  %103 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %104 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %103, i32 0, i32 3
  %105 = load i64, i64* %104, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %111

107:                                              ; preds = %102
  %108 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %109 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %110 = icmp eq %struct.TYPE_7__* %108, %109
  br i1 %110, label %111, label %113

111:                                              ; preds = %107, %102
  %112 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  store %struct.TYPE_7__* %112, %struct.TYPE_7__** %8, align 8
  store i64 0, i64* %11, align 8
  br label %165

113:                                              ; preds = %107, %98
  %114 = load i64, i64* %12, align 8
  %115 = load i64, i64* %10, align 8
  %116 = icmp slt i64 %114, %115
  br i1 %116, label %117, label %128

117:                                              ; preds = %113
  %118 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i32 0, i32 3
  %120 = load i64, i64* %119, align 8
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %128

122:                                              ; preds = %117
  %123 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %124 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %123, i32 0, i32 2
  %125 = load i64, i64* %124, align 8
  %126 = load i64, i64* %11, align 8
  %127 = add i64 %126, %125
  store i64 %127, i64* %11, align 8
  br label %164

128:                                              ; preds = %117, %113
  %129 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %130 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %131 = icmp ne %struct.TYPE_7__* %129, %130
  br i1 %131, label %132, label %149

132:                                              ; preds = %128
  %133 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %134 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = load i64, i64* %11, align 8
  %137 = add i64 %135, %136
  %138 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %139 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %142 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %141, i32 0, i32 1
  %143 = load i64, i64* %142, align 8
  %144 = add nsw i64 %140, %143
  %145 = sub i64 %137, %144
  %146 = load i64, i64* %9, align 8
  %147 = icmp ugt i64 %145, %146
  br i1 %147, label %148, label %149

148:                                              ; preds = %132
  br label %171

149:                                              ; preds = %132, %128
  %150 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %151 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %150, i32 0, i32 3
  %152 = load i64, i64* %151, align 8
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %156, label %154

154:                                              ; preds = %149
  %155 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  store %struct.TYPE_7__* %155, %struct.TYPE_7__** %8, align 8
  store i64 0, i64* %11, align 8
  br label %162

156:                                              ; preds = %149
  %157 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %158 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %157, i32 0, i32 2
  %159 = load i64, i64* %158, align 8
  %160 = load i64, i64* %11, align 8
  %161 = add i64 %160, %159
  store i64 %161, i64* %11, align 8
  br label %162

162:                                              ; preds = %156, %154
  br label %163

163:                                              ; preds = %162
  br label %164

164:                                              ; preds = %163, %122
  br label %165

165:                                              ; preds = %164, %111
  br label %166

166:                                              ; preds = %165
  %167 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  store %struct.TYPE_7__* %167, %struct.TYPE_7__** %7, align 8
  %168 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %169 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %168, i32 0, i32 4
  %170 = load %struct.TYPE_7__*, %struct.TYPE_7__** %169, align 8
  store %struct.TYPE_7__* %170, %struct.TYPE_7__** %6, align 8
  br label %79

171:                                              ; preds = %148, %97, %79
  %172 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  store %struct.TYPE_7__* %172, %struct.TYPE_7__** %3, align 8
  br label %173

173:                                              ; preds = %171, %70
  %174 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  ret %struct.TYPE_7__* %174
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
