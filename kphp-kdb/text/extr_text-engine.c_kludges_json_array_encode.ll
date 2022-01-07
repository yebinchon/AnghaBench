; ModuleID = '/home/carl/AnghaBench/kphp-kdb/text/extr_text-engine.c_kludges_json_array_encode.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/text/extr_text-engine.c_kludges_json_array_encode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kludges_json_array_encode(i8* %0, i32 %1, i8* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  store i8* %0, i8** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %19 = load i8*, i8** %9, align 8
  %20 = load i32, i32* %10, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i8, i8* %19, i64 %21
  store i8* %22, i8** %12, align 8
  %23 = load i8*, i8** %7, align 8
  %24 = load i32, i32* %8, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i8, i8* %23, i64 %25
  %27 = getelementptr inbounds i8, i8* %26, i64 -8
  store i8* %27, i8** %13, align 8
  %28 = load i8*, i8** %7, align 8
  store i8* %28, i8** %14, align 8
  store i32 0, i32* %15, align 4
  %29 = load i32, i32* %8, align 4
  %30 = icmp slt i32 %29, 8
  br i1 %30, label %34, label %31

31:                                               ; preds = %5
  %32 = load i32, i32* %10, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %31, %5
  store i32 -1, i32* %6, align 4
  br label %200

35:                                               ; preds = %31
  %36 = load i8*, i8** %7, align 8
  %37 = getelementptr inbounds i8, i8* %36, i32 1
  store i8* %37, i8** %7, align 8
  store i8 123, i8* %36, align 1
  br label %38

38:                                               ; preds = %170, %95, %35
  %39 = load i8*, i8** %9, align 8
  %40 = load i8*, i8** %12, align 8
  %41 = icmp ult i8* %39, %40
  br i1 %41, label %42, label %46

42:                                               ; preds = %38
  %43 = load i8*, i8** %7, align 8
  %44 = load i8*, i8** %13, align 8
  %45 = icmp ult i8* %43, %44
  br label %46

46:                                               ; preds = %42, %38
  %47 = phi i1 [ false, %38 ], [ %45, %42 ]
  br i1 %47, label %48, label %179

48:                                               ; preds = %46
  %49 = load i8*, i8** %9, align 8
  %50 = load i8, i8* %49, align 1
  %51 = sext i8 %50 to i32
  %52 = icmp ne i32 %51, 1
  br i1 %52, label %53, label %59

53:                                               ; preds = %48
  %54 = load i8*, i8** %9, align 8
  %55 = load i8, i8* %54, align 1
  %56 = sext i8 %55 to i32
  %57 = icmp ne i32 %56, 2
  br i1 %57, label %58, label %59

58:                                               ; preds = %53
  br label %179

59:                                               ; preds = %53, %48
  %60 = load i8*, i8** %9, align 8
  store i8* %60, i8** %17, align 8
  store i8* null, i8** %18, align 8
  br label %61

61:                                               ; preds = %82, %59
  %62 = load i8*, i8** %17, align 8
  %63 = load i8*, i8** %12, align 8
  %64 = icmp ult i8* %62, %63
  br i1 %64, label %65, label %70

65:                                               ; preds = %61
  %66 = load i8*, i8** %17, align 8
  %67 = load i8, i8* %66, align 1
  %68 = sext i8 %67 to i32
  %69 = icmp ne i32 %68, 9
  br label %70

70:                                               ; preds = %65, %61
  %71 = phi i1 [ false, %61 ], [ %69, %65 ]
  br i1 %71, label %72, label %85

72:                                               ; preds = %70
  %73 = load i8*, i8** %17, align 8
  %74 = load i8, i8* %73, align 1
  %75 = sext i8 %74 to i32
  %76 = icmp eq i32 %75, 32
  br i1 %76, label %77, label %82

77:                                               ; preds = %72
  %78 = load i8*, i8** %18, align 8
  %79 = icmp ne i8* %78, null
  br i1 %79, label %82, label %80

