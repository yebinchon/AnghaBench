; ModuleID = '/home/carl/AnghaBench/kphp-kdb/news/extr_news-data.c_onload_metafile.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/news/extr_news-data.c_onload_metafile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.metafile = type { %struct.aio_connection*, i64 }
%struct.aio_connection = type { i64, i64 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.connection = type { i32 }

@verbosity = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"onload_metafile(%p,%d)\0A\00", align 1
@ct_aio = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [38 x i8] c"assertion (meta->aio == a) will fail\0A\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"%p != %p\0A\00", align 1
@large_metafiles = common dso_local global %struct.metafile* null, align 8
@large_users_number = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [73 x i8] c"*** Read metafile %d for large user %d : read %d bytes at position %lld\0A\00", align 1
@large_users = common dso_local global %struct.TYPE_2__* null, align 8
@index_large_data_offset = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [92 x i8] c"ERROR reading metafile %d for large user %d at position %lld: read %d bytes out of %ld: %m\0A\00", align 1
@metafiles_load_errors = common dso_local global i32 0, align 4
@metafiles_loaded = common dso_local global i32 0, align 4
@metafiles_load_success = common dso_local global i32 0, align 4
@tot_aio_loaded_bytes = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @onload_metafile(%struct.connection* %0, i32 %1) #0 {
  %3 = alloca %struct.connection*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.aio_connection*, align 8
  %6 = alloca %struct.metafile*, align 8
  %7 = alloca i32, align 4
  store %struct.connection* %0, %struct.connection** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* @verbosity, align 4
  %9 = icmp sge i32 %8, 2
  br i1 %9, label %10, label %15

10:                                               ; preds = %2
  %11 = load i32, i32* @stderr, align 4
  %12 = load %struct.connection*, %struct.connection** %3, align 8
  %13 = load i32, i32* %4, align 4
  %14 = call i32 (i32, i8*, ...) @fprintf(i32 %11, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), %struct.connection* %12, i32 %13)
  br label %15

15:                                               ; preds = %10, %2
  %16 = load %struct.connection*, %struct.connection** %3, align 8
  %17 = bitcast %struct.connection* %16 to %struct.aio_connection*
  store %struct.aio_connection* %17, %struct.aio_connection** %5, align 8
  %18 = load %struct.aio_connection*, %struct.aio_connection** %5, align 8
  %19 = getelementptr inbounds %struct.aio_connection, %struct.aio_connection* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = inttoptr i64 %20 to %struct.metafile*
  store %struct.metafile* %21, %struct.metafile** %6, align 8
  %22 = load %struct.aio_connection*, %struct.aio_connection** %5, align 8
  %23 = getelementptr inbounds %struct.aio_connection, %struct.aio_connection* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @ct_aio, align 8
  %26 = icmp eq i64 %24, %25
  %27 = zext i1 %26 to i32
  %28 = call i32 @assert(i32 %27)
  %29 = load %struct.metafile*, %struct.metafile** %6, align 8
  %30 = icmp ne %struct.metafile* %29, null
  %31 = zext i1 %30 to i32
  %32 = call i32 @assert(i32 %31)
  %33 = load %struct.metafile*, %struct.metafile** %6, align 8
  %34 = getelementptr inbounds %struct.metafile, %struct.metafile* %33, i32 0, i32 0
  %35 = load %struct.aio_connection*, %struct.aio_connection** %34, align 8
  %36 = load %struct.aio_connection*, %struct.aio_connection** %5, align 8
  %37 = icmp ne %struct.aio_connection* %35, %36
  br i1 %37, label %38, label %47

38:                                               ; preds = %15
  %39 = load i32, i32* @stderr, align 4
  %40 = call i32 (i32, i8*, ...) @fprintf(i32 %39, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  %41 = load i32, i32* @stderr, align 4
  %42 = load %struct.metafile*, %struct.metafile** %6, align 8
  %43 = getelementptr inbounds %struct.metafile, %struct.metafile* %42, i32 0, i32 0
  %44 = load %struct.aio_connection*, %struct.aio_connection** %43, align 8
  %45 = load %struct.aio_connection*, %struct.aio_connection** %5, align 8
  %46 = call i32 (i32, i8*, ...) @fprintf(i32 %41, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), %struct.aio_connection* %44, %struct.aio_connection* %45)
  br label %47

