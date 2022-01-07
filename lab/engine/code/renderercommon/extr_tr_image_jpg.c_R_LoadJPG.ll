; ModuleID = '/home/carl/AnghaBench/lab/engine/code/renderercommon/extr_tr_image_jpg.c_R_LoadJPG.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/renderercommon/extr_tr_image_jpg.c_R_LoadJPG.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 (i8*, i8**)*, i8* (i32)*, i32 (i8*)*, i32 (i32, i8*, i8*, i32, i32, i32, i32)*, i32 (i32, i8*, i8*)* }
%struct.jpeg_decompress_struct = type { i32, i32, i32, i32, i32, %struct.TYPE_6__*, i32* }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }
%union.anon = type { i8* }

@ri = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@R_JPGErrorExit = common dso_local global i32 0, align 4
@R_JPGOutputMessage = common dso_local global i32 0, align 4
@PRINT_ALL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c", loading file %s\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@JCS_RGB = common dso_local global i32 0, align 4
@ERR_DROP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [68 x i8] c"LoadJPG: %s has an invalid image format: %dx%d*4=%d, components: %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @R_LoadJPG(i8* %0, i8** %1, i32* %2, i32* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.jpeg_decompress_struct, align 8
  %10 = alloca %struct.TYPE_4__, align 4
  %11 = alloca i8**, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca %union.anon, align 8
  %20 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i8** %1, i8*** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %21 = bitcast %struct.jpeg_decompress_struct* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %21, i8 0, i64 40, i1 false)
  %22 = load i32 (i8*, i8**)*, i32 (i8*, i8**)** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @ri, i32 0, i32 0), align 8
  %23 = load i8*, i8** %5, align 8
  %24 = bitcast %union.anon* %19 to i8**
  %25 = call i32 %22(i8* %23, i8** %24)
  store i32 %25, i32* %18, align 4
  %26 = bitcast %union.anon* %19 to i8**
  %27 = load i8*, i8** %26, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %29, label %32

29:                                               ; preds = %4
  %30 = load i32, i32* %18, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %29, %4
  br label %208

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 1
  %35 = call %struct.TYPE_6__* @jpeg_std_error(i32* %34)
  %36 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %9, i32 0, i32 5
  store %struct.TYPE_6__* %35, %struct.TYPE_6__** %36, align 8
  %37 = load i32, i32* @R_JPGErrorExit, align 4
  %38 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %9, i32 0, i32 5
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 1
  store i32 %37, i32* %40, align 4
  %41 = load i32, i32* @R_JPGOutputMessage, align 4
  %42 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %9, i32 0, i32 5
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  store i32 %41, i32* %44, align 4
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i64 @setjmp(i32 %46) #4
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %59

49:                                               ; preds = %33
  %50 = call i32 @jpeg_destroy_decompress(%struct.jpeg_decompress_struct* %9)
  %51 = load i32 (i8*)*, i32 (i8*)** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @ri, i32 0, i32 2), align 8
  %52 = bitcast %union.anon* %19 to i8**
  %53 = load i8*, i8** %52, align 8
  %54 = call i32 %51(i8* %53)
  %55 = load i32 (i32, i8*, i8*)*, i32 (i32, i8*, i8*)** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @ri, i32 0, i32 4), align 8
  %56 = load i32, i32* @PRINT_ALL, align 4
  %57 = load i8*, i8** %5, align 8
  %58 = call i32 %55(i32 %56, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i8* %57)
  br label %208

59:                                               ; preds = %33
  %60 = call i32 @jpeg_create_decompress(%struct.jpeg_decompress_struct* %9)
  %61 = bitcast %union.anon* %19 to i8**
  %62 = load i8*, i8** %61, align 8
  %63 = load i32, i32* %18, align 4
  %64 = call i32 @jpeg_mem_src(%struct.jpeg_decompress_struct* %9, i8* %62, i32 %63)
  %65 = load i32, i32* @TRUE, align 4
  %66 = call i32 @jpeg_read_header(%struct.jpeg_decompress_struct* %9, i32 %65)
  %67 = load i32, i32* @JCS_RGB, align 4
  %68 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %9, i32 0, i32 4
  store i32 %67, i32* %68, align 8
  %69 = call i32 @jpeg_start_decompress(%struct.jpeg_decompress_struct* %9)
  %70 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %9, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %9, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = mul i32 %71, %73
  store i32 %74, i32* %13, align 4
  %75 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %9, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %99

