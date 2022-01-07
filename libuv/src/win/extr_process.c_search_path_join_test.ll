; ModuleID = '/home/carl/AnghaBench/libuv/src/win/extr_process.c_search_path_join_test.c'
source_filename = "/home/carl/AnghaBench/libuv/src/win/extr_process.c_search_path_join_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i32] [i32 92, i32 47, i32 58, i32 0], align 4
@INVALID_FILE_ATTRIBUTES = common dso_local global i32 0, align 4
@FILE_ATTRIBUTE_DIRECTORY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i64, i32*, i64, i32*, i64, i32*, i64)* @search_path_join_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @search_path_join_test(i32* %0, i64 %1, i32* %2, i64 %3, i32* %4, i64 %5, i32* %6, i64 %7) #0 {
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32, align 4
  store i32* %0, i32** %10, align 8
  store i64 %1, i64* %11, align 8
  store i32* %2, i32** %12, align 8
  store i64 %3, i64* %13, align 8
  store i32* %4, i32** %14, align 8
  store i64 %5, i64* %15, align 8
  store i32* %6, i32** %16, align 8
  store i64 %7, i64* %17, align 8
  %21 = load i64, i64* %11, align 8
  %22 = icmp ugt i64 %21, 2
  br i1 %22, label %23, label %34

23:                                               ; preds = %8
  %24 = load i32*, i32** %10, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp eq i32 %26, 92
  br i1 %27, label %28, label %34

28:                                               ; preds = %23
  %29 = load i32*, i32** %10, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 1
  %31 = load i32, i32* %30, align 4
  %32 = icmp eq i32 %31, 92
  br i1 %32, label %33, label %34

33:                                               ; preds = %28
  store i64 0, i64* %17, align 8
  br label %96

34:                                               ; preds = %28, %23, %8
  %35 = load i64, i64* %11, align 8
  %36 = icmp uge i64 %35, 1
  br i1 %36, label %37, label %48

37:                                               ; preds = %34
  %38 = load i32*, i32** %10, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 0
  %40 = load i32, i32* %39, align 4
  %41 = icmp eq i32 %40, 47
  br i1 %41, label %47, label %42

42:                                               ; preds = %37
  %43 = load i32*, i32** %10, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 0
  %45 = load i32, i32* %44, align 4
  %46 = icmp eq i32 %45, 92
  br i1 %46, label %47, label %48

47:                                               ; preds = %42, %37
  store i64 2, i64* %17, align 8
  br label %95

48:                                               ; preds = %42, %34
  %49 = load i64, i64* %11, align 8
  %50 = icmp uge i64 %49, 2
  br i1 %50, label %51, label %84

51:                                               ; preds = %48
  %52 = load i32*, i32** %10, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 1
  %54 = load i32, i32* %53, align 4
  %55 = icmp eq i32 %54, 58
  br i1 %55, label %56, label %84

56:                                               ; preds = %51
  %57 = load i64, i64* %11, align 8
  %58 = icmp ult i64 %57, 3
  br i1 %58, label %69, label %59

59:                                               ; preds = %56
  %60 = load i32*, i32** %10, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 2
  %62 = load i32, i32* %61, align 4
  %63 = icmp ne i32 %62, 47
  br i1 %63, label %64, label %84

64:                                               ; preds = %59
  %65 = load i32*, i32** %10, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 2
  %67 = load i32, i32* %66, align 4
  %68 = icmp ne i32 %67, 92
  br i1 %68, label %69, label %84

69:                                               ; preds = %64, %56
  %70 = load i64, i64* %17, align 8
  %71 = icmp ult i64 %70, 2
  br i1 %71, label %77, label %72

72:                                               ; preds = %69
  %73 = load i32*, i32** %16, align 8
  %74 = load i32*, i32** %10, align 8
  %75 = call i64 @_wcsnicmp(i32* %73, i32* %74, i32 2)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %72, %69
  store i64 0, i64* %17, align 8
  br label %83

