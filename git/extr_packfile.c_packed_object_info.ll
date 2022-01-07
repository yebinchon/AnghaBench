; ModuleID = '/home/carl/AnghaBench/git/extr_packfile.c_packed_object_info.c'
source_filename = "/home/carl/AnghaBench/git/extr_packfile.c_packed_object_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.repository = type { i32 }
%struct.packed_git = type { i32 }
%struct.object_info = type { i64*, i32*, i32, i64, i64, i64*, i32* }
%struct.pack_window = type { i32 }
%struct.revindex_entry = type { i64 }

@OBJ_BAD = common dso_local global i32 0, align 4
@OBJ_OFS_DELTA = common dso_local global i32 0, align 4
@OBJ_REF_DELTA = common dso_local global i32 0, align 4
@OI_DBCACHED = common dso_local global i32 0, align 4
@OI_PACKED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @packed_object_info(%struct.repository* %0, %struct.packed_git* %1, i64 %2, %struct.object_info* %3) #0 {
  %5 = alloca %struct.repository*, align 8
  %6 = alloca %struct.packed_git*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.object_info*, align 8
  %9 = alloca %struct.pack_window*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.revindex_entry*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  store %struct.repository* %0, %struct.repository** %5, align 8
  store %struct.packed_git* %1, %struct.packed_git** %6, align 8
  store i64 %2, i64* %7, align 8
  store %struct.object_info* %3, %struct.object_info** %8, align 8
  store %struct.pack_window* null, %struct.pack_window** %9, align 8
  %19 = load i64, i64* %7, align 8
  store i64 %19, i64* %11, align 8
  %20 = load %struct.object_info*, %struct.object_info** %8, align 8
  %21 = getelementptr inbounds %struct.object_info, %struct.object_info* %20, i32 0, i32 6
  %22 = load i32*, i32** %21, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %24, label %43

24:                                               ; preds = %4
  %25 = load %struct.repository*, %struct.repository** %5, align 8
  %26 = load %struct.packed_git*, %struct.packed_git** %6, align 8
  %27 = load i64, i64* %7, align 8
  %28 = load %struct.object_info*, %struct.object_info** %8, align 8
  %29 = getelementptr inbounds %struct.object_info, %struct.object_info* %28, i32 0, i32 0
  %30 = load i64*, i64** %29, align 8
  %31 = call i32 @cache_or_unpack_entry(%struct.repository* %25, %struct.packed_git* %26, i64 %27, i64* %30, i32* %12)
  %32 = load %struct.object_info*, %struct.object_info** %8, align 8
  %33 = getelementptr inbounds %struct.object_info, %struct.object_info* %32, i32 0, i32 6
  %34 = load i32*, i32** %33, align 8
  store i32 %31, i32* %34, align 4
  %35 = load %struct.object_info*, %struct.object_info** %8, align 8
  %36 = getelementptr inbounds %struct.object_info, %struct.object_info* %35, i32 0, i32 6
  %37 = load i32*, i32** %36, align 8
  %38 = load i32, i32* %37, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %42, label %40

40:                                               ; preds = %24
  %41 = load i32, i32* @OBJ_BAD, align 4
  store i32 %41, i32* %12, align 4
  br label %42

42:                                               ; preds = %40, %24
  br label %46

43:                                               ; preds = %4
  %44 = load %struct.packed_git*, %struct.packed_git** %6, align 8
  %45 = call i32 @unpack_object_header(%struct.packed_git* %44, %struct.pack_window** %9, i64* %11, i64* %10)
  store i32 %45, i32* %12, align 4
  br label %46

46:                                               ; preds = %43, %42
  %47 = load %struct.object_info*, %struct.object_info** %8, align 8
  %48 = getelementptr inbounds %struct.object_info, %struct.object_info* %47, i32 0, i32 6
  %49 = load i32*, i32** %48, align 8
  %50 = icmp ne i32* %49, null
  br i1 %50, label %95, label %51

51:                                               ; preds = %46
  %52 = load %struct.object_info*, %struct.object_info** %8, align 8
  %53 = getelementptr inbounds %struct.object_info, %struct.object_info* %52, i32 0, i32 0
  %54 = load i64*, i64** %53, align 8
  %55 = icmp ne i64* %54, null
  br i1 %55, label %56, label %95

