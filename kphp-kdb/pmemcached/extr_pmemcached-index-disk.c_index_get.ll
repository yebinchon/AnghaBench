; ModuleID = '/home/carl/AnghaBench/kphp-kdb/pmemcached/extr_pmemcached-index-disk.c_index_get.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/pmemcached/extr_pmemcached-index-disk.c_index_get.c"
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
@.str.2 = private unnamed_addr constant [14 x i8] c"not found[2]\0A\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"metafile_get_entry (%d, %d)->key = \00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"Found. l=%d\0A\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"not found[3]\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.index_entry* @index_get(i8* %0, i32 %1) #0 {
  %3 = alloca %struct.index_entry*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.metafile*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.index_entry*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 -1, i32* %6, align 4
  %13 = load i32, i32* @metafile_number, align 4
  store i32 %13, i32* %7, align 4
  br label %14

14:                                               ; preds = %48, %2
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* %6, align 4
  %17 = sub nsw i32 %15, %16
  %18 = icmp sgt i32 %17, 1
  br i1 %18, label %19, label %49

19:                                               ; preds = %14
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* %6, align 4
  %22 = add nsw i32 %20, %21
  %23 = ashr i32 %22, 1
  store i32 %23, i32* %8, align 4
  %24 = load i8*, i8** %4, align 8
  %25 = load i32, i32* %5, align 4
  %26 = load %struct.metafile*, %struct.metafile** @metafiles, align 8
  %27 = load i32, i32* %8, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.metafile, %struct.metafile* %26, i64 %28
  %30 = getelementptr inbounds %struct.metafile, %struct.metafile* %29, i32 0, i32 1
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.metafile*, %struct.metafile** @metafiles, align 8
  %35 = load i32, i32* %8, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.metafile, %struct.metafile* %34, i64 %36
  %38 = getelementptr inbounds %struct.metafile, %struct.metafile* %37, i32 0, i32 1
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i64 @mystrcmp(i8* %24, i32 %25, i32 %33, i32 %41)
  %43 = icmp slt i64 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %19
  %45 = load i32, i32* %8, align 4
  store i32 %45, i32* %7, align 4
  br label %48

46:                                               ; preds = %19
  %47 = load i32, i32* %8, align 4
  store i32 %47, i32* %6, align 4
  br label %48

48:                                               ; preds = %46, %44
  br label %14

49:                                               ; preds = %14
  %50 = load i32, i32* %6, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %59

52:                                               ; preds = %49
  %53 = load i32, i32* @verbosity, align 4
  %54 = icmp sge i32 %53, 4
  br i1 %54, label %55, label %58

