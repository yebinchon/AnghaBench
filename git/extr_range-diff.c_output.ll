; ModuleID = '/home/carl/AnghaBench/git/extr_range-diff.c_output.c'
source_filename = "/home/carl/AnghaBench/git/extr_range-diff.c_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32 }
%struct.string_list = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, %struct.patch_util* }
%struct.patch_util = type { i32, i64 }
%struct.diff_options = type { i32 }

@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 4
@DIFF_FORMAT_NO_OUTPUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.string_list*, %struct.string_list*, %struct.diff_options*)* @output to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @output(%struct.string_list* %0, %struct.string_list* %1, %struct.diff_options* %2) #0 {
  %4 = alloca %struct.string_list*, align 8
  %5 = alloca %struct.string_list*, align 8
  %6 = alloca %struct.diff_options*, align 8
  %7 = alloca %struct.strbuf, align 4
  %8 = alloca %struct.strbuf, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.patch_util*, align 8
  %13 = alloca %struct.patch_util*, align 8
  store %struct.string_list* %0, %struct.string_list** %4, align 8
  store %struct.string_list* %1, %struct.string_list** %5, align 8
  store %struct.diff_options* %2, %struct.diff_options** %6, align 8
  %14 = bitcast %struct.strbuf* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %14, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 4, i1 false)
  %15 = bitcast %struct.strbuf* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %15, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 4, i1 false)
  %16 = load %struct.string_list*, %struct.string_list** %4, align 8
  %17 = getelementptr inbounds %struct.string_list, %struct.string_list* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.string_list*, %struct.string_list** %5, align 8
  %20 = getelementptr inbounds %struct.string_list, %struct.string_list* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp sgt i32 %18, %21
  br i1 %22, label %23, label %27

23:                                               ; preds = %3
  %24 = load %struct.string_list*, %struct.string_list** %4, align 8
  %25 = getelementptr inbounds %struct.string_list, %struct.string_list* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  br label %31

27:                                               ; preds = %3
  %28 = load %struct.string_list*, %struct.string_list** %5, align 8
  %29 = getelementptr inbounds %struct.string_list, %struct.string_list* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  br label %31

31:                                               ; preds = %27, %23
  %32 = phi i32 [ %26, %23 ], [ %30, %27 ]
  %33 = add nsw i32 1, %32
  %34 = call i32 @decimal_width(i32 %33)
  store i32 %34, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %35

35:                                               ; preds = %223, %127, %31
  %36 = load i32, i32* %10, align 4
  %37 = load %struct.string_list*, %struct.string_list** %4, align 8
  %38 = getelementptr inbounds %struct.string_list, %struct.string_list* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp slt i32 %36, %39
  br i1 %40, label %47, label %41

41:                                               ; preds = %35
  %42 = load i32, i32* %11, align 4
  %43 = load %struct.string_list*, %struct.string_list** %5, align 8
  %44 = getelementptr inbounds %struct.string_list, %struct.string_list* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = icmp slt i32 %42, %45
  br label %47

47:                                               ; preds = %41, %35
  %48 = phi i1 [ true, %35 ], [ %46, %41 ]
  br i1 %48, label %49, label %224

49:                                               ; preds = %47
  %50 = load i32, i32* %10, align 4
  %51 = load %struct.string_list*, %struct.string_list** %4, align 8
  %52 = getelementptr inbounds %struct.string_list, %struct.string_list* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = icmp slt i32 %50, %53
  br i1 %54, label %55, label %64

55:                                               ; preds = %49
  %56 = load %struct.string_list*, %struct.string_list** %4, align 8
  %57 = getelementptr inbounds %struct.string_list, %struct.string_list* %56, i32 0, i32 1
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = load i32, i32* %10, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 1
  %63 = load %struct.patch_util*, %struct.patch_util** %62, align 8
  br label %65

64:                                               ; preds = %49
  br label %65

65:                                               ; preds = %64, %55
  %66 = phi %struct.patch_util* [ %63, %55 ], [ null, %64 ]
  store %struct.patch_util* %66, %struct.patch_util** %12, align 8
  %67 = load i32, i32* %11, align 4
  %68 = load %struct.string_list*, %struct.string_list** %5, align 8
  %69 = getelementptr inbounds %struct.string_list, %struct.string_list* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = icmp slt i32 %67, %70
  br i1 %71, label %72, label %81

72:                                               ; preds = %65
  %73 = load %struct.string_list*, %struct.string_list** %5, align 8
  %74 = getelementptr inbounds %struct.string_list, %struct.string_list* %73, i32 0, i32 1
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** %74, align 8
  %76 = load i32, i32* %11, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 1
  %80 = load %struct.patch_util*, %struct.patch_util** %79, align 8
  br label %82

81:                                               ; preds = %65
  br label %82

