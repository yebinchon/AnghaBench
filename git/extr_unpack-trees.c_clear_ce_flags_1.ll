; ModuleID = '/home/carl/AnghaBench/git/extr_unpack-trees.c_clear_ce_flags_1.c'
source_filename = "/home/carl/AnghaBench/git/extr_unpack-trees.c_clear_ce_flags_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.index_state = type { i32 }
%struct.cache_entry = type { i32, i8* }
%struct.strbuf = type { i32, i32 }
%struct.pattern_list = type { i32 }

@UNDECIDED = common dso_local global i32 0, align 4
@MATCHED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.index_state*, %struct.cache_entry**, i32, %struct.strbuf*, i32, i32, %struct.pattern_list*, i32)* @clear_ce_flags_1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @clear_ce_flags_1(%struct.index_state* %0, %struct.cache_entry** %1, i32 %2, %struct.strbuf* %3, i32 %4, i32 %5, %struct.pattern_list* %6, i32 %7) #0 {
  %9 = alloca %struct.index_state*, align 8
  %10 = alloca %struct.cache_entry**, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.strbuf*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.pattern_list*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.cache_entry**, align 8
  %18 = alloca %struct.cache_entry*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store %struct.index_state* %0, %struct.index_state** %9, align 8
  store %struct.cache_entry** %1, %struct.cache_entry*** %10, align 8
  store i32 %2, i32* %11, align 4
  store %struct.strbuf* %3, %struct.strbuf** %12, align 8
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store %struct.pattern_list* %6, %struct.pattern_list** %15, align 8
  store i32 %7, i32* %16, align 4
  %25 = load %struct.cache_entry**, %struct.cache_entry*** %10, align 8
  %26 = load i32, i32* %11, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.cache_entry*, %struct.cache_entry** %25, i64 %27
  store %struct.cache_entry** %28, %struct.cache_entry*** %17, align 8
  br label %29

29:                                               ; preds = %186, %129, %117, %45, %8
  %30 = load %struct.cache_entry**, %struct.cache_entry*** %10, align 8
  %31 = load %struct.cache_entry**, %struct.cache_entry*** %17, align 8
  %32 = icmp ne %struct.cache_entry** %30, %31
  br i1 %32, label %33, label %189

33:                                               ; preds = %29
  %34 = load %struct.cache_entry**, %struct.cache_entry*** %10, align 8
  %35 = load %struct.cache_entry*, %struct.cache_entry** %34, align 8
  store %struct.cache_entry* %35, %struct.cache_entry** %18, align 8
  %36 = load i32, i32* %13, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %48

38:                                               ; preds = %33
  %39 = load %struct.cache_entry*, %struct.cache_entry** %18, align 8
  %40 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* %13, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %48, label %45

45:                                               ; preds = %38
  %46 = load %struct.cache_entry**, %struct.cache_entry*** %10, align 8
  %47 = getelementptr inbounds %struct.cache_entry*, %struct.cache_entry** %46, i32 1
  store %struct.cache_entry** %47, %struct.cache_entry*** %10, align 8
  br label %29

48:                                               ; preds = %38, %33
  %49 = load %struct.strbuf*, %struct.strbuf** %12, align 8
  %50 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %66

