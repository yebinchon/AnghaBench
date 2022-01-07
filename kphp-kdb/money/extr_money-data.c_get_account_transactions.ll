; ModuleID = '/home/carl/AnghaBench/kphp-kdb/money/extr_money-data.c_get_account_transactions.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/money/extr_money-data.c_get_account_transactions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i64, i32, i32*, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_account_transactions(i32 %0, i64 %1, i32 %2, i32 %3, i32 %4, i64 %5, i64* %6, i32* %7, i32 %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i64*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  %20 = alloca %struct.TYPE_5__*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i64*, align 8
  %24 = alloca i64*, align 8
  store i32 %0, i32* %11, align 4
  store i64 %1, i64* %12, align 8
  store i32 %2, i32* %13, align 4
  store i32 %3, i32* %14, align 4
  store i32 %4, i32* %15, align 4
  store i64 %5, i64* %16, align 8
  store i64* %6, i64** %17, align 8
  store i32* %7, i32** %18, align 8
  store i32 %8, i32* %19, align 4
  %25 = load i32, i32* %11, align 4
  %26 = load i64, i64* %12, align 8
  %27 = call %struct.TYPE_5__* @get_account(i32 %25, i64 %26)
  store %struct.TYPE_5__* %27, %struct.TYPE_5__** %20, align 8
  %28 = load i64*, i64** %17, align 8
  store i64* %28, i64** %23, align 8
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  %30 = icmp ne %struct.TYPE_5__* %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %9
  store i32 -1, i32* %10, align 4
  br label %193

32:                                               ; preds = %9
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %61

37:                                               ; preds = %32
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* %16, align 8
  %42 = icmp ne i64 %40, %41
  br i1 %42, label %43, label %61

43:                                               ; preds = %37
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* %16, align 8
  %48 = icmp ne i64 %46, %47
  br i1 %48, label %49, label %61

49:                                               ; preds = %43
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 4
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* %16, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %60

57:                                               ; preds = %49
  %58 = load i64, i64* %16, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %61, label %60

60:                                               ; preds = %57, %49
  store i32 -1, i32* %10, align 4
  br label %193

61:                                               ; preds = %57, %43, %37, %32
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  store i32 %64, i32* %21, align 4
  %65 = load i32, i32* %21, align 4
  %66 = icmp sge i32 %65, 0
  %67 = zext i1 %66 to i32
  %68 = call i32 @assert(i32 %67)
  %69 = load i32*, i32** %18, align 8
  store i32 0, i32* %69, align 4
  %70 = load i32, i32* %14, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %78

72:                                               ; preds = %61
  %73 = load i32, i32* %15, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %72
  %76 = load i32, i32* %21, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %80, label %78

78:                                               ; preds = %75, %72, %61
  %79 = load i32, i32* %21, align 4
  store i32 %79, i32* %10, align 4
  br label %193

80:                                               ; preds = %75
  %81 = load i32, i32* %14, align 4
  %82 = icmp slt i32 %81, 0
  br i1 %82, label %83, label %87

83:                                               ; preds = %80
  %84 = load i32, i32* %21, align 4
  %85 = load i32, i32* %14, align 4
  %86 = add nsw i32 %85, %84
  store i32 %86, i32* %14, align 4
  br label %90

87:                                               ; preds = %80
  %88 = load i32, i32* %14, align 4
  %89 = add nsw i32 %88, -1
  store i32 %89, i32* %14, align 4
  br label %90

90:                                               ; preds = %87, %83
  %91 = load i32, i32* %15, align 4
  %92 = icmp slt i32 %91, 0
  br i1 %92, label %93, label %97

93:                                               ; preds = %90
  %94 = load i32, i32* %21, align 4
  %95 = load i32, i32* %15, align 4
  %96 = add nsw i32 %95, %94
  store i32 %96, i32* %15, align 4
  br label %100

97:                                               ; preds = %90
  %98 = load i32, i32* %15, align 4
  %99 = add nsw i32 %98, -1
  store i32 %99, i32* %15, align 4
  br label %100

100:                                              ; preds = %97, %93
  %101 = load i32, i32* %14, align 4
  %102 = load i32, i32* %21, align 4
  %103 = icmp sge i32 %101, %102
  br i1 %103, label %104, label %107

104:                                              ; preds = %100
  %105 = load i32, i32* %21, align 4
  %106 = sub nsw i32 %105, 1
  store i32 %106, i32* %14, align 4
  br label %107

107:                                              ; preds = %104, %100
  %108 = load i32, i32* %15, align 4
  %109 = load i32, i32* %21, align 4
  %110 = icmp sge i32 %108, %109
  br i1 %110, label %111, label %114

