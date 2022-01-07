; ModuleID = '/home/carl/AnghaBench/kphp-kdb/TL/extr_tl-parser-new.c_tl_type_check.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/TL/extr_tl-parser-new.c_tl_type_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tl_type = type { i32, i32, i32, %struct.tl_constructor**, i32 }
%struct.tl_constructor = type { i32, i8*, i32 }

@__ok = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [2 x i8] c"#\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"Type\00", align 1
@FLAG_EMPTY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"Type %s has no constructors\0A\00", align 1
@.str.3 = private unnamed_addr constant [72 x i8] c"Warning: Type %s has overlapping costructors, but it is used with `%%`\0A\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"Type %s has %d default constructors\0A\00", align 1
@.str.5 = private unnamed_addr constant [48 x i8] c"Type %s has default constructors and used bare\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tl_type_check(%struct.tl_type* %0) #0 {
  %2 = alloca %struct.tl_type*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.tl_constructor*, align 8
  store %struct.tl_type* %0, %struct.tl_type** %2, align 8
  %9 = load i64, i64* @__ok, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  br label %222

12:                                               ; preds = %1
  %13 = load %struct.tl_type*, %struct.tl_type** %2, align 8
  %14 = getelementptr inbounds %struct.tl_type, %struct.tl_type* %13, i32 0, i32 4
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @strcmp(i32 %15, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %12
  %19 = load %struct.tl_type*, %struct.tl_type** %2, align 8
  %20 = getelementptr inbounds %struct.tl_type, %struct.tl_type* %19, i32 0, i32 0
  store i32 1885708031, i32* %20, align 8
  br label %222

21:                                               ; preds = %12
  %22 = load %struct.tl_type*, %struct.tl_type** %2, align 8
  %23 = getelementptr inbounds %struct.tl_type, %struct.tl_type* %22, i32 0, i32 4
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @strcmp(i32 %24, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %21
  %28 = load %struct.tl_type*, %struct.tl_type** %2, align 8
  %29 = getelementptr inbounds %struct.tl_type, %struct.tl_type* %28, i32 0, i32 0
  store i32 753727511, i32* %29, align 8
  br label %222

30:                                               ; preds = %21
  %31 = load %struct.tl_type*, %struct.tl_type** %2, align 8
  %32 = getelementptr inbounds %struct.tl_type, %struct.tl_type* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = icmp sle i32 %33, 0
  br i1 %34, label %35, label %47

35:                                               ; preds = %30
  %36 = load %struct.tl_type*, %struct.tl_type** %2, align 8
  %37 = getelementptr inbounds %struct.tl_type, %struct.tl_type* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @FLAG_EMPTY, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %47, label %42

42:                                               ; preds = %35
  %43 = load %struct.tl_type*, %struct.tl_type** %2, align 8
  %44 = getelementptr inbounds %struct.tl_type, %struct.tl_type* %43, i32 0, i32 4
  %45 = load i32, i32* %44, align 8
  %46 = call i32 (i8*, i32, ...) @TL_ERROR(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %45)
  store i64 0, i64* @__ok, align 8
  br label %222

47:                                               ; preds = %35, %30
  %48 = load %struct.tl_type*, %struct.tl_type** %2, align 8
  %49 = getelementptr inbounds %struct.tl_type, %struct.tl_type* %48, i32 0, i32 0
  store i32 0, i32* %49, align 8
  store i32 0, i32* %3, align 4
  br label %50

50:                                               ; preds = %70, %47
  %51 = load i32, i32* %3, align 4
  %52 = load %struct.tl_type*, %struct.tl_type** %2, align 8
  %53 = getelementptr inbounds %struct.tl_type, %struct.tl_type* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = icmp slt i32 %51, %54
  br i1 %55, label %56, label %73

56:                                               ; preds = %50
  %57 = load %struct.tl_type*, %struct.tl_type** %2, align 8
  %58 = getelementptr inbounds %struct.tl_type, %struct.tl_type* %57, i32 0, i32 3
  %59 = load %struct.tl_constructor**, %struct.tl_constructor*** %58, align 8
  %60 = load i32, i32* %3, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.tl_constructor*, %struct.tl_constructor** %59, i64 %61
  %63 = load %struct.tl_constructor*, %struct.tl_constructor** %62, align 8
  %64 = getelementptr inbounds %struct.tl_constructor, %struct.tl_constructor* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.tl_type*, %struct.tl_type** %2, align 8
  %67 = getelementptr inbounds %struct.tl_type, %struct.tl_type* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = xor i32 %68, %65
  store i32 %69, i32* %67, align 8
  br label %70

70:                                               ; preds = %56
  %71 = load i32, i32* %3, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %3, align 4
  br label %50

73:                                               ; preds = %50
  store i32 0, i32* %3, align 4
  br label %74

74:                                               ; preds = %120, %73
  %75 = load i32, i32* %3, align 4
  %76 = load %struct.tl_type*, %struct.tl_type** %2, align 8
  %77 = getelementptr inbounds %struct.tl_type, %struct.tl_type* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = icmp slt i32 %75, %78
  br i1 %79, label %80, label %123

80:                                               ; preds = %74
  %81 = load i32, i32* %3, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %4, align 4
  br label %83

83:                                               ; preds = %116, %80
  %84 = load i32, i32* %4, align 4
  %85 = load %struct.tl_type*, %struct.tl_type** %2, align 8
  %86 = getelementptr inbounds %struct.tl_type, %struct.tl_type* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = icmp slt i32 %84, %87
  br i1 %88, label %89, label %119

89:                                               ; preds = %83
  store i32* null, i32** %5, align 8
  %90 = load %struct.tl_type*, %struct.tl_type** %2, align 8
  %91 = getelementptr inbounds %struct.tl_type, %struct.tl_type* %90, i32 0, i32 3
  %92 = load %struct.tl_constructor**, %struct.tl_constructor*** %91, align 8
  %93 = load i32, i32* %3, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.tl_constructor*, %struct.tl_constructor** %92, i64 %94
  %96 = load %struct.tl_constructor*, %struct.tl_constructor** %95, align 8
  %97 = getelementptr inbounds %struct.tl_constructor, %struct.tl_constructor* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 8
  %99 = load %struct.tl_type*, %struct.tl_type** %2, align 8
  %100 = getelementptr inbounds %struct.tl_type, %struct.tl_type* %99, i32 0, i32 3
  %101 = load %struct.tl_constructor**, %struct.tl_constructor*** %100, align 8
  %102 = load i32, i32* %4, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.tl_constructor*, %struct.tl_constructor** %101, i64 %103
  %105 = load %struct.tl_constructor*, %struct.tl_constructor** %104, align 8
  %106 = getelementptr inbounds %struct.tl_constructor, %struct.tl_constructor* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 8
  %108 = call i64 @check_constructors_equal(i32 %98, i32 %107, i32** %5)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %115

110:                                              ; preds = %89
  %111 = load %struct.tl_type*, %struct.tl_type** %2, align 8
  %112 = getelementptr inbounds %struct.tl_type, %struct.tl_type* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 8
  %114 = or i32 %113, 16
  store i32 %114, i32* %112, align 8
  br label %115

115:                                              ; preds = %110, %89
  br label %116

116:                                              ; preds = %115
  %117 = load i32, i32* %4, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %4, align 4
  br label %83

119:                                              ; preds = %83
  br label %120

120:                                              ; preds = %119
  %121 = load i32, i32* %3, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %3, align 4
  br label %74

123:                                              ; preds = %74
  %124 = load %struct.tl_type*, %struct.tl_type** %2, align 8
  %125 = getelementptr inbounds %struct.tl_type, %struct.tl_type* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 8
  %127 = and i32 %126, 24
  %128 = icmp eq i32 %127, 24
  br i1 %128, label %129, label %134

129:                                              ; preds = %123
  %130 = load %struct.tl_type*, %struct.tl_type** %2, align 8
  %131 = getelementptr inbounds %struct.tl_type, %struct.tl_type* %130, i32 0, i32 4
  %132 = load i32, i32* %131, align 8
  %133 = call i32 @TL_WARNING(i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.3, i64 0, i64 0), i32 %132)
  br label %134

134:                                              ; preds = %129, %123
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %3, align 4
  br label %135

135:                                              ; preds = %159, %134
  %136 = load i32, i32* %3, align 4
  %137 = load %struct.tl_type*, %struct.tl_type** %2, align 8
  %138 = getelementptr inbounds %struct.tl_type, %struct.tl_type* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = icmp slt i32 %136, %139
  br i1 %140, label %141, label %162

141:                                              ; preds = %135
  %142 = load %struct.tl_type*, %struct.tl_type** %2, align 8
  %143 = getelementptr inbounds %struct.tl_type, %struct.tl_type* %142, i32 0, i32 3
  %144 = load %struct.tl_constructor**, %struct.tl_constructor*** %143, align 8
  %145 = load i32, i32* %3, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds %struct.tl_constructor*, %struct.tl_constructor** %144, i64 %146
  %148 = load %struct.tl_constructor*, %struct.tl_constructor** %147, align 8
  %149 = getelementptr inbounds %struct.tl_constructor, %struct.tl_constructor* %148, i32 0, i32 1
  %150 = load i8*, i8** %149, align 8
  %151 = load i8, i8* %150, align 1
  %152 = sext i8 %151 to i32
  %153 = icmp eq i32 %152, 95
  br i1 %153, label %154, label %158

154:                                              ; preds = %141
  %155 = load i32, i32* %6, align 4
  %156 = add nsw i32 %155, 1
  store i32 %156, i32* %6, align 4
  %157 = load i32, i32* %3, align 4
  store i32 %157, i32* %7, align 4
  br label %158

158:                                              ; preds = %154, %141
  br label %159

159:                                              ; preds = %158
  %160 = load i32, i32* %3, align 4
  %161 = add nsw i32 %160, 1
  store i32 %161, i32* %3, align 4
  br label %135

162:                                              ; preds = %135
  %163 = load i32, i32* %6, align 4
  %164 = icmp sgt i32 %163, 1
  br i1 %164, label %165, label %171

165:                                              ; preds = %162
  %166 = load %struct.tl_type*, %struct.tl_type** %2, align 8
  %167 = getelementptr inbounds %struct.tl_type, %struct.tl_type* %166, i32 0, i32 4
  %168 = load i32, i32* %167, align 8
  %169 = load i32, i32* %6, align 4
  %170 = call i32 (i8*, i32, ...) @TL_ERROR(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0), i32 %168, i32 %169)
  store i64 0, i64* @__ok, align 8
  br label %222

