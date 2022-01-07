; ModuleID = '/home/carl/AnghaBench/kphp-kdb/image/extr_image-data.c_generate_thumbs_matte_resize_rotate.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/image/extr_image-data.c_generate_thumbs_matte_resize_rotate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.forth_stack = type { i32 }
%struct.TYPE_10__ = type { i32, i32, i64, i64 }

@FORTH_FAIL = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [28 x i8] c"[%d] after gm_resize_image\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"[%d] after gm_rotate_image\0A\00", align 1
@RGBColorspace = common dso_local global i64 0, align 8
@FORTH_PASS = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.forth_stack*, %struct.TYPE_10__**, i32, i32*, i32*, i32, i32, i32, i32*)* @generate_thumbs_matte_resize_rotate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @generate_thumbs_matte_resize_rotate(%struct.forth_stack* %0, %struct.TYPE_10__** %1, i32 %2, i32* %3, i32* %4, i32 %5, i32 %6, i32 %7, i32* %8) #0 {
  %10 = alloca i8*, align 8
  %11 = alloca %struct.forth_stack*, align 8
  %12 = alloca %struct.TYPE_10__**, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
  %20 = alloca %struct.TYPE_10__*, align 8
  %21 = alloca %struct.TYPE_10__*, align 8
  %22 = alloca i32, align 4
  store %struct.forth_stack* %0, %struct.forth_stack** %11, align 8
  store %struct.TYPE_10__** %1, %struct.TYPE_10__*** %12, align 8
  store i32 %2, i32* %13, align 4
  store i32* %3, i32** %14, align 8
  store i32* %4, i32** %15, align 8
  store i32 %5, i32* %16, align 4
  store i32 %6, i32* %17, align 4
  store i32 %7, i32* %18, align 4
  store i32* %8, i32** %19, align 8
  %23 = load i32*, i32** %19, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %25, label %27

25:                                               ; preds = %9
  %26 = load i32*, i32** %19, align 8
  store i32 0, i32* %26, align 4
  br label %27

27:                                               ; preds = %25, %9
  %28 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %12, align 8
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %28, align 8
  store %struct.TYPE_10__* %29, %struct.TYPE_10__** %20, align 8
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32*, i32** %14, align 8
  store i32 %32, i32* %33, align 4
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load i32*, i32** %15, align 8
  store i32 %36, i32* %37, align 4
  %38 = load i32, i32* %13, align 4
  %39 = srem i32 %38, 2
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %49

41:                                               ; preds = %27
  %42 = load i32*, i32** %14, align 8
  %43 = load i32, i32* %42, align 4
  store i32 %43, i32* %22, align 4
  %44 = load i32*, i32** %15, align 8
  %45 = load i32, i32* %44, align 4
  %46 = load i32*, i32** %14, align 8
  store i32 %45, i32* %46, align 4
  %47 = load i32, i32* %22, align 4
  %48 = load i32*, i32** %15, align 8
  store i32 %47, i32* %48, align 4
  br label %49

49:                                               ; preds = %41, %27
  %50 = load i32*, i32** %14, align 8
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* %16, align 4
  %53 = icmp sgt i32 %51, %52
  br i1 %53, label %59, label %54

54:                                               ; preds = %49
  %55 = load i32*, i32** %15, align 8
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* %17, align 4
  %58 = icmp sgt i32 %56, %57
  br i1 %58, label %59, label %83

59:                                               ; preds = %54, %49
  %60 = load i32*, i32** %19, align 8
  %61 = icmp ne i32* %60, null
  br i1 %61, label %62, label %66

62:                                               ; preds = %59
  %63 = load i32*, i32** %19, align 8
  %64 = load i32, i32* %63, align 4
  %65 = or i32 %64, 1
  store i32 %65, i32* %63, align 4
  br label %66

66:                                               ; preds = %62, %59
  %67 = load %struct.forth_stack*, %struct.forth_stack** %11, align 8
  %68 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %69 = load i32, i32* %16, align 4
  %70 = load i32, i32* %17, align 4
  %71 = load i32, i32* %18, align 4
  %72 = call %struct.TYPE_10__* @gm_resize_image(%struct.forth_stack* %67, %struct.TYPE_10__* %68, i32 %69, i32 %70, i32 1, i32 %71)
  store %struct.TYPE_10__* %72, %struct.TYPE_10__** %21, align 8
  %73 = load %struct.TYPE_10__*, %struct.TYPE_10__** %21, align 8
  %74 = icmp eq %struct.TYPE_10__* %73, null
  br i1 %74, label %75, label %79

75:                                               ; preds = %66
  %76 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %77 = call i32 @DestroyImage(%struct.TYPE_10__* %76)
  %78 = load i8*, i8** @FORTH_FAIL, align 8
  store i8* %78, i8** %10, align 8
  br label %169

79:                                               ; preds = %66
  %80 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %81 = call i32 @DestroyImage(%struct.TYPE_10__* %80)
  %82 = load %struct.TYPE_10__*, %struct.TYPE_10__** %21, align 8
  store %struct.TYPE_10__* %82, %struct.TYPE_10__** %20, align 8
  br label %83

83:                                               ; preds = %79, %54
  %84 = load %struct.forth_stack*, %struct.forth_stack** %11, align 8
  %85 = getelementptr inbounds %struct.forth_stack, %struct.forth_stack* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @vkprintf(i32 3, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %86)
  %88 = load i32, i32* %13, align 4
  %89 = srem i32 %88, 4
  store i32 %89, i32* %13, align 4
  %90 = load i32, i32* %13, align 4
  %91 = icmp slt i32 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %83
  %93 = load i32, i32* %13, align 4
  %94 = add nsw i32 %93, 4
  store i32 %94, i32* %13, align 4
  br label %95