111:                                              ; preds = %107
  %112 = load i32, i32* %21, align 4
  %113 = sub nsw i32 %112, 1
  store i32 %113, i32* %15, align 4
  br label %114

114:                                              ; preds = %111, %107
  %115 = load i32, i32* %14, align 4
  %116 = icmp slt i32 %115, 0
  br i1 %116, label %117, label %118

117:                                              ; preds = %114
  store i32 0, i32* %14, align 4
  br label %118

118:                                              ; preds = %117, %114
  %119 = load i32, i32* %15, align 4
  %120 = icmp slt i32 %119, 0
  br i1 %120, label %121, label %122

121:                                              ; preds = %118
  store i32 0, i32* %15, align 4
  br label %122

122:                                              ; preds = %121, %118
  %123 = load i64*, i64** %17, align 8
  %124 = load i32, i32* %19, align 4
  %125 = sub nsw i32 %124, 16
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i64, i64* %123, i64 %126
  store i64* %127, i64** %24, align 8
  %128 = load i32, i32* %14, align 4
  %129 = load i32, i32* %15, align 4
  %130 = icmp sle i32 %128, %129
  br i1 %130, label %131, label %157

131:                                              ; preds = %122
  %132 = load i32, i32* %14, align 4
  store i32 %132, i32* %22, align 4
  br label %133

133:                                              ; preds = %153, %131
  %134 = load i32, i32* %22, align 4
  %135 = load i32, i32* %15, align 4
  %136 = icmp sle i32 %134, %135
  br i1 %136, label %137, label %141

137:                                              ; preds = %133
  %138 = load i64*, i64** %17, align 8
  %139 = load i64*, i64** %24, align 8
  %140 = icmp ule i64* %138, %139
  br label %141

141:                                              ; preds = %137, %133
  %142 = phi i1 [ false, %133 ], [ %140, %137 ]
  br i1 %142, label %143, label %156

143:                                              ; preds = %141
  %144 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  %145 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %144, i32 0, i32 3
  %146 = load i32*, i32** %145, align 8
  %147 = load i32, i32* %22, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i32, i32* %146, i64 %148
  %150 = load i32, i32* %149, align 4
  %151 = load i32, i32* %13, align 4
  %152 = call i32 @store_transaction_short(i64** %17, i32 %150, i32 %151)
  br label %153

153:                                              ; preds = %143
  %154 = load i32, i32* %22, align 4
  %155 = add nsw i32 %154, 1
  store i32 %155, i32* %22, align 4
  br label %133

156:                                              ; preds = %141
  br label %183

157:                                              ; preds = %122
  %158 = load i32, i32* %14, align 4
  store i32 %158, i32* %22, align 4
  br label %159

159:                                              ; preds = %179, %157
  %160 = load i32, i32* %22, align 4
  %161 = load i32, i32* %15, align 4
  %162 = icmp sge i32 %160, %161
  br i1 %162, label %163, label %167

163:                                              ; preds = %159
  %164 = load i64*, i64** %17, align 8
  %165 = load i64*, i64** %24, align 8
  %166 = icmp ule i64* %164, %165
  br label %167

167:                                              ; preds = %163, %159
  %168 = phi i1 [ false, %159 ], [ %166, %163 ]
  br i1 %168, label %169, label %182

169:                                              ; preds = %167
  %170 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  %171 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %170, i32 0, i32 3
  %172 = load i32*, i32** %171, align 8
  %173 = load i32, i32* %22, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds i32, i32* %172, i64 %174
  %176 = load i32, i32* %175, align 4
  %177 = load i32, i32* %13, align 4
  %178 = call i32 @store_transaction_short(i64** %17, i32 %176, i32 %177)
  br label %179

179:                                              ; preds = %169
  %180 = load i32, i32* %22, align 4
  %181 = add nsw i32 %180, -1
  store i32 %181, i32* %22, align 4
  br label %159

182:                                              ; preds = %167
  br label %183

183:                                              ; preds = %182, %156
  %184 = load i64*, i64** %17, align 8
  %185 = load i64*, i64** %23, align 8
  %186 = ptrtoint i64* %184 to i64
  %187 = ptrtoint i64* %185 to i64
  %188 = sub i64 %186, %187
  %189 = sdiv exact i64 %188, 8
  %190 = trunc i64 %189 to i32
  %191 = load i32*, i32** %18, align 8
  store i32 %190, i32* %191, align 4
  %192 = load i32, i32* %21, align 4
  store i32 %192, i32* %10, align 4
  br label %193

193:                                              ; preds = %183, %78, %60, %31
  %194 = load i32, i32* %10, align 4
  ret i32 %194
}

declare dso_local %struct.TYPE_5__* @get_account(i32, i64) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @store_transaction_short(i64**, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
