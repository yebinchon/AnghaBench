; ModuleID = '/home/carl/AnghaBench/git/extr_shallow.c_paint_down.c'
source_filename = "/home/carl/AnghaBench/git/extr_shallow.c_paint_down.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.paint_info = type { i32, i32 }
%struct.object_id = type { i32 }
%struct.commit_list = type { %struct.commit*, %struct.commit_list* }
%struct.commit = type { %struct.TYPE_2__, %struct.commit_list* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.object = type { i64, i32 }

@the_repository = common dso_local global i32 0, align 4
@SEEN = common dso_local global i32 0, align 4
@UNINTERESTING = common dso_local global i32 0, align 4
@BOTTOM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"unable to parse commit %s\00", align 1
@OBJ_COMMIT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.paint_info*, %struct.object_id*, i32)* @paint_down to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @paint_down(%struct.paint_info* %0, %struct.object_id* %1, i32 %2) #0 {
  %4 = alloca %struct.paint_info*, align 8
  %5 = alloca %struct.object_id*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.commit_list*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.commit*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca %struct.commit_list*, align 8
  %16 = alloca %struct.commit*, align 8
  %17 = alloca i32**, align 8
  %18 = alloca %struct.object*, align 8
  store %struct.paint_info* %0, %struct.paint_info** %4, align 8
  store %struct.object_id* %1, %struct.object_id** %5, align 8
  store i32 %2, i32* %6, align 4
  store %struct.commit_list* null, %struct.commit_list** %9, align 8
  %19 = load %struct.paint_info*, %struct.paint_info** %4, align 8
  %20 = getelementptr inbounds %struct.paint_info, %struct.paint_info* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @DIV_ROUND_UP(i32 %21, i32 32)
  store i32 %22, i32* %10, align 4
  %23 = load i32, i32* %10, align 4
  %24 = call i64 @st_mult(i32 4, i32 %23)
  store i64 %24, i64* %11, align 8
  %25 = load i32, i32* @the_repository, align 4
  %26 = load %struct.object_id*, %struct.object_id** %5, align 8
  %27 = call %struct.commit* @lookup_commit_reference_gently(i32 %25, %struct.object_id* %26, i32 1)
  store %struct.commit* %27, %struct.commit** %12, align 8
  %28 = load %struct.commit*, %struct.commit** %12, align 8
  %29 = icmp ne %struct.commit* %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %3
  br label %204

31:                                               ; preds = %3
  %32 = load i64, i64* %11, align 8
  %33 = call i32* @xmalloc(i64 %32)
  store i32* %33, i32** %13, align 8
  %34 = load %struct.paint_info*, %struct.paint_info** %4, align 8
  %35 = call i32* @paint_alloc(%struct.paint_info* %34)
  store i32* %35, i32** %14, align 8
  %36 = load i32*, i32** %14, align 8
  %37 = load i64, i64* %11, align 8
  %38 = call i32 @memset(i32* %36, i32 0, i64 %37)
  %39 = load i32, i32* %6, align 4
  %40 = urem i32 %39, 32
  %41 = shl i32 1, %40
  %42 = load i32*, i32** %14, align 8
  %43 = load i32, i32* %6, align 4
  %44 = udiv i32 %43, 32
  %45 = zext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %42, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = or i32 %47, %41
  store i32 %48, i32* %46, align 4
  %49 = load %struct.commit*, %struct.commit** %12, align 8
  %50 = call i32 @commit_list_insert(%struct.commit* %49, %struct.commit_list** %9)
  br label %51

51:                                               ; preds = %172, %134, %69, %31
  %52 = load %struct.commit_list*, %struct.commit_list** %9, align 8
  %53 = icmp ne %struct.commit_list* %52, null
  br i1 %53, label %54, label %173

54:                                               ; preds = %51
  %55 = call %struct.commit* @pop_commit(%struct.commit_list** %9)
  store %struct.commit* %55, %struct.commit** %16, align 8
  %56 = load %struct.paint_info*, %struct.paint_info** %4, align 8
  %57 = getelementptr inbounds %struct.paint_info, %struct.paint_info* %56, i32 0, i32 0
  %58 = load %struct.commit*, %struct.commit** %16, align 8
  %59 = call i32** @ref_bitmap_at(i32* %57, %struct.commit* %58)
  store i32** %59, i32*** %17, align 8
  %60 = load %struct.commit*, %struct.commit** %16, align 8
  %61 = getelementptr inbounds %struct.commit, %struct.commit* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @SEEN, align 4
  %65 = load i32, i32* @UNINTERESTING, align 4
  %66 = or i32 %64, %65
  %67 = and i32 %63, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %54
  br label %51

