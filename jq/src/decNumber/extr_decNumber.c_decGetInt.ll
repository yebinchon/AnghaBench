; ModuleID = '/home/carl/AnghaBench/jq/src/decNumber/extr_decNumber.c_decGetInt.c'
source_filename = "/home/carl/AnghaBench/jq/src/decNumber/extr_decNumber.c_decGetInt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i64, i64* }

@DECDPUN = common dso_local global i64 0, align 8
@BADINT = common dso_local global i64 0, align 8
@powers = common dso_local global i64* null, align 8
@BIGODD = common dso_local global i64 0, align 8
@BIGEVEN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_5__*)* @decGetInt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @decGetInt(%struct.TYPE_5__* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = add i64 %14, %17
  store i64 %18, i64* %7, align 8
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %20 = call i64 @decNumberIsNegative(%struct.TYPE_5__* %19)
  store i64 %20, i64* %8, align 8
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %22 = call i64 @ISZERO(%struct.TYPE_5__* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %1
  store i64 0, i64* %2, align 8
  br label %183

25:                                               ; preds = %1
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 2
  %28 = load i64*, i64** %27, align 8
  store i64* %28, i64** %5, align 8
  store i64 0, i64* %4, align 8
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = icmp uge i64 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %25
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  store i64 %36, i64* %6, align 8
  br label %88

37:                                               ; preds = %25
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = sub i64 0, %40
  store i64 %41, i64* %9, align 8
  br label %42

42:                                               ; preds = %56, %37
  %43 = load i64, i64* %9, align 8
  %44 = load i64, i64* @DECDPUN, align 8
  %45 = icmp uge i64 %43, %44
  br i1 %45, label %46, label %59

46:                                               ; preds = %42
  %47 = load i64*, i64** %5, align 8
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %46
  %51 = load i64, i64* @BADINT, align 8
  store i64 %51, i64* %2, align 8
  br label %183

52:                                               ; preds = %46
  %53 = load i64, i64* @DECDPUN, align 8
  %54 = load i64, i64* %9, align 8
  %55 = sub i64 %54, %53
  store i64 %55, i64* %9, align 8
  br label %56

56:                                               ; preds = %52
  %57 = load i64*, i64** %5, align 8
  %58 = getelementptr inbounds i64, i64* %57, i32 1
  store i64* %58, i64** %5, align 8
  br label %42

59:                                               ; preds = %42
  %60 = load i64, i64* %9, align 8
  %61 = icmp eq i64 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %59
  store i64 0, i64* %6, align 8
  br label %87

63:                                               ; preds = %59
  %64 = load i64*, i64** %5, align 8
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* %9, align 8
  %67 = call i64 @QUOT10(i64 %65, i64 %66)
  store i64 %67, i64* %4, align 8
  %68 = load i64*, i64** %5, align 8
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* %4, align 8
  %71 = load i64*, i64** @powers, align 8
  %72 = load i64, i64* %9, align 8
  %73 = getelementptr inbounds i64, i64* %71, i64 %72
  %74 = load i64, i64* %73, align 8
  %75 = mul i64 %70, %74
  %76 = sub i64 %69, %75
  store i64 %76, i64* %10, align 8
  %77 = load i64, i64* %10, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %63
  %80 = load i64, i64* @BADINT, align 8
  store i64 %80, i64* %2, align 8
  br label %183

81:                                               ; preds = %63
  %82 = load i64, i64* @DECDPUN, align 8
  %83 = load i64, i64* %9, align 8
  %84 = sub i64 %82, %83
  store i64 %84, i64* %6, align 8
  %85 = load i64*, i64** %5, align 8
  %86 = getelementptr inbounds i64, i64* %85, i32 1
  store i64* %86, i64** %5, align 8
  br label %87

87:                                               ; preds = %81, %62
  br label %88

88:                                               ; preds = %87, %33
  %89 = load i64, i64* %6, align 8
  %90 = icmp eq i64 %89, 0
  br i1 %90, label %91, label %99

91:                                               ; preds = %88
  %92 = load i64*, i64** %5, align 8
  %93 = load i64, i64* %92, align 8
  store i64 %93, i64* %4, align 8
  %94 = load i64, i64* @DECDPUN, align 8
  %95 = load i64, i64* %6, align 8
  %96 = add i64 %95, %94
  store i64 %96, i64* %6, align 8
  %97 = load i64*, i64** %5, align 8
  %98 = getelementptr inbounds i64, i64* %97, i32 1
  store i64* %98, i64** %5, align 8
  br label %99

99:                                               ; preds = %91, %88
  %100 = load i64, i64* %7, align 8
  %101 = icmp ult i64 %100, 11
  br i1 %101, label %102, label %164

102:                                              ; preds = %99
  %103 = load i64, i64* %4, align 8
  store i64 %103, i64* %11, align 8
  br label %104

104:                                              ; preds = %121, %102
  %105 = load i64, i64* %6, align 8
  %106 = load i64, i64* %7, align 8
  %107 = icmp ult i64 %105, %106
  br i1 %107, label %108, label %124

108:                                              ; preds = %104
  %109 = load i64*, i64** %5, align 8
  %110 = load i64, i64* %109, align 8
  %111 = load i64*, i64** @powers, align 8
  %112 = load i64, i64* %6, align 8
  %113 = getelementptr inbounds i64, i64* %111, i64 %112
  %114 = load i64, i64* %113, align 8
  %115 = mul i64 %110, %114
  %116 = load i64, i64* %4, align 8
  %117 = add i64 %116, %115
  store i64 %117, i64* %4, align 8
  %118 = load i64, i64* @DECDPUN, align 8
  %119 = load i64, i64* %6, align 8
  %120 = add i64 %119, %118
  store i64 %120, i64* %6, align 8
  br label %121

121:                                              ; preds = %108
  %122 = load i64*, i64** %5, align 8
  %123 = getelementptr inbounds i64, i64* %122, i32 1
  store i64* %123, i64** %5, align 8
  br label %104

124:                                              ; preds = %104
  %125 = load i64, i64* %7, align 8
  %126 = icmp eq i64 %125, 10
  br i1 %126, label %127, label %163

127:                                              ; preds = %124
  %128 = load i64, i64* %4, align 8
  %129 = load i64*, i64** @powers, align 8
  %130 = load i64, i64* %6, align 8
  %131 = load i64, i64* @DECDPUN, align 8
  %132 = sub i64 %130, %131
  %133 = getelementptr inbounds i64, i64* %129, i64 %132
  %134 = load i64, i64* %133, align 8
  %135 = udiv i64 %128, %134
  %136 = load i64*, i64** %5, align 8
  %137 = getelementptr inbounds i64, i64* %136, i64 -1
  %138 = load i64, i64* %137, align 8
  %139 = icmp ne i64 %135, %138
  br i1 %139, label %140, label %141

140:                                              ; preds = %127
  store i64 11, i64* %7, align 8
  br label %157

141:                                              ; preds = %127
  %142 = load i64, i64* %8, align 8
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %148

144:                                              ; preds = %141
  %145 = load i64, i64* %4, align 8
  %146 = icmp ugt i64 %145, 1999999997
  br i1 %146, label %147, label %148

147:                                              ; preds = %144
  store i64 11, i64* %7, align 8
  br label %156

148:                                              ; preds = %144, %141
  %149 = load i64, i64* %8, align 8
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %155, label %151

151:                                              ; preds = %148
  %152 = load i64, i64* %4, align 8
  %153 = icmp ugt i64 %152, 999999999
  br i1 %153, label %154, label %155

154:                                              ; preds = %151
  store i64 11, i64* %7, align 8
  br label %155

155:                                              ; preds = %154, %151, %148
  br label %156

156:                                              ; preds = %155, %147
  br label %157

157:                                              ; preds = %156, %140
  %158 = load i64, i64* %7, align 8
  %159 = icmp eq i64 %158, 11
  br i1 %159, label %160, label %162

160:                                              ; preds = %157
  %161 = load i64, i64* %11, align 8
  store i64 %161, i64* %4, align 8
  br label %162

162:                                              ; preds = %160, %157
  br label %163

163:                                              ; preds = %162, %124
  br label %164

164:                                              ; preds = %163, %99
  %165 = load i64, i64* %7, align 8
  %166 = icmp ugt i64 %165, 10
  br i1 %166, label %167, label %175

167:                                              ; preds = %164
  %168 = load i64, i64* %4, align 8
  %169 = and i64 %168, 1
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %171, label %173

171:                                              ; preds = %167
  %172 = load i64, i64* @BIGODD, align 8
  store i64 %172, i64* %2, align 8
  br label %183

173:                                              ; preds = %167
  %174 = load i64, i64* @BIGEVEN, align 8
  store i64 %174, i64* %2, align 8
  br label %183

175:                                              ; preds = %164
  %176 = load i64, i64* %8, align 8
  %177 = icmp ne i64 %176, 0
  br i1 %177, label %178, label %181

178:                                              ; preds = %175
  %179 = load i64, i64* %4, align 8
  %180 = sub i64 0, %179
  store i64 %180, i64* %4, align 8
  br label %181

181:                                              ; preds = %178, %175
  %182 = load i64, i64* %4, align 8
  store i64 %182, i64* %2, align 8
  br label %183

183:                                              ; preds = %181, %173, %171, %79, %50, %24
  %184 = load i64, i64* %2, align 8
  ret i64 %184
}

declare dso_local i64 @decNumberIsNegative(%struct.TYPE_5__*) #1

declare dso_local i64 @ISZERO(%struct.TYPE_5__*) #1

declare dso_local i64 @QUOT10(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
