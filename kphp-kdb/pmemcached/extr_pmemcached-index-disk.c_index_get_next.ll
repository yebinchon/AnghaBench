; ModuleID = '/home/carl/AnghaBench/kphp-kdb/pmemcached/extr_pmemcached-index-disk.c_index_get_next.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/pmemcached/extr_pmemcached-index-disk.c_index_get_next.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.metafile = type { i64, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.index_entry = type { i32, i32 }

@metafile_number = common dso_local global i32 0, align 4
@metafiles = common dso_local global %struct.metafile* null, align 8
@verbosity = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"not found[1]\0A\00", align 1
@index_entry_not_found = common dso_local global %struct.index_entry zeroinitializer, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"(l,r) = (%d,%d)\0A\00", align 1
@metafiles_cache_miss = common dso_local global i32 0, align 4
@metafiles_cache_ok = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"metafile_get_entry (%d, %d)->key = \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.index_entry* @index_get_next(i8* %0, i32 %1) #0 {
  %3 = alloca %struct.index_entry*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.metafile*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.index_entry*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 -1, i32* %6, align 4
  %19 = load i32, i32* @metafile_number, align 4
  store i32 %19, i32* %7, align 4
  store i32 1, i32* %8, align 4
  store i32 1, i32* %9, align 4
  br label %20

20:                                               ; preds = %68, %2
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* %6, align 4
  %23 = sub nsw i32 %21, %22
  %24 = icmp sgt i32 %23, 1
  br i1 %24, label %25, label %69

25:                                               ; preds = %20
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* %6, align 4
  %28 = add nsw i32 %26, %27
  %29 = ashr i32 %28, 1
  store i32 %29, i32* %10, align 4
  %30 = load i8*, i8** %4, align 8
  %31 = load i32, i32* %5, align 4
  %32 = load %struct.metafile*, %struct.metafile** @metafiles, align 8
  %33 = load i32, i32* %10, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.metafile, %struct.metafile* %32, i64 %34
  %36 = getelementptr inbounds %struct.metafile, %struct.metafile* %35, i32 0, i32 1
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.metafile*, %struct.metafile** @metafiles, align 8
  %41 = load i32, i32* %10, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.metafile, %struct.metafile* %40, i64 %42
  %44 = getelementptr inbounds %struct.metafile, %struct.metafile* %43, i32 0, i32 1
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %8, align 4
  %49 = load i32, i32* %9, align 4
  %50 = call i64 @min(i32 %48, i32 %49)
  %51 = sub nsw i64 %50, 1
  %52 = call i32 @mystrcmp2(i8* %30, i32 %31, i32 %39, i32 %47, i64 %51)
  store i32 %52, i32* %11, align 4
  %53 = load i32, i32* %11, align 4
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %25
  %56 = load i32, i32* %10, align 4
  store i32 %56, i32* %7, align 4
  %57 = load i32, i32* %11, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %9, align 4
  br label %68

59:                                               ; preds = %25
  %60 = load i32, i32* %11, align 4
  %61 = icmp sgt i32 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %59
  %63 = load i32, i32* %10, align 4
  store i32 %63, i32* %6, align 4
  %64 = load i32, i32* %11, align 4
  store i32 %64, i32* %8, align 4
  br label %67

65:                                               ; preds = %59
  %66 = load i32, i32* %10, align 4
  store i32 %66, i32* %6, align 4
  br label %69

67:                                               ; preds = %62
  br label %68

68:                                               ; preds = %67, %55
  br label %20

69:                                               ; preds = %65, %20
  %70 = load i32, i32* %6, align 4
  %71 = icmp slt i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %69
  store i32 0, i32* %6, align 4
  br label %73

73:                                               ; preds = %72, %69
  %74 = load i32, i32* %6, align 4
  %75 = load i32, i32* @metafile_number, align 4
  %76 = icmp sge i32 %74, %75
  br i1 %76, label %77, label %84

77:                                               ; preds = %73
  %78 = load i32, i32* @verbosity, align 4
  %79 = icmp sge i32 %78, 4
  br i1 %79, label %80, label %83