56:                                               ; preds = %51
  %57 = load i32, i32* %12, align 4
  %58 = load i32, i32* @OBJ_OFS_DELTA, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %64, label %60

60:                                               ; preds = %56
  %61 = load i32, i32* %12, align 4
  %62 = load i32, i32* @OBJ_REF_DELTA, align 4
  %63 = icmp eq i32 %61, %62
  br i1 %63, label %64, label %89

64:                                               ; preds = %60, %56
  %65 = load i64, i64* %11, align 8
  store i64 %65, i64* %13, align 8
  %66 = load %struct.packed_git*, %struct.packed_git** %6, align 8
  %67 = load i32, i32* %12, align 4
  %68 = load i64, i64* %7, align 8
  %69 = call i64 @get_delta_base(%struct.packed_git* %66, %struct.pack_window** %9, i64* %13, i32 %67, i64 %68)
  store i64 %69, i64* %14, align 8
  %70 = load i64, i64* %14, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %74, label %72

72:                                               ; preds = %64
  %73 = load i32, i32* @OBJ_BAD, align 4
  store i32 %73, i32* %12, align 4
  br label %210

74:                                               ; preds = %64
  %75 = load %struct.packed_git*, %struct.packed_git** %6, align 8
  %76 = load i64, i64* %13, align 8
  %77 = call i64 @get_size_from_delta(%struct.packed_git* %75, %struct.pack_window** %9, i64 %76)
  %78 = load %struct.object_info*, %struct.object_info** %8, align 8
  %79 = getelementptr inbounds %struct.object_info, %struct.object_info* %78, i32 0, i32 0
  %80 = load i64*, i64** %79, align 8
  store i64 %77, i64* %80, align 8
  %81 = load %struct.object_info*, %struct.object_info** %8, align 8
  %82 = getelementptr inbounds %struct.object_info, %struct.object_info* %81, i32 0, i32 0
  %83 = load i64*, i64** %82, align 8
  %84 = load i64, i64* %83, align 8
  %85 = icmp eq i64 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %74
  %87 = load i32, i32* @OBJ_BAD, align 4
  store i32 %87, i32* %12, align 4
  br label %210

88:                                               ; preds = %74
  br label %94

89:                                               ; preds = %60
  %90 = load i64, i64* %10, align 8
  %91 = load %struct.object_info*, %struct.object_info** %8, align 8
  %92 = getelementptr inbounds %struct.object_info, %struct.object_info* %91, i32 0, i32 0
  %93 = load i64*, i64** %92, align 8
  store i64 %90, i64* %93, align 8
  br label %94

94:                                               ; preds = %89, %88
  br label %95

95:                                               ; preds = %94, %51, %46
  %96 = load %struct.object_info*, %struct.object_info** %8, align 8
  %97 = getelementptr inbounds %struct.object_info, %struct.object_info* %96, i32 0, i32 5
  %98 = load i64*, i64** %97, align 8
  %99 = icmp ne i64* %98, null
  br i1 %99, label %100, label %113

100:                                              ; preds = %95
  %101 = load %struct.packed_git*, %struct.packed_git** %6, align 8
  %102 = load i64, i64* %7, align 8
  %103 = call %struct.revindex_entry* @find_pack_revindex(%struct.packed_git* %101, i64 %102)
  store %struct.revindex_entry* %103, %struct.revindex_entry** %15, align 8
  %104 = load %struct.revindex_entry*, %struct.revindex_entry** %15, align 8
  %105 = getelementptr inbounds %struct.revindex_entry, %struct.revindex_entry* %104, i64 1
  %106 = getelementptr inbounds %struct.revindex_entry, %struct.revindex_entry* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = load i64, i64* %7, align 8
  %109 = sub nsw i64 %107, %108
  %110 = load %struct.object_info*, %struct.object_info** %8, align 8
  %111 = getelementptr inbounds %struct.object_info, %struct.object_info* %110, i32 0, i32 5
  %112 = load i64*, i64** %111, align 8
  store i64 %109, i64* %112, align 8
  br label %113