80:                                               ; preds = %77
  %81 = load i8*, i8** %17, align 8
  store i8* %81, i8** %18, align 8
  br label %82

82:                                               ; preds = %80, %77, %72
  %83 = load i8*, i8** %17, align 8
  %84 = getelementptr inbounds i8, i8* %83, i32 1
  store i8* %84, i8** %17, align 8
  br label %61

85:                                               ; preds = %70
  %86 = load i32, i32* %11, align 4
  %87 = load i8*, i8** %9, align 8
  %88 = load i8, i8* %87, align 1
  %89 = sext i8 %88 to i32
  %90 = and i32 %86, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %85
  %93 = load i8*, i8** %18, align 8
  %94 = icmp ne i8* %93, null
  br i1 %94, label %98, label %95

95:                                               ; preds = %92, %85
  %96 = load i8*, i8** %17, align 8
  %97 = getelementptr inbounds i8, i8* %96, i64 1
  store i8* %97, i8** %9, align 8
  br label %38

98:                                               ; preds = %92
  %99 = load i8*, i8** %7, align 8
  %100 = getelementptr inbounds i8, i8* %99, i32 1
  store i8* %100, i8** %7, align 8
  store i8 34, i8* %99, align 1
  %101 = load i8*, i8** %7, align 8
  %102 = load i8*, i8** %13, align 8
  %103 = load i8*, i8** %7, align 8
  %104 = ptrtoint i8* %102 to i64
  %105 = ptrtoint i8* %103 to i64
  %106 = sub i64 %104, %105
  %107 = trunc i64 %106 to i32
  %108 = load i8*, i8** %9, align 8
  %109 = getelementptr inbounds i8, i8* %108, i64 1
  %110 = load i8*, i8** %18, align 8
  %111 = load i8*, i8** %9, align 8
  %112 = ptrtoint i8* %110 to i64
  %113 = ptrtoint i8* %111 to i64
  %114 = sub i64 %112, %113
  %115 = sub nsw i64 %114, 1
  %116 = trunc i64 %115 to i32
  %117 = call i32 @utf8_json_encode(i8* %101, i32 %107, i8* %109, i32 %116)
  store i32 %117, i32* %16, align 4
  %118 = load i32, i32* %16, align 4
  %119 = icmp slt i32 %118, 0
  br i1 %119, label %120, label %122

120:                                              ; preds = %98
  %121 = load i32, i32* %16, align 4
  store i32 %121, i32* %6, align 4
  br label %200

122:                                              ; preds = %98
  %123 = load i32, i32* %16, align 4
  %124 = load i8*, i8** %7, align 8
  %125 = sext i32 %123 to i64
  %126 = getelementptr inbounds i8, i8* %124, i64 %125
  store i8* %126, i8** %7, align 8
  %127 = load i8*, i8** %7, align 8
  %128 = load i8*, i8** %13, align 8
  %129 = icmp ugt i8* %127, %128
  br i1 %129, label %130, label %131

130:                                              ; preds = %122
  store i32 -1, i32* %6, align 4
  br label %200