171:                                              ; preds = %162
  %172 = load i32, i32* %6, align 4
  %173 = icmp eq i32 %172, 1
  br i1 %173, label %174, label %185

174:                                              ; preds = %171
  %175 = load %struct.tl_type*, %struct.tl_type** %2, align 8
  %176 = getelementptr inbounds %struct.tl_type, %struct.tl_type* %175, i32 0, i32 2
  %177 = load i32, i32* %176, align 8
  %178 = and i32 %177, 8
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %185

180:                                              ; preds = %174
  %181 = load %struct.tl_type*, %struct.tl_type** %2, align 8
  %182 = getelementptr inbounds %struct.tl_type, %struct.tl_type* %181, i32 0, i32 4
  %183 = load i32, i32* %182, align 8
  %184 = call i32 (i8*, i32, ...) @TL_ERROR(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.5, i64 0, i64 0), i32 %183)
  store i64 0, i64* @__ok, align 8
  br label %222

185:                                              ; preds = %174, %171
  %186 = load i32, i32* %6, align 4
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %222

188:                                              ; preds = %185
  %189 = load %struct.tl_type*, %struct.tl_type** %2, align 8
  %190 = getelementptr inbounds %struct.tl_type, %struct.tl_type* %189, i32 0, i32 3
  %191 = load %struct.tl_constructor**, %struct.tl_constructor*** %190, align 8
  %192 = load i32, i32* %7, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds %struct.tl_constructor*, %struct.tl_constructor** %191, i64 %193
  %195 = load %struct.tl_constructor*, %struct.tl_constructor** %194, align 8
  store %struct.tl_constructor* %195, %struct.tl_constructor** %8, align 8
  %196 = load %struct.tl_type*, %struct.tl_type** %2, align 8
  %197 = getelementptr inbounds %struct.tl_type, %struct.tl_type* %196, i32 0, i32 3
  %198 = load %struct.tl_constructor**, %struct.tl_constructor*** %197, align 8
  %199 = load %struct.tl_type*, %struct.tl_type** %2, align 8
  %200 = getelementptr inbounds %struct.tl_type, %struct.tl_type* %199, i32 0, i32 1
  %201 = load i32, i32* %200, align 4
  %202 = sub nsw i32 %201, 1
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds %struct.tl_constructor*, %struct.tl_constructor** %198, i64 %203
  %205 = load %struct.tl_constructor*, %struct.tl_constructor** %204, align 8
  %206 = load %struct.tl_type*, %struct.tl_type** %2, align 8
  %207 = getelementptr inbounds %struct.tl_type, %struct.tl_type* %206, i32 0, i32 3
  %208 = load %struct.tl_constructor**, %struct.tl_constructor*** %207, align 8
  %209 = load i32, i32* %7, align 4
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds %struct.tl_constructor*, %struct.tl_constructor** %208, i64 %210
  store %struct.tl_constructor* %205, %struct.tl_constructor** %211, align 8
  %212 = load %struct.tl_constructor*, %struct.tl_constructor** %8, align 8
  %213 = load %struct.tl_type*, %struct.tl_type** %2, align 8
  %214 = getelementptr inbounds %struct.tl_type, %struct.tl_type* %213, i32 0, i32 3
  %215 = load %struct.tl_constructor**, %struct.tl_constructor*** %214, align 8
  %216 = load %struct.tl_type*, %struct.tl_type** %2, align 8
  %217 = getelementptr inbounds %struct.tl_type, %struct.tl_type* %216, i32 0, i32 1
  %218 = load i32, i32* %217, align 4
  %219 = sub nsw i32 %218, 1
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds %struct.tl_constructor*, %struct.tl_constructor** %215, i64 %220
  store %struct.tl_constructor* %212, %struct.tl_constructor** %221, align 8
  br label %222

222:                                              ; preds = %11, %18, %27, %42, %165, %180, %188, %185
  ret void
}

declare dso_local i32 @strcmp(i32, i8*) #1

declare dso_local i32 @TL_ERROR(i8*, i32, ...) #1

declare dso_local i64 @check_constructors_equal(i32, i32, i32**) #1

declare dso_local i32 @TL_WARNING(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