47:                                               ; preds = %38, %15
  %48 = load %struct.metafile*, %struct.metafile** %6, align 8
  %49 = getelementptr inbounds %struct.metafile, %struct.metafile* %48, i32 0, i32 0
  %50 = load %struct.aio_connection*, %struct.aio_connection** %49, align 8
  %51 = load %struct.aio_connection*, %struct.aio_connection** %5, align 8
  %52 = icmp eq %struct.aio_connection* %50, %51
  %53 = zext i1 %52 to i32
  %54 = call i32 @assert(i32 %53)
  %55 = load %struct.metafile*, %struct.metafile** %6, align 8
  %56 = load %struct.metafile*, %struct.metafile** @large_metafiles, align 8
  %57 = ptrtoint %struct.metafile* %55 to i64
  %58 = ptrtoint %struct.metafile* %56 to i64
  %59 = sub i64 %57, %58
  %60 = sdiv exact i64 %59, 16
  %61 = trunc i64 %60 to i32
  store i32 %61, i32* %7, align 4
  %62 = load i32, i32* %7, align 4
  %63 = icmp sle i32 0, %62
  br i1 %63, label %64, label %68

64:                                               ; preds = %47
  %65 = load i32, i32* %7, align 4
  %66 = load i32, i32* @large_users_number, align 4
  %67 = icmp slt i32 %65, %66
  br label %68

68:                                               ; preds = %64, %47
  %69 = phi i1 [ false, %47 ], [ %67, %64 ]
  %70 = zext i1 %69 to i32
  %71 = call i32 @assert(i32 %70)
  %72 = load i32, i32* @verbosity, align 4
  %73 = icmp sge i32 %72, 2
  br i1 %73, label %74, label %96

74:                                               ; preds = %68
  %75 = load i32, i32* @stderr, align 4
  %76 = load i32, i32* %7, align 4
  %77 = load %struct.TYPE_2__*, %struct.TYPE_2__** @large_users, align 8
  %78 = load i32, i32* %7, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* %4, align 4
  %84 = load i32, i32* @index_large_data_offset, align 4
  %85 = sext i32 %84 to i64
  %86 = load %struct.TYPE_2__*, %struct.TYPE_2__** @large_users, align 8
  %87 = load i32, i32* %7, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i64 %88
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = sext i32 %91 to i64
  %93 = mul i64 8, %92
  %94 = add i64 %85, %93
  %95 = call i32 (i32, i8*, ...) @fprintf(i32 %75, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.3, i64 0, i64 0), i32 %76, i32 %82, i32 %83, i64 %94)
  br label %96

96:                                               ; preds = %74, %68
  %97 = load i32, i32* %4, align 4
  %98 = sext i32 %97 to i64
  %99 = load %struct.TYPE_2__*, %struct.TYPE_2__** @large_users, align 8
  %100 = load i32, i32* %7, align 4
  %101 = add nsw i32 %100, 1
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i64 %102
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.TYPE_2__*, %struct.TYPE_2__** @large_users, align 8
  %107 = load i32, i32* %7, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i64 %108
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = sub nsw i32 %105, %111
  %113 = sext i32 %112 to i64
  %114 = mul i64 8, %113
  %115 = icmp ne i64 %98, %114
  br i1 %115, label %116, label %185

116:                                              ; preds = %96
  %117 = load i32, i32* @verbosity, align 4
  %118 = icmp sge i32 %117, 0
  br i1 %118, label %119, label %157