53:                                               ; preds = %48
  %54 = load %struct.cache_entry*, %struct.cache_entry** %18, align 8
  %55 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %54, i32 0, i32 1
  %56 = load i8*, i8** %55, align 8
  %57 = load %struct.strbuf*, %struct.strbuf** %12, align 8
  %58 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.strbuf*, %struct.strbuf** %12, align 8
  %61 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i64 @strncmp(i8* %56, i32 %59, i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %53
  br label %189

66:                                               ; preds = %53, %48
  %67 = load %struct.cache_entry*, %struct.cache_entry** %18, align 8
  %68 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %67, i32 0, i32 1
  %69 = load i8*, i8** %68, align 8
  %70 = load %struct.strbuf*, %struct.strbuf** %12, align 8
  %71 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i8, i8* %69, i64 %73
  store i8* %74, i8** %19, align 8
  %75 = load i8*, i8** %19, align 8
  %76 = call i8* @strchr(i8* %75, i8 signext 47)
  store i8* %76, i8** %20, align 8
  %77 = load i8*, i8** %20, align 8
  %78 = icmp ne i8* %77, null
  br i1 %78, label %79, label %158

79:                                               ; preds = %66
  %80 = load i8*, i8** %20, align 8
  %81 = load i8*, i8** %19, align 8
  %82 = ptrtoint i8* %80 to i64
  %83 = ptrtoint i8* %81 to i64
  %84 = sub i64 %82, %83
  %85 = trunc i64 %84 to i32
  store i32 %85, i32* %21, align 4
  %86 = load %struct.strbuf*, %struct.strbuf** %12, align 8
  %87 = load i8*, i8** %19, align 8
  %88 = load i32, i32* %21, align 4
  %89 = call i32 @strbuf_add(%struct.strbuf* %86, i8* %87, i32 %88)
  %90 = load %struct.index_state*, %struct.index_state** %9, align 8
  %91 = load %struct.cache_entry**, %struct.cache_entry*** %10, align 8
  %92 = load %struct.cache_entry**, %struct.cache_entry*** %17, align 8
  %93 = load %struct.cache_entry**, %struct.cache_entry*** %10, align 8
  %94 = ptrtoint %struct.cache_entry** %92 to i64
  %95 = ptrtoint %struct.cache_entry** %93 to i64
  %96 = sub i64 %94, %95
  %97 = sdiv exact i64 %96, 8
  %98 = trunc i64 %97 to i32
  %99 = load %struct.strbuf*, %struct.strbuf** %12, align 8
  %100 = load %struct.strbuf*, %struct.strbuf** %12, align 8
  %101 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.strbuf*, %struct.strbuf** %12, align 8
  %104 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = add nsw i32 %102, %105
  %107 = load i32, i32* %21, align 4
  %108 = sub nsw i32 %106, %107
  %109 = sext i32 %108 to i64
  %110 = load i32, i32* %13, align 4
  %111 = load i32, i32* %14, align 4
  %112 = load %struct.pattern_list*, %struct.pattern_list** %15, align 8
  %113 = load i32, i32* %16, align 4
  %114 = call i32 @clear_ce_flags_dir(%struct.index_state* %90, %struct.cache_entry** %91, i32 %98, %struct.strbuf* %99, i64 %109, i32 %110, i32 %111, %struct.pattern_list* %112, i32 %113)
  store i32 %114, i32* %24, align 4
  %115 = load i32, i32* %24, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %129

117:                                              ; preds = %79
  %118 = load i32, i32* %24, align 4
  %119 = load %struct.cache_entry**, %struct.cache_entry*** %10, align 8
  %120 = sext i32 %118 to i64
  %121 = getelementptr inbounds %struct.cache_entry*, %struct.cache_entry** %119, i64 %120
  store %struct.cache_entry** %121, %struct.cache_entry*** %10, align 8
  %122 = load %struct.strbuf*, %struct.strbuf** %12, align 8
  %123 = load %struct.strbuf*, %struct.strbuf** %12, align 8
  %124 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = load i32, i32* %21, align 4
  %127 = sub nsw i32 %125, %126
  %128 = call i32 @strbuf_setlen(%struct.strbuf* %122, i32 %127)
  br label %29

129:                                              ; preds = %79
  %130 = load %struct.strbuf*, %struct.strbuf** %12, align 8
  %131 = call i32 @strbuf_addch(%struct.strbuf* %130, i8 signext 47)
  %132 = load %struct.index_state*, %struct.index_state** %9, align 8
  %133 = load %struct.cache_entry**, %struct.cache_entry*** %10, align 8
  %134 = load %struct.cache_entry**, %struct.cache_entry*** %17, align 8
  %135 = load %struct.cache_entry**, %struct.cache_entry*** %10, align 8
  %136 = ptrtoint %struct.cache_entry** %134 to i64
  %137 = ptrtoint %struct.cache_entry** %135 to i64
  %138 = sub i64 %136, %137
  %139 = sdiv exact i64 %138, 8
  %140 = trunc i64 %139 to i32
  %141 = load %struct.strbuf*, %struct.strbuf** %12, align 8
  %142 = load i32, i32* %13, align 4
  %143 = load i32, i32* %14, align 4
  %144 = load %struct.pattern_list*, %struct.pattern_list** %15, align 8
  %145 = load i32, i32* %16, align 4
  %146 = call i32 @clear_ce_flags_1(%struct.index_state* %132, %struct.cache_entry** %133, i32 %140, %struct.strbuf* %141, i32 %142, i32 %143, %struct.pattern_list* %144, i32 %145)
  %147 = load %struct.cache_entry**, %struct.cache_entry*** %10, align 8
  %148 = sext i32 %146 to i64
  %149 = getelementptr inbounds %struct.cache_entry*, %struct.cache_entry** %147, i64 %148
  store %struct.cache_entry** %149, %struct.cache_entry*** %10, align 8
  %150 = load %struct.strbuf*, %struct.strbuf** %12, align 8
  %151 = load %struct.strbuf*, %struct.strbuf** %12, align 8
  %152 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = load i32, i32* %21, align 4
  %155 = sub nsw i32 %153, %154
  %156 = sub nsw i32 %155, 1
  %157 = call i32 @strbuf_setlen(%struct.strbuf* %150, i32 %156)
  br label %29

158:                                              ; preds = %66
  %159 = load %struct.cache_entry*, %struct.cache_entry** %18, align 8
  %160 = call i32 @ce_to_dtype(%struct.cache_entry* %159)
  store i32 %160, i32* %22, align 4
  %161 = load %struct.cache_entry*, %struct.cache_entry** %18, align 8
  %162 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %161, i32 0, i32 1
  %163 = load i8*, i8** %162, align 8
  %164 = load %struct.cache_entry*, %struct.cache_entry** %18, align 8
  %165 = call i32 @ce_namelen(%struct.cache_entry* %164)
  %166 = load i8*, i8** %19, align 8
  %167 = load %struct.pattern_list*, %struct.pattern_list** %15, align 8
  %168 = load %struct.index_state*, %struct.index_state** %9, align 8
  %169 = call i32 @path_matches_pattern_list(i8* %163, i32 %165, i8* %166, i32* %22, %struct.pattern_list* %167, %struct.index_state* %168)
  store i32 %169, i32* %23, align 4
  %170 = load i32, i32* %23, align 4
  %171 = load i32, i32* @UNDECIDED, align 4
  %172 = icmp eq i32 %170, %171
  br i1 %172, label %173, label %175

173:                                              ; preds = %158
  %174 = load i32, i32* %16, align 4
  store i32 %174, i32* %23, align 4
  br label %175

175:                                              ; preds = %173, %158
  %176 = load i32, i32* %23, align 4
  %177 = load i32, i32* @MATCHED, align 4
  %178 = icmp eq i32 %176, %177
  br i1 %178, label %179, label %186

179:                                              ; preds = %175
  %180 = load i32, i32* %14, align 4
  %181 = xor i32 %180, -1
  %182 = load %struct.cache_entry*, %struct.cache_entry** %18, align 8
  %183 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 8
  %185 = and i32 %184, %181
  store i32 %185, i32* %183, align 8
  br label %186

186:                                              ; preds = %179, %175
  %187 = load %struct.cache_entry**, %struct.cache_entry*** %10, align 8
  %188 = getelementptr inbounds %struct.cache_entry*, %struct.cache_entry** %187, i32 1
  store %struct.cache_entry** %188, %struct.cache_entry*** %10, align 8
  br label %29

189:                                              ; preds = %65, %29
  %190 = load i32, i32* %11, align 4
  %191 = sext i32 %190 to i64
  %192 = load %struct.cache_entry**, %struct.cache_entry*** %17, align 8
  %193 = load %struct.cache_entry**, %struct.cache_entry*** %10, align 8
  %194 = ptrtoint %struct.cache_entry** %192 to i64
  %195 = ptrtoint %struct.cache_entry** %193 to i64
  %196 = sub i64 %194, %195
  %197 = sdiv exact i64 %196, 8
  %198 = sub nsw i64 %191, %197
  %199 = trunc i64 %198 to i32
  ret i32 %199
}

declare dso_local i64 @strncmp(i8*, i32, i32) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @strbuf_add(%struct.strbuf*, i8*, i32) #1

declare dso_local i32 @clear_ce_flags_dir(%struct.index_state*, %struct.cache_entry**, i32, %struct.strbuf*, i64, i32, i32, %struct.pattern_list*, i32) #1

declare dso_local i32 @strbuf_setlen(%struct.strbuf*, i32) #1

declare dso_local i32 @strbuf_addch(%struct.strbuf*, i8 signext) #1

declare dso_local i32 @ce_to_dtype(%struct.cache_entry*) #1

declare dso_local i32 @path_matches_pattern_list(i8*, i32, i8*, i32*, %struct.pattern_list*, %struct.index_state*) #1

declare dso_local i32 @ce_namelen(%struct.cache_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