82:                                               ; preds = %81, %72
  %83 = phi %struct.patch_util* [ %80, %72 ], [ null, %81 ]
  store %struct.patch_util* %83, %struct.patch_util** %13, align 8
  br label %84

84:                                               ; preds = %114, %82
  %85 = load i32, i32* %10, align 4
  %86 = load %struct.string_list*, %struct.string_list** %4, align 8
  %87 = getelementptr inbounds %struct.string_list, %struct.string_list* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = icmp slt i32 %85, %88
  br i1 %89, label %90, label %95

90:                                               ; preds = %84
  %91 = load %struct.patch_util*, %struct.patch_util** %12, align 8
  %92 = getelementptr inbounds %struct.patch_util, %struct.patch_util* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = icmp ne i32 %93, 0
  br label %95

95:                                               ; preds = %90, %84
  %96 = phi i1 [ false, %84 ], [ %94, %90 ]
  br i1 %96, label %97, label %116

97:                                               ; preds = %95
  %98 = load i32, i32* %10, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %10, align 4
  %100 = load %struct.string_list*, %struct.string_list** %4, align 8
  %101 = getelementptr inbounds %struct.string_list, %struct.string_list* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = icmp slt i32 %99, %102
  br i1 %103, label %104, label %113

104:                                              ; preds = %97
  %105 = load %struct.string_list*, %struct.string_list** %4, align 8
  %106 = getelementptr inbounds %struct.string_list, %struct.string_list* %105, i32 0, i32 1
  %107 = load %struct.TYPE_2__*, %struct.TYPE_2__** %106, align 8
  %108 = load i32, i32* %10, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i64 %109
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i32 0, i32 1
  %112 = load %struct.patch_util*, %struct.patch_util** %111, align 8
  br label %114

113:                                              ; preds = %97
  br label %114

114:                                              ; preds = %113, %104
  %115 = phi %struct.patch_util* [ %112, %104 ], [ null, %113 ]
  store %struct.patch_util* %115, %struct.patch_util** %12, align 8
  br label %84

116:                                              ; preds = %95
  %117 = load i32, i32* %10, align 4
  %118 = load %struct.string_list*, %struct.string_list** %4, align 8
  %119 = getelementptr inbounds %struct.string_list, %struct.string_list* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = icmp slt i32 %117, %120
  br i1 %121, label %122, label %134

122:                                              ; preds = %116
  %123 = load %struct.patch_util*, %struct.patch_util** %12, align 8
  %124 = getelementptr inbounds %struct.patch_util, %struct.patch_util* %123, i32 0, i32 1
  %125 = load i64, i64* %124, align 8
  %126 = icmp slt i64 %125, 0
  br i1 %126, label %127, label %134

127:                                              ; preds = %122
  %128 = load %struct.diff_options*, %struct.diff_options** %6, align 8
  %129 = load i32, i32* %9, align 4
  %130 = load %struct.patch_util*, %struct.patch_util** %12, align 8
  %131 = call i32 @output_pair_header(%struct.diff_options* %128, i32 %129, %struct.strbuf* %7, %struct.strbuf* %8, %struct.patch_util* %130, %struct.patch_util* null)
  %132 = load i32, i32* %10, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %10, align 4
  br label %35

134:                                              ; preds = %122, %116
  br label %135

135:                                              ; preds = %169, %134
  %136 = load i32, i32* %11, align 4
  %137 = load %struct.string_list*, %struct.string_list** %5, align 8
  %138 = getelementptr inbounds %struct.string_list, %struct.string_list* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = icmp slt i32 %136, %139
  br i1 %140, label %141, label %146

141:                                              ; preds = %135
  %142 = load %struct.patch_util*, %struct.patch_util** %13, align 8
  %143 = getelementptr inbounds %struct.patch_util, %struct.patch_util* %142, i32 0, i32 1
  %144 = load i64, i64* %143, align 8
  %145 = icmp slt i64 %144, 0
  br label %146

146:                                              ; preds = %141, %135
  %147 = phi i1 [ false, %135 ], [ %145, %141 ]
  br i1 %147, label %148, label %171

148:                                              ; preds = %146
  %149 = load %struct.diff_options*, %struct.diff_options** %6, align 8
  %150 = load i32, i32* %9, align 4
  %151 = load %struct.patch_util*, %struct.patch_util** %13, align 8
  %152 = call i32 @output_pair_header(%struct.diff_options* %149, i32 %150, %struct.strbuf* %7, %struct.strbuf* %8, %struct.patch_util* null, %struct.patch_util* %151)
  %153 = load i32, i32* %11, align 4
  %154 = add nsw i32 %153, 1
  store i32 %154, i32* %11, align 4
  %155 = load %struct.string_list*, %struct.string_list** %5, align 8
  %156 = getelementptr inbounds %struct.string_list, %struct.string_list* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = icmp slt i32 %154, %157
  br i1 %158, label %159, label %168