119:                                              ; preds = %116
  %120 = load i32, i32* @stderr, align 4
  %121 = load i32, i32* %7, align 4
  %122 = load %struct.TYPE_2__*, %struct.TYPE_2__** @large_users, align 8
  %123 = load i32, i32* %7, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %122, i64 %124
  %126 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = load i32, i32* @index_large_data_offset, align 4
  %129 = sext i32 %128 to i64
  %130 = load %struct.TYPE_2__*, %struct.TYPE_2__** @large_users, align 8
  %131 = load i32, i32* %7, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %130, i64 %132
  %134 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = sext i32 %135 to i64
  %137 = mul i64 8, %136
  %138 = add i64 %129, %137
  %139 = load i32, i32* %4, align 4
  %140 = load %struct.TYPE_2__*, %struct.TYPE_2__** @large_users, align 8
  %141 = load i32, i32* %7, align 4
  %142 = add nsw i32 %141, 1
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %140, i64 %143
  %145 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = load %struct.TYPE_2__*, %struct.TYPE_2__** @large_users, align 8
  %148 = load i32, i32* %7, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %147, i64 %149
  %151 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = sub nsw i32 %146, %152
  %154 = sext i32 %153 to i64
  %155 = mul nsw i64 8, %154
  %156 = call i32 (i32, i8*, ...) @fprintf(i32 %120, i8* getelementptr inbounds ([92 x i8], [92 x i8]* @.str.4, i64 0, i64 0), i32 %121, i32 %127, i64 %138, i32 %139, i64 %155)
  br label %157

157:                                              ; preds = %119, %116
  %158 = load %struct.metafile*, %struct.metafile** %6, align 8
  %159 = getelementptr inbounds %struct.metafile, %struct.metafile* %158, i32 0, i32 0
  store %struct.aio_connection* null, %struct.aio_connection** %159, align 8
  %160 = load %struct.metafile*, %struct.metafile** %6, align 8
  %161 = getelementptr inbounds %struct.metafile, %struct.metafile* %160, i32 0, i32 1
  %162 = load i64, i64* %161, align 8
  %163 = load %struct.TYPE_2__*, %struct.TYPE_2__** @large_users, align 8
  %164 = load i32, i32* %7, align 4
  %165 = add nsw i32 %164, 1
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %163, i64 %166
  %168 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %167, i32 0, i32 1
  %169 = load i32, i32* %168, align 4
  %170 = load %struct.TYPE_2__*, %struct.TYPE_2__** @large_users, align 8
  %171 = load i32, i32* %7, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %170, i64 %172
  %174 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 4
  %176 = sub nsw i32 %169, %175
  %177 = sext i32 %176 to i64
  %178 = mul i64 8, %177
  %179 = trunc i64 %178 to i32
  %180 = call i32 @metafile_free(i64 %162, i32 %179)
  %181 = load %struct.metafile*, %struct.metafile** %6, align 8
  %182 = getelementptr inbounds %struct.metafile, %struct.metafile* %181, i32 0, i32 1
  store i64 0, i64* %182, align 8
  %183 = load i32, i32* @metafiles_load_errors, align 4
  %184 = add nsw i32 %183, 1
  store i32 %184, i32* @metafiles_load_errors, align 4
  br label %197

185:                                              ; preds = %96
  %186 = load %struct.metafile*, %struct.metafile** %6, align 8
  %187 = getelementptr inbounds %struct.metafile, %struct.metafile* %186, i32 0, i32 0
  store %struct.aio_connection* null, %struct.aio_connection** %187, align 8
  %188 = load i32, i32* @metafiles_loaded, align 4
  %189 = add nsw i32 %188, 1
  store i32 %189, i32* @metafiles_loaded, align 4
  %190 = load i32, i32* %7, align 4
  %191 = call i32 @add_use(i32 %190)
  %192 = load i32, i32* @metafiles_load_success, align 4
  %193 = add nsw i32 %192, 1
  store i32 %193, i32* @metafiles_load_success, align 4
  %194 = load i32, i32* %4, align 4
  %195 = load i32, i32* @tot_aio_loaded_bytes, align 4
  %196 = add nsw i32 %195, %194
  store i32 %196, i32* @tot_aio_loaded_bytes, align 4
  br label %197

197:                                              ; preds = %185, %157
  ret i32 1
}

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @metafile_free(i64, i32) #1

declare dso_local i32 @add_use(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