70:                                               ; preds = %54
  %71 = load i32, i32* @SEEN, align 4
  %72 = load %struct.commit*, %struct.commit** %16, align 8
  %73 = getelementptr inbounds %struct.commit, %struct.commit* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = or i32 %75, %71
  store i32 %76, i32* %74, align 8
  br label %77

77:                                               ; preds = %70
  %78 = load i32**, i32*** %17, align 8
  %79 = load i32*, i32** %78, align 8
  %80 = icmp eq i32* %79, null
  br i1 %80, label %81, label %84

81:                                               ; preds = %77
  %82 = load i32*, i32** %14, align 8
  %83 = load i32**, i32*** %17, align 8
  store i32* %82, i32** %83, align 8
  br label %126

84:                                               ; preds = %77
  %85 = load i32*, i32** %13, align 8
  %86 = load i32**, i32*** %17, align 8
  %87 = load i32*, i32** %86, align 8
  %88 = load i64, i64* %11, align 8
  %89 = call i32 @memcpy(i32* %85, i32* %87, i64 %88)
  store i32 0, i32* %7, align 4
  br label %90

90:                                               ; preds = %106, %84
  %91 = load i32, i32* %7, align 4
  %92 = load i32, i32* %10, align 4
  %93 = icmp ult i32 %91, %92
  br i1 %93, label %94, label %109

94:                                               ; preds = %90
  %95 = load i32*, i32** %14, align 8
  %96 = load i32, i32* %7, align 4
  %97 = zext i32 %96 to i64
  %98 = getelementptr inbounds i32, i32* %95, i64 %97
  %99 = load i32, i32* %98, align 4
  %100 = load i32*, i32** %13, align 8
  %101 = load i32, i32* %7, align 4
  %102 = zext i32 %101 to i64
  %103 = getelementptr inbounds i32, i32* %100, i64 %102
  %104 = load i32, i32* %103, align 4
  %105 = or i32 %104, %99
  store i32 %105, i32* %103, align 4
  br label %106

106:                                              ; preds = %94
  %107 = load i32, i32* %7, align 4
  %108 = add i32 %107, 1
  store i32 %108, i32* %7, align 4
  br label %90

