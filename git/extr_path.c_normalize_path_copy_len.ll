; ModuleID = '/home/carl/AnghaBench/git/extr_path.c_normalize_path_copy_len.c'
source_filename = "/home/carl/AnghaBench/git/extr_path.c_normalize_path_copy_len.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @normalize_path_copy_len(i8* %0, i8* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8, align 1
  %11 = alloca i8, align 1
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = call i32 @offset_1st_component(i8* %13)
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i8, i8* %12, i64 %15
  store i8* %16, i8** %9, align 8
  br label %17

17:                                               ; preds = %29, %3
  %18 = load i8*, i8** %6, align 8
  %19 = load i8*, i8** %9, align 8
  %20 = icmp ult i8* %18, %19
  br i1 %20, label %21, label %33

21:                                               ; preds = %17
  %22 = load i8*, i8** %6, align 8
  %23 = getelementptr inbounds i8, i8* %22, i32 1
  store i8* %23, i8** %6, align 8
  %24 = load i8, i8* %22, align 1
  store i8 %24, i8* %10, align 1
  %25 = load i8, i8* %10, align 1
  %26 = call i64 @is_dir_sep(i8 signext %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %21
  store i8 47, i8* %10, align 1
  br label %29

29:                                               ; preds = %28, %21
  %30 = load i8, i8* %10, align 1
  %31 = load i8*, i8** %5, align 8
  %32 = getelementptr inbounds i8, i8* %31, i32 1
  store i8* %32, i8** %5, align 8
  store i8 %30, i8* %31, align 1
  br label %17

33:                                               ; preds = %17
  %34 = load i8*, i8** %5, align 8
  store i8* %34, i8** %8, align 8
  br label %35

35:                                               ; preds = %40, %33
  %36 = load i8*, i8** %6, align 8
  %37 = load i8, i8* %36, align 1
  %38 = call i64 @is_dir_sep(i8 signext %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %35
  %41 = load i8*, i8** %6, align 8
  %42 = getelementptr inbounds i8, i8* %41, i32 1
  store i8* %42, i8** %6, align 8
  br label %35

43:                                               ; preds = %35
  br label %44

44:                                               ; preds = %199, %154, %75, %43
  %45 = load i8*, i8** %6, align 8
  %46 = load i8, i8* %45, align 1
  store i8 %46, i8* %11, align 1
  %47 = load i8, i8* %11, align 1
  %48 = sext i8 %47 to i32
  %49 = icmp eq i32 %48, 46
  br i1 %49, label %50, label %113

50:                                               ; preds = %44
  %51 = load i8*, i8** %6, align 8
  %52 = getelementptr inbounds i8, i8* %51, i64 1
  %53 = load i8, i8* %52, align 1
  %54 = icmp ne i8 %53, 0
  br i1 %54, label %58, label %55

55:                                               ; preds = %50
  %56 = load i8*, i8** %6, align 8
  %57 = getelementptr inbounds i8, i8* %56, i32 1
  store i8* %57, i8** %6, align 8
  br label %112

58:                                               ; preds = %50
  %59 = load i8*, i8** %6, align 8
  %60 = getelementptr inbounds i8, i8* %59, i64 1
  %61 = load i8, i8* %60, align 1
  %62 = call i64 @is_dir_sep(i8 signext %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %76

64:                                               ; preds = %58
  %65 = load i8*, i8** %6, align 8
  %66 = getelementptr inbounds i8, i8* %65, i64 2
  store i8* %66, i8** %6, align 8
  br label %67

67:                                               ; preds = %72, %64
  %68 = load i8*, i8** %6, align 8
  %69 = load i8, i8* %68, align 1
  %70 = call i64 @is_dir_sep(i8 signext %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %67
  %73 = load i8*, i8** %6, align 8
  %74 = getelementptr inbounds i8, i8* %73, i32 1
  store i8* %74, i8** %6, align 8
  br label %67

75:                                               ; preds = %67
  br label %44

76:                                               ; preds = %58
  %77 = load i8*, i8** %6, align 8
  %78 = getelementptr inbounds i8, i8* %77, i64 1
  %79 = load i8, i8* %78, align 1
  %80 = sext i8 %79 to i32
  %81 = icmp eq i32 %80, 46
  br i1 %81, label %82, label %110

82:                                               ; preds = %76
  %83 = load i8*, i8** %6, align 8
  %84 = getelementptr inbounds i8, i8* %83, i64 2
  %85 = load i8, i8* %84, align 1
  %86 = icmp ne i8 %85, 0
  br i1 %86, label %90, label %87

87:                                               ; preds = %82
  %88 = load i8*, i8** %6, align 8
  %89 = getelementptr inbounds i8, i8* %88, i64 2
  store i8* %89, i8** %6, align 8
  br label %155

90:                                               ; preds = %82
  %91 = load i8*, i8** %6, align 8
  %92 = getelementptr inbounds i8, i8* %91, i64 2
  %93 = load i8, i8* %92, align 1
  %94 = call i64 @is_dir_sep(i8 signext %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %108

96:                                               ; preds = %90
  %97 = load i8*, i8** %6, align 8
  %98 = getelementptr inbounds i8, i8* %97, i64 3
  store i8* %98, i8** %6, align 8
  br label %99

99:                                               ; preds = %104, %96
  %100 = load i8*, i8** %6, align 8
  %101 = load i8, i8* %100, align 1
  %102 = call i64 @is_dir_sep(i8 signext %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %107

104:                                              ; preds = %99
  %105 = load i8*, i8** %6, align 8
  %106 = getelementptr inbounds i8, i8* %105, i32 1
  store i8* %106, i8** %6, align 8
  br label %99

107:                                              ; preds = %99
  br label %155

108:                                              ; preds = %90
  br label %109

109:                                              ; preds = %108
  br label %110

110:                                              ; preds = %109, %76
  br label %111

111:                                              ; preds = %110
  br label %112

112:                                              ; preds = %111, %55
  br label %113

113:                                              ; preds = %112, %44
  br label %114

114:                                              ; preds = %127, %113
  %115 = load i8*, i8** %6, align 8
  %116 = getelementptr inbounds i8, i8* %115, i32 1
  store i8* %116, i8** %6, align 8
  %117 = load i8, i8* %115, align 1
  store i8 %117, i8* %11, align 1
  %118 = sext i8 %117 to i32
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %125

120:                                              ; preds = %114
  %121 = load i8, i8* %11, align 1
  %122 = call i64 @is_dir_sep(i8 signext %121)
  %123 = icmp ne i64 %122, 0
  %124 = xor i1 %123, true
  br label %125

125:                                              ; preds = %120, %114
  %126 = phi i1 [ false, %114 ], [ %124, %120 ]
  br i1 %126, label %127, label %131

127:                                              ; preds = %125
  %128 = load i8, i8* %11, align 1
  %129 = load i8*, i8** %5, align 8
  %130 = getelementptr inbounds i8, i8* %129, i32 1
  store i8* %130, i8** %5, align 8
  store i8 %128, i8* %129, align 1
  br label %114

131:                                              ; preds = %125
  %132 = load i8, i8* %11, align 1
  %133 = call i64 @is_dir_sep(i8 signext %132)
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %149

135:                                              ; preds = %131
  %136 = load i8*, i8** %5, align 8
  %137 = getelementptr inbounds i8, i8* %136, i32 1
  store i8* %137, i8** %5, align 8
  store i8 47, i8* %136, align 1
  br label %138

138:                                              ; preds = %142, %135
  %139 = load i8, i8* %11, align 1
  %140 = call i64 @is_dir_sep(i8 signext %139)
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %146

142:                                              ; preds = %138
  %143 = load i8*, i8** %6, align 8
  %144 = getelementptr inbounds i8, i8* %143, i32 1
  store i8* %144, i8** %6, align 8
  %145 = load i8, i8* %143, align 1
  store i8 %145, i8* %11, align 1
  br label %138

146:                                              ; preds = %138
  %147 = load i8*, i8** %6, align 8
  %148 = getelementptr inbounds i8, i8* %147, i32 -1
  store i8* %148, i8** %6, align 8
  br label %154

149:                                              ; preds = %131
  %150 = load i8, i8* %11, align 1
  %151 = icmp ne i8 %150, 0
  br i1 %151, label %153, label %152

152:                                              ; preds = %149
  br label %200

153:                                              ; preds = %149
  br label %154

154:                                              ; preds = %153, %146
  br label %44

155:                                              ; preds = %107, %87
  %156 = load i8*, i8** %5, align 8
  %157 = getelementptr inbounds i8, i8* %156, i32 -1
  store i8* %157, i8** %5, align 8
  %158 = load i8*, i8** %5, align 8
  %159 = load i8*, i8** %8, align 8
  %160 = icmp ule i8* %158, %159
  br i1 %160, label %161, label %162

161:                                              ; preds = %155
  store i32 -1, i32* %4, align 4
  br label %202

162:                                              ; preds = %155
  br label %163

163:                                              ; preds = %175, %162
  %164 = load i8*, i8** %8, align 8
  %165 = load i8*, i8** %5, align 8
  %166 = icmp ult i8* %164, %165
  br i1 %166, label %167, label %173

167:                                              ; preds = %163
  %168 = load i8*, i8** %5, align 8
  %169 = getelementptr inbounds i8, i8* %168, i64 -1
  %170 = load i8, i8* %169, align 1
  %171 = sext i8 %170 to i32
  %172 = icmp ne i32 %171, 47
  br label %173

173:                                              ; preds = %167, %163
  %174 = phi i1 [ false, %163 ], [ %172, %167 ]
  br i1 %174, label %175, label %178

175:                                              ; preds = %173
  %176 = load i8*, i8** %5, align 8
  %177 = getelementptr inbounds i8, i8* %176, i32 -1
  store i8* %177, i8** %5, align 8
  br label %163

178:                                              ; preds = %173
  %179 = load i32*, i32** %7, align 8
  %180 = icmp ne i32* %179, null
  br i1 %180, label %181, label %199

181:                                              ; preds = %178
  %182 = load i32*, i32** %7, align 8
  %183 = load i32, i32* %182, align 4
  %184 = sext i32 %183 to i64
  %185 = load i8*, i8** %5, align 8
  %186 = load i8*, i8** %8, align 8
  %187 = ptrtoint i8* %185 to i64
  %188 = ptrtoint i8* %186 to i64
  %189 = sub i64 %187, %188
  %190 = icmp sgt i64 %184, %189
  br i1 %190, label %191, label %199

191:                                              ; preds = %181
  %192 = load i8*, i8** %5, align 8
  %193 = load i8*, i8** %8, align 8
  %194 = ptrtoint i8* %192 to i64
  %195 = ptrtoint i8* %193 to i64
  %196 = sub i64 %194, %195
  %197 = trunc i64 %196 to i32
  %198 = load i32*, i32** %7, align 8
  store i32 %197, i32* %198, align 4
  br label %199

199:                                              ; preds = %191, %181, %178
  br label %44

200:                                              ; preds = %152
  %201 = load i8*, i8** %5, align 8
  store i8 0, i8* %201, align 1
  store i32 0, i32* %4, align 4
  br label %202

202:                                              ; preds = %200, %161
  %203 = load i32, i32* %4, align 4
  ret i32 %203
}

declare dso_local i32 @offset_1st_component(i8*) #1

declare dso_local i64 @is_dir_sep(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
