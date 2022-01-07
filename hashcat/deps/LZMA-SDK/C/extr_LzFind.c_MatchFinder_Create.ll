; ModuleID = '/home/carl/AnghaBench/hashcat/deps/LZMA-SDK/C/extr_LzFind.c_MatchFinder_Create.c'
source_filename = "/home/carl/AnghaBench/hashcat/deps/LZMA-SDK/C/extr_LzFind.c_MatchFinder_Create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i64, i64, i64 }

@kMaxHistorySize = common dso_local global i32 0, align 4
@kHash2Size = common dso_local global i64 0, align 8
@kHash3Size = common dso_local global i64 0, align 8
@kHash4Size = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @MatchFinder_Create(%struct.TYPE_6__* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %19 = load i32, i32* %9, align 4
  %20 = load i32, i32* @kMaxHistorySize, align 4
  %21 = icmp sgt i32 %19, %20
  br i1 %21, label %22, label %26

22:                                               ; preds = %6
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %24 = load i32, i32* %13, align 4
  %25 = call i32 @MatchFinder_Free(%struct.TYPE_6__* %23, i32 %24)
  store i32 0, i32* %7, align 4
  br label %243

26:                                               ; preds = %6
  %27 = load i32, i32* %9, align 4
  %28 = ashr i32 %27, 1
  store i32 %28, i32* %14, align 4
  %29 = load i32, i32* %9, align 4
  %30 = icmp sge i32 %29, -1073741824
  br i1 %30, label %31, label %34

31:                                               ; preds = %26
  %32 = load i32, i32* %9, align 4
  %33 = ashr i32 %32, 3
  store i32 %33, i32* %14, align 4
  br label %41

34:                                               ; preds = %26
  %35 = load i32, i32* %9, align 4
  %36 = icmp sge i32 %35, -2147483648
  br i1 %36, label %37, label %40

37:                                               ; preds = %34
  %38 = load i32, i32* %9, align 4
  %39 = ashr i32 %38, 2
  store i32 %39, i32* %14, align 4
  br label %40

40:                                               ; preds = %37, %34
  br label %41

41:                                               ; preds = %40, %31
  %42 = load i32, i32* %10, align 4
  %43 = load i32, i32* %11, align 4
  %44 = add nsw i32 %42, %43
  %45 = load i32, i32* %12, align 4
  %46 = add nsw i32 %44, %45
  %47 = sdiv i32 %46, 2
  %48 = add nsw i32 %47, 524288
  %49 = load i32, i32* %14, align 4
  %50 = add nsw i32 %49, %48
  store i32 %50, i32* %14, align 4
  %51 = load i32, i32* %9, align 4
  %52 = load i32, i32* %10, align 4
  %53 = add nsw i32 %51, %52
  %54 = add nsw i32 %53, 1
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 8
  %57 = load i32, i32* %11, align 4
  %58 = load i32, i32* %12, align 4
  %59 = add nsw i32 %57, %58
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 1
  store i32 %59, i32* %61, align 4
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %63 = load i32, i32* %14, align 4
  %64 = load i32, i32* %13, align 4
  %65 = call i64 @LzInWindow_Create(%struct.TYPE_6__* %62, i32 %63, i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %239

67:                                               ; preds = %41
  %68 = load i32, i32* %9, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %15, align 4
  %70 = load i32, i32* %11, align 4
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 2
  store i32 %70, i32* %72, align 8
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 13
  store i64 0, i64* %74, align 8
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 4
  %78 = icmp eq i32 %77, 2
  br i1 %78, label %79, label %80

79:                                               ; preds = %67
  store i32 65535, i32* %16, align 4
  br label %131

80:                                               ; preds = %67
  %81 = load i32, i32* %9, align 4
  store i32 %81, i32* %16, align 4
  %82 = load i32, i32* %16, align 4
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 4
  %85 = load i32, i32* %84, align 8
  %86 = icmp sgt i32 %82, %85
  br i1 %86, label %87, label %91

87:                                               ; preds = %80
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 4
  %90 = load i32, i32* %89, align 8
  store i32 %90, i32* %16, align 4
  br label %91

91:                                               ; preds = %87, %80
  %92 = load i32, i32* %16, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %91
  %95 = load i32, i32* %16, align 4
  %96 = add nsw i32 %95, -1
  store i32 %96, i32* %16, align 4
  br label %97

97:                                               ; preds = %94, %91
  %98 = load i32, i32* %16, align 4
  %99 = ashr i32 %98, 1
  %100 = load i32, i32* %16, align 4
  %101 = or i32 %100, %99
  store i32 %101, i32* %16, align 4
  %102 = load i32, i32* %16, align 4
  %103 = ashr i32 %102, 2
  %104 = load i32, i32* %16, align 4
  %105 = or i32 %104, %103
  store i32 %105, i32* %16, align 4
  %106 = load i32, i32* %16, align 4
  %107 = ashr i32 %106, 4
  %108 = load i32, i32* %16, align 4
  %109 = or i32 %108, %107
  store i32 %109, i32* %16, align 4
  %110 = load i32, i32* %16, align 4
  %111 = ashr i32 %110, 8
  %112 = load i32, i32* %16, align 4
  %113 = or i32 %112, %111
  store i32 %113, i32* %16, align 4
  %114 = load i32, i32* %16, align 4
  %115 = ashr i32 %114, 1
  store i32 %115, i32* %16, align 4
  %116 = load i32, i32* %16, align 4
  %117 = or i32 %116, 65535
  store i32 %117, i32* %16, align 4
  %118 = load i32, i32* %16, align 4
  %119 = icmp sgt i32 %118, 16777216
  br i1 %119, label %120, label %130

120:                                              ; preds = %97
  %121 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %121, i32 0, i32 3
  %123 = load i32, i32* %122, align 4
  %124 = icmp eq i32 %123, 3
  br i1 %124, label %125, label %126

125:                                              ; preds = %120
  store i32 16777215, i32* %16, align 4
  br label %129

126:                                              ; preds = %120
  %127 = load i32, i32* %16, align 4
  %128 = ashr i32 %127, 1
  store i32 %128, i32* %16, align 4
  br label %129

129:                                              ; preds = %126, %125
  br label %130

130:                                              ; preds = %129, %97
  br label %131

131:                                              ; preds = %130, %79
  %132 = load i32, i32* %16, align 4
  %133 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %134 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %133, i32 0, i32 5
  store i32 %132, i32* %134, align 4
  %135 = load i32, i32* %16, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %16, align 4
  %137 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %138 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %137, i32 0, i32 3
  %139 = load i32, i32* %138, align 4
  %140 = icmp sgt i32 %139, 2
  br i1 %140, label %141, label %147

141:                                              ; preds = %131
  %142 = load i64, i64* @kHash2Size, align 8
  %143 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %144 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %143, i32 0, i32 13
  %145 = load i64, i64* %144, align 8
  %146 = add nsw i64 %145, %142
  store i64 %146, i64* %144, align 8
  br label %147

147:                                              ; preds = %141, %131
  %148 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %149 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %148, i32 0, i32 3
  %150 = load i32, i32* %149, align 4
  %151 = icmp sgt i32 %150, 3
  br i1 %151, label %152, label %158

152:                                              ; preds = %147
  %153 = load i64, i64* @kHash3Size, align 8
  %154 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %155 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %154, i32 0, i32 13
  %156 = load i64, i64* %155, align 8
  %157 = add nsw i64 %156, %153
  store i64 %157, i64* %155, align 8
  br label %158

158:                                              ; preds = %152, %147
  %159 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %160 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %159, i32 0, i32 3
  %161 = load i32, i32* %160, align 4
  %162 = icmp sgt i32 %161, 4
  br i1 %162, label %163, label %169

163:                                              ; preds = %158
  %164 = load i64, i64* @kHash4Size, align 8
  %165 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %166 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %165, i32 0, i32 13
  %167 = load i64, i64* %166, align 8
  %168 = add nsw i64 %167, %164
  store i64 %168, i64* %166, align 8
  br label %169

169:                                              ; preds = %163, %158
  %170 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %171 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %170, i32 0, i32 13
  %172 = load i64, i64* %171, align 8
  %173 = load i32, i32* %16, align 4
  %174 = sext i32 %173 to i64
  %175 = add nsw i64 %174, %172
  %176 = trunc i64 %175 to i32
  store i32 %176, i32* %16, align 4
  %177 = load i32, i32* %9, align 4
  %178 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %179 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %178, i32 0, i32 6
  store i32 %177, i32* %179, align 8
  %180 = load i32, i32* %16, align 4
  %181 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %182 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %181, i32 0, i32 7
  store i32 %180, i32* %182, align 4
  %183 = load i32, i32* %15, align 4
  %184 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %185 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %184, i32 0, i32 8
  store i32 %183, i32* %185, align 8
  %186 = load i32, i32* %15, align 4
  %187 = sext i32 %186 to i64
  store i64 %187, i64* %18, align 8
  %188 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %189 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %188, i32 0, i32 12
  %190 = load i64, i64* %189, align 8
  %191 = icmp ne i64 %190, 0
  br i1 %191, label %192, label %195

192:                                              ; preds = %169
  %193 = load i64, i64* %18, align 8
  %194 = shl i64 %193, 1
  store i64 %194, i64* %18, align 8
  br label %195

195:                                              ; preds = %192, %169
  %196 = load i32, i32* %16, align 4
  %197 = sext i32 %196 to i64
  %198 = load i64, i64* %18, align 8
  %199 = add i64 %197, %198
  store i64 %199, i64* %17, align 8
  %200 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %201 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %200, i32 0, i32 10
  %202 = load i32, i32* %201, align 8
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %204, label %211

204:                                              ; preds = %195
  %205 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %206 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %205, i32 0, i32 9
  %207 = load i64, i64* %206, align 8
  %208 = load i64, i64* %17, align 8
  %209 = icmp eq i64 %207, %208
  br i1 %209, label %210, label %211

210:                                              ; preds = %204
  store i32 1, i32* %7, align 4
  br label %243

211:                                              ; preds = %204, %195
  %212 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %213 = load i32, i32* %13, align 4
  %214 = call i32 @MatchFinder_FreeThisClassMemory(%struct.TYPE_6__* %212, i32 %213)
  %215 = load i64, i64* %17, align 8
  %216 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %217 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %216, i32 0, i32 9
  store i64 %215, i64* %217, align 8
  %218 = load i64, i64* %17, align 8
  %219 = load i32, i32* %13, align 4
  %220 = call i32 @AllocRefs(i64 %218, i32 %219)
  %221 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %222 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %221, i32 0, i32 10
  store i32 %220, i32* %222, align 8
  %223 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %224 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %223, i32 0, i32 10
  %225 = load i32, i32* %224, align 8
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %227, label %238

227:                                              ; preds = %211
  %228 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %229 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %228, i32 0, i32 10
  %230 = load i32, i32* %229, align 8
  %231 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %232 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %231, i32 0, i32 7
  %233 = load i32, i32* %232, align 4
  %234 = add nsw i32 %230, %233
  %235 = sext i32 %234 to i64
  %236 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %237 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %236, i32 0, i32 11
  store i64 %235, i64* %237, align 8
  store i32 1, i32* %7, align 4
  br label %243

238:                                              ; preds = %211
  br label %239

239:                                              ; preds = %238, %41
  %240 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %241 = load i32, i32* %13, align 4
  %242 = call i32 @MatchFinder_Free(%struct.TYPE_6__* %240, i32 %241)
  store i32 0, i32* %7, align 4
  br label %243

243:                                              ; preds = %239, %227, %210, %22
  %244 = load i32, i32* %7, align 4
  ret i32 %244
}

declare dso_local i32 @MatchFinder_Free(%struct.TYPE_6__*, i32) #1

declare dso_local i64 @LzInWindow_Create(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @MatchFinder_FreeThisClassMemory(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @AllocRefs(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
