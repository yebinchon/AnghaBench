; ModuleID = '/home/carl/AnghaBench/libui/common/extr_attrstr.c_uiAttributedStringDelete.c'
source_filename = "/home/carl/AnghaBench/libui/common/extr_attrstr.c_uiAttributedStringDelete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64*, i64*, i64, i64*, i64, i64*, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @uiAttributedStringDelete(%struct.TYPE_6__* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %13 = load i64, i64* %5, align 8
  %14 = call i32 @onCodepointBoundary(%struct.TYPE_6__* %12, i64 %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %3
  br label %17

17:                                               ; preds = %16, %3
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %19 = load i64, i64* %6, align 8
  %20 = call i32 @onCodepointBoundary(%struct.TYPE_6__* %18, i64 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %17
  br label %23

23:                                               ; preds = %22, %17
  %24 = load i64, i64* %6, align 8
  %25 = load i64, i64* %5, align 8
  %26 = sub i64 %24, %25
  store i64 %26, i64* %9, align 8
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load i64*, i64** %28, align 8
  %30 = load i64, i64* %5, align 8
  %31 = getelementptr inbounds i64, i64* %29, i64 %30
  %32 = load i64, i64* %31, align 8
  store i64 %32, i64* %7, align 8
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = load i64*, i64** %34, align 8
  %36 = load i64, i64* %6, align 8
  %37 = getelementptr inbounds i64, i64* %35, i64 %36
  %38 = load i64, i64* %37, align 8
  store i64 %38, i64* %8, align 8
  %39 = load i64, i64* %8, align 8
  %40 = load i64, i64* %7, align 8
  %41 = sub i64 %39, %40
  store i64 %41, i64* %10, align 8
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %43 = call i32 @invalidateGraphemes(%struct.TYPE_6__* %42)
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 1
  %46 = load i64*, i64** %45, align 8
  %47 = load i64, i64* %5, align 8
  %48 = getelementptr inbounds i64, i64* %46, i64 %47
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 1
  %51 = load i64*, i64** %50, align 8
  %52 = load i64, i64* %6, align 8
  %53 = getelementptr inbounds i64, i64* %51, i64 %52
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* %6, align 8
  %58 = sub i64 %56, %57
  %59 = mul i64 %58, 1
  %60 = call i32 @memmove(i64* %48, i64* %53, i64 %59)
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 3
  %63 = load i64*, i64** %62, align 8
  %64 = load i64, i64* %7, align 8
  %65 = getelementptr inbounds i64, i64* %63, i64 %64
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 3
  %68 = load i64*, i64** %67, align 8
  %69 = load i64, i64* %8, align 8
  %70 = getelementptr inbounds i64, i64* %68, i64 %69
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 4
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* %8, align 8
  %75 = sub i64 %73, %74
  %76 = mul i64 %75, 4
  %77 = call i32 @memmove(i64* %65, i64* %70, i64 %76)
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 0
  %80 = load i64*, i64** %79, align 8
  %81 = load i64, i64* %5, align 8
  %82 = getelementptr inbounds i64, i64* %80, i64 %81
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 0
  %85 = load i64*, i64** %84, align 8
  %86 = load i64, i64* %6, align 8
  %87 = getelementptr inbounds i64, i64* %85, i64 %86
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 2
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* %6, align 8
  %92 = sub i64 %90, %91
  %93 = add i64 %92, 1
  %94 = mul i64 %93, 8
  %95 = call i32 @memmove(i64* %82, i64* %87, i64 %94)
  %96 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 5
  %98 = load i64*, i64** %97, align 8
  %99 = load i64, i64* %7, align 8
  %100 = getelementptr inbounds i64, i64* %98, i64 %99
  %101 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 5
  %103 = load i64*, i64** %102, align 8
  %104 = load i64, i64* %8, align 8
  %105 = getelementptr inbounds i64, i64* %103, i64 %104
  %106 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 4
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* %8, align 8
  %110 = sub i64 %108, %109
  %111 = add i64 %110, 1
  %112 = mul i64 %111, 8
  %113 = call i32 @memmove(i64* %100, i64* %105, i64 %112)
  store i64 0, i64* %11, align 8
  br label %114

114:                                              ; preds = %133, %23
  %115 = load i64, i64* %11, align 8
  %116 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i32 0, i32 2
  %118 = load i64, i64* %117, align 8
  %119 = load i64, i64* %6, align 8
  %120 = sub i64 %118, %119
  %121 = icmp ule i64 %115, %120
  br i1 %121, label %122, label %136

122:                                              ; preds = %114
  %123 = load i64, i64* %10, align 8
  %124 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %124, i32 0, i32 0
  %126 = load i64*, i64** %125, align 8
  %127 = load i64, i64* %5, align 8
  %128 = load i64, i64* %11, align 8
  %129 = add i64 %127, %128
  %130 = getelementptr inbounds i64, i64* %126, i64 %129
  %131 = load i64, i64* %130, align 8
  %132 = sub i64 %131, %123
  store i64 %132, i64* %130, align 8
  br label %133

133:                                              ; preds = %122
  %134 = load i64, i64* %11, align 8
  %135 = add i64 %134, 1
  store i64 %135, i64* %11, align 8
  br label %114

136:                                              ; preds = %114
  store i64 0, i64* %11, align 8
  br label %137

137:                                              ; preds = %156, %136
  %138 = load i64, i64* %11, align 8
  %139 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %140 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %139, i32 0, i32 4
  %141 = load i64, i64* %140, align 8
  %142 = load i64, i64* %8, align 8
  %143 = sub i64 %141, %142
  %144 = icmp ule i64 %138, %143
  br i1 %144, label %145, label %159

145:                                              ; preds = %137
  %146 = load i64, i64* %9, align 8
  %147 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %148 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %147, i32 0, i32 5
  %149 = load i64*, i64** %148, align 8
  %150 = load i64, i64* %7, align 8
  %151 = load i64, i64* %11, align 8
  %152 = add i64 %150, %151
  %153 = getelementptr inbounds i64, i64* %149, i64 %152
  %154 = load i64, i64* %153, align 8
  %155 = sub i64 %154, %146
  store i64 %155, i64* %153, align 8
  br label %156

156:                                              ; preds = %145
  %157 = load i64, i64* %11, align 8
  %158 = add i64 %157, 1
  store i64 %158, i64* %11, align 8
  br label %137

159:                                              ; preds = %137
  %160 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %161 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %160, i32 0, i32 1
  %162 = load i64*, i64** %161, align 8
  %163 = load i64, i64* %5, align 8
  %164 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %165 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %164, i32 0, i32 2
  %166 = load i64, i64* %165, align 8
  %167 = load i64, i64* %6, align 8
  %168 = sub i64 %166, %167
  %169 = add i64 %163, %168
  %170 = getelementptr inbounds i64, i64* %162, i64 %169
  store i64 0, i64* %170, align 8
  %171 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %172 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %171, i32 0, i32 3
  %173 = load i64*, i64** %172, align 8
  %174 = load i64, i64* %7, align 8
  %175 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %176 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %175, i32 0, i32 4
  %177 = load i64, i64* %176, align 8
  %178 = load i64, i64* %8, align 8
  %179 = sub i64 %177, %178
  %180 = add i64 %174, %179
  %181 = getelementptr inbounds i64, i64* %173, i64 %180
  store i64 0, i64* %181, align 8
  %182 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %183 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %182, i32 0, i32 6
  %184 = load i32, i32* %183, align 8
  %185 = load i64, i64* %5, align 8
  %186 = load i64, i64* %6, align 8
  %187 = call i32 @uiprivAttrListRemoveCharacters(i32 %184, i64 %185, i64 %186)
  %188 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %189 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %190 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %189, i32 0, i32 2
  %191 = load i64, i64* %190, align 8
  %192 = load i64, i64* %9, align 8
  %193 = sub i64 %191, %192
  %194 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %195 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %194, i32 0, i32 4
  %196 = load i64, i64* %195, align 8
  %197 = load i64, i64* %10, align 8
  %198 = sub i64 %196, %197
  %199 = call i32 @resize(%struct.TYPE_6__* %188, i64 %193, i64 %198)
  ret void
}

declare dso_local i32 @onCodepointBoundary(%struct.TYPE_6__*, i64) #1

declare dso_local i32 @invalidateGraphemes(%struct.TYPE_6__*) #1

declare dso_local i32 @memmove(i64*, i64*, i64) #1

declare dso_local i32 @uiprivAttrListRemoveCharacters(i32, i64, i64) #1

declare dso_local i32 @resize(%struct.TYPE_6__*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
