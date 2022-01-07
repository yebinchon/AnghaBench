; ModuleID = '/home/carl/AnghaBench/kilo/extr_kilo.c_editorMoveCursor.c'
source_filename = "/home/carl/AnghaBench/kilo/extr_kilo.c_editorMoveCursor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, %struct.TYPE_3__*, i32, i32 }
%struct.TYPE_3__ = type { i32 }

@E = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @editorMoveCursor(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_3__*, align 8
  store i32 %0, i32* %2, align 4
  %7 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @E, i32 0, i32 0), align 8
  %8 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @E, i32 0, i32 1), align 4
  %9 = add nsw i32 %7, %8
  store i32 %9, i32* %3, align 4
  %10 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @E, i32 0, i32 2), align 8
  %11 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @E, i32 0, i32 3), align 4
  %12 = add nsw i32 %10, %11
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %3, align 4
  %14 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @E, i32 0, i32 4), align 8
  %15 = icmp sge i32 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  br label %22

17:                                               ; preds = %1
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @E, i32 0, i32 5), align 8
  %19 = load i32, i32* %3, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i64 %20
  br label %22

22:                                               ; preds = %17, %16
  %23 = phi %struct.TYPE_3__* [ null, %16 ], [ %21, %17 ]
  store %struct.TYPE_3__* %23, %struct.TYPE_3__** %6, align 8
  %24 = load i32, i32* %2, align 4
  switch i32 %24, label %140 [
    i32 130, label %25
    i32 129, label %65
    i32 128, label %109
    i32 131, label %123
  ]

25:                                               ; preds = %22
  %26 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @E, i32 0, i32 3), align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %61

28:                                               ; preds = %25
  %29 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @E, i32 0, i32 2), align 8
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %28
  %32 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @E, i32 0, i32 2), align 8
  %33 = add nsw i32 %32, -1
  store i32 %33, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @E, i32 0, i32 2), align 8
  br label %60

34:                                               ; preds = %28
  %35 = load i32, i32* %3, align 4
  %36 = icmp sgt i32 %35, 0
  br i1 %36, label %37, label %59

37:                                               ; preds = %34
  %38 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @E, i32 0, i32 1), align 4
  %39 = add nsw i32 %38, -1
  store i32 %39, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @E, i32 0, i32 1), align 4
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @E, i32 0, i32 5), align 8
  %41 = load i32, i32* %3, align 4
  %42 = sub nsw i32 %41, 1
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  store i32 %46, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @E, i32 0, i32 3), align 4
  %47 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @E, i32 0, i32 3), align 4
  %48 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @E, i32 0, i32 7), align 4
  %49 = sub nsw i32 %48, 1
  %50 = icmp sgt i32 %47, %49
  br i1 %50, label %51, label %58

51:                                               ; preds = %37
  %52 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @E, i32 0, i32 3), align 4
  %53 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @E, i32 0, i32 7), align 4
  %54 = sub nsw i32 %52, %53
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @E, i32 0, i32 2), align 8
  %56 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @E, i32 0, i32 7), align 4
  %57 = sub nsw i32 %56, 1
  store i32 %57, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @E, i32 0, i32 3), align 4
  br label %58

58:                                               ; preds = %51, %37
  br label %59

59:                                               ; preds = %58, %34
  br label %60

60:                                               ; preds = %59, %31
  br label %64

61:                                               ; preds = %25
  %62 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @E, i32 0, i32 3), align 4
  %63 = sub nsw i32 %62, 1
  store i32 %63, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @E, i32 0, i32 3), align 4
  br label %64

64:                                               ; preds = %61, %60
  br label %140

65:                                               ; preds = %22
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %67 = icmp ne %struct.TYPE_3__* %66, null
  br i1 %67, label %68, label %86

68:                                               ; preds = %65
  %69 = load i32, i32* %4, align 4
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = icmp slt i32 %69, %72
  br i1 %73, label %74, label %86

74:                                               ; preds = %68
  %75 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @E, i32 0, i32 3), align 4
  %76 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @E, i32 0, i32 7), align 4
  %77 = sub nsw i32 %76, 1
  %78 = icmp eq i32 %75, %77
  br i1 %78, label %79, label %82

79:                                               ; preds = %74
  %80 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @E, i32 0, i32 2), align 8
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @E, i32 0, i32 2), align 8
  br label %85

82:                                               ; preds = %74
  %83 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @E, i32 0, i32 3), align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @E, i32 0, i32 3), align 4
  br label %85

85:                                               ; preds = %82, %79
  br label %108

86:                                               ; preds = %68, %65
  %87 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %88 = icmp ne %struct.TYPE_3__* %87, null
  br i1 %88, label %89, label %107

89:                                               ; preds = %86
  %90 = load i32, i32* %4, align 4
  %91 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = icmp eq i32 %90, %93
  br i1 %94, label %95, label %107

