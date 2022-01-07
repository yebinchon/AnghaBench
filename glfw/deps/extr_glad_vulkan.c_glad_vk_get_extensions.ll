; ModuleID = '/home/carl/AnghaBench/glfw/deps/extr_glad_vulkan.c_glad_vk_get_extensions.c'
source_filename = "/home/carl/AnghaBench/glfw/deps/extr_glad_vulkan.c_glad_vk_get_extensions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@VK_SUCCESS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i8***)* @glad_vk_get_extensions to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @glad_vk_get_extensions(i32* %0, i32* %1, i8*** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8***, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8**, align 8
  %14 = alloca %struct.TYPE_4__*, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.TYPE_4__, align 4
  %17 = alloca i64, align 8
  %18 = alloca %struct.TYPE_4__, align 4
  %19 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8*** %2, i8**** %7, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %20 = load i32*, i32** %5, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %22, label %24

22:                                               ; preds = %3
  br i1 false, label %23, label %24

23:                                               ; preds = %22
  store i32 0, i32* %4, align 4
  br label %200

24:                                               ; preds = %22, %3
  %25 = call i64 @vkEnumerateInstanceExtensionProperties(i32* null, i32* %9, %struct.TYPE_4__* null)
  store i64 %25, i64* %15, align 8
  %26 = load i64, i64* %15, align 8
  %27 = load i64, i64* @VK_SUCCESS, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %24
  store i32 0, i32* %4, align 4
  br label %200

30:                                               ; preds = %24
  %31 = load i32*, i32** %5, align 8
  %32 = icmp ne i32* %31, null
  br i1 %32, label %33, label %41

33:                                               ; preds = %30
  %34 = load i32*, i32** %5, align 8
  %35 = call i64 @vkEnumerateDeviceExtensionProperties(i32* %34, i32* null, i32* %10, %struct.TYPE_4__* null)
  store i64 %35, i64* %15, align 8
  %36 = load i64, i64* %15, align 8
  %37 = load i64, i64* @VK_SUCCESS, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %33
  store i32 0, i32* %4, align 4
  br label %200

40:                                               ; preds = %33
  br label %41

41:                                               ; preds = %40, %30
  %42 = load i32, i32* %9, align 4
  %43 = load i32, i32* %10, align 4
  %44 = add nsw i32 %42, %43
  store i32 %44, i32* %12, align 4
  %45 = load i32, i32* %9, align 4
  %46 = load i32, i32* %10, align 4
  %47 = icmp sgt i32 %45, %46
  br i1 %47, label %48, label %50

48:                                               ; preds = %41
  %49 = load i32, i32* %9, align 4
  br label %52

50:                                               ; preds = %41
  %51 = load i32, i32* %10, align 4
  br label %52

52:                                               ; preds = %50, %48
  %53 = phi i32 [ %49, %48 ], [ %51, %50 ]
  store i32 %53, i32* %11, align 4
  %54 = load i32, i32* %11, align 4
  %55 = sext i32 %54 to i64
  %56 = mul i64 %55, 4
  %57 = call i64 @malloc(i64 %56)
  %58 = inttoptr i64 %57 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %58, %struct.TYPE_4__** %14, align 8
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %60 = icmp eq %struct.TYPE_4__* %59, null
  br i1 %60, label %61, label %62

61:                                               ; preds = %52
  store i32 0, i32* %4, align 4
  br label %200

62:                                               ; preds = %52
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %64 = call i64 @vkEnumerateInstanceExtensionProperties(i32* null, i32* %9, %struct.TYPE_4__* %63)
  store i64 %64, i64* %15, align 8
  %65 = load i64, i64* %15, align 8
  %66 = load i64, i64* @VK_SUCCESS, align 8
  %67 = icmp ne i64 %65, %66
  br i1 %67, label %68, label %72

68:                                               ; preds = %62
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %70 = bitcast %struct.TYPE_4__* %69 to i8*
  %71 = call i32 @free(i8* %70)
  store i32 0, i32* %4, align 4
  br label %200

72:                                               ; preds = %62
  %73 = load i32, i32* %12, align 4
  %74 = call i64 @calloc(i32 %73, i32 8)
  %75 = inttoptr i64 %74 to i8**
  store i8** %75, i8*** %13, align 8
  %76 = load i8**, i8*** %13, align 8
  %77 = icmp eq i8** %76, null
  br i1 %77, label %78, label %82

78:                                               ; preds = %72
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %80 = bitcast %struct.TYPE_4__* %79 to i8*
  %81 = call i32 @free(i8* %80)
  store i32 0, i32* %4, align 4
  br label %200

82:                                               ; preds = %72
  store i32 0, i32* %8, align 4
  br label %83

83:                                               ; preds = %117, %82
  %84 = load i32, i32* %8, align 4
  %85 = load i32, i32* %9, align 4
  %86 = icmp slt i32 %84, %85
  br i1 %86, label %87, label %120

87:                                               ; preds = %83
  %88 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %89 = load i32, i32* %8, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i64 %90
  %92 = bitcast %struct.TYPE_4__* %16 to i8*
  %93 = bitcast %struct.TYPE_4__* %91 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %92, i8* align 4 %93, i64 4, i1 false)
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @strlen(i32 %95)
  %97 = add nsw i32 %96, 1
  %98 = sext i32 %97 to i64
  store i64 %98, i64* %17, align 8
  %99 = load i64, i64* %17, align 8
  %100 = mul i64 %99, 1
  %101 = call i64 @malloc(i64 %100)
  %102 = inttoptr i64 %101 to i8*
  %103 = load i8**, i8*** %13, align 8
  %104 = load i32, i32* %8, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i8*, i8** %103, i64 %105
  store i8* %102, i8** %106, align 8
  %107 = load i8**, i8*** %13, align 8
  %108 = load i32, i32* %8, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i8*, i8** %107, i64 %109
  %111 = load i8*, i8** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = load i64, i64* %17, align 8
  %115 = mul i64 %114, 1
  %116 = call i32 @memcpy(i8* %111, i32 %113, i64 %115)
  br label %117

