; ModuleID = '/home/carl/AnghaBench/git/extr_sequencer.c_label_oid.c'
source_filename = "/home/carl/AnghaBench/git/extr_sequencer.c_label_oid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }
%struct.object_id = type { i32 }
%struct.label_state = type { i32, i32, %struct.strbuf }
%struct.strbuf = type { i8* }
%struct.labels_entry = type { i8*, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.string_entry = type { i8*, %struct.TYPE_5__ }

@GIT_MAX_HEXSZ = common dso_local global i32 0, align 4
@default_abbrev = common dso_local global i32 0, align 4
@the_hash_algo = common dso_local global %struct.TYPE_4__* null, align 8
@.str = private unnamed_addr constant [4 x i8] c"-%d\00", align 1
@string = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.object_id*, i8*, %struct.label_state*)* @label_oid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @label_oid(%struct.object_id* %0, i8* %1, %struct.label_state* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.object_id*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.label_state*, align 8
  %8 = alloca %struct.labels_entry*, align 8
  %9 = alloca %struct.string_entry*, align 8
  %10 = alloca %struct.object_id, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i8, align 1
  %16 = alloca %struct.strbuf*, align 8
  store %struct.object_id* %0, %struct.object_id** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.label_state* %2, %struct.label_state** %7, align 8
  %17 = load %struct.label_state*, %struct.label_state** %7, align 8
  %18 = getelementptr inbounds %struct.label_state, %struct.label_state* %17, i32 0, i32 0
  %19 = load %struct.object_id*, %struct.object_id** %5, align 8
  %20 = call %struct.string_entry* @oidmap_get(i32* %18, %struct.object_id* %19)
  store %struct.string_entry* %20, %struct.string_entry** %9, align 8
  %21 = load %struct.string_entry*, %struct.string_entry** %9, align 8
  %22 = icmp ne %struct.string_entry* %21, null
  br i1 %22, label %23, label %27

23:                                               ; preds = %3
  %24 = load %struct.string_entry*, %struct.string_entry** %9, align 8
  %25 = getelementptr inbounds %struct.string_entry, %struct.string_entry* %24, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  store i8* %26, i8** %4, align 8
  br label %190

27:                                               ; preds = %3
  %28 = load i8*, i8** %6, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %93, label %30

30:                                               ; preds = %27
  %31 = load %struct.label_state*, %struct.label_state** %7, align 8
  %32 = getelementptr inbounds %struct.label_state, %struct.label_state* %31, i32 0, i32 2
  %33 = call i32 @strbuf_reset(%struct.strbuf* %32)
  %34 = load %struct.label_state*, %struct.label_state** %7, align 8
  %35 = getelementptr inbounds %struct.label_state, %struct.label_state* %34, i32 0, i32 2
  %36 = load i32, i32* @GIT_MAX_HEXSZ, align 4
  %37 = call i32 @strbuf_grow(%struct.strbuf* %35, i32 %36)
  %38 = load %struct.label_state*, %struct.label_state** %7, align 8
  %39 = getelementptr inbounds %struct.label_state, %struct.label_state* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %39, i32 0, i32 0
  %41 = load i8*, i8** %40, align 8
  store i8* %41, i8** %13, align 8
  store i8* %41, i8** %6, align 8
  %42 = load i8*, i8** %13, align 8
  %43 = load %struct.object_id*, %struct.object_id** %5, align 8
  %44 = load i32, i32* @default_abbrev, align 4
  %45 = call i32 @find_unique_abbrev_r(i8* %42, %struct.object_id* %43, i32 %44)
  %46 = load %struct.label_state*, %struct.label_state** %7, align 8
  %47 = getelementptr inbounds %struct.label_state, %struct.label_state* %46, i32 0, i32 1
  %48 = load i8*, i8** %13, align 8
  %49 = call i32 @strihash(i8* %48)
  %50 = load i8*, i8** %13, align 8
  %51 = call i64 @hashmap_get_from_hash(i32* %47, i32 %49, i8* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %92

53:                                               ; preds = %30
  %54 = load i8*, i8** %13, align 8
  %55 = call i32 @strlen(i8* %54)
  %56 = add nsw i32 %55, 1
  %57 = sext i32 %56 to i64
  store i64 %57, i64* %14, align 8
  %58 = load i8*, i8** %13, align 8
  %59 = load %struct.object_id*, %struct.object_id** %5, align 8
  %60 = call i32 @oid_to_hex_r(i8* %58, %struct.object_id* %59)
  br label %61

61:                                               ; preds = %88, %53
  %62 = load i64, i64* %14, align 8
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** @the_hash_algo, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = icmp ult i64 %62, %65
  br i1 %66, label %67, label %91

67:                                               ; preds = %61
  %68 = load i8*, i8** %13, align 8
  %69 = load i64, i64* %14, align 8
  %70 = getelementptr inbounds i8, i8* %68, i64 %69
  %71 = load i8, i8* %70, align 1
  store i8 %71, i8* %15, align 1
  %72 = load i8*, i8** %13, align 8
  %73 = load i64, i64* %14, align 8
  %74 = getelementptr inbounds i8, i8* %72, i64 %73
  store i8 0, i8* %74, align 1
  %75 = load %struct.label_state*, %struct.label_state** %7, align 8
  %76 = getelementptr inbounds %struct.label_state, %struct.label_state* %75, i32 0, i32 1
  %77 = load i8*, i8** %13, align 8
  %78 = call i32 @strihash(i8* %77)
  %79 = load i8*, i8** %13, align 8
  %80 = call i64 @hashmap_get_from_hash(i32* %76, i32 %78, i8* %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %83, label %82

82:                                               ; preds = %67
  br label %91

83:                                               ; preds = %67
  %84 = load i8, i8* %15, align 1
  %85 = load i8*, i8** %13, align 8
  %86 = load i64, i64* %14, align 8
  %87 = getelementptr inbounds i8, i8* %85, i64 %86
  store i8 %84, i8* %87, align 1
  br label %88

88:                                               ; preds = %83
  %89 = load i64, i64* %14, align 8
  %90 = add i64 %89, 1
  store i64 %90, i64* %14, align 8
  br label %61

91:                                               ; preds = %82, %61
  br label %92

92:                                               ; preds = %91, %30
  br label %158

93:                                               ; preds = %27
  %94 = load i8*, i8** %6, align 8
  %95 = call i32 @strlen(i8* %94)
  %96 = sext i32 %95 to i64
  store i64 %96, i64* %11, align 8
  %97 = load %struct.TYPE_4__*, %struct.TYPE_4__** @the_hash_algo, align 8
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = icmp eq i64 %96, %99
  br i1 %100, label %101, label %105

101:                                              ; preds = %93
  %102 = load i8*, i8** %6, align 8
  %103 = call i32 @get_oid_hex(i8* %102, %struct.object_id* %10)
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %121

105:                                              ; preds = %101, %93
  %106 = load i64, i64* %11, align 8
  %107 = icmp eq i64 %106, 1
  br i1 %107, label %108, label %113

108:                                              ; preds = %105
  %109 = load i8*, i8** %6, align 8
  %110 = load i8, i8* %109, align 1
  %111 = sext i8 %110 to i32
  %112 = icmp eq i32 %111, 35
  br i1 %112, label %121, label %113

113:                                              ; preds = %108, %105
  %114 = load %struct.label_state*, %struct.label_state** %7, align 8
  %115 = getelementptr inbounds %struct.label_state, %struct.label_state* %114, i32 0, i32 1
  %116 = load i8*, i8** %6, align 8
  %117 = call i32 @strihash(i8* %116)
  %118 = load i8*, i8** %6, align 8
  %119 = call i64 @hashmap_get_from_hash(i32* %115, i32 %117, i8* %118)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %157

121:                                              ; preds = %113, %108, %101
  %122 = load %struct.label_state*, %struct.label_state** %7, align 8
  %123 = getelementptr inbounds %struct.label_state, %struct.label_state* %122, i32 0, i32 2
  store %struct.strbuf* %123, %struct.strbuf** %16, align 8
  %124 = load %struct.strbuf*, %struct.strbuf** %16, align 8
  %125 = call i32 @strbuf_reset(%struct.strbuf* %124)
  %126 = load %struct.strbuf*, %struct.strbuf** %16, align 8
  %127 = load i8*, i8** %6, align 8
  %128 = load i64, i64* %11, align 8
  %129 = call i32 @strbuf_add(%struct.strbuf* %126, i8* %127, i64 %128)
  store i32 2, i32* %12, align 4
  br label %130

130:                                              ; preds = %150, %121
  %131 = load %struct.strbuf*, %struct.strbuf** %16, align 8
  %132 = load i64, i64* %11, align 8
  %133 = call i32 @strbuf_setlen(%struct.strbuf* %131, i64 %132)
  %134 = load %struct.strbuf*, %struct.strbuf** %16, align 8
  %135 = load i32, i32* %12, align 4
  %136 = call i32 @strbuf_addf(%struct.strbuf* %134, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %135)
  %137 = load %struct.label_state*, %struct.label_state** %7, align 8
  %138 = getelementptr inbounds %struct.label_state, %struct.label_state* %137, i32 0, i32 1
  %139 = load %struct.strbuf*, %struct.strbuf** %16, align 8
  %140 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %139, i32 0, i32 0
  %141 = load i8*, i8** %140, align 8
  %142 = call i32 @strihash(i8* %141)
  %143 = load %struct.strbuf*, %struct.strbuf** %16, align 8
  %144 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %143, i32 0, i32 0
  %145 = load i8*, i8** %144, align 8
  %146 = call i64 @hashmap_get_from_hash(i32* %138, i32 %142, i8* %145)
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %149, label %148

148:                                              ; preds = %130
  br label %153

149:                                              ; preds = %130
  br label %150

150:                                              ; preds = %149
  %151 = load i32, i32* %12, align 4
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* %12, align 4
  br label %130

153:                                              ; preds = %148
  %154 = load %struct.strbuf*, %struct.strbuf** %16, align 8
  %155 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %154, i32 0, i32 0
  %156 = load i8*, i8** %155, align 8
  store i8* %156, i8** %6, align 8
  br label %157

157:                                              ; preds = %153, %113
  br label %158

158:                                              ; preds = %157, %92
  %159 = load %struct.labels_entry*, %struct.labels_entry** %8, align 8
  %160 = bitcast %struct.labels_entry* %159 to %struct.string_entry*
  %161 = load i8*, i8** %6, align 8
  %162 = load i8*, i8** %6, align 8
  %163 = call i32 @FLEX_ALLOC_STR(%struct.string_entry* %160, i8* %161, i8* %162)
  %164 = load %struct.labels_entry*, %struct.labels_entry** %8, align 8
  %165 = getelementptr inbounds %struct.labels_entry, %struct.labels_entry* %164, i32 0, i32 1
  %166 = load i8*, i8** %6, align 8
  %167 = call i32 @strihash(i8* %166)
  %168 = call i32 @hashmap_entry_init(%struct.TYPE_5__* %165, i32 %167)
  %169 = load %struct.label_state*, %struct.label_state** %7, align 8
  %170 = getelementptr inbounds %struct.label_state, %struct.label_state* %169, i32 0, i32 1
  %171 = load %struct.labels_entry*, %struct.labels_entry** %8, align 8
  %172 = getelementptr inbounds %struct.labels_entry, %struct.labels_entry* %171, i32 0, i32 1
  %173 = call i32 @hashmap_add(i32* %170, %struct.TYPE_5__* %172)
  %174 = load %struct.string_entry*, %struct.string_entry** %9, align 8
  %175 = load i8*, i8** @string, align 8
  %176 = load i8*, i8** %6, align 8
  %177 = call i32 @FLEX_ALLOC_STR(%struct.string_entry* %174, i8* %175, i8* %176)
  %178 = load %struct.string_entry*, %struct.string_entry** %9, align 8
  %179 = getelementptr inbounds %struct.string_entry, %struct.string_entry* %178, i32 0, i32 1
  %180 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %179, i32 0, i32 0
  %181 = load %struct.object_id*, %struct.object_id** %5, align 8
  %182 = call i32 @oidcpy(i32* %180, %struct.object_id* %181)
  %183 = load %struct.label_state*, %struct.label_state** %7, align 8
  %184 = getelementptr inbounds %struct.label_state, %struct.label_state* %183, i32 0, i32 0
  %185 = load %struct.string_entry*, %struct.string_entry** %9, align 8
  %186 = call i32 @oidmap_put(i32* %184, %struct.string_entry* %185)
  %187 = load %struct.string_entry*, %struct.string_entry** %9, align 8
  %188 = getelementptr inbounds %struct.string_entry, %struct.string_entry* %187, i32 0, i32 0
  %189 = load i8*, i8** %188, align 8
  store i8* %189, i8** %4, align 8
  br label %190

190:                                              ; preds = %158, %23
  %191 = load i8*, i8** %4, align 8
  ret i8* %191
}

declare dso_local %struct.string_entry* @oidmap_get(i32*, %struct.object_id*) #1

declare dso_local i32 @strbuf_reset(%struct.strbuf*) #1

declare dso_local i32 @strbuf_grow(%struct.strbuf*, i32) #1

declare dso_local i32 @find_unique_abbrev_r(i8*, %struct.object_id*, i32) #1

declare dso_local i64 @hashmap_get_from_hash(i32*, i32, i8*) #1

declare dso_local i32 @strihash(i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @oid_to_hex_r(i8*, %struct.object_id*) #1

declare dso_local i32 @get_oid_hex(i8*, %struct.object_id*) #1

declare dso_local i32 @strbuf_add(%struct.strbuf*, i8*, i64) #1

declare dso_local i32 @strbuf_setlen(%struct.strbuf*, i64) #1

declare dso_local i32 @strbuf_addf(%struct.strbuf*, i8*, i32) #1

declare dso_local i32 @FLEX_ALLOC_STR(%struct.string_entry*, i8*, i8*) #1

declare dso_local i32 @hashmap_entry_init(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @hashmap_add(i32*, %struct.TYPE_5__*) #1

declare dso_local i32 @oidcpy(i32*, %struct.object_id*) #1

declare dso_local i32 @oidmap_put(i32*, %struct.string_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