55:                                               ; preds = %52
  %56 = load i32, i32* @stderr, align 4
  %57 = call i32 (i32, i8*, ...) @fprintf(i32 %56, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %58

58:                                               ; preds = %55, %52
  store %struct.index_entry* @index_entry_not_found, %struct.index_entry** %3, align 8
  br label %214

59:                                               ; preds = %49
  %60 = load i32, i32* @verbosity, align 4
  %61 = icmp sge i32 %60, 4
  br i1 %61, label %62, label %67

62:                                               ; preds = %59
  %63 = load i32, i32* @stderr, align 4
  %64 = load i32, i32* %6, align 4
  %65 = load i32, i32* %7, align 4
  %66 = call i32 (i32, i8*, ...) @fprintf(i32 %63, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %64, i32 %65)
  br label %67

67:                                               ; preds = %62, %59
  %68 = load %struct.metafile*, %struct.metafile** @metafiles, align 8
  %69 = load i32, i32* %6, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.metafile, %struct.metafile* %68, i64 %70
  %72 = getelementptr inbounds %struct.metafile, %struct.metafile* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = icmp eq i64 %73, 0
  br i1 %74, label %83, label %75

75:                                               ; preds = %67
  %76 = load %struct.metafile*, %struct.metafile** @metafiles, align 8
  %77 = load i32, i32* %6, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.metafile, %struct.metafile* %76, i64 %78
  %80 = getelementptr inbounds %struct.metafile, %struct.metafile* %79, i32 0, i32 2
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %105

83:                                               ; preds = %75, %67
  %84 = load i32, i32* %6, align 4
  %85 = call i32 @load_metafile(i32 %84)
  %86 = load %struct.metafile*, %struct.metafile** @metafiles, align 8
  %87 = load i32, i32* %6, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.metafile, %struct.metafile* %86, i64 %88
  %90 = getelementptr inbounds %struct.metafile, %struct.metafile* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = icmp eq i64 %91, 0
  br i1 %92, label %101, label %93

93:                                               ; preds = %83
  %94 = load %struct.metafile*, %struct.metafile** @metafiles, align 8
  %95 = load i32, i32* %6, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.metafile, %struct.metafile* %94, i64 %96
  %98 = getelementptr inbounds %struct.metafile, %struct.metafile* %97, i32 0, i32 2
  %99 = load i64, i64* %98, align 8
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %104

101:                                              ; preds = %93, %83
  %102 = load i32, i32* @metafiles_cache_miss, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* @metafiles_cache_miss, align 4
  store %struct.index_entry* null, %struct.index_entry** %3, align 8
  br label %214

104:                                              ; preds = %93
  br label %105

105:                                              ; preds = %104, %75
  %106 = load i32, i32* @metafiles_cache_ok, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* @metafiles_cache_ok, align 4
  %108 = load i32, i32* %6, align 4
  %109 = call i32 @renew_use(i32 %108)
  %110 = load i32, i32* %6, align 4
  store i32 %110, i32* %9, align 4
  %111 = load %struct.metafile*, %struct.metafile** @metafiles, align 8
  %112 = load i32, i32* %6, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds %struct.metafile, %struct.metafile* %111, i64 %113
  store %struct.metafile* %114, %struct.metafile** %10, align 8
  store i32 -1, i32* %6, align 4
  %115 = load %struct.metafile*, %struct.metafile** %10, align 8
  %116 = getelementptr inbounds %struct.metafile, %struct.metafile* %115, i32 0, i32 1
  %117 = load %struct.TYPE_2__*, %struct.TYPE_2__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  store i32 %119, i32* %7, align 4
  br label %120

120:                                              ; preds = %148, %105
  %121 = load i32, i32* %7, align 4
  %122 = load i32, i32* %6, align 4
  %123 = sub nsw i32 %121, %122
  %124 = icmp sgt i32 %123, 1
  br i1 %124, label %125, label %149

125:                                              ; preds = %120
  %126 = load i32, i32* %7, align 4
  %127 = load i32, i32* %6, align 4
  %128 = add nsw i32 %126, %127
  %129 = ashr i32 %128, 1
  store i32 %129, i32* %11, align 4
  %130 = load i8*, i8** %4, align 8
  %131 = load i32, i32* %5, align 4
  %132 = load i32, i32* %9, align 4
  %133 = load i32, i32* %11, align 4
  %134 = call %struct.index_entry* @metafile_get_entry(i32 %132, i32 %133)
  %135 = getelementptr inbounds %struct.index_entry, %struct.index_entry* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = load i32, i32* %9, align 4
  %138 = load i32, i32* %11, align 4
  %139 = call %struct.index_entry* @metafile_get_entry(i32 %137, i32 %138)
  %140 = getelementptr inbounds %struct.index_entry, %struct.index_entry* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = call i64 @mystrcmp(i8* %130, i32 %131, i32 %136, i32 %141)
  %143 = icmp slt i64 %142, 0
  br i1 %143, label %144, label %146

144:                                              ; preds = %125
  %145 = load i32, i32* %11, align 4
  store i32 %145, i32* %7, align 4
  br label %148

146:                                              ; preds = %125
  %147 = load i32, i32* %11, align 4
  store i32 %147, i32* %6, align 4
  br label %148

148:                                              ; preds = %146, %144
  br label %120

149:                                              ; preds = %120
  %150 = load i32, i32* @verbosity, align 4
  %151 = icmp sge i32 %150, 4
  br i1 %151, label %152, label %157

152:                                              ; preds = %149
  %153 = load i32, i32* @stderr, align 4
  %154 = load i32, i32* %6, align 4
  %155 = load i32, i32* %7, align 4
  %156 = call i32 (i32, i8*, ...) @fprintf(i32 %153, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %154, i32 %155)
  br label %157

157:                                              ; preds = %152, %149
  %158 = load i32, i32* %6, align 4
  %159 = icmp slt i32 %158, 0
  br i1 %159, label %160, label %167

160:                                              ; preds = %157
  %161 = load i32, i32* @verbosity, align 4
  %162 = icmp sge i32 %161, 4
  br i1 %162, label %163, label %166

163:                                              ; preds = %160
  %164 = load i32, i32* @stderr, align 4
  %165 = call i32 (i32, i8*, ...) @fprintf(i32 %164, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  br label %166

166:                                              ; preds = %163, %160
  store %struct.index_entry* @index_entry_not_found, %struct.index_entry** %3, align 8
  br label %214

167:                                              ; preds = %157
  %168 = load i32, i32* %9, align 4
  %169 = load i32, i32* %6, align 4
  %170 = call %struct.index_entry* @metafile_get_entry(i32 %168, i32 %169)
  store %struct.index_entry* %170, %struct.index_entry** %12, align 8
  %171 = load i32, i32* @verbosity, align 4
  %172 = icmp sge i32 %171, 4
  br i1 %172, label %173, label %185

173:                                              ; preds = %167
  %174 = load i32, i32* @stderr, align 4
  %175 = load i32, i32* %9, align 4
  %176 = load i32, i32* %6, align 4
  %177 = call i32 (i32, i8*, ...) @fprintf(i32 %174, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i32 %175, i32 %176)
  %178 = load %struct.index_entry*, %struct.index_entry** %12, align 8
  %179 = getelementptr inbounds %struct.index_entry, %struct.index_entry* %178, i32 0, i32 1
  %180 = load i32, i32* %179, align 4
  %181 = load %struct.index_entry*, %struct.index_entry** %12, align 8
  %182 = getelementptr inbounds %struct.index_entry, %struct.index_entry* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 4
  %184 = call i32 @debug_dump_key(i32 %180, i32 %183)
  br label %185

185:                                              ; preds = %173, %167
  %186 = load i8*, i8** %4, align 8
  %187 = load i32, i32* %5, align 4
  %188 = load %struct.index_entry*, %struct.index_entry** %12, align 8
  %189 = getelementptr inbounds %struct.index_entry, %struct.index_entry* %188, i32 0, i32 1
  %190 = load i32, i32* %189, align 4
  %191 = load %struct.index_entry*, %struct.index_entry** %12, align 8
  %192 = getelementptr inbounds %struct.index_entry, %struct.index_entry* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 4
  %194 = call i64 @mystrcmp(i8* %186, i32 %187, i32 %190, i32 %193)
  %195 = icmp eq i64 %194, 0
  br i1 %195, label %196, label %207

196:                                              ; preds = %185
  %197 = load i32, i32* @verbosity, align 4
  %198 = icmp sge i32 %197, 4
  br i1 %198, label %199, label %203

199:                                              ; preds = %196
  %200 = load i32, i32* @stderr, align 4
  %201 = load i32, i32* %6, align 4
  %202 = call i32 (i32, i8*, ...) @fprintf(i32 %200, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i32 %201)
  br label %203

203:                                              ; preds = %199, %196
  %204 = load i32, i32* %9, align 4
  %205 = load i32, i32* %6, align 4
  %206 = call %struct.index_entry* @metafile_get_entry(i32 %204, i32 %205)
  store %struct.index_entry* %206, %struct.index_entry** %3, align 8
  br label %214

207:                                              ; preds = %185
  %208 = load i32, i32* @verbosity, align 4
  %209 = icmp sge i32 %208, 4
  br i1 %209, label %210, label %213

210:                                              ; preds = %207
  %211 = load i32, i32* @stderr, align 4
  %212 = call i32 (i32, i8*, ...) @fprintf(i32 %211, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0))
  br label %213

213:                                              ; preds = %210, %207
  store %struct.index_entry* @index_entry_not_found, %struct.index_entry** %3, align 8
  br label %214

214:                                              ; preds = %213, %203, %166, %101, %58
  %215 = load %struct.index_entry*, %struct.index_entry** %3, align 8
  ret %struct.index_entry* %215
}

declare dso_local i64 @mystrcmp(i8*, i32, i32, i32) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

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