113:                                              ; preds = %100, %95
  %114 = load %struct.object_info*, %struct.object_info** %8, align 8
  %115 = getelementptr inbounds %struct.object_info, %struct.object_info* %114, i32 0, i32 1
  %116 = load i32*, i32** %115, align 8
  %117 = icmp ne i32* %116, null
  br i1 %117, label %123, label %118

118:                                              ; preds = %113
  %119 = load %struct.object_info*, %struct.object_info** %8, align 8
  %120 = getelementptr inbounds %struct.object_info, %struct.object_info* %119, i32 0, i32 4
  %121 = load i64, i64* %120, align 8
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %162

123:                                              ; preds = %118, %113
  %124 = load %struct.repository*, %struct.repository** %5, align 8
  %125 = load %struct.packed_git*, %struct.packed_git** %6, align 8
  %126 = load i64, i64* %7, align 8
  %127 = load i32, i32* %12, align 4
  %128 = load i64, i64* %11, align 8
  %129 = call i32 @packed_to_object_type(%struct.repository* %124, %struct.packed_git* %125, i64 %126, i32 %127, %struct.pack_window** %9, i64 %128)
  store i32 %129, i32* %16, align 4
  %130 = load %struct.object_info*, %struct.object_info** %8, align 8
  %131 = getelementptr inbounds %struct.object_info, %struct.object_info* %130, i32 0, i32 1
  %132 = load i32*, i32** %131, align 8
  %133 = icmp ne i32* %132, null
  br i1 %133, label %134, label %139

134:                                              ; preds = %123
  %135 = load i32, i32* %16, align 4
  %136 = load %struct.object_info*, %struct.object_info** %8, align 8
  %137 = getelementptr inbounds %struct.object_info, %struct.object_info* %136, i32 0, i32 1
  %138 = load i32*, i32** %137, align 8
  store i32 %135, i32* %138, align 4
  br label %139

139:                                              ; preds = %134, %123
  %140 = load %struct.object_info*, %struct.object_info** %8, align 8
  %141 = getelementptr inbounds %struct.object_info, %struct.object_info* %140, i32 0, i32 4
  %142 = load i64, i64* %141, align 8
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %156

144:                                              ; preds = %139
  %145 = load i32, i32* %16, align 4
  %146 = call i8* @type_name(i32 %145)
  store i8* %146, i8** %17, align 8
  %147 = load i8*, i8** %17, align 8
  %148 = icmp ne i8* %147, null
  br i1 %148, label %149, label %155

149:                                              ; preds = %144
  %150 = load %struct.object_info*, %struct.object_info** %8, align 8
  %151 = getelementptr inbounds %struct.object_info, %struct.object_info* %150, i32 0, i32 4
  %152 = load i64, i64* %151, align 8
  %153 = load i8*, i8** %17, align 8
  %154 = call i32 @strbuf_addstr(i64 %152, i8* %153)
  br label %155

155:                                              ; preds = %149, %144
  br label %156

156:                                              ; preds = %155, %139
  %157 = load i32, i32* %16, align 4
  %158 = icmp ult i32 %157, 0
  br i1 %158, label %159, label %161

159:                                              ; preds = %156
  %160 = load i32, i32* @OBJ_BAD, align 4
  store i32 %160, i32* %12, align 4
  br label %210

161:                                              ; preds = %156
  br label %162

162:                                              ; preds = %161, %118
  %163 = load %struct.object_info*, %struct.object_info** %8, align 8
  %164 = getelementptr inbounds %struct.object_info, %struct.object_info* %163, i32 0, i32 3
  %165 = load i64, i64* %164, align 8
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %167, label %197

167:                                              ; preds = %162
  %168 = load i32, i32* %12, align 4
  %169 = load i32, i32* @OBJ_OFS_DELTA, align 4
  %170 = icmp eq i32 %168, %169
  br i1 %170, label %175, label %171

171:                                              ; preds = %167
  %172 = load i32, i32* %12, align 4
  %173 = load i32, i32* @OBJ_REF_DELTA, align 4
  %174 = icmp eq i32 %172, %173
  br i1 %174, label %175, label %191