78:                                               ; preds = %59
  %79 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %9, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %99

82:                                               ; preds = %78
  %83 = load i32, i32* %13, align 4
  %84 = mul i32 %83, 4
  %85 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %9, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = udiv i32 %84, %86
  %88 = udiv i32 %87, 4
  %89 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %9, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = icmp ne i32 %88, %90
  br i1 %91, label %99, label %92

92:                                               ; preds = %82
  %93 = load i32, i32* %13, align 4
  %94 = icmp ugt i32 %93, 536870911
  br i1 %94, label %99, label %95

95:                                               ; preds = %92
  %96 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %9, i32 0, i32 2
  %97 = load i32, i32* %96, align 8
  %98 = icmp ne i32 %97, 3
  br i1 %98, label %99, label %117

99:                                               ; preds = %95, %92, %82, %78, %59
  %100 = load i32 (i8*)*, i32 (i8*)** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @ri, i32 0, i32 2), align 8
  %101 = bitcast %union.anon* %19 to i8**
  %102 = load i8*, i8** %101, align 8
  %103 = call i32 %100(i8* %102)
  %104 = call i32 @jpeg_destroy_decompress(%struct.jpeg_decompress_struct* %9)
  %105 = load i32 (i32, i8*, i8*, i32, i32, i32, i32)*, i32 (i32, i8*, i8*, i32, i32, i32, i32)** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @ri, i32 0, i32 3), align 8
  %106 = load i32, i32* @ERR_DROP, align 4
  %107 = load i8*, i8** %5, align 8
  %108 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %9, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %9, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* %13, align 4
  %113 = mul i32 %112, 4
  %114 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %9, i32 0, i32 2
  %115 = load i32, i32* %114, align 8
  %116 = call i32 %105(i32 %106, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.1, i64 0, i64 0), i8* %107, i32 %109, i32 %111, i32 %113, i32 %115)
  br label %117

117:                                              ; preds = %99, %95
  %118 = load i32, i32* %13, align 4
  %119 = mul i32 %118, 4
  store i32 %119, i32* %14, align 4
  %120 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %9, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %9, i32 0, i32 2
  %123 = load i32, i32* %122, align 8
  %124 = mul i32 %121, %123
  store i32 %124, i32* %12, align 4
  %125 = load i8* (i32)*, i8* (i32)** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @ri, i32 0, i32 1), align 8
  %126 = load i32, i32* %14, align 4
  %127 = call i8* %125(i32 %126)
  store i8* %127, i8** %17, align 8
  %128 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %9, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = load i32*, i32** %7, align 8
  store i32 %129, i32* %130, align 4
  %131 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %9, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = load i32*, i32** %8, align 8
  store i32 %132, i32* %133, align 4
  br label %134

134:                                              ; preds = %140, %117
  %135 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %9, i32 0, i32 3
  %136 = load i32, i32* %135, align 4
  %137 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %9, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = icmp ult i32 %136, %138
  br i1 %139, label %140, label %150

140:                                              ; preds = %134
  %141 = load i8*, i8** %17, align 8
  %142 = load i32, i32* %12, align 4
  %143 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %9, i32 0, i32 3
  %144 = load i32, i32* %143, align 4
  %145 = mul i32 %142, %144
  %146 = zext i32 %145 to i64
  %147 = getelementptr inbounds i8, i8* %141, i64 %146
  store i8* %147, i8** %20, align 8
  store i8** %20, i8*** %11, align 8
  %148 = load i8**, i8*** %11, align 8
  %149 = call i32 @jpeg_read_scanlines(%struct.jpeg_decompress_struct* %9, i8** %148, i32 1)
  br label %134

150:                                              ; preds = %134
  %151 = load i8*, i8** %17, align 8
  store i8* %151, i8** %20, align 8
  %152 = load i32, i32* %13, align 4
  %153 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %9, i32 0, i32 2
  %154 = load i32, i32* %153, align 8
  %155 = mul i32 %152, %154
  store i32 %155, i32* %15, align 4
  %156 = load i32, i32* %14, align 4
  store i32 %156, i32* %16, align 4
  br label %157

