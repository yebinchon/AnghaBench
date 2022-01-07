; ModuleID = '/home/carl/AnghaBench/git/extr_read-cache.c_has_dir_name.c'
source_filename = "/home/carl/AnghaBench/git/extr_read-cache.c_has_dir_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.index_state = type { i32, %struct.cache_entry** }
%struct.cache_entry = type { i8*, i32 }

@CE_REMOVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.index_state*, %struct.cache_entry*, i32, i32)* @has_dir_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @has_dir_name(%struct.index_state* %0, %struct.cache_entry* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.index_state*, align 8
  %7 = alloca %struct.cache_entry*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca %struct.cache_entry*, align 8
  store %struct.index_state* %0, %struct.index_state** %6, align 8
  store %struct.cache_entry* %1, %struct.cache_entry** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %18 = load %struct.cache_entry*, %struct.cache_entry** %7, align 8
  %19 = call i32 @ce_stage(%struct.cache_entry* %18)
  store i32 %19, i32* %11, align 4
  %20 = load %struct.cache_entry*, %struct.cache_entry** %7, align 8
  %21 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %20, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8
  store i8* %22, i8** %12, align 8
  %23 = load i8*, i8** %12, align 8
  %24 = load %struct.cache_entry*, %struct.cache_entry** %7, align 8
  %25 = call i64 @ce_namelen(%struct.cache_entry* %24)
  %26 = getelementptr inbounds i8, i8* %23, i64 %25
  store i8* %26, i8** %13, align 8
  store i32 0, i32* %15, align 4
  %27 = load %struct.index_state*, %struct.index_state** %6, align 8
  %28 = getelementptr inbounds %struct.index_state, %struct.index_state* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp sgt i32 %29, 0
  br i1 %30, label %31, label %61

31:                                               ; preds = %4
  %32 = load i8*, i8** %12, align 8
  %33 = load %struct.index_state*, %struct.index_state** %6, align 8
  %34 = getelementptr inbounds %struct.index_state, %struct.index_state* %33, i32 0, i32 1
  %35 = load %struct.cache_entry**, %struct.cache_entry*** %34, align 8
  %36 = load %struct.index_state*, %struct.index_state** %6, align 8
  %37 = getelementptr inbounds %struct.index_state, %struct.index_state* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = sub nsw i32 %38, 1
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.cache_entry*, %struct.cache_entry** %35, i64 %40
  %42 = load %struct.cache_entry*, %struct.cache_entry** %41, align 8
  %43 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %42, i32 0, i32 0
  %44 = load i8*, i8** %43, align 8
  %45 = call i32 @strcmp_offset(i8* %32, i8* %44, i64* %14)
  store i32 %45, i32* %15, align 4
  %46 = load i32, i32* %15, align 4
  %47 = icmp sgt i32 %46, 0
  br i1 %47, label %48, label %55

48:                                               ; preds = %31
  %49 = load i64, i64* %14, align 8
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %48
  %52 = load i32, i32* %10, align 4
  store i32 %52, i32* %5, align 4
  br label %213

53:                                               ; preds = %48
  br label %54

54:                                               ; preds = %53
  br label %60

55:                                               ; preds = %31
  %56 = load i32, i32* %15, align 4
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %55
  br label %59

59:                                               ; preds = %58, %55
  br label %60

60:                                               ; preds = %59, %54
  br label %61

61:                                               ; preds = %60, %4
  br label %62

62:                                               ; preds = %210, %147, %61
  br label %63

63:                                               ; preds = %78, %62
  %64 = load i8*, i8** %13, align 8
  %65 = getelementptr inbounds i8, i8* %64, i32 -1
  store i8* %65, i8** %13, align 8
  %66 = load i8, i8* %65, align 1
  %67 = sext i8 %66 to i32
  %68 = icmp eq i32 %67, 47
  br i1 %68, label %69, label %70

69:                                               ; preds = %63
  br label %79

70:                                               ; preds = %63
  %71 = load i8*, i8** %13, align 8
  %72 = load %struct.cache_entry*, %struct.cache_entry** %7, align 8
  %73 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %72, i32 0, i32 0
  %74 = load i8*, i8** %73, align 8
  %75 = icmp ule i8* %71, %74
  br i1 %75, label %76, label %78

76:                                               ; preds = %70
  %77 = load i32, i32* %10, align 4
  store i32 %77, i32* %5, align 4
  br label %213

78:                                               ; preds = %70
  br label %63

79:                                               ; preds = %69
  %80 = load i8*, i8** %13, align 8
  %81 = load i8*, i8** %12, align 8
  %82 = ptrtoint i8* %80 to i64
  %83 = ptrtoint i8* %81 to i64
  %84 = sub i64 %82, %83
  store i64 %84, i64* %16, align 8
  %85 = load i32, i32* %15, align 4
  %86 = icmp sgt i32 %85, 0
  br i1 %86, label %87, label %122

87:                                               ; preds = %79
  %88 = load i64, i64* %16, align 8
  %89 = add i64 %88, 1
  %90 = load i64, i64* %14, align 8
  %91 = icmp ule i64 %89, %90
  br i1 %91, label %92, label %94

92:                                               ; preds = %87
  %93 = load i32, i32* %10, align 4
  store i32 %93, i32* %5, align 4
  br label %213

94:                                               ; preds = %87
  %95 = load i64, i64* %16, align 8
  %96 = load i64, i64* %14, align 8
  %97 = icmp ugt i64 %95, %96
  br i1 %97, label %98, label %100

98:                                               ; preds = %94
  %99 = load i32, i32* %10, align 4
  store i32 %99, i32* %5, align 4
  br label %213

100:                                              ; preds = %94
  %101 = load %struct.index_state*, %struct.index_state** %6, align 8
  %102 = getelementptr inbounds %struct.index_state, %struct.index_state* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = icmp sgt i32 %103, 0
  br i1 %104, label %105, label %121

105:                                              ; preds = %100
  %106 = load %struct.index_state*, %struct.index_state** %6, align 8
  %107 = getelementptr inbounds %struct.index_state, %struct.index_state* %106, i32 0, i32 1
  %108 = load %struct.cache_entry**, %struct.cache_entry*** %107, align 8
  %109 = load %struct.index_state*, %struct.index_state** %6, align 8
  %110 = getelementptr inbounds %struct.index_state, %struct.index_state* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = sub nsw i32 %111, 1
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds %struct.cache_entry*, %struct.cache_entry** %108, i64 %113
  %115 = load %struct.cache_entry*, %struct.cache_entry** %114, align 8
  %116 = call i64 @ce_namelen(%struct.cache_entry* %115)
  %117 = load i64, i64* %16, align 8
  %118 = icmp ugt i64 %116, %117
  br i1 %118, label %119, label %121

119:                                              ; preds = %105
  %120 = load i32, i32* %10, align 4
  store i32 %120, i32* %5, align 4
  br label %213

121:                                              ; preds = %105, %100
  br label %122

122:                                              ; preds = %121, %79
  %123 = load %struct.index_state*, %struct.index_state** %6, align 8
  %124 = load i8*, i8** %12, align 8
  %125 = load i64, i64* %16, align 8
  %126 = load i32, i32* %11, align 4
  %127 = call i32 @index_name_stage_pos(%struct.index_state* %123, i8* %124, i64 %125, i32 %126)
  store i32 %127, i32* %8, align 4
  %128 = load i32, i32* %8, align 4
  %129 = icmp sge i32 %128, 0
  br i1 %129, label %130, label %152

130:                                              ; preds = %122
  %131 = load %struct.index_state*, %struct.index_state** %6, align 8
  %132 = getelementptr inbounds %struct.index_state, %struct.index_state* %131, i32 0, i32 1
  %133 = load %struct.cache_entry**, %struct.cache_entry*** %132, align 8
  %134 = load i32, i32* %8, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds %struct.cache_entry*, %struct.cache_entry** %133, i64 %135
  %137 = load %struct.cache_entry*, %struct.cache_entry** %136, align 8
  %138 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 8
  %140 = load i32, i32* @CE_REMOVE, align 4
  %141 = and i32 %139, %140
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %151, label %143

143:                                              ; preds = %130
  store i32 -1, i32* %10, align 4
  %144 = load i32, i32* %9, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %147, label %146

146:                                              ; preds = %143
  br label %211

147:                                              ; preds = %143
  %148 = load %struct.index_state*, %struct.index_state** %6, align 8
  %149 = load i32, i32* %8, align 4
  %150 = call i32 @remove_index_entry_at(%struct.index_state* %148, i32 %149)
  br label %62

151:                                              ; preds = %130
  br label %156

152:                                              ; preds = %122
  %153 = load i32, i32* %8, align 4
  %154 = sub nsw i32 0, %153
  %155 = sub nsw i32 %154, 1
  store i32 %155, i32* %8, align 4
  br label %156

156:                                              ; preds = %152, %151
  br label %157

157:                                              ; preds = %207, %156
  %158 = load i32, i32* %8, align 4
  %159 = load %struct.index_state*, %struct.index_state** %6, align 8
  %160 = getelementptr inbounds %struct.index_state, %struct.index_state* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = icmp slt i32 %158, %161
  br i1 %162, label %163, label %210

163:                                              ; preds = %157
  %164 = load %struct.index_state*, %struct.index_state** %6, align 8
  %165 = getelementptr inbounds %struct.index_state, %struct.index_state* %164, i32 0, i32 1
  %166 = load %struct.cache_entry**, %struct.cache_entry*** %165, align 8
  %167 = load i32, i32* %8, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds %struct.cache_entry*, %struct.cache_entry** %166, i64 %168
  %170 = load %struct.cache_entry*, %struct.cache_entry** %169, align 8
  store %struct.cache_entry* %170, %struct.cache_entry** %17, align 8
  %171 = load %struct.cache_entry*, %struct.cache_entry** %17, align 8
  %172 = call i64 @ce_namelen(%struct.cache_entry* %171)
  %173 = load i64, i64* %16, align 8
  %174 = icmp ule i64 %172, %173
  br i1 %174, label %192, label %175

175:                                              ; preds = %163
  %176 = load %struct.cache_entry*, %struct.cache_entry** %17, align 8
  %177 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %176, i32 0, i32 0
  %178 = load i8*, i8** %177, align 8
  %179 = load i64, i64* %16, align 8
  %180 = getelementptr inbounds i8, i8* %178, i64 %179
  %181 = load i8, i8* %180, align 1
  %182 = sext i8 %181 to i32
  %183 = icmp ne i32 %182, 47
  br i1 %183, label %192, label %184

184:                                              ; preds = %175
  %185 = load %struct.cache_entry*, %struct.cache_entry** %17, align 8
  %186 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %185, i32 0, i32 0
  %187 = load i8*, i8** %186, align 8
  %188 = load i8*, i8** %12, align 8
  %189 = load i64, i64* %16, align 8
  %190 = call i64 @memcmp(i8* %187, i8* %188, i64 %189)
  %191 = icmp ne i64 %190, 0
  br i1 %191, label %192, label %193

192:                                              ; preds = %184, %175, %163
  br label %210

193:                                              ; preds = %184
  %194 = load %struct.cache_entry*, %struct.cache_entry** %17, align 8
  %195 = call i32 @ce_stage(%struct.cache_entry* %194)
  %196 = load i32, i32* %11, align 4
  %197 = icmp eq i32 %195, %196
  br i1 %197, label %198, label %207

198:                                              ; preds = %193
  %199 = load %struct.cache_entry*, %struct.cache_entry** %17, align 8
  %200 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %199, i32 0, i32 1
  %201 = load i32, i32* %200, align 8
  %202 = load i32, i32* @CE_REMOVE, align 4
  %203 = and i32 %201, %202
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %207, label %205

205:                                              ; preds = %198
  %206 = load i32, i32* %10, align 4
  store i32 %206, i32* %5, align 4
  br label %213

207:                                              ; preds = %198, %193
  %208 = load i32, i32* %8, align 4
  %209 = add nsw i32 %208, 1
  store i32 %209, i32* %8, align 4
  br label %157

210:                                              ; preds = %192, %157
  br label %62

211:                                              ; preds = %146
  %212 = load i32, i32* %10, align 4
  store i32 %212, i32* %5, align 4
  br label %213

213:                                              ; preds = %211, %205, %119, %98, %92, %76, %51
  %214 = load i32, i32* %5, align 4
  ret i32 %214
}

declare dso_local i32 @ce_stage(%struct.cache_entry*) #1

declare dso_local i64 @ce_namelen(%struct.cache_entry*) #1

declare dso_local i32 @strcmp_offset(i8*, i8*, i64*) #1

declare dso_local i32 @index_name_stage_pos(%struct.index_state*, i8*, i64, i32) #1

declare dso_local i32 @remove_index_entry_at(%struct.index_state*, i32) #1

declare dso_local i64 @memcmp(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