78:                                               ; preds = %72
  %79 = load i32*, i32** %10, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 2
  store i32* %80, i32** %10, align 8
  %81 = load i64, i64* %11, align 8
  %82 = sub i64 %81, 2
  store i64 %82, i64* %11, align 8
  br label %83

83:                                               ; preds = %78, %77
  br label %94

84:                                               ; preds = %64, %59, %51, %48
  %85 = load i64, i64* %11, align 8
  %86 = icmp ugt i64 %85, 2
  br i1 %86, label %87, label %93

87:                                               ; preds = %84
  %88 = load i32*, i32** %10, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 1
  %90 = load i32, i32* %89, align 4
  %91 = icmp eq i32 %90, 58
  br i1 %91, label %92, label %93

92:                                               ; preds = %87
  store i64 0, i64* %17, align 8
  br label %93

93:                                               ; preds = %92, %87, %84
  br label %94

94:                                               ; preds = %93, %83
  br label %95

95:                                               ; preds = %94, %47
  br label %96

96:                                               ; preds = %95, %33
  %97 = load i64, i64* %17, align 8
  %98 = add i64 %97, 1
  %99 = load i64, i64* %11, align 8
  %100 = add i64 %98, %99
  %101 = add i64 %100, 1
  %102 = load i64, i64* %13, align 8
  %103 = add i64 %101, %102
  %104 = add i64 %103, 1
  %105 = load i64, i64* %15, align 8
  %106 = add i64 %104, %105
  %107 = add i64 %106, 1
  %108 = mul i64 4, %107
  %109 = trunc i64 %108 to i32
  %110 = call i64 @uv__malloc(i32 %109)
  %111 = inttoptr i64 %110 to i32*
  store i32* %111, i32** %19, align 8
  store i32* %111, i32** %18, align 8
  %112 = load i32*, i32** %19, align 8
  %113 = load i32*, i32** %16, align 8
  %114 = load i64, i64* %17, align 8
  %115 = call i32 @wcsncpy(i32* %112, i32* %113, i64 %114)
  %116 = load i64, i64* %17, align 8
  %117 = load i32*, i32** %19, align 8
  %118 = getelementptr inbounds i32, i32* %117, i64 %116
  store i32* %118, i32** %19, align 8
  %119 = load i64, i64* %17, align 8
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %132

121:                                              ; preds = %96
  %122 = load i32*, i32** %19, align 8
  %123 = getelementptr inbounds i32, i32* %122, i64 -1
  %124 = load i32, i32* %123, align 4
  %125 = call i32* @wcsrchr(i8* bitcast ([4 x i32]* @.str to i8*), i32 %124)
  %126 = icmp eq i32* %125, null
  br i1 %126, label %127, label %132

127:                                              ; preds = %121
  %128 = load i32*, i32** %19, align 8
  %129 = getelementptr inbounds i32, i32* %128, i64 0
  store i32 92, i32* %129, align 4
  %130 = load i32*, i32** %19, align 8
  %131 = getelementptr inbounds i32, i32* %130, i32 1
  store i32* %131, i32** %19, align 8
  br label %132

132:                                              ; preds = %127, %121, %96
  %133 = load i32*, i32** %19, align 8
  %134 = load i32*, i32** %10, align 8
  %135 = load i64, i64* %11, align 8
  %136 = call i32 @wcsncpy(i32* %133, i32* %134, i64 %135)
  %137 = load i64, i64* %11, align 8
  %138 = load i32*, i32** %19, align 8
  %139 = getelementptr inbounds i32, i32* %138, i64 %137
  store i32* %139, i32** %19, align 8
  %140 = load i64, i64* %11, align 8
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %153

142:                                              ; preds = %132
  %143 = load i32*, i32** %19, align 8
  %144 = getelementptr inbounds i32, i32* %143, i64 -1
  %145 = load i32, i32* %144, align 4
  %146 = call i32* @wcsrchr(i8* bitcast ([4 x i32]* @.str to i8*), i32 %145)
  %147 = icmp eq i32* %146, null
  br i1 %147, label %148, label %153