109:                                              ; preds = %90
  %110 = load i32*, i32** %13, align 8
  %111 = load i32**, i32*** %17, align 8
  %112 = load i32*, i32** %111, align 8
  %113 = load i64, i64* %11, align 8
  %114 = call i64 @memcmp(i32* %110, i32* %112, i64 %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %125

116:                                              ; preds = %109
  %117 = load %struct.paint_info*, %struct.paint_info** %4, align 8
  %118 = call i32* @paint_alloc(%struct.paint_info* %117)
  %119 = load i32**, i32*** %17, align 8
  store i32* %118, i32** %119, align 8
  %120 = load i32**, i32*** %17, align 8
  %121 = load i32*, i32** %120, align 8
  %122 = load i32*, i32** %13, align 8
  %123 = load i64, i64* %11, align 8
  %124 = call i32 @memcpy(i32* %121, i32* %122, i64 %123)
  br label %125

125:                                              ; preds = %116, %109
  br label %126

126:                                              ; preds = %125, %81
  %127 = load %struct.commit*, %struct.commit** %16, align 8
  %128 = getelementptr inbounds %struct.commit, %struct.commit* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = load i32, i32* @BOTTOM, align 4
  %132 = and i32 %130, %131
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %135

134:                                              ; preds = %126
  br label %51

135:                                              ; preds = %126
  %136 = load %struct.commit*, %struct.commit** %16, align 8
  %137 = call i64 @parse_commit(%struct.commit* %136)
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %145

139:                                              ; preds = %135
  %140 = load %struct.commit*, %struct.commit** %16, align 8
  %141 = getelementptr inbounds %struct.commit, %struct.commit* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %141, i32 0, i32 1
  %143 = call i32 @oid_to_hex(i32* %142)
  %144 = call i32 @die(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %143)
  br label %145

145:                                              ; preds = %139, %135
  %146 = load %struct.commit*, %struct.commit** %16, align 8
  %147 = getelementptr inbounds %struct.commit, %struct.commit* %146, i32 0, i32 1
  %148 = load %struct.commit_list*, %struct.commit_list** %147, align 8
  store %struct.commit_list* %148, %struct.commit_list** %15, align 8
  br label %149

149:                                              ; preds = %168, %145
  %150 = load %struct.commit_list*, %struct.commit_list** %15, align 8
  %151 = icmp ne %struct.commit_list* %150, null
  br i1 %151, label %152, label %172

152:                                              ; preds = %149
  %153 = load %struct.commit_list*, %struct.commit_list** %15, align 8
  %154 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %153, i32 0, i32 0
  %155 = load %struct.commit*, %struct.commit** %154, align 8
  %156 = getelementptr inbounds %struct.commit, %struct.commit* %155, i32 0, i32 0
  %157 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = load i32, i32* @SEEN, align 4
  %160 = and i32 %158, %159
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %163

162:                                              ; preds = %152
  br label %168

163:                                              ; preds = %152
  %164 = load %struct.commit_list*, %struct.commit_list** %15, align 8
  %165 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %164, i32 0, i32 0
  %166 = load %struct.commit*, %struct.commit** %165, align 8
  %167 = call i32 @commit_list_insert(%struct.commit* %166, %struct.commit_list** %9)
  br label %168

168:                                              ; preds = %163, %162
  %169 = load %struct.commit_list*, %struct.commit_list** %15, align 8
  %170 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %169, i32 0, i32 1
  %171 = load %struct.commit_list*, %struct.commit_list** %170, align 8
  store %struct.commit_list* %171, %struct.commit_list** %15, align 8
  br label %149

172:                                              ; preds = %149
  br label %51

173:                                              ; preds = %51
  %174 = call i32 (...) @get_max_object_index()
  store i32 %174, i32* %8, align 4
  store i32 0, i32* %7, align 4
  br label %175

175:                                              ; preds = %198, %173
  %176 = load i32, i32* %7, align 4
  %177 = load i32, i32* %8, align 4
  %178 = icmp ult i32 %176, %177
  br i1 %178, label %179, label %201

179:                                              ; preds = %175
  %180 = load i32, i32* %7, align 4
  %181 = call %struct.object* @get_indexed_object(i32 %180)
  store %struct.object* %181, %struct.object** %18, align 8
  %182 = load %struct.object*, %struct.object** %18, align 8
  %183 = icmp ne %struct.object* %182, null
  br i1 %183, label %184, label %197

184:                                              ; preds = %179
  %185 = load %struct.object*, %struct.object** %18, align 8
  %186 = getelementptr inbounds %struct.object, %struct.object* %185, i32 0, i32 0
  %187 = load i64, i64* %186, align 8
  %188 = load i64, i64* @OBJ_COMMIT, align 8
  %189 = icmp eq i64 %187, %188
  br i1 %189, label %190, label %197

190:                                              ; preds = %184
  %191 = load i32, i32* @SEEN, align 4
  %192 = xor i32 %191, -1
  %193 = load %struct.object*, %struct.object** %18, align 8
  %194 = getelementptr inbounds %struct.object, %struct.object* %193, i32 0, i32 1
  %195 = load i32, i32* %194, align 8
  %196 = and i32 %195, %192
  store i32 %196, i32* %194, align 8
  br label %197

197:                                              ; preds = %190, %184, %179
  br label %198

198:                                              ; preds = %197
  %199 = load i32, i32* %7, align 4
  %200 = add i32 %199, 1
  store i32 %200, i32* %7, align 4
  br label %175

201:                                              ; preds = %175
  %202 = load i32*, i32** %13, align 8
  %203 = call i32 @free(i32* %202)
  br label %204

204:                                              ; preds = %201, %30
  ret void
}

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i64 @st_mult(i32, i32) #1

declare dso_local %struct.commit* @lookup_commit_reference_gently(i32, %struct.object_id*, i32) #1

declare dso_local i32* @xmalloc(i64) #1

declare dso_local i32* @paint_alloc(%struct.paint_info*) #1

declare dso_local i32 @memset(i32*, i32, i64) #1

declare dso_local i32 @commit_list_insert(%struct.commit*, %struct.commit_list**) #1

declare dso_local %struct.commit* @pop_commit(%struct.commit_list**) #1

declare dso_local i32** @ref_bitmap_at(i32*, %struct.commit*) #1

declare dso_local i32 @memcpy(i32*, i32*, i64) #1

declare dso_local i64 @memcmp(i32*, i32*, i64) #1

declare dso_local i64 @parse_commit(%struct.commit*) #1

declare dso_local i32 @die(i8*, i32) #1

declare dso_local i32 @oid_to_hex(i32*) #1

declare dso_local i32 @get_max_object_index(...) #1

declare dso_local %struct.object* @get_indexed_object(i32) #1

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