95:                                               ; preds = %89
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @E, i32 0, i32 3), align 4
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @E, i32 0, i32 2), align 8
  %96 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @E, i32 0, i32 1), align 4
  %97 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @E, i32 0, i32 6), align 8
  %98 = sub nsw i32 %97, 1
  %99 = icmp eq i32 %96, %98
  br i1 %99, label %100, label %103

100:                                              ; preds = %95
  %101 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @E, i32 0, i32 0), align 8
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @E, i32 0, i32 0), align 8
  br label %106

103:                                              ; preds = %95
  %104 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @E, i32 0, i32 1), align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @E, i32 0, i32 1), align 4
  br label %106

106:                                              ; preds = %103, %100
  br label %107

107:                                              ; preds = %106, %89, %86
  br label %108

108:                                              ; preds = %107, %85
  br label %140

109:                                              ; preds = %22
  %110 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @E, i32 0, i32 1), align 4
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %112, label %119

112:                                              ; preds = %109
  %113 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @E, i32 0, i32 0), align 8
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %118

115:                                              ; preds = %112
  %116 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @E, i32 0, i32 0), align 8
  %117 = add nsw i32 %116, -1
  store i32 %117, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @E, i32 0, i32 0), align 8
  br label %118

118:                                              ; preds = %115, %112
  br label %122

119:                                              ; preds = %109
  %120 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @E, i32 0, i32 1), align 4
  %121 = sub nsw i32 %120, 1
  store i32 %121, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @E, i32 0, i32 1), align 4
  br label %122

122:                                              ; preds = %119, %118
  br label %140

123:                                              ; preds = %22
  %124 = load i32, i32* %3, align 4
  %125 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @E, i32 0, i32 4), align 8
  %126 = icmp slt i32 %124, %125
  br i1 %126, label %127, label %139

127:                                              ; preds = %123
  %128 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @E, i32 0, i32 1), align 4
  %129 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @E, i32 0, i32 6), align 8
  %130 = sub nsw i32 %129, 1
  %131 = icmp eq i32 %128, %130
  br i1 %131, label %132, label %135

132:                                              ; preds = %127
  %133 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @E, i32 0, i32 0), align 8
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @E, i32 0, i32 0), align 8
  br label %138

135:                                              ; preds = %127
  %136 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @E, i32 0, i32 1), align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @E, i32 0, i32 1), align 4
  br label %138

138:                                              ; preds = %135, %132
  br label %139

139:                                              ; preds = %138, %123
  br label %140

140:                                              ; preds = %22, %139, %122, %108, %64
  %141 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @E, i32 0, i32 0), align 8
  %142 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @E, i32 0, i32 1), align 4
  %143 = add nsw i32 %141, %142
  store i32 %143, i32* %3, align 4
  %144 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @E, i32 0, i32 2), align 8
  %145 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @E, i32 0, i32 3), align 4
  %146 = add nsw i32 %144, %145
  store i32 %146, i32* %4, align 4
  %147 = load i32, i32* %3, align 4
  %148 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @E, i32 0, i32 4), align 8
  %149 = icmp sge i32 %147, %148
  br i1 %149, label %150, label %151

150:                                              ; preds = %140
  br label %156

151:                                              ; preds = %140
  %152 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @E, i32 0, i32 5), align 8
  %153 = load i32, i32* %3, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %152, i64 %154
  br label %156

156:                                              ; preds = %151, %150
  %157 = phi %struct.TYPE_3__* [ null, %150 ], [ %155, %151 ]
  store %struct.TYPE_3__* %157, %struct.TYPE_3__** %6, align 8
  %158 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %159 = icmp ne %struct.TYPE_3__* %158, null
  br i1 %159, label %160, label %164

160:                                              ; preds = %156
  %161 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %162 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 4
  br label %165

164:                                              ; preds = %156
  br label %165

165:                                              ; preds = %164, %160
  %166 = phi i32 [ %163, %160 ], [ 0, %164 ]
  store i32 %166, i32* %5, align 4
  %167 = load i32, i32* %4, align 4
  %168 = load i32, i32* %5, align 4
  %169 = icmp sgt i32 %167, %168
  br i1 %169, label %170, label %183

170:                                              ; preds = %165
  %171 = load i32, i32* %4, align 4
  %172 = load i32, i32* %5, align 4
  %173 = sub nsw i32 %171, %172
  %174 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @E, i32 0, i32 3), align 4
  %175 = sub nsw i32 %174, %173
  store i32 %175, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @E, i32 0, i32 3), align 4
  %176 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @E, i32 0, i32 3), align 4
  %177 = icmp slt i32 %176, 0
  br i1 %177, label %178, label %182

178:                                              ; preds = %170
  %179 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @E, i32 0, i32 3), align 4
  %180 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @E, i32 0, i32 2), align 8
  %181 = add nsw i32 %180, %179
  store i32 %181, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @E, i32 0, i32 2), align 8
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @E, i32 0, i32 3), align 4
  br label %182

182:                                              ; preds = %178, %170
  br label %183

183:                                              ; preds = %182, %165
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