175:                                              ; preds = %171, %167
  %176 = load %struct.packed_git*, %struct.packed_git** %6, align 8
  %177 = load i64, i64* %11, align 8
  %178 = load i32, i32* %12, align 4
  %179 = load i64, i64* %7, align 8
  %180 = call i8* @get_delta_base_sha1(%struct.packed_git* %176, %struct.pack_window** %9, i64 %177, i32 %178, i64 %179)
  store i8* %180, i8** %18, align 8
  %181 = load i8*, i8** %18, align 8
  %182 = icmp ne i8* %181, null
  br i1 %182, label %185, label %183

183:                                              ; preds = %175
  %184 = load i32, i32* @OBJ_BAD, align 4
  store i32 %184, i32* %12, align 4
  br label %210

185:                                              ; preds = %175
  %186 = load %struct.object_info*, %struct.object_info** %8, align 8
  %187 = getelementptr inbounds %struct.object_info, %struct.object_info* %186, i32 0, i32 3
  %188 = load i64, i64* %187, align 8
  %189 = load i8*, i8** %18, align 8
  %190 = call i32 @hashcpy(i64 %188, i8* %189)
  br label %196

191:                                              ; preds = %171
  %192 = load %struct.object_info*, %struct.object_info** %8, align 8
  %193 = getelementptr inbounds %struct.object_info, %struct.object_info* %192, i32 0, i32 3
  %194 = load i64, i64* %193, align 8
  %195 = call i32 @hashclr(i64 %194)
  br label %196

196:                                              ; preds = %191, %185
  br label %197

197:                                              ; preds = %196, %162
  %198 = load %struct.packed_git*, %struct.packed_git** %6, align 8
  %199 = load i64, i64* %7, align 8
  %200 = call i64 @in_delta_base_cache(%struct.packed_git* %198, i64 %199)
  %201 = icmp ne i64 %200, 0
  br i1 %201, label %202, label %204

202:                                              ; preds = %197
  %203 = load i32, i32* @OI_DBCACHED, align 4
  br label %206

204:                                              ; preds = %197
  %205 = load i32, i32* @OI_PACKED, align 4
  br label %206

206:                                              ; preds = %204, %202
  %207 = phi i32 [ %203, %202 ], [ %205, %204 ]
  %208 = load %struct.object_info*, %struct.object_info** %8, align 8
  %209 = getelementptr inbounds %struct.object_info, %struct.object_info* %208, i32 0, i32 2
  store i32 %207, i32* %209, align 8
  br label %210

210:                                              ; preds = %206, %183, %159, %86, %72
  %211 = call i32 @unuse_pack(%struct.pack_window** %9)
  %212 = load i32, i32* %12, align 4
  ret i32 %212
}

declare dso_local i32 @cache_or_unpack_entry(%struct.repository*, %struct.packed_git*, i64, i64*, i32*) #1

declare dso_local i32 @unpack_object_header(%struct.packed_git*, %struct.pack_window**, i64*, i64*) #1

declare dso_local i64 @get_delta_base(%struct.packed_git*, %struct.pack_window**, i64*, i32, i64) #1

declare dso_local i64 @get_size_from_delta(%struct.packed_git*, %struct.pack_window**, i64) #1

declare dso_local %struct.revindex_entry* @find_pack_revindex(%struct.packed_git*, i64) #1

declare dso_local i32 @packed_to_object_type(%struct.repository*, %struct.packed_git*, i64, i32, %struct.pack_window**, i64) #1

declare dso_local i8* @type_name(i32) #1

declare dso_local i32 @strbuf_addstr(i64, i8*) #1

declare dso_local i8* @get_delta_base_sha1(%struct.packed_git*, %struct.pack_window**, i64, i32, i64) #1

declare dso_local i32 @hashcpy(i64, i8*) #1

declare dso_local i32 @hashclr(i64) #1

declare dso_local i64 @in_delta_base_cache(%struct.packed_git*, i64) #1

declare dso_local i32 @unuse_pack(%struct.pack_window**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
