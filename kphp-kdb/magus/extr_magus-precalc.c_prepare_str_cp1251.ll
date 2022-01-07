; ModuleID = '/home/carl/AnghaBench/kphp-kdb/magus/extr_magus-precalc.c_prepare_str_cp1251.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/magus/extr_magus-precalc.c_prepare_str_cp1251.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_NAME_SIZE = common dso_local global i32 0, align 4
@name_buff = common dso_local global i8* null, align 8
@win_to_utf8_convert = common dso_local global i8* null, align 8
@prepare_res = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @prepare_str_cp1251(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* @MAX_NAME_SIZE, align 4
  %15 = sdiv i32 %14, 4
  %16 = sub nsw i32 %15, 1
  %17 = icmp sge i32 %13, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  store i8* null, i8** %3, align 8
  br label %217

19:                                               ; preds = %2
  %20 = call i32 (...) @sp_init()
  %21 = load i8*, i8** %4, align 8
  %22 = call i8* @sp_to_lower(i8* %21)
  store i8* %22, i8** %4, align 8
  store i32 0, i32* %7, align 4
  store i32 -1, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %6, align 4
  br label %23

23:                                               ; preds = %178, %19
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* %5, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %181

27:                                               ; preds = %23
  %28 = load i32, i32* %7, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %42

30:                                               ; preds = %27
  %31 = load i8*, i8** %4, align 8
  %32 = load i32, i32* %6, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i8, i8* %31, i64 %33
  %35 = load i8, i8* %34, align 1
  %36 = sext i8 %35 to i32
  %37 = icmp eq i32 %36, 38
  br i1 %37, label %38, label %42

38:                                               ; preds = %30
  %39 = load i32, i32* %10, align 4
  store i32 %39, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %40 = load i32, i32* %7, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %7, align 4
  br label %108

42:                                               ; preds = %30, %27
  %43 = load i32, i32* %7, align 4
  %44 = icmp eq i32 %43, 1
  br i1 %44, label %45, label %56

45:                                               ; preds = %42
  %46 = load i8*, i8** %4, align 8
  %47 = load i32, i32* %6, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i8, i8* %46, i64 %48
  %50 = load i8, i8* %49, align 1
  %51 = sext i8 %50 to i32
  %52 = icmp eq i32 %51, 35
  br i1 %52, label %53, label %56

53:                                               ; preds = %45
  %54 = load i32, i32* %7, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %7, align 4
  br label %107

56:                                               ; preds = %45, %42
  %57 = load i32, i32* %7, align 4
  %58 = icmp eq i32 %57, 2
  br i1 %58, label %59, label %90

59:                                               ; preds = %56
  %60 = load i8*, i8** %4, align 8
  %61 = load i32, i32* %6, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i8, i8* %60, i64 %62
  %64 = load i8, i8* %63, align 1
  %65 = sext i8 %64 to i32
  %66 = icmp sge i32 %65, 48
  br i1 %66, label %67, label %90

67:                                               ; preds = %59
  %68 = load i8*, i8** %4, align 8
  %69 = load i32, i32* %6, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i8, i8* %68, i64 %70
  %72 = load i8, i8* %71, align 1
  %73 = sext i8 %72 to i32
  %74 = icmp sle i32 %73, 57
  br i1 %74, label %75, label %90

75:                                               ; preds = %67
  %76 = load i32, i32* %9, align 4
  %77 = icmp slt i32 %76, 131072
  br i1 %77, label %78, label %89

78:                                               ; preds = %75
  %79 = load i8*, i8** %4, align 8
  %80 = load i32, i32* %6, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i8, i8* %79, i64 %81
  %83 = load i8, i8* %82, align 1
  %84 = sext i8 %83 to i32
  %85 = sub nsw i32 %84, 48
  %86 = load i32, i32* %9, align 4
  %87 = mul nsw i32 %86, 10
  %88 = add nsw i32 %85, %87
  store i32 %88, i32* %9, align 4
  br label %89

89:                                               ; preds = %78, %75
  br label %106

90:                                               ; preds = %67, %59, %56
  %91 = load i32, i32* %7, align 4
  %92 = icmp eq i32 %91, 2
  br i1 %92, label %93, label %104

93:                                               ; preds = %90
  %94 = load i8*, i8** %4, align 8
  %95 = load i32, i32* %6, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i8, i8* %94, i64 %96
  %98 = load i8, i8* %97, align 1
  %99 = sext i8 %98 to i32
  %100 = icmp eq i32 %99, 59
  br i1 %100, label %101, label %104

101:                                              ; preds = %93
  %102 = load i32, i32* %7, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %7, align 4
  br label %105

104:                                              ; preds = %93, %90
  store i32 0, i32* %7, align 4
  br label %105

105:                                              ; preds = %104, %101
  br label %106

106:                                              ; preds = %105, %89
  br label %107

107:                                              ; preds = %106, %53
  br label %108

108:                                              ; preds = %107, %38
  %109 = load i32, i32* %7, align 4
  %110 = icmp eq i32 %109, 3
  br i1 %110, label %111, label %132

111:                                              ; preds = %108
  %112 = load i32, i32* %9, align 4
  %113 = icmp sge i32 %112, 32
  br i1 %113, label %114, label %132

114:                                              ; preds = %111
  %115 = load i32, i32* %9, align 4
  %116 = icmp ne i32 %115, 8232
  br i1 %116, label %117, label %132

117:                                              ; preds = %114
  %118 = load i32, i32* %9, align 4
  %119 = icmp ne i32 %118, 8233
  br i1 %119, label %120, label %132

120:                                              ; preds = %117
  %121 = load i32, i32* %9, align 4
  %122 = icmp slt i32 %121, 131072
  br i1 %122, label %123, label %132

123:                                              ; preds = %120
  %124 = load i32, i32* %8, align 4
  store i32 %124, i32* %10, align 4
  %125 = load i32, i32* %9, align 4
  %126 = trunc i32 %125 to i8
  %127 = load i8*, i8** @name_buff, align 8
  %128 = load i32, i32* %10, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %10, align 4
  %130 = sext i32 %128 to i64
  %131 = getelementptr inbounds i8, i8* %127, i64 %130
  store i8 %126, i8* %131, align 1
  br label %173

132:                                              ; preds = %120, %117, %114, %111, %108
  %133 = load i32, i32* %7, align 4
  %134 = icmp eq i32 %133, 3
  br i1 %134, label %135, label %157

135:                                              ; preds = %132
  %136 = load i32, i32* %9, align 4
  %137 = icmp sge i32 %136, 65536
  br i1 %137, label %138, label %157

138:                                              ; preds = %135
  %139 = load i8*, i8** @win_to_utf8_convert, align 8
  %140 = load i8*, i8** %4, align 8
  %141 = load i32, i32* %6, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i8, i8* %140, i64 %142
  %144 = load i8, i8* %143, align 1
  %145 = zext i8 %144 to i64
  %146 = getelementptr inbounds i8, i8* %139, i64 %145
  %147 = load i8, i8* %146, align 1
  %148 = load i8*, i8** @name_buff, align 8
  %149 = load i32, i32* %10, align 4
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* %10, align 4
  %151 = sext i32 %149 to i64
  %152 = getelementptr inbounds i8, i8* %148, i64 %151
  store i8 %147, i8* %152, align 1
  %153 = load i8*, i8** @name_buff, align 8
  %154 = load i32, i32* %8, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds i8, i8* %153, i64 %155
  store i8 36, i8* %156, align 1
  br label %172

157:                                              ; preds = %135, %132
  %158 = load i8*, i8** @win_to_utf8_convert, align 8
  %159 = load i8*, i8** %4, align 8
  %160 = load i32, i32* %6, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds i8, i8* %159, i64 %161
  %163 = load i8, i8* %162, align 1
  %164 = zext i8 %163 to i64
  %165 = getelementptr inbounds i8, i8* %158, i64 %164
  %166 = load i8, i8* %165, align 1
  %167 = load i8*, i8** @name_buff, align 8
  %168 = load i32, i32* %10, align 4
  %169 = add nsw i32 %168, 1
  store i32 %169, i32* %10, align 4
  %170 = sext i32 %168 to i64
  %171 = getelementptr inbounds i8, i8* %167, i64 %170
  store i8 %166, i8* %171, align 1
  br label %172

172:                                              ; preds = %157, %138
  br label %173

173:                                              ; preds = %172, %123
  %174 = load i32, i32* %7, align 4
  %175 = icmp eq i32 %174, 3
  br i1 %175, label %176, label %177

176:                                              ; preds = %173
  store i32 0, i32* %7, align 4
  br label %177

177:                                              ; preds = %176, %173
  br label %178

178:                                              ; preds = %177
  %179 = load i32, i32* %6, align 4
  %180 = add nsw i32 %179, 1
  store i32 %180, i32* %6, align 4
  br label %23

181:                                              ; preds = %23
  %182 = load i8*, i8** @name_buff, align 8
  %183 = load i32, i32* %10, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds i8, i8* %182, i64 %184
  store i8 0, i8* %185, align 1
  %186 = load i8*, i8** @name_buff, align 8
  %187 = call i32* @prepare_str_UTF8(i8* %186)
  store i32* %187, i32** %11, align 8
  %188 = load i8*, i8** @prepare_res, align 8
  store i8* %188, i8** %12, align 8
  br label %189

189:                                              ; preds = %193, %181
  %190 = load i32*, i32** %11, align 8
  %191 = load i32, i32* %190, align 4
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %202

193:                                              ; preds = %189
  %194 = load i32*, i32** %11, align 8
  %195 = getelementptr inbounds i32, i32* %194, i32 1
  store i32* %195, i32** %11, align 8
  %196 = load i32, i32* %194, align 4
  %197 = load i8*, i8** %12, align 8
  %198 = call i32 @put_char_utf8(i32 %196, i8* %197)
  %199 = load i8*, i8** %12, align 8
  %200 = sext i32 %198 to i64
  %201 = getelementptr inbounds i8, i8* %199, i64 %200
  store i8* %201, i8** %12, align 8
  br label %189

202:                                              ; preds = %189
  %203 = load i8*, i8** %12, align 8
  %204 = getelementptr inbounds i8, i8* %203, i32 1
  store i8* %204, i8** %12, align 8
  store i8 0, i8* %203, align 1
  %205 = load i8*, i8** %12, align 8
  %206 = load i8*, i8** @prepare_res, align 8
  %207 = ptrtoint i8* %205 to i64
  %208 = ptrtoint i8* %206 to i64
  %209 = sub i64 %207, %208
  %210 = load i32, i32* @MAX_NAME_SIZE, align 4
  %211 = sext i32 %210 to i64
  %212 = icmp slt i64 %209, %211
  %213 = zext i1 %212 to i32
  %214 = call i32 @assert(i32 %213)
  %215 = load i8*, i8** @prepare_res, align 8
  %216 = call i8* @clean_str(i8* %215)
  store i8* %216, i8** %3, align 8
  br label %217

217:                                              ; preds = %202, %18
  %218 = load i8*, i8** %3, align 8
  ret i8* %218
}

declare dso_local i32 @sp_init(...) #1

declare dso_local i8* @sp_to_lower(i8*) #1

declare dso_local i32* @prepare_str_UTF8(i8*) #1

declare dso_local i32 @put_char_utf8(i32, i8*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i8* @clean_str(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