131:                                              ; preds = %122
  %132 = load i8*, i8** %7, align 8
  %133 = getelementptr inbounds i8, i8* %132, i64 0
  store i8 34, i8* %133, align 1
  %134 = load i8*, i8** %7, align 8
  %135 = getelementptr inbounds i8, i8* %134, i64 1
  store i8 58, i8* %135, align 1
  %136 = load i8*, i8** %7, align 8
  %137 = getelementptr inbounds i8, i8* %136, i64 2
  store i8 34, i8* %137, align 1
  %138 = load i8*, i8** %7, align 8
  %139 = getelementptr inbounds i8, i8* %138, i64 3
  store i8* %139, i8** %7, align 8
  %140 = load i8*, i8** %7, align 8
  %141 = load i8*, i8** %13, align 8
  %142 = load i8*, i8** %7, align 8
  %143 = ptrtoint i8* %141 to i64
  %144 = ptrtoint i8* %142 to i64
  %145 = sub i64 %143, %144
  %146 = trunc i64 %145 to i32
  %147 = load i8*, i8** %18, align 8
  %148 = getelementptr inbounds i8, i8* %147, i64 1
  %149 = load i8*, i8** %17, align 8
  %150 = load i8*, i8** %18, align 8
  %151 = ptrtoint i8* %149 to i64
  %152 = ptrtoint i8* %150 to i64
  %153 = sub i64 %151, %152
  %154 = sub nsw i64 %153, 1
  %155 = trunc i64 %154 to i32
  %156 = call i32 @utf8_json_encode(i8* %140, i32 %146, i8* %148, i32 %155)
  store i32 %156, i32* %16, align 4
  %157 = load i32, i32* %16, align 4
  %158 = icmp slt i32 %157, 0
  br i1 %158, label %159, label %161

159:                                              ; preds = %131
  %160 = load i32, i32* %16, align 4
  store i32 %160, i32* %6, align 4
  br label %200

161:                                              ; preds = %131
  %162 = load i32, i32* %16, align 4
  %163 = load i8*, i8** %7, align 8
  %164 = sext i32 %162 to i64
  %165 = getelementptr inbounds i8, i8* %163, i64 %164
  store i8* %165, i8** %7, align 8
  %166 = load i8*, i8** %7, align 8
  %167 = load i8*, i8** %13, align 8
  %168 = icmp ugt i8* %166, %167
  br i1 %168, label %169, label %170

169:                                              ; preds = %161
  store i32 -1, i32* %6, align 4
  br label %200

170:                                              ; preds = %161
  %171 = load i8*, i8** %7, align 8
  %172 = getelementptr inbounds i8, i8* %171, i32 1
  store i8* %172, i8** %7, align 8
  store i8 34, i8* %171, align 1
  %173 = load i8*, i8** %7, align 8
  %174 = getelementptr inbounds i8, i8* %173, i32 1
  store i8* %174, i8** %7, align 8
  store i8 44, i8* %173, align 1
  %175 = load i32, i32* %15, align 4
  %176 = add nsw i32 %175, 1
  store i32 %176, i32* %15, align 4
  %177 = load i8*, i8** %17, align 8
  %178 = getelementptr inbounds i8, i8* %177, i64 1
  store i8* %178, i8** %9, align 8
  br label %38

179:                                              ; preds = %58, %46
  %180 = load i32, i32* %15, align 4
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %185

182:                                              ; preds = %179
  %183 = load i8*, i8** %7, align 8
  %184 = getelementptr inbounds i8, i8* %183, i32 -1
  store i8* %184, i8** %7, align 8
  br label %185

185:                                              ; preds = %182, %179
  %186 = load i8*, i8** %7, align 8
  %187 = getelementptr inbounds i8, i8* %186, i32 1
  store i8* %187, i8** %7, align 8
  store i8 125, i8* %186, align 1
  %188 = load i8*, i8** %7, align 8
  %189 = load i8*, i8** %13, align 8
  %190 = getelementptr inbounds i8, i8* %189, i64 8
  %191 = icmp ule i8* %188, %190
  %192 = zext i1 %191 to i32
  %193 = call i32 @assert(i32 %192)
  %194 = load i8*, i8** %7, align 8
  %195 = load i8*, i8** %14, align 8
  %196 = ptrtoint i8* %194 to i64
  %197 = ptrtoint i8* %195 to i64
  %198 = sub i64 %196, %197
  %199 = trunc i64 %198 to i32
  store i32 %199, i32* %6, align 4
  br label %200

200:                                              ; preds = %185, %169, %159, %130, %120, %34
  %201 = load i32, i32* %6, align 4
  ret i32 %201
}

declare dso_local i32 @utf8_json_encode(i8*, i32, i8*, i32) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