117:                                              ; preds = %87
  %118 = load i32, i32* %8, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %8, align 4
  br label %83

120:                                              ; preds = %83
  %121 = load i32*, i32** %5, align 8
  %122 = icmp ne i32* %121, null
  br i1 %122, label %123, label %192

123:                                              ; preds = %120
  %124 = load i32*, i32** %5, align 8
  %125 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %126 = call i64 @vkEnumerateDeviceExtensionProperties(i32* %124, i32* null, i32* %10, %struct.TYPE_4__* %125)
  store i64 %126, i64* %15, align 8
  %127 = load i64, i64* %15, align 8
  %128 = load i64, i64* @VK_SUCCESS, align 8
  %129 = icmp ne i64 %127, %128
  br i1 %129, label %130, label %149

130:                                              ; preds = %123
  store i32 0, i32* %8, align 4
  br label %131

131:                                              ; preds = %142, %130
  %132 = load i32, i32* %8, align 4
  %133 = load i32, i32* %9, align 4
  %134 = icmp slt i32 %132, %133
  br i1 %134, label %135, label %145

135:                                              ; preds = %131
  %136 = load i8**, i8*** %13, align 8
  %137 = load i32, i32* %8, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i8*, i8** %136, i64 %138
  %140 = load i8*, i8** %139, align 8
  %141 = call i32 @free(i8* %140)
  br label %142

142:                                              ; preds = %135
  %143 = load i32, i32* %8, align 4
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %8, align 4
  br label %131

145:                                              ; preds = %131
  %146 = load i8**, i8*** %13, align 8
  %147 = bitcast i8** %146 to i8*
  %148 = call i32 @free(i8* %147)
  store i32 0, i32* %4, align 4
  br label %200

149:                                              ; preds = %123
  store i32 0, i32* %8, align 4
  br label %150

150:                                              ; preds = %188, %149
  %151 = load i32, i32* %8, align 4
  %152 = load i32, i32* %10, align 4
  %153 = icmp slt i32 %151, %152
  br i1 %153, label %154, label %191

154:                                              ; preds = %150
  %155 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %156 = load i32, i32* %8, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %155, i64 %157
  %159 = bitcast %struct.TYPE_4__* %18 to i8*
  %160 = bitcast %struct.TYPE_4__* %158 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %159, i8* align 4 %160, i64 4, i1 false)
  %161 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %162 = load i32, i32* %161, align 4
  %163 = call i32 @strlen(i32 %162)
  %164 = add nsw i32 %163, 1
  %165 = sext i32 %164 to i64
  store i64 %165, i64* %19, align 8
  %166 = load i64, i64* %19, align 8
  %167 = mul i64 %166, 1
  %168 = call i64 @malloc(i64 %167)
  %169 = inttoptr i64 %168 to i8*
  %170 = load i8**, i8*** %13, align 8
  %171 = load i32, i32* %9, align 4
  %172 = load i32, i32* %8, align 4
  %173 = add nsw i32 %171, %172
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds i8*, i8** %170, i64 %174
  store i8* %169, i8** %175, align 8
  %176 = load i8**, i8*** %13, align 8
  %177 = load i32, i32* %9, align 4
  %178 = load i32, i32* %8, align 4
  %179 = add nsw i32 %177, %178
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds i8*, i8** %176, i64 %180
  %182 = load i8*, i8** %181, align 8
  %183 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %184 = load i32, i32* %183, align 4
  %185 = load i64, i64* %19, align 8
  %186 = mul i64 %185, 1
  %187 = call i32 @memcpy(i8* %182, i32 %184, i64 %186)
  br label %188

188:                                              ; preds = %154
  %189 = load i32, i32* %8, align 4
  %190 = add nsw i32 %189, 1
  store i32 %190, i32* %8, align 4
  br label %150

191:                                              ; preds = %150
  br label %192

192:                                              ; preds = %191, %120
  %193 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %194 = bitcast %struct.TYPE_4__* %193 to i8*
  %195 = call i32 @free(i8* %194)
  %196 = load i32, i32* %12, align 4
  %197 = load i32*, i32** %6, align 8
  store i32 %196, i32* %197, align 4
  %198 = load i8**, i8*** %13, align 8
  %199 = load i8***, i8**** %7, align 8
  store i8** %198, i8*** %199, align 8
  store i32 1, i32* %4, align 4
  br label %200

200:                                              ; preds = %192, %145, %78, %68, %61, %39, %29, %23
  %201 = load i32, i32* %4, align 4
  ret i32 %201
}

declare dso_local i64 @vkEnumerateDeviceExtensionProperties(i32*, i32*, i32*, %struct.TYPE_4__*) #1

declare dso_local i64 @vkEnumerateInstanceExtensionProperties(i32*, i32*, %struct.TYPE_4__*) #1

declare dso_local i64 @malloc(i64) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i64 @calloc(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @strlen(i32) #1

declare dso_local i32 @memcpy(i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