159:                                              ; preds = %148
  %160 = load %struct.string_list*, %struct.string_list** %5, align 8
  %161 = getelementptr inbounds %struct.string_list, %struct.string_list* %160, i32 0, i32 1
  %162 = load %struct.TYPE_2__*, %struct.TYPE_2__** %161, align 8
  %163 = load i32, i32* %11, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %162, i64 %164
  %166 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %165, i32 0, i32 1
  %167 = load %struct.patch_util*, %struct.patch_util** %166, align 8
  br label %169

168:                                              ; preds = %148
  br label %169

169:                                              ; preds = %168, %159
  %170 = phi %struct.patch_util* [ %167, %159 ], [ null, %168 ]
  store %struct.patch_util* %170, %struct.patch_util** %13, align 8
  br label %135

171:                                              ; preds = %146
  %172 = load i32, i32* %11, align 4
  %173 = load %struct.string_list*, %struct.string_list** %5, align 8
  %174 = getelementptr inbounds %struct.string_list, %struct.string_list* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 8
  %176 = icmp slt i32 %172, %175
  br i1 %176, label %177, label %223

177:                                              ; preds = %171
  %178 = load %struct.string_list*, %struct.string_list** %4, align 8
  %179 = getelementptr inbounds %struct.string_list, %struct.string_list* %178, i32 0, i32 1
  %180 = load %struct.TYPE_2__*, %struct.TYPE_2__** %179, align 8
  %181 = load %struct.patch_util*, %struct.patch_util** %13, align 8
  %182 = getelementptr inbounds %struct.patch_util, %struct.patch_util* %181, i32 0, i32 1
  %183 = load i64, i64* %182, align 8
  %184 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %180, i64 %183
  %185 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %184, i32 0, i32 1
  %186 = load %struct.patch_util*, %struct.patch_util** %185, align 8
  store %struct.patch_util* %186, %struct.patch_util** %12, align 8
  %187 = load %struct.diff_options*, %struct.diff_options** %6, align 8
  %188 = load i32, i32* %9, align 4
  %189 = load %struct.patch_util*, %struct.patch_util** %12, align 8
  %190 = load %struct.patch_util*, %struct.patch_util** %13, align 8
  %191 = call i32 @output_pair_header(%struct.diff_options* %187, i32 %188, %struct.strbuf* %7, %struct.strbuf* %8, %struct.patch_util* %189, %struct.patch_util* %190)
  %192 = load %struct.diff_options*, %struct.diff_options** %6, align 8
  %193 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 4
  %195 = load i32, i32* @DIFF_FORMAT_NO_OUTPUT, align 4
  %196 = and i32 %194, %195
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %218, label %198

198:                                              ; preds = %177
  %199 = load %struct.string_list*, %struct.string_list** %4, align 8
  %200 = getelementptr inbounds %struct.string_list, %struct.string_list* %199, i32 0, i32 1
  %201 = load %struct.TYPE_2__*, %struct.TYPE_2__** %200, align 8
  %202 = load %struct.patch_util*, %struct.patch_util** %13, align 8
  %203 = getelementptr inbounds %struct.patch_util, %struct.patch_util* %202, i32 0, i32 1
  %204 = load i64, i64* %203, align 8
  %205 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %201, i64 %204
  %206 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 8
  %208 = load %struct.string_list*, %struct.string_list** %5, align 8
  %209 = getelementptr inbounds %struct.string_list, %struct.string_list* %208, i32 0, i32 1
  %210 = load %struct.TYPE_2__*, %struct.TYPE_2__** %209, align 8
  %211 = load i32, i32* %11, align 4
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %210, i64 %212
  %214 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %213, i32 0, i32 0
  %215 = load i32, i32* %214, align 8
  %216 = load %struct.diff_options*, %struct.diff_options** %6, align 8
  %217 = call i32 @patch_diff(i32 %207, i32 %215, %struct.diff_options* %216)
  br label %218

218:                                              ; preds = %198, %177
  %219 = load %struct.patch_util*, %struct.patch_util** %12, align 8
  %220 = getelementptr inbounds %struct.patch_util, %struct.patch_util* %219, i32 0, i32 0
  store i32 1, i32* %220, align 8
  %221 = load i32, i32* %11, align 4
  %222 = add nsw i32 %221, 1
  store i32 %222, i32* %11, align 4
  br label %223

223:                                              ; preds = %218, %171
  br label %35

224:                                              ; preds = %47
  %225 = call i32 @strbuf_release(%struct.strbuf* %7)
  %226 = call i32 @strbuf_release(%struct.strbuf* %8)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @decimal_width(i32) #2

declare dso_local i32 @output_pair_header(%struct.diff_options*, i32, %struct.strbuf*, %struct.strbuf*, %struct.patch_util*, %struct.patch_util*) #2

declare dso_local i32 @patch_diff(i32, i32, %struct.diff_options*) #2

declare dso_local i32 @strbuf_release(%struct.strbuf*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
