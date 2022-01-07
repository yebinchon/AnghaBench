; ModuleID = '/home/carl/AnghaBench/kphp-kdb/pmemcached/extr_pmemcached-index-disk.c_onload_metafile.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/pmemcached/extr_pmemcached-index-disk.c_onload_metafile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connection = type { i32 }
%struct.aio_connection = type { i64, i64 }
%struct.metafile = type { %struct.TYPE_2__*, i64, %struct.aio_connection*, i64 }
%struct.TYPE_2__ = type { i32, i32 }

@verbosity = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"onload_metafile(%p,%d)\0A\00", align 1
@ct_aio = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [38 x i8] c"assertion (meta->aio == a) will fail\0A\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"%p != %p\0A\00", align 1
@.str.3 = private unnamed_addr constant [53 x i8] c"ERROR reading metafile: read %d bytes out of %d: %m\0A\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"*** Read metafile: read %d bytes\0A\00", align 1
@allocated_metafile_bytes = common dso_local global i32 0, align 4
@metafiles_load_errors = common dso_local global i32 0, align 4
@metafiles_loaded = common dso_local global i32 0, align 4
@metafiles = common dso_local global i32 0, align 4
@metafiles_load_success = common dso_local global i32 0, align 4
@use_metafile_crc32 = common dso_local global i64 0, align 8
@tot_aio_loaded_bytes = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @onload_metafile(%struct.connection* %0, i32 %1) #0 {
  %3 = alloca %struct.connection*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.aio_connection*, align 8
  %6 = alloca %struct.metafile*, align 8
  store %struct.connection* %0, %struct.connection** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* @verbosity, align 4
  %8 = icmp sgt i32 %7, 2
  br i1 %8, label %9, label %14

9:                                                ; preds = %2
  %10 = load i32, i32* @stderr, align 4
  %11 = load %struct.connection*, %struct.connection** %3, align 8
  %12 = load i32, i32* %4, align 4
  %13 = call i32 (i32, i8*, ...) @fprintf(i32 %10, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), %struct.connection* %11, i32 %12)
  br label %14

14:                                               ; preds = %9, %2
  %15 = load %struct.connection*, %struct.connection** %3, align 8
  %16 = bitcast %struct.connection* %15 to %struct.aio_connection*
  store %struct.aio_connection* %16, %struct.aio_connection** %5, align 8
  %17 = load %struct.aio_connection*, %struct.aio_connection** %5, align 8
  %18 = getelementptr inbounds %struct.aio_connection, %struct.aio_connection* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = inttoptr i64 %19 to %struct.metafile*
  store %struct.metafile* %20, %struct.metafile** %6, align 8
  %21 = load %struct.aio_connection*, %struct.aio_connection** %5, align 8
  %22 = getelementptr inbounds %struct.aio_connection, %struct.aio_connection* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @ct_aio, align 8
  %25 = icmp eq i64 %23, %24
  %26 = zext i1 %25 to i32
  %27 = call i32 @assert(i32 %26)
  %28 = load %struct.metafile*, %struct.metafile** %6, align 8
  %29 = icmp ne %struct.metafile* %28, null
  %30 = zext i1 %29 to i32
  %31 = call i32 @assert(i32 %30)
  %32 = load %struct.metafile*, %struct.metafile** %6, align 8
  %33 = getelementptr inbounds %struct.metafile, %struct.metafile* %32, i32 0, i32 2
  %34 = load %struct.aio_connection*, %struct.aio_connection** %33, align 8
  %35 = load %struct.aio_connection*, %struct.aio_connection** %5, align 8
  %36 = icmp ne %struct.aio_connection* %34, %35
  br i1 %36, label %37, label %46

37:                                               ; preds = %14
  %38 = load i32, i32* @stderr, align 4
  %39 = call i32 (i32, i8*, ...) @fprintf(i32 %38, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  %40 = load i32, i32* @stderr, align 4
  %41 = load %struct.metafile*, %struct.metafile** %6, align 8
  %42 = getelementptr inbounds %struct.metafile, %struct.metafile* %41, i32 0, i32 2
  %43 = load %struct.aio_connection*, %struct.aio_connection** %42, align 8
  %44 = load %struct.aio_connection*, %struct.aio_connection** %5, align 8
  %45 = call i32 (i32, i8*, ...) @fprintf(i32 %40, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), %struct.aio_connection* %43, %struct.aio_connection* %44)
  br label %46

46:                                               ; preds = %37, %14
  %47 = load %struct.metafile*, %struct.metafile** %6, align 8
  %48 = getelementptr inbounds %struct.metafile, %struct.metafile* %47, i32 0, i32 2
  %49 = load %struct.aio_connection*, %struct.aio_connection** %48, align 8
  %50 = load %struct.aio_connection*, %struct.aio_connection** %5, align 8
  %51 = icmp eq %struct.aio_connection* %49, %50
  %52 = zext i1 %51 to i32
  %53 = call i32 @assert(i32 %52)
  %54 = load i32, i32* %4, align 4
  %55 = load %struct.metafile*, %struct.metafile** %6, align 8
  %56 = getelementptr inbounds %struct.metafile, %struct.metafile* %55, i32 0, i32 0
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = icmp ne i32 %54, %59
  br i1 %60, label %61, label %74

61:                                               ; preds = %46
  %62 = load i32, i32* @verbosity, align 4
  %63 = icmp sgt i32 %62, 0
  br i1 %63, label %64, label %73

