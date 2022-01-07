; ModuleID = '/home/carl/AnghaBench/git/extr_revision.c_handle_commit.c'
source_filename = "/home/carl/AnghaBench/git/extr_revision.c_handle_commit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.commit = type { i32 }
%struct.rev_info = type { i32, i32, i32, i32, i64, i32, i64, i64, i64 }
%struct.object_array_entry = type { i8*, i8*, i32, %struct.object* }
%struct.object = type { i64, i64 }
%struct.tag = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.tree = type { i32 }

@OBJ_TAG = common dso_local global i64 0, align 8
@UNINTERESTING = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [14 x i8] c"bad object %s\00", align 1
@OBJ_COMMIT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [26 x i8] c"unable to parse commit %s\00", align 1
@the_repository = common dso_local global i32 0, align 4
@OBJ_TREE = common dso_local global i64 0, align 8
@OBJ_BLOB = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [21 x i8] c"%s is unknown object\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.commit* (%struct.rev_info*, %struct.object_array_entry*)* @handle_commit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.commit* @handle_commit(%struct.rev_info* %0, %struct.object_array_entry* %1) #0 {
  %3 = alloca %struct.commit*, align 8
  %4 = alloca %struct.rev_info*, align 8
  %5 = alloca %struct.object_array_entry*, align 8
  %6 = alloca %struct.object*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca %struct.tag*, align 8
  %12 = alloca %struct.commit*, align 8
  %13 = alloca i8**, align 8
  %14 = alloca %struct.tree*, align 8
  store %struct.rev_info* %0, %struct.rev_info** %4, align 8
  store %struct.object_array_entry* %1, %struct.object_array_entry** %5, align 8
  %15 = load %struct.object_array_entry*, %struct.object_array_entry** %5, align 8
  %16 = getelementptr inbounds %struct.object_array_entry, %struct.object_array_entry* %15, i32 0, i32 3
  %17 = load %struct.object*, %struct.object** %16, align 8
  store %struct.object* %17, %struct.object** %6, align 8
  %18 = load %struct.object_array_entry*, %struct.object_array_entry** %5, align 8
  %19 = getelementptr inbounds %struct.object_array_entry, %struct.object_array_entry* %18, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8
  store i8* %20, i8** %7, align 8
  %21 = load %struct.object_array_entry*, %struct.object_array_entry** %5, align 8
  %22 = getelementptr inbounds %struct.object_array_entry, %struct.object_array_entry* %21, i32 0, i32 1
  %23 = load i8*, i8** %22, align 8
  store i8* %23, i8** %8, align 8
  %24 = load %struct.object_array_entry*, %struct.object_array_entry** %5, align 8
  %25 = getelementptr inbounds %struct.object_array_entry, %struct.object_array_entry* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  store i32 %26, i32* %9, align 4
  %27 = load %struct.object*, %struct.object** %6, align 8
  %28 = getelementptr inbounds %struct.object, %struct.object* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  store i64 %29, i64* %10, align 8
  br label %30

30:                                               ; preds = %95, %2
  %31 = load %struct.object*, %struct.object** %6, align 8
  %32 = getelementptr inbounds %struct.object, %struct.object* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @OBJ_TAG, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %101

36:                                               ; preds = %30
  %37 = load %struct.object*, %struct.object** %6, align 8
  %38 = bitcast %struct.object* %37 to %struct.tag*
  store %struct.tag* %38, %struct.tag** %11, align 8
  %39 = load %struct.rev_info*, %struct.rev_info** %4, align 8
  %40 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %39, i32 0, i32 8
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %55

43:                                               ; preds = %36
  %44 = load i64, i64* %10, align 8
  %45 = load i64, i64* @UNINTERESTING, align 8
  %46 = and i64 %44, %45
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %55, label %48

48:                                               ; preds = %43
  %49 = load %struct.rev_info*, %struct.rev_info** %4, align 8
  %50 = load %struct.object*, %struct.object** %6, align 8
  %51 = load %struct.tag*, %struct.tag** %11, align 8
  %52 = getelementptr inbounds %struct.tag, %struct.tag* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @add_pending_object(%struct.rev_info* %49, %struct.object* %50, i32 %53)
  br label %55

55:                                               ; preds = %48, %43, %36
  %56 = load %struct.rev_info*, %struct.rev_info** %4, align 8
  %57 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.tag*, %struct.tag** %11, align 8
  %60 = call i32 @get_tagged_oid(%struct.tag* %59)
  %61 = call %struct.object* @parse_object(i32 %58, i32 %60)
  store %struct.object* %61, %struct.object** %6, align 8
  %62 = load %struct.object*, %struct.object** %6, align 8
  %63 = icmp ne %struct.object* %62, null
  br i1 %63, label %95, label %64

64:                                               ; preds = %55
  %65 = load %struct.rev_info*, %struct.rev_info** %4, align 8
  %66 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %65, i32 0, i32 7
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %74, label %69

