; ModuleID = '/home/carl/AnghaBench/kphp-kdb/pmemcached/extr_pmemcached-index-disk.c_metafile_load.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/pmemcached/extr_pmemcached-index-disk.c_metafile_load.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.metafile = type { i8*, i64, %struct.TYPE_3__*, i64 }
%struct.TYPE_3__ = type { i64, i64, i64, i64, i32 }
%struct.TYPE_4__ = type { i32, i32, i8* }

@verbosity = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"loading metafile %d\0A\00", align 1
@MAX_METAFILES = common dso_local global i32 0, align 4
@metafiles = common dso_local global %struct.metafile* null, align 8
@.str.1 = private unnamed_addr constant [31 x i8] c"meta->aio != 0. Dropping data\0A\00", align 1
@idx_fd = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"No memory\0A\00", align 1
@use_metafile_crc32 = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [23 x i8] c"key/data - %d/%d - %s\0A\00", align 1
@metafiles_loaded = common dso_local global i32 0, align 4
@allocated_metafile_bytes = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @metafile_load(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.metafile*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* @verbosity, align 4
  %7 = icmp sge i32 %6, 3
  br i1 %7, label %8, label %12

8:                                                ; preds = %1
  %9 = load i32, i32* @stderr, align 4
  %10 = load i32, i32* %3, align 4
  %11 = call i32 (i32, i8*, ...) @fprintf(i32 %9, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %10)
  br label %12

12:                                               ; preds = %8, %1
  %13 = load i32, i32* %3, align 4
  %14 = icmp sle i32 0, %13
  br i1 %14, label %15, label %19

15:                                               ; preds = %12
  %16 = load i32, i32* %3, align 4
  %17 = load i32, i32* @MAX_METAFILES, align 4
  %18 = icmp slt i32 %16, %17
  br label %19

19:                                               ; preds = %15, %12
  %20 = phi i1 [ false, %12 ], [ %18, %15 ]
  %21 = zext i1 %20 to i32
  %22 = call i32 @assert(i32 %21)
  %23 = load %struct.metafile*, %struct.metafile** @metafiles, align 8
  %24 = load i32, i32* %3, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.metafile, %struct.metafile* %23, i64 %25
  store %struct.metafile* %26, %struct.metafile** %4, align 8
  %27 = load %struct.metafile*, %struct.metafile** %4, align 8
  %28 = getelementptr inbounds %struct.metafile, %struct.metafile* %27, i32 0, i32 3
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %40

31:                                               ; preds = %19
  %32 = load i32, i32* @stderr, align 4
  %33 = call i32 (i32, i8*, ...) @fprintf(i32 %32, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %34 = load %struct.metafile*, %struct.metafile** %4, align 8
  %35 = getelementptr inbounds %struct.metafile, %struct.metafile* %34, i32 0, i32 3
  store i64 0, i64* %35, align 8
  %36 = load %struct.metafile*, %struct.metafile** %4, align 8
  %37 = getelementptr inbounds %struct.metafile, %struct.metafile* %36, i32 0, i32 0
  store i8* null, i8** %37, align 8
  %38 = load %struct.metafile*, %struct.metafile** %4, align 8
  %39 = getelementptr inbounds %struct.metafile, %struct.metafile* %38, i32 0, i32 1
  store i64 0, i64* %39, align 8
  br label %40

40:                                               ; preds = %31, %19
  %41 = load %struct.metafile*, %struct.metafile** %4, align 8
  %42 = getelementptr inbounds %struct.metafile, %struct.metafile* %41, i32 0, i32 0
  %43 = load i8*, i8** %42, align 8
  %44 = icmp ne i8* %43, null
  br i1 %44, label %45, label %46

45:                                               ; preds = %40
  store i32 1, i32* %2, align 4
  br label %214

46:                                               ; preds = %40
  %47 = call i32 (...) @free_metafiles()
  %48 = load i32, i32* @idx_fd, align 4
  %49 = load %struct.metafile*, %struct.metafile** %4, align 8
  %50 = getelementptr inbounds %struct.metafile, %struct.metafile* %49, i32 0, i32 2
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.metafile*, %struct.metafile** %4, align 8
  %55 = getelementptr inbounds %struct.metafile, %struct.metafile* %54, i32 0, i32 2
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = add nsw i64 %53, %58
  %60 = load i32, i32* @SEEK_SET, align 4
  %61 = call i64 @lseek(i32 %48, i64 %59, i32 %60)
  %62 = load %struct.metafile*, %struct.metafile** %4, align 8
  %63 = getelementptr inbounds %struct.metafile, %struct.metafile* %62, i32 0, i32 2
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load %struct.metafile*, %struct.metafile** %4, align 8
  %68 = getelementptr inbounds %struct.metafile, %struct.metafile* %67, i32 0, i32 2
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = add nsw i64 %66, %71
  %73 = icmp eq i64 %61, %72
  %74 = zext i1 %73 to i32
  %75 = call i32 @assert(i32 %74)
  %76 = load %struct.metafile*, %struct.metafile** %4, align 8
  %77 = getelementptr inbounds %struct.metafile, %struct.metafile* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = icmp eq i64 %78, 0
  %80 = zext i1 %79 to i32
  %81 = call i32 @assert(i32 %80)
  %82 = load %struct.metafile*, %struct.metafile** %4, align 8
  %83 = getelementptr inbounds %struct.metafile, %struct.metafile* %82, i32 0, i32 2
  %84 = load %struct.TYPE_3__*, %struct.TYPE_3__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 2
  %86 = load i64, i64* %85, align 8
  %87 = call i8* @zzmalloc(i64 %86)
  %88 = ptrtoint i8* %87 to i64
  %89 = load %struct.metafile*, %struct.metafile** %4, align 8
  %90 = getelementptr inbounds %struct.metafile, %struct.metafile* %89, i32 0, i32 1
  store i64 %88, i64* %90, align 8
  br label %91

91:                                               ; preds = %103, %46
  %92 = load %struct.metafile*, %struct.metafile** %4, align 8
  %93 = getelementptr inbounds %struct.metafile, %struct.metafile* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = icmp ne i64 %94, 0
  %96 = xor i1 %95, true
  br i1 %96, label %97, label %113

97:                                               ; preds = %91
  %98 = call i32 (...) @metafile_unload_LRU()
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %103, label %100

100:                                              ; preds = %97
  %101 = load i32, i32* @stderr, align 4
  %102 = call i32 (i32, i8*, ...) @fprintf(i32 %101, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %214

103:                                              ; preds = %97
  %104 = load %struct.metafile*, %struct.metafile** %4, align 8
  %105 = getelementptr inbounds %struct.metafile, %struct.metafile* %104, i32 0, i32 2
  %106 = load %struct.TYPE_3__*, %struct.TYPE_3__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %106, i32 0, i32 2
  %108 = load i64, i64* %107, align 8
  %109 = call i8* @zzmalloc(i64 %108)
  %110 = ptrtoint i8* %109 to i64
  %111 = load %struct.metafile*, %struct.metafile** %4, align 8
  %112 = getelementptr inbounds %struct.metafile, %struct.metafile* %111, i32 0, i32 1
  store i64 %110, i64* %112, align 8
  br label %91

113:                                              ; preds = %91
  %114 = load %struct.metafile*, %struct.metafile** %4, align 8
  %115 = getelementptr inbounds %struct.metafile, %struct.metafile* %114, i32 0, i32 1
  %116 = load i64, i64* %115, align 8
  %117 = load %struct.metafile*, %struct.metafile** %4, align 8
  %118 = getelementptr inbounds %struct.metafile, %struct.metafile* %117, i32 0, i32 2
  %119 = load %struct.TYPE_3__*, %struct.TYPE_3__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %119, i32 0, i32 3
  %121 = load i64, i64* %120, align 8
  %122 = add nsw i64 %116, %121
  %123 = inttoptr i64 %122 to i8*
  %124 = load %struct.metafile*, %struct.metafile** %4, align 8
  %125 = getelementptr inbounds %struct.metafile, %struct.metafile* %124, i32 0, i32 0
  store i8* %123, i8** %125, align 8
  %126 = load i32, i32* @idx_fd, align 4
  %127 = load %struct.metafile*, %struct.metafile** %4, align 8
  %128 = getelementptr inbounds %struct.metafile, %struct.metafile* %127, i32 0, i32 1
  %129 = load i64, i64* %128, align 8
  %130 = load %struct.metafile*, %struct.metafile** %4, align 8
  %131 = getelementptr inbounds %struct.metafile, %struct.metafile* %130, i32 0, i32 2
  %132 = load %struct.TYPE_3__*, %struct.TYPE_3__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %132, i32 0, i32 2
  %134 = load i64, i64* %133, align 8
  %135 = call i64 @read(i32 %126, i64 %129, i64 %134)
  %136 = load %struct.metafile*, %struct.metafile** %4, align 8
  %137 = getelementptr inbounds %struct.metafile, %struct.metafile* %136, i32 0, i32 2
  %138 = load %struct.TYPE_3__*, %struct.TYPE_3__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %138, i32 0, i32 2
  %140 = load i64, i64* %139, align 8
  %141 = icmp eq i64 %135, %140
  %142 = zext i1 %141 to i32
  %143 = call i32 @assert(i32 %142)
  %144 = load i64, i64* @use_metafile_crc32, align 8
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %160

146:                                              ; preds = %113
  %147 = load %struct.metafile*, %struct.metafile** %4, align 8
  %148 = getelementptr inbounds %struct.metafile, %struct.metafile* %147, i32 0, i32 1
  %149 = load i64, i64* %148, align 8
  %150 = load %struct.metafile*, %struct.metafile** %4, align 8
  %151 = getelementptr inbounds %struct.metafile, %struct.metafile* %150, i32 0, i32 2
  %152 = load %struct.TYPE_3__*, %struct.TYPE_3__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %152, i32 0, i32 2
  %154 = load i64, i64* %153, align 8
  %155 = load %struct.metafile*, %struct.metafile** %4, align 8
  %156 = getelementptr inbounds %struct.metafile, %struct.metafile* %155, i32 0, i32 2
  %157 = load %struct.TYPE_3__*, %struct.TYPE_3__** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %157, i32 0, i32 4
  %159 = call i32 @crc32_check_and_repair(i64 %149, i64 %154, i32* %158, i32 1)
  br label %160

160:                                              ; preds = %146, %113
  %161 = load i32, i32* @verbosity, align 4
  %162 = icmp sge i32 %161, 4
  br i1 %162, label %163, label %200

163:                                              ; preds = %160
  %164 = load %struct.metafile*, %struct.metafile** %4, align 8
  %165 = getelementptr inbounds %struct.metafile, %struct.metafile* %164, i32 0, i32 0
  %166 = load i8*, i8** %165, align 8
  %167 = icmp ne i8* %166, null
  br i1 %167, label %168, label %200

168:                                              ; preds = %163
  store i32 0, i32* %5, align 4
  br label %169

169:                                              ; preds = %196, %168
  %170 = load i32, i32* %5, align 4
  %171 = sext i32 %170 to i64
  %172 = load %struct.metafile*, %struct.metafile** %4, align 8
  %173 = getelementptr inbounds %struct.metafile, %struct.metafile* %172, i32 0, i32 2
  %174 = load %struct.TYPE_3__*, %struct.TYPE_3__** %173, align 8
  %175 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %174, i32 0, i32 3
  %176 = load i64, i64* %175, align 8
  %177 = icmp slt i64 %171, %176
  br i1 %177, label %178, label %199

178:                                              ; preds = %169
  %179 = load i32, i32* @stderr, align 4
  %180 = load i32, i32* %3, align 4
  %181 = load i32, i32* %5, align 4
  %182 = call %struct.TYPE_4__* @metafile_get_entry(i32 %180, i32 %181)
  %183 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 8
  %185 = load i32, i32* %3, align 4
  %186 = load i32, i32* %5, align 4
  %187 = call %struct.TYPE_4__* @metafile_get_entry(i32 %185, i32 %186)
  %188 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %187, i32 0, i32 1
  %189 = load i32, i32* %188, align 4
  %190 = load i32, i32* %3, align 4
  %191 = load i32, i32* %5, align 4
  %192 = call %struct.TYPE_4__* @metafile_get_entry(i32 %190, i32 %191)
  %193 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %192, i32 0, i32 2
  %194 = load i8*, i8** %193, align 8
  %195 = call i32 (i32, i8*, ...) @fprintf(i32 %179, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i32 %184, i32 %189, i8* %194)
  br label %196

196:                                              ; preds = %178
  %197 = load i32, i32* %5, align 4
  %198 = add nsw i32 %197, 1
  store i32 %198, i32* %5, align 4
  br label %169

199:                                              ; preds = %169
  br label %200

200:                                              ; preds = %199, %163, %160
  %201 = load i32, i32* @metafiles_loaded, align 4
  %202 = add nsw i32 %201, 1
  store i32 %202, i32* @metafiles_loaded, align 4
  %203 = load %struct.metafile*, %struct.metafile** %4, align 8
  %204 = getelementptr inbounds %struct.metafile, %struct.metafile* %203, i32 0, i32 2
  %205 = load %struct.TYPE_3__*, %struct.TYPE_3__** %204, align 8
  %206 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %205, i32 0, i32 2
  %207 = load i64, i64* %206, align 8
  %208 = load i32, i32* @allocated_metafile_bytes, align 4
  %209 = sext i32 %208 to i64
  %210 = add nsw i64 %209, %207
  %211 = trunc i64 %210 to i32
  store i32 %211, i32* @allocated_metafile_bytes, align 4
  %212 = load i32, i32* %3, align 4
  %213 = call i32 @add_use(i32 %212)
  store i32 0, i32* %2, align 4
  br label %214

214:                                              ; preds = %200, %100, %45
  %215 = load i32, i32* %2, align 4
  ret i32 %215
}

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @free_metafiles(...) #1

declare dso_local i64 @lseek(i32, i64, i32) #1

declare dso_local i8* @zzmalloc(i64) #1

declare dso_local i32 @metafile_unload_LRU(...) #1

declare dso_local i64 @read(i32, i64, i64) #1

declare dso_local i32 @crc32_check_and_repair(i64, i64, i32*, i32) #1

declare dso_local %struct.TYPE_4__* @metafile_get_entry(i32, i32) #1

declare dso_local i32 @add_use(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