64:                                               ; preds = %61
  %65 = load i32, i32* @stderr, align 4
  %66 = load i32, i32* %4, align 4
  %67 = load %struct.metafile*, %struct.metafile** %6, align 8
  %68 = getelementptr inbounds %struct.metafile, %struct.metafile* %67, i32 0, i32 0
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 (i32, i8*, ...) @fprintf(i32 %65, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.3, i64 0, i64 0), i32 %66, i32 %71)
  br label %73

73:                                               ; preds = %64, %61
  br label %74

74:                                               ; preds = %73, %46
  %75 = load i32, i32* @verbosity, align 4
  %76 = icmp sgt i32 %75, 2
  br i1 %76, label %77, label %81

77:                                               ; preds = %74
  %78 = load i32, i32* @stderr, align 4
  %79 = load i32, i32* %4, align 4
  %80 = call i32 (i32, i8*, ...) @fprintf(i32 %78, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0), i32 %79)
  br label %81

81:                                               ; preds = %77, %74
  %82 = load i32, i32* %4, align 4
  %83 = load %struct.metafile*, %struct.metafile** %6, align 8
  %84 = getelementptr inbounds %struct.metafile, %struct.metafile* %83, i32 0, i32 0
  %85 = load %struct.TYPE_2__*, %struct.TYPE_2__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = icmp ne i32 %82, %87
  br i1 %88, label %89, label %114

89:                                               ; preds = %81
  %90 = load %struct.metafile*, %struct.metafile** %6, align 8
  %91 = getelementptr inbounds %struct.metafile, %struct.metafile* %90, i32 0, i32 2
  store %struct.aio_connection* null, %struct.aio_connection** %91, align 8
  %92 = load %struct.metafile*, %struct.metafile** %6, align 8
  %93 = getelementptr inbounds %struct.metafile, %struct.metafile* %92, i32 0, i32 3
  store i64 0, i64* %93, align 8
  %94 = load %struct.metafile*, %struct.metafile** %6, align 8
  %95 = getelementptr inbounds %struct.metafile, %struct.metafile* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = load %struct.metafile*, %struct.metafile** %6, align 8
  %98 = getelementptr inbounds %struct.metafile, %struct.metafile* %97, i32 0, i32 0
  %99 = load %struct.TYPE_2__*, %struct.TYPE_2__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @zzfree(i64 %96, i32 %101)
  %103 = load %struct.metafile*, %struct.metafile** %6, align 8
  %104 = getelementptr inbounds %struct.metafile, %struct.metafile* %103, i32 0, i32 1
  store i64 0, i64* %104, align 8
  %105 = load %struct.metafile*, %struct.metafile** %6, align 8
  %106 = getelementptr inbounds %struct.metafile, %struct.metafile* %105, i32 0, i32 0
  %107 = load %struct.TYPE_2__*, %struct.TYPE_2__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* @allocated_metafile_bytes, align 4
  %111 = sub nsw i32 %110, %109
  store i32 %111, i32* @allocated_metafile_bytes, align 4
  %112 = load i32, i32* @metafiles_load_errors, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* @metafiles_load_errors, align 4
  br label %147

114:                                              ; preds = %81
  %115 = load %struct.metafile*, %struct.metafile** %6, align 8
  %116 = getelementptr inbounds %struct.metafile, %struct.metafile* %115, i32 0, i32 2
  store %struct.aio_connection* null, %struct.aio_connection** %116, align 8
  %117 = load i32, i32* @metafiles_loaded, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* @metafiles_loaded, align 4
  %119 = load %struct.metafile*, %struct.metafile** %6, align 8
  %120 = load i32, i32* @metafiles, align 4
  %121 = sext i32 %120 to i64
  %122 = sub i64 0, %121
  %123 = getelementptr inbounds %struct.metafile, %struct.metafile* %119, i64 %122
  %124 = call i32 @add_use(%struct.metafile* %123)
  %125 = load i32, i32* @metafiles_load_success, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* @metafiles_load_success, align 4
  %127 = load i64, i64* @use_metafile_crc32, align 8
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %143

129:                                              ; preds = %114
  %130 = load %struct.metafile*, %struct.metafile** %6, align 8
  %131 = getelementptr inbounds %struct.metafile, %struct.metafile* %130, i32 0, i32 1
  %132 = load i64, i64* %131, align 8
  %133 = load %struct.metafile*, %struct.metafile** %6, align 8
  %134 = getelementptr inbounds %struct.metafile, %struct.metafile* %133, i32 0, i32 0
  %135 = load %struct.TYPE_2__*, %struct.TYPE_2__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = load %struct.metafile*, %struct.metafile** %6, align 8
  %139 = getelementptr inbounds %struct.metafile, %struct.metafile* %138, i32 0, i32 0
  %140 = load %struct.TYPE_2__*, %struct.TYPE_2__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %140, i32 0, i32 1
  %142 = call i32 @crc32_check_and_repair(i64 %132, i32 %137, i32* %141, i32 1)
  br label %143

143:                                              ; preds = %129, %114
  %144 = load i32, i32* %4, align 4
  %145 = load i32, i32* @tot_aio_loaded_bytes, align 4
  %146 = add nsw i32 %145, %144
  store i32 %146, i32* @tot_aio_loaded_bytes, align 4
  br label %147

147:                                              ; preds = %143, %89
  ret i32 1
}

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @zzfree(i64, i32) #1

declare dso_local i32 @add_use(%struct.metafile*) #1

declare dso_local i32 @crc32_check_and_repair(i64, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
