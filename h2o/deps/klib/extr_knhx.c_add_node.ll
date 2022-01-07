; ModuleID = '/home/carl/AnghaBench/h2o/deps/klib/extr_knhx.c_add_node.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/klib/extr_knhx.c_add_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i32, double, i8* }

@KNERR_BRACKET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, %struct.TYPE_6__*, i32)* @add_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @add_node(i8* %0, %struct.TYPE_6__* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_5__*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %5, align 8
  store i32 %2, i32* %6, align 4
  store i8* null, i8** %9, align 8
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = icmp eq i32 %13, %16
  br i1 %17, label %18, label %46

18:                                               ; preds = %3
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %18
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = shl i32 %26, 1
  br label %29

28:                                               ; preds = %18
  br label %29

29:                                               ; preds = %28, %23
  %30 = phi i32 [ %27, %23 ], [ 8, %28 ]
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 4
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 3
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %34, align 8
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = sext i32 %38 to i64
  %40 = mul i64 24, %39
  %41 = trunc i64 %40 to i32
  %42 = call i64 @realloc(%struct.TYPE_5__* %35, i32 %41)
  %43 = inttoptr i64 %42 to %struct.TYPE_5__*
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 3
  store %struct.TYPE_5__* %43, %struct.TYPE_5__** %45, align 8
  br label %46

46:                                               ; preds = %29, %3
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 3
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %48, align 8
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %51, align 8
  %54 = sext i32 %52 to i64
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i64 %54
  store %struct.TYPE_5__* %55, %struct.TYPE_5__** %10, align 8
  %56 = load i32, i32* %6, align 4
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 8
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 1
  store i32 -1, i32* %60, align 4
  %61 = load i8*, i8** %4, align 8
  store i8* %61, i8** %7, align 8
  %62 = load i8*, i8** %7, align 8
  store i8* %62, i8** %8, align 8
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 2
  store double -1.000000e+00, double* %64, align 8
  br label %65

65:                                               ; preds = %152, %46
  %66 = load i8*, i8** %7, align 8
  %67 = load i8, i8* %66, align 1
  %68 = sext i8 %67 to i32
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %80

70:                                               ; preds = %65
  %71 = load i8*, i8** %7, align 8
  %72 = load i8, i8* %71, align 1
  %73 = sext i8 %72 to i32
  %74 = icmp ne i32 %73, 44
  br i1 %74, label %75, label %80

75:                                               ; preds = %70
  %76 = load i8*, i8** %7, align 8
  %77 = load i8, i8* %76, align 1
  %78 = sext i8 %77 to i32
  %79 = icmp ne i32 %78, 41
  br label %80

80:                                               ; preds = %75, %70, %65
  %81 = phi i1 [ false, %70 ], [ false, %65 ], [ %79, %75 ]
  br i1 %81, label %82, label %155

82:                                               ; preds = %80
  %83 = load i8*, i8** %7, align 8
  %84 = load i8, i8* %83, align 1
  %85 = sext i8 %84 to i32
  %86 = icmp eq i32 %85, 91
  br i1 %86, label %87, label %120

87:                                               ; preds = %82
  %88 = load i8*, i8** %9, align 8
  %89 = icmp eq i8* %88, null
  br i1 %89, label %90, label %92

90:                                               ; preds = %87
  %91 = load i8*, i8** %7, align 8
  store i8* %91, i8** %9, align 8
  br label %92

92:                                               ; preds = %90, %87
  br label %93

93:                                               ; preds = %106, %92
  %94 = load i8*, i8** %7, align 8
  %95 = getelementptr inbounds i8, i8* %94, i32 1
  store i8* %95, i8** %7, align 8
  br label %96

96:                                               ; preds = %93
  %97 = load i8*, i8** %7, align 8
  %98 = load i8, i8* %97, align 1
  %99 = sext i8 %98 to i32
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %106

101:                                              ; preds = %96
  %102 = load i8*, i8** %7, align 8
  %103 = load i8, i8* %102, align 1
  %104 = sext i8 %103 to i32
  %105 = icmp ne i32 %104, 93
  br label %106

106:                                              ; preds = %101, %96
  %107 = phi i1 [ false, %96 ], [ %105, %101 ]
  br i1 %107, label %93, label %108

108:                                              ; preds = %106
  %109 = load i8*, i8** %7, align 8
  %110 = load i8, i8* %109, align 1
  %111 = sext i8 %110 to i32
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %113, label %119

113:                                              ; preds = %108
  %114 = load i32, i32* @KNERR_BRACKET, align 4
  %115 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 8
  %118 = or i32 %117, %114
  store i32 %118, i32* %116, align 8
  br label %155

119:                                              ; preds = %108
  br label %151

120:                                              ; preds = %82
  %121 = load i8*, i8** %7, align 8
  %122 = load i8, i8* %121, align 1
  %123 = sext i8 %122 to i32
  %124 = icmp eq i32 %123, 58
  br i1 %124, label %125, label %138

125:                                              ; preds = %120
  %126 = load i8*, i8** %9, align 8
  %127 = icmp eq i8* %126, null
  br i1 %127, label %128, label %130

128:                                              ; preds = %125
  %129 = load i8*, i8** %7, align 8
  store i8* %129, i8** %9, align 8
  br label %130

130:                                              ; preds = %128, %125
  %131 = load i8*, i8** %7, align 8
  %132 = getelementptr inbounds i8, i8* %131, i64 1
  %133 = call double @strtod(i8* %132, i8** %7)
  %134 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %135 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %134, i32 0, i32 2
  store double %133, double* %135, align 8
  %136 = load i8*, i8** %7, align 8
  %137 = getelementptr inbounds i8, i8* %136, i32 -1
  store i8* %137, i8** %7, align 8
  br label %150

138:                                              ; preds = %120
  %139 = load i8*, i8** %7, align 8
  %140 = load i8, i8* %139, align 1
  %141 = call i32 @isgraph(i8 signext %140)
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %149, label %143

143:                                              ; preds = %138
  %144 = load i8*, i8** %9, align 8
  %145 = icmp eq i8* %144, null
  br i1 %145, label %146, label %148

146:                                              ; preds = %143
  %147 = load i8*, i8** %7, align 8
  store i8* %147, i8** %9, align 8
  br label %148

148:                                              ; preds = %146, %143
  br label %149

149:                                              ; preds = %148, %138
  br label %150

150:                                              ; preds = %149, %130
  br label %151

151:                                              ; preds = %150, %119
  br label %152

152:                                              ; preds = %151
  %153 = load i8*, i8** %7, align 8
  %154 = getelementptr inbounds i8, i8* %153, i32 1
  store i8* %154, i8** %7, align 8
  br label %65

155:                                              ; preds = %113, %80
  %156 = load i8*, i8** %9, align 8
  %157 = icmp eq i8* %156, null
  br i1 %157, label %158, label %160

158:                                              ; preds = %155
  %159 = load i8*, i8** %7, align 8
  store i8* %159, i8** %9, align 8
  br label %160

160:                                              ; preds = %158, %155
  %161 = load i8*, i8** %9, align 8
  %162 = load i8*, i8** %8, align 8
  %163 = icmp ne i8* %161, %162
  br i1 %163, label %164, label %187

164:                                              ; preds = %160
  %165 = load i8*, i8** %9, align 8
  %166 = load i8*, i8** %8, align 8
  %167 = ptrtoint i8* %165 to i64
  %168 = ptrtoint i8* %166 to i64
  %169 = sub i64 %167, %168
  %170 = add nsw i64 %169, 1
  %171 = trunc i64 %170 to i32
  %172 = call i64 @calloc(i32 %171, i32 1)
  %173 = inttoptr i64 %172 to i8*
  %174 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %175 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %174, i32 0, i32 3
  store i8* %173, i8** %175, align 8
  %176 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %177 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %176, i32 0, i32 3
  %178 = load i8*, i8** %177, align 8
  %179 = load i8*, i8** %8, align 8
  %180 = load i8*, i8** %9, align 8
  %181 = load i8*, i8** %8, align 8
  %182 = ptrtoint i8* %180 to i64
  %183 = ptrtoint i8* %181 to i64
  %184 = sub i64 %182, %183
  %185 = trunc i64 %184 to i32
  %186 = call i32 @strncpy(i8* %178, i8* %179, i32 %185)
  br label %191

187:                                              ; preds = %160
  %188 = call i8* @strdup(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %189 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %190 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %189, i32 0, i32 3
  store i8* %188, i8** %190, align 8
  br label %191

191:                                              ; preds = %187, %164
  %192 = load i8*, i8** %7, align 8
  ret i8* %192
}

declare dso_local i64 @realloc(%struct.TYPE_5__*, i32) #1

declare dso_local double @strtod(i8*, i8**) #1

declare dso_local i32 @isgraph(i8 signext) #1

declare dso_local i64 @calloc(i32, i32) #1

declare dso_local i32 @strncpy(i8*, i8*, i32) #1

declare dso_local i8* @strdup(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