80:                                               ; preds = %77
  %81 = load i32, i32* @stderr, align 4
  %82 = call i32 (i32, i8*, ...) @fprintf(i32 %81, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %83

83:                                               ; preds = %80, %77
  store %struct.index_entry* @index_entry_not_found, %struct.index_entry** %3, align 8
  br label %245

84:                                               ; preds = %73
  %85 = load i32, i32* @verbosity, align 4
  %86 = icmp sge i32 %85, 4
  br i1 %86, label %87, label %92

87:                                               ; preds = %84
  %88 = load i32, i32* @stderr, align 4
  %89 = load i32, i32* %6, align 4
  %90 = load i32, i32* %7, align 4
  %91 = call i32 (i32, i8*, ...) @fprintf(i32 %88, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %89, i32 %90)
  br label %92

92:                                               ; preds = %87, %84
  %93 = load i32, i32* %6, align 4
  store i32 %93, i32* %12, align 4
  %94 = load i32, i32* %12, align 4
  store i32 %94, i32* %13, align 4
  br label %95

95:                                               ; preds = %92, %220
  %96 = load i32, i32* %13, align 4
  %97 = load i32, i32* %12, align 4
  %98 = sub nsw i32 %96, %97
  %99 = icmp slt i32 %98, 2
  %100 = zext i1 %99 to i32
  %101 = call i32 @assert(i32 %100)
  %102 = load i32, i32* %12, align 4
  %103 = load i32, i32* @metafile_number, align 4
  %104 = icmp eq i32 %102, %103
  br i1 %104, label %105, label %106

105:                                              ; preds = %95
  store %struct.index_entry* @index_entry_not_found, %struct.index_entry** %3, align 8
  br label %245

106:                                              ; preds = %95
  %107 = load %struct.metafile*, %struct.metafile** @metafiles, align 8
  %108 = load i32, i32* %12, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.metafile, %struct.metafile* %107, i64 %109
  %111 = getelementptr inbounds %struct.metafile, %struct.metafile* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = icmp eq i64 %112, 0
  br i1 %113, label %122, label %114

114:                                              ; preds = %106
  %115 = load %struct.metafile*, %struct.metafile** @metafiles, align 8
  %116 = load i32, i32* %12, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds %struct.metafile, %struct.metafile* %115, i64 %117
  %119 = getelementptr inbounds %struct.metafile, %struct.metafile* %118, i32 0, i32 2
  %120 = load i64, i64* %119, align 8
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %144

122:                                              ; preds = %114, %106
  %123 = load i32, i32* %12, align 4
  %124 = call i32 @load_metafile(i32 %123)
  %125 = load %struct.metafile*, %struct.metafile** @metafiles, align 8
  %126 = load i32, i32* %12, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds %struct.metafile, %struct.metafile* %125, i64 %127
  %129 = getelementptr inbounds %struct.metafile, %struct.metafile* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = icmp eq i64 %130, 0
  br i1 %131, label %140, label %132

132:                                              ; preds = %122
  %133 = load %struct.metafile*, %struct.metafile** @metafiles, align 8
  %134 = load i32, i32* %12, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds %struct.metafile, %struct.metafile* %133, i64 %135
  %137 = getelementptr inbounds %struct.metafile, %struct.metafile* %136, i32 0, i32 2
  %138 = load i64, i64* %137, align 8
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %143

140:                                              ; preds = %132, %122
  %141 = load i32, i32* @metafiles_cache_miss, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* @metafiles_cache_miss, align 4
  store %struct.index_entry* null, %struct.index_entry** %3, align 8
  br label %245

143:                                              ; preds = %132
  br label %144

144:                                              ; preds = %143, %114
  %145 = load i32, i32* @metafiles_cache_ok, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* @metafiles_cache_ok, align 4
  %147 = load i32, i32* %12, align 4
  %148 = call i32 @renew_use(i32 %147)
  %149 = load i32, i32* %12, align 4
  store i32 %149, i32* %14, align 4
  %150 = load %struct.metafile*, %struct.metafile** @metafiles, align 8
  %151 = load i32, i32* %12, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds %struct.metafile, %struct.metafile* %150, i64 %152
  store %struct.metafile* %153, %struct.metafile** %15, align 8
  store i32 -1, i32* %6, align 4
  %154 = load %struct.metafile*, %struct.metafile** %15, align 8
  %155 = getelementptr inbounds %struct.metafile, %struct.metafile* %154, i32 0, i32 1
  %156 = load %struct.TYPE_2__*, %struct.TYPE_2__** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  store i32 %158, i32* %7, align 4
  store i32 1, i32* %8, align 4
  store i32 1, i32* %9, align 4
  br label %159

159:                                              ; preds = %201, %144
  %160 = load i32, i32* %7, align 4
  %161 = load i32, i32* %6, align 4
  %162 = sub nsw i32 %160, %161
  %163 = icmp sgt i32 %162, 1
  br i1 %163, label %164, label %202

164:                                              ; preds = %159
  %165 = load i32, i32* %7, align 4
  %166 = load i32, i32* %6, align 4
  %167 = add nsw i32 %165, %166
  %168 = ashr i32 %167, 1
  store i32 %168, i32* %16, align 4
  %169 = load i8*, i8** %4, align 8
  %170 = load i32, i32* %5, align 4
  %171 = load i32, i32* %14, align 4
  %172 = load i32, i32* %16, align 4
  %173 = call %struct.index_entry* @metafile_get_entry(i32 %171, i32 %172)
  %174 = getelementptr inbounds %struct.index_entry, %struct.index_entry* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 4
  %176 = load i32, i32* %14, align 4
  %177 = load i32, i32* %16, align 4
  %178 = call %struct.index_entry* @metafile_get_entry(i32 %176, i32 %177)
  %179 = getelementptr inbounds %struct.index_entry, %struct.index_entry* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 4
  %181 = load i32, i32* %8, align 4
  %182 = load i32, i32* %9, align 4
  %183 = call i64 @min(i32 %181, i32 %182)
  %184 = sub nsw i64 %183, 1
  %185 = call i32 @mystrcmp2(i8* %169, i32 %170, i32 %175, i32 %180, i64 %184)
  store i32 %185, i32* %17, align 4
  %186 = load i32, i32* %17, align 4
  %187 = icmp slt i32 %186, 0
  br i1 %187, label %188, label %192

188:                                              ; preds = %164
  %189 = load i32, i32* %16, align 4
  store i32 %189, i32* %7, align 4
  %190 = load i32, i32* %17, align 4
  %191 = sub nsw i32 0, %190
  store i32 %191, i32* %9, align 4
  br label %201

192:                                              ; preds = %164
  %193 = load i32, i32* %17, align 4
  %194 = icmp sgt i32 %193, 0
  br i1 %194, label %195, label %198

195:                                              ; preds = %192
  %196 = load i32, i32* %16, align 4
  store i32 %196, i32* %6, align 4
  %197 = load i32, i32* %17, align 4
  store i32 %197, i32* %8, align 4
  br label %200

198:                                              ; preds = %192
  %199 = load i32, i32* %16, align 4
  store i32 %199, i32* %6, align 4
  br label %202

200:                                              ; preds = %195
  br label %201

201:                                              ; preds = %200, %188
  br label %159

202:                                              ; preds = %198, %159
  %203 = load i32, i32* @verbosity, align 4
  %204 = icmp sge i32 %203, 4
  br i1 %204, label %205, label %210

205:                                              ; preds = %202
  %206 = load i32, i32* @stderr, align 4
  %207 = load i32, i32* %6, align 4
  %208 = load i32, i32* %7, align 4
  %209 = call i32 (i32, i8*, ...) @fprintf(i32 %206, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %207, i32 %208)
  br label %210

210:                                              ; preds = %205, %202
  %211 = load i32, i32* %6, align 4
  %212 = add nsw i32 %211, 1
  store i32 %212, i32* %6, align 4
  %213 = load i32, i32* %6, align 4
  %214 = load %struct.metafile*, %struct.metafile** %15, align 8
  %215 = getelementptr inbounds %struct.metafile, %struct.metafile* %214, i32 0, i32 1
  %216 = load %struct.TYPE_2__*, %struct.TYPE_2__** %215, align 8
  %217 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %216, i32 0, i32 0
  %218 = load i32, i32* %217, align 4
  %219 = icmp eq i32 %213, %218
  br i1 %219, label %220, label %223

220:                                              ; preds = %210
  %221 = load i32, i32* %12, align 4
  %222 = add nsw i32 %221, 1
  store i32 %222, i32* %12, align 4
  br label %95

223:                                              ; preds = %210
  %224 = load i32, i32* %14, align 4
  %225 = load i32, i32* %6, align 4
  %226 = call %struct.index_entry* @metafile_get_entry(i32 %224, i32 %225)
  store %struct.index_entry* %226, %struct.index_entry** %18, align 8
  %227 = load i32, i32* @verbosity, align 4
  %228 = icmp sge i32 %227, 4
  br i1 %228, label %229, label %241

229:                                              ; preds = %223
  %230 = load i32, i32* @stderr, align 4
  %231 = load i32, i32* %14, align 4
  %232 = load i32, i32* %6, align 4
  %233 = call i32 (i32, i8*, ...) @fprintf(i32 %230, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i32 %231, i32 %232)
  %234 = load %struct.index_entry*, %struct.index_entry** %18, align 8
  %235 = getelementptr inbounds %struct.index_entry, %struct.index_entry* %234, i32 0, i32 1
  %236 = load i32, i32* %235, align 4
  %237 = load %struct.index_entry*, %struct.index_entry** %18, align 8
  %238 = getelementptr inbounds %struct.index_entry, %struct.index_entry* %237, i32 0, i32 0
  %239 = load i32, i32* %238, align 4
  %240 = call i32 @debug_dump_key(i32 %236, i32 %239)
  br label %241

241:                                              ; preds = %229, %223
  %242 = load i32, i32* %14, align 4
  %243 = load i32, i32* %6, align 4
  %244 = call %struct.index_entry* @metafile_get_entry(i32 %242, i32 %243)
  store %struct.index_entry* %244, %struct.index_entry** %3, align 8
  br label %245

245:                                              ; preds = %241, %140, %105, %83
  %246 = load %struct.index_entry*, %struct.index_entry** %3, align 8
  ret %struct.index_entry* %246
}

declare dso_local i32 @mystrcmp2(i8*, i32, i32, i32, i64) #1

declare dso_local i64 @min(i32, i32) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @load_metafile(i32) #1

declare dso_local i32 @renew_use(i32) #1

declare dso_local %struct.index_entry* @metafile_get_entry(i32, i32) #1

declare dso_local i32 @debug_dump_key(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