95:                                               ; preds = %92, %83
  %96 = load i32, i32* %13, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %121

98:                                               ; preds = %95
  %99 = load i32*, i32** %19, align 8
  %100 = icmp ne i32* %99, null
  br i1 %100, label %101, label %105

101:                                              ; preds = %98
  %102 = load i32*, i32** %19, align 8
  %103 = load i32, i32* %102, align 4
  %104 = or i32 %103, 2
  store i32 %104, i32* %102, align 4
  br label %105

105:                                              ; preds = %101, %98
  %106 = load %struct.forth_stack*, %struct.forth_stack** %11, align 8
  %107 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %108 = load i32, i32* %13, align 4
  %109 = mul nsw i32 90, %108
  %110 = call %struct.TYPE_10__* @gm_rotate_image(%struct.forth_stack* %106, %struct.TYPE_10__* %107, i32 %109)
  store %struct.TYPE_10__* %110, %struct.TYPE_10__** %21, align 8
  %111 = load %struct.TYPE_10__*, %struct.TYPE_10__** %21, align 8
  %112 = icmp eq %struct.TYPE_10__* %111, null
  br i1 %112, label %113, label %117

113:                                              ; preds = %105
  %114 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %115 = call i32 @DestroyImage(%struct.TYPE_10__* %114)
  %116 = load i8*, i8** @FORTH_FAIL, align 8
  store i8* %116, i8** %10, align 8
  br label %169

117:                                              ; preds = %105
  %118 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %119 = call i32 @DestroyImage(%struct.TYPE_10__* %118)
  %120 = load %struct.TYPE_10__*, %struct.TYPE_10__** %21, align 8
  store %struct.TYPE_10__* %120, %struct.TYPE_10__** %20, align 8
  br label %121

121:                                              ; preds = %117, %95
  %122 = load %struct.forth_stack*, %struct.forth_stack** %11, align 8
  %123 = getelementptr inbounds %struct.forth_stack, %struct.forth_stack* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @vkprintf(i32 3, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %124)
  %126 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %127 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %126, i32 0, i32 3
  %128 = load i64, i64* %127, align 8
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %136, label %130

130:                                              ; preds = %121
  %131 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %132 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %131, i32 0, i32 2
  %133 = load i64, i64* %132, align 8
  %134 = load i64, i64* @RGBColorspace, align 8
  %135 = icmp ne i64 %133, %134
  br i1 %135, label %136, label %157

136:                                              ; preds = %130, %121
  %137 = load i32*, i32** %19, align 8
  %138 = icmp ne i32* %137, null
  br i1 %138, label %139, label %143

139:                                              ; preds = %136
  %140 = load i32*, i32** %19, align 8
  %141 = load i32, i32* %140, align 4
  %142 = or i32 %141, 4
  store i32 %142, i32* %140, align 4
  br label %143

143:                                              ; preds = %139, %136
  %144 = load %struct.forth_stack*, %struct.forth_stack** %11, align 8
  %145 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %146 = call %struct.TYPE_10__* @gm_replace_transparent_color_by_white(%struct.forth_stack* %144, %struct.TYPE_10__* %145)
  store %struct.TYPE_10__* %146, %struct.TYPE_10__** %21, align 8
  %147 = load %struct.TYPE_10__*, %struct.TYPE_10__** %21, align 8
  %148 = icmp eq %struct.TYPE_10__* %147, null
  br i1 %148, label %149, label %153

149:                                              ; preds = %143
  %150 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %151 = call i32 @DestroyImage(%struct.TYPE_10__* %150)
  %152 = load i8*, i8** @FORTH_FAIL, align 8
  store i8* %152, i8** %10, align 8
  br label %169

153:                                              ; preds = %143
  %154 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %155 = call i32 @DestroyImage(%struct.TYPE_10__* %154)
  %156 = load %struct.TYPE_10__*, %struct.TYPE_10__** %21, align 8
  store %struct.TYPE_10__* %156, %struct.TYPE_10__** %20, align 8
  br label %157

157:                                              ; preds = %153, %130
  %158 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %159 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = load i32*, i32** %14, align 8
  store i32 %160, i32* %161, align 4
  %162 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %163 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 4
  %165 = load i32*, i32** %15, align 8
  store i32 %164, i32* %165, align 4
  %166 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %167 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %12, align 8
  store %struct.TYPE_10__* %166, %struct.TYPE_10__** %167, align 8
  %168 = load i8*, i8** @FORTH_PASS, align 8
  store i8* %168, i8** %10, align 8
  br label %169

169:                                              ; preds = %157, %149, %113, %75
  %170 = load i8*, i8** %10, align 8
  ret i8* %170
}

declare dso_local %struct.TYPE_10__* @gm_resize_image(%struct.forth_stack*, %struct.TYPE_10__*, i32, i32, i32, i32) #1

declare dso_local i32 @DestroyImage(%struct.TYPE_10__*) #1

declare dso_local i32 @vkprintf(i32, i8*, i32) #1

declare dso_local %struct.TYPE_10__* @gm_rotate_image(%struct.forth_stack*, %struct.TYPE_10__*, i32) #1

declare dso_local %struct.TYPE_10__* @gm_replace_transparent_color_by_white(%struct.forth_stack*, %struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