148:                                              ; preds = %142
  %149 = load i32*, i32** %19, align 8
  %150 = getelementptr inbounds i32, i32* %149, i64 0
  store i32 92, i32* %150, align 4
  %151 = load i32*, i32** %19, align 8
  %152 = getelementptr inbounds i32, i32* %151, i32 1
  store i32* %152, i32** %19, align 8
  br label %153

153:                                              ; preds = %148, %142, %132
  %154 = load i32*, i32** %19, align 8
  %155 = load i32*, i32** %12, align 8
  %156 = load i64, i64* %13, align 8
  %157 = call i32 @wcsncpy(i32* %154, i32* %155, i64 %156)
  %158 = load i64, i64* %13, align 8
  %159 = load i32*, i32** %19, align 8
  %160 = getelementptr inbounds i32, i32* %159, i64 %158
  store i32* %160, i32** %19, align 8
  %161 = load i64, i64* %15, align 8
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %184

163:                                              ; preds = %153
  %164 = load i64, i64* %13, align 8
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %176

166:                                              ; preds = %163
  %167 = load i32*, i32** %19, align 8
  %168 = getelementptr inbounds i32, i32* %167, i64 -1
  %169 = load i32, i32* %168, align 4
  %170 = icmp ne i32 %169, 46
  br i1 %170, label %171, label %176

171:                                              ; preds = %166
  %172 = load i32*, i32** %19, align 8
  %173 = getelementptr inbounds i32, i32* %172, i64 0
  store i32 46, i32* %173, align 4
  %174 = load i32*, i32** %19, align 8
  %175 = getelementptr inbounds i32, i32* %174, i32 1
  store i32* %175, i32** %19, align 8
  br label %176

176:                                              ; preds = %171, %166, %163
  %177 = load i32*, i32** %19, align 8
  %178 = load i32*, i32** %14, align 8
  %179 = load i64, i64* %15, align 8
  %180 = call i32 @wcsncpy(i32* %177, i32* %178, i64 %179)
  %181 = load i64, i64* %15, align 8
  %182 = load i32*, i32** %19, align 8
  %183 = getelementptr inbounds i32, i32* %182, i64 %181
  store i32* %183, i32** %19, align 8
  br label %184

184:                                              ; preds = %176, %153
  %185 = load i32*, i32** %19, align 8
  %186 = getelementptr inbounds i32, i32* %185, i64 0
  store i32 0, i32* %186, align 4
  %187 = load i32*, i32** %18, align 8
  %188 = call i32 @GetFileAttributesW(i32* %187)
  store i32 %188, i32* %20, align 4
  %189 = load i32, i32* %20, align 4
  %190 = load i32, i32* @INVALID_FILE_ATTRIBUTES, align 4
  %191 = icmp ne i32 %189, %190
  br i1 %191, label %192, label %199

192:                                              ; preds = %184
  %193 = load i32, i32* %20, align 4
  %194 = load i32, i32* @FILE_ATTRIBUTE_DIRECTORY, align 4
  %195 = and i32 %193, %194
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %199, label %197

197:                                              ; preds = %192
  %198 = load i32*, i32** %18, align 8
  store i32* %198, i32** %9, align 8
  br label %202

199:                                              ; preds = %192, %184
  %200 = load i32*, i32** %18, align 8
  %201 = call i32 @uv__free(i32* %200)
  store i32* null, i32** %9, align 8
  br label %202

202:                                              ; preds = %199, %197
  %203 = load i32*, i32** %9, align 8
  ret i32* %203
}

declare dso_local i64 @_wcsnicmp(i32*, i32*, i32) #1

declare dso_local i64 @uv__malloc(i32) #1

declare dso_local i32 @wcsncpy(i32*, i32*, i64) #1

declare dso_local i32* @wcsrchr(i8*, i32) #1

declare dso_local i32 @GetFileAttributesW(i32*) #1

declare dso_local i32 @uv__free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