69:                                               ; preds = %64
  %70 = load i64, i64* %10, align 8
  %71 = load i64, i64* @UNINTERESTING, align 8
  %72 = and i64 %70, %71
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %69, %64
  store %struct.commit* null, %struct.commit** %3, align 8
  br label %217

75:                                               ; preds = %69
  %76 = load %struct.rev_info*, %struct.rev_info** %4, align 8
  %77 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %76, i32 0, i32 6
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %88

80:                                               ; preds = %75
  %81 = load %struct.tag*, %struct.tag** %11, align 8
  %82 = getelementptr inbounds %struct.tag, %struct.tag* %81, i32 0, i32 0
  %83 = load %struct.TYPE_2__*, %struct.TYPE_2__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 0
  %85 = call i64 @is_promisor_object(i32* %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %80
  store %struct.commit* null, %struct.commit** %3, align 8
  br label %217

88:                                               ; preds = %80, %75
  %89 = load %struct.tag*, %struct.tag** %11, align 8
  %90 = getelementptr inbounds %struct.tag, %struct.tag* %89, i32 0, i32 0
  %91 = load %struct.TYPE_2__*, %struct.TYPE_2__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 0
  %93 = call i8* @oid_to_hex(i32* %92)
  %94 = call i32 @die(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* %93)
  br label %95

95:                                               ; preds = %88, %55
  %96 = load i64, i64* %10, align 8
  %97 = load %struct.object*, %struct.object** %6, align 8
  %98 = getelementptr inbounds %struct.object, %struct.object* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = or i64 %99, %96
  store i64 %100, i64* %98, align 8
  store i8* null, i8** %8, align 8
  store i32 0, i32* %9, align 4
  br label %30

101:                                              ; preds = %30
  %102 = load %struct.object*, %struct.object** %6, align 8
  %103 = getelementptr inbounds %struct.object, %struct.object* %102, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* @OBJ_COMMIT, align 8
  %106 = icmp eq i64 %104, %105
  br i1 %106, label %107, label %157

107:                                              ; preds = %101
  %108 = load %struct.object*, %struct.object** %6, align 8
  %109 = bitcast %struct.object* %108 to %struct.commit*
  store %struct.commit* %109, %struct.commit** %12, align 8
  %110 = load %struct.commit*, %struct.commit** %12, align 8
  %111 = call i64 @parse_commit(%struct.commit* %110)
  %112 = icmp slt i64 %111, 0
  br i1 %112, label %113, label %116

113:                                              ; preds = %107
  %114 = load i8*, i8** %7, align 8
  %115 = call i32 @die(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i8* %114)
  br label %116

116:                                              ; preds = %113, %107
  %117 = load i64, i64* %10, align 8
  %118 = load i64, i64* @UNINTERESTING, align 8
  %119 = and i64 %117, %118
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %136

121:                                              ; preds = %116
  %122 = load %struct.commit*, %struct.commit** %12, align 8
  %123 = call i32 @mark_parents_uninteresting(%struct.commit* %122)
  %124 = load %struct.rev_info*, %struct.rev_info** %4, align 8
  %125 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %124, i32 0, i32 5
  %126 = load i32, i32* %125, align 8
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %132

128:                                              ; preds = %121
  %129 = load i32, i32* @the_repository, align 4
  %130 = call i32 @generation_numbers_enabled(i32 %129)
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %135, label %132

132:                                              ; preds = %128, %121
  %133 = load %struct.rev_info*, %struct.rev_info** %4, align 8
  %134 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %133, i32 0, i32 0
  store i32 1, i32* %134, align 8
  br label %135

135:                                              ; preds = %132, %128
  br label %136

136:                                              ; preds = %135, %116
  %137 = load %struct.rev_info*, %struct.rev_info** %4, align 8
  %138 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %137, i32 0, i32 4
  %139 = load i64, i64* %138, align 8
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %155

141:                                              ; preds = %136
  %142 = load %struct.rev_info*, %struct.rev_info** %4, align 8
  %143 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %142, i32 0, i32 4
  %144 = load i64, i64* %143, align 8
  %145 = load %struct.commit*, %struct.commit** %12, align 8
  %146 = call i8** @revision_sources_at(i64 %144, %struct.commit* %145)
  store i8** %146, i8*** %13, align 8
  %147 = load i8**, i8*** %13, align 8
  %148 = load i8*, i8** %147, align 8
  %149 = icmp ne i8* %148, null
  br i1 %149, label %154, label %150

150:                                              ; preds = %141
  %151 = load i8*, i8** %7, align 8
  %152 = call i8* @xstrdup(i8* %151)
  %153 = load i8**, i8*** %13, align 8
  store i8* %152, i8** %153, align 8
  br label %154

154:                                              ; preds = %150, %141
  br label %155

155:                                              ; preds = %154, %136
  %156 = load %struct.commit*, %struct.commit** %12, align 8
  store %struct.commit* %156, %struct.commit** %3, align 8
  br label %217

157:                                              ; preds = %101
  %158 = load %struct.object*, %struct.object** %6, align 8
  %159 = getelementptr inbounds %struct.object, %struct.object* %158, i32 0, i32 1
  %160 = load i64, i64* %159, align 8
  %161 = load i64, i64* @OBJ_TREE, align 8
  %162 = icmp eq i64 %160, %161
  br i1 %162, label %163, label %189

163:                                              ; preds = %157
  %164 = load %struct.object*, %struct.object** %6, align 8
  %165 = bitcast %struct.object* %164 to %struct.tree*
  store %struct.tree* %165, %struct.tree** %14, align 8
  %166 = load %struct.rev_info*, %struct.rev_info** %4, align 8
  %167 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %166, i32 0, i32 3
  %168 = load i32, i32* %167, align 4
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %171, label %170

170:                                              ; preds = %163
  store %struct.commit* null, %struct.commit** %3, align 8
  br label %217

171:                                              ; preds = %163
  %172 = load i64, i64* %10, align 8
  %173 = load i64, i64* @UNINTERESTING, align 8
  %174 = and i64 %172, %173
  %175 = icmp ne i64 %174, 0
  br i1 %175, label %176, label %182

176:                                              ; preds = %171
  %177 = load %struct.rev_info*, %struct.rev_info** %4, align 8
  %178 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %177, i32 0, i32 2
  %179 = load i32, i32* %178, align 8
  %180 = load %struct.tree*, %struct.tree** %14, align 8
  %181 = call i32 @mark_tree_contents_uninteresting(i32 %179, %struct.tree* %180)
  store %struct.commit* null, %struct.commit** %3, align 8
  br label %217

182:                                              ; preds = %171
  %183 = load %struct.rev_info*, %struct.rev_info** %4, align 8
  %184 = load %struct.object*, %struct.object** %6, align 8
  %185 = load i8*, i8** %7, align 8
  %186 = load i32, i32* %9, align 4
  %187 = load i8*, i8** %8, align 8
  %188 = call i32 @add_pending_object_with_path(%struct.rev_info* %183, %struct.object* %184, i8* %185, i32 %186, i8* %187)
  store %struct.commit* null, %struct.commit** %3, align 8
  br label %217

189:                                              ; preds = %157
  %190 = load %struct.object*, %struct.object** %6, align 8
  %191 = getelementptr inbounds %struct.object, %struct.object* %190, i32 0, i32 1
  %192 = load i64, i64* %191, align 8
  %193 = load i64, i64* @OBJ_BLOB, align 8
  %194 = icmp eq i64 %192, %193
  br i1 %194, label %195, label %214

195:                                              ; preds = %189
  %196 = load %struct.rev_info*, %struct.rev_info** %4, align 8
  %197 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %196, i32 0, i32 1
  %198 = load i32, i32* %197, align 4
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %201, label %200

200:                                              ; preds = %195
  store %struct.commit* null, %struct.commit** %3, align 8
  br label %217

201:                                              ; preds = %195
  %202 = load i64, i64* %10, align 8
  %203 = load i64, i64* @UNINTERESTING, align 8
  %204 = and i64 %202, %203
  %205 = icmp ne i64 %204, 0
  br i1 %205, label %206, label %207

206:                                              ; preds = %201
  store %struct.commit* null, %struct.commit** %3, align 8
  br label %217

207:                                              ; preds = %201
  %208 = load %struct.rev_info*, %struct.rev_info** %4, align 8
  %209 = load %struct.object*, %struct.object** %6, align 8
  %210 = load i8*, i8** %7, align 8
  %211 = load i32, i32* %9, align 4
  %212 = load i8*, i8** %8, align 8
  %213 = call i32 @add_pending_object_with_path(%struct.rev_info* %208, %struct.object* %209, i8* %210, i32 %211, i8* %212)
  store %struct.commit* null, %struct.commit** %3, align 8
  br label %217

214:                                              ; preds = %189
  %215 = load i8*, i8** %7, align 8
  %216 = call i32 @die(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i8* %215)
  br label %217

217:                                              ; preds = %214, %207, %206, %200, %182, %176, %170, %155, %87, %74
  %218 = load %struct.commit*, %struct.commit** %3, align 8
  ret %struct.commit* %218
}

declare dso_local i32 @add_pending_object(%struct.rev_info*, %struct.object*, i32) #1

declare dso_local %struct.object* @parse_object(i32, i32) #1

declare dso_local i32 @get_tagged_oid(%struct.tag*) #1

declare dso_local i64 @is_promisor_object(i32*) #1

declare dso_local i32 @die(i8*, i8*) #1

declare dso_local i8* @oid_to_hex(i32*) #1

declare dso_local i64 @parse_commit(%struct.commit*) #1

declare dso_local i32 @mark_parents_uninteresting(%struct.commit*) #1

declare dso_local i32 @generation_numbers_enabled(i32) #1

declare dso_local i8** @revision_sources_at(i64, %struct.commit*) #1

declare dso_local i8* @xstrdup(i8*) #1

declare dso_local i32 @mark_tree_contents_uninteresting(i32, %struct.tree*) #1

declare dso_local i32 @add_pending_object_with_path(%struct.rev_info*, %struct.object*, i8*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