157:                                              ; preds = %196, %150
  %158 = load i8*, i8** %20, align 8
  %159 = load i32, i32* %16, align 4
  %160 = add i32 %159, -1
  store i32 %160, i32* %16, align 4
  %161 = zext i32 %160 to i64
  %162 = getelementptr inbounds i8, i8* %158, i64 %161
  store i8 -1, i8* %162, align 1
  %163 = load i8*, i8** %20, align 8
  %164 = load i32, i32* %15, align 4
  %165 = add i32 %164, -1
  store i32 %165, i32* %15, align 4
  %166 = zext i32 %165 to i64
  %167 = getelementptr inbounds i8, i8* %163, i64 %166
  %168 = load i8, i8* %167, align 1
  %169 = load i8*, i8** %20, align 8
  %170 = load i32, i32* %16, align 4
  %171 = add i32 %170, -1
  store i32 %171, i32* %16, align 4
  %172 = zext i32 %171 to i64
  %173 = getelementptr inbounds i8, i8* %169, i64 %172
  store i8 %168, i8* %173, align 1
  %174 = load i8*, i8** %20, align 8
  %175 = load i32, i32* %15, align 4
  %176 = add i32 %175, -1
  store i32 %176, i32* %15, align 4
  %177 = zext i32 %176 to i64
  %178 = getelementptr inbounds i8, i8* %174, i64 %177
  %179 = load i8, i8* %178, align 1
  %180 = load i8*, i8** %20, align 8
  %181 = load i32, i32* %16, align 4
  %182 = add i32 %181, -1
  store i32 %182, i32* %16, align 4
  %183 = zext i32 %182 to i64
  %184 = getelementptr inbounds i8, i8* %180, i64 %183
  store i8 %179, i8* %184, align 1
  %185 = load i8*, i8** %20, align 8
  %186 = load i32, i32* %15, align 4
  %187 = add i32 %186, -1
  store i32 %187, i32* %15, align 4
  %188 = zext i32 %187 to i64
  %189 = getelementptr inbounds i8, i8* %185, i64 %188
  %190 = load i8, i8* %189, align 1
  %191 = load i8*, i8** %20, align 8
  %192 = load i32, i32* %16, align 4
  %193 = add i32 %192, -1
  store i32 %193, i32* %16, align 4
  %194 = zext i32 %193 to i64
  %195 = getelementptr inbounds i8, i8* %191, i64 %194
  store i8 %190, i8* %195, align 1
  br label %196

196:                                              ; preds = %157
  %197 = load i32, i32* %15, align 4
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %157, label %199

199:                                              ; preds = %196
  %200 = load i8*, i8** %17, align 8
  %201 = load i8**, i8*** %6, align 8
  store i8* %200, i8** %201, align 8
  %202 = call i32 @jpeg_finish_decompress(%struct.jpeg_decompress_struct* %9)
  %203 = call i32 @jpeg_destroy_decompress(%struct.jpeg_decompress_struct* %9)
  %204 = load i32 (i8*)*, i32 (i8*)** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @ri, i32 0, i32 2), align 8
  %205 = bitcast %union.anon* %19 to i8**
  %206 = load i8*, i8** %205, align 8
  %207 = call i32 %204(i8* %206)
  br label %208

208:                                              ; preds = %199, %49, %32
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.TYPE_6__* @jpeg_std_error(i32*) #2

; Function Attrs: returns_twice
declare dso_local i64 @setjmp(i32) #3

declare dso_local i32 @jpeg_destroy_decompress(%struct.jpeg_decompress_struct*) #2

declare dso_local i32 @jpeg_create_decompress(%struct.jpeg_decompress_struct*) #2

declare dso_local i32 @jpeg_mem_src(%struct.jpeg_decompress_struct*, i8*, i32) #2

declare dso_local i32 @jpeg_read_header(%struct.jpeg_decompress_struct*, i32) #2

declare dso_local i32 @jpeg_start_decompress(%struct.jpeg_decompress_struct*) #2

declare dso_local i32 @jpeg_read_scanlines(%struct.jpeg_decompress_struct*, i8**, i32) #2

declare dso_local i32 @jpeg_finish_decompress(%struct.jpeg_decompress_struct*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { returns_twice "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { returns_twice }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
