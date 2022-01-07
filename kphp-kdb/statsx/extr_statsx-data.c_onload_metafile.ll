; ModuleID = '/home/carl/AnghaBench/kphp-kdb/statsx/extr_statsx-data.c_onload_metafile.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/statsx/extr_statsx-data.c_onload_metafile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connection = type { i32 }
%struct.aio_connection = type { i64, i64 }
%struct.metafile = type { i32, i32, %struct.aio_connection*, i64, i32 }

@verbosity = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"onload_metafile(%p,%d)\0A\00", align 1
@ct_aio = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [38 x i8] c"assertion (meta->aio == a) will fail\0A\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"%p != %p\0A\00", align 1
@.str.3 = private unnamed_addr constant [70 x i8] c"ERROR reading metafile (counter %lld): read %d bytes out of %lld: %m\0A\00", align 1
@tot_aio_fails = common dso_local global i32 0, align 4
@tot_aio_loaded_bytes = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [34 x i8] c"*** Read metafile: read %d bytes\0A\00", align 1
@tot_user_metafile_bytes = common dso_local global i32 0, align 4
@tot_user_metafiles = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @onload_metafile(%struct.connection* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.connection*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.aio_connection*, align 8
  %7 = alloca %struct.metafile*, align 8
  store %struct.connection* %0, %struct.connection** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* @verbosity, align 4
  %9 = icmp sgt i32 %8, 2
  br i1 %9, label %10, label %15

10:                                               ; preds = %2
  %11 = load i32, i32* @stderr, align 4
  %12 = load %struct.connection*, %struct.connection** %4, align 8
  %13 = load i32, i32* %5, align 4
  %14 = call i32 (i32, i8*, ...) @fprintf(i32 %11, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), %struct.connection* %12, i32 %13)
  br label %15

15:                                               ; preds = %10, %2
  %16 = load %struct.connection*, %struct.connection** %4, align 8
  %17 = bitcast %struct.connection* %16 to %struct.aio_connection*
  store %struct.aio_connection* %17, %struct.aio_connection** %6, align 8
  %18 = load %struct.aio_connection*, %struct.aio_connection** %6, align 8
  %19 = getelementptr inbounds %struct.aio_connection, %struct.aio_connection* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = inttoptr i64 %20 to %struct.metafile*
  store %struct.metafile* %21, %struct.metafile** %7, align 8
  %22 = load %struct.aio_connection*, %struct.aio_connection** %6, align 8
  %23 = getelementptr inbounds %struct.aio_connection, %struct.aio_connection* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @ct_aio, align 8
  %26 = icmp eq i64 %24, %25
  %27 = zext i1 %26 to i32
  %28 = call i32 @assert(i32 %27)
  %29 = load %struct.metafile*, %struct.metafile** %7, align 8
  %30 = icmp ne %struct.metafile* %29, null
  %31 = zext i1 %30 to i32
  %32 = call i32 @assert(i32 %31)
  %33 = load %struct.metafile*, %struct.metafile** %7, align 8
  %34 = getelementptr inbounds %struct.metafile, %struct.metafile* %33, i32 0, i32 2
  %35 = load %struct.aio_connection*, %struct.aio_connection** %34, align 8
  %36 = load %struct.aio_connection*, %struct.aio_connection** %6, align 8
  %37 = icmp ne %struct.aio_connection* %35, %36
  br i1 %37, label %38, label %47

38:                                               ; preds = %15
  %39 = load i32, i32* @stderr, align 4
  %40 = call i32 (i32, i8*, ...) @fprintf(i32 %39, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  %41 = load i32, i32* @stderr, align 4
  %42 = load %struct.metafile*, %struct.metafile** %7, align 8
  %43 = getelementptr inbounds %struct.metafile, %struct.metafile* %42, i32 0, i32 2
  %44 = load %struct.aio_connection*, %struct.aio_connection** %43, align 8
  %45 = load %struct.aio_connection*, %struct.aio_connection** %6, align 8
  %46 = call i32 (i32, i8*, ...) @fprintf(i32 %41, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), %struct.aio_connection* %44, %struct.aio_connection* %45)
  br label %47

47:                                               ; preds = %38, %15
  %48 = load %struct.metafile*, %struct.metafile** %7, align 8
  %49 = getelementptr inbounds %struct.metafile, %struct.metafile* %48, i32 0, i32 2
  %50 = load %struct.aio_connection*, %struct.aio_connection** %49, align 8
  %51 = load %struct.aio_connection*, %struct.aio_connection** %6, align 8
  %52 = icmp eq %struct.aio_connection* %50, %51
  %53 = zext i1 %52 to i32
  %54 = call i32 @assert(i32 %53)
  %55 = load i32, i32* %5, align 4
  %56 = load %struct.metafile*, %struct.metafile** %7, align 8
  %57 = getelementptr inbounds %struct.metafile, %struct.metafile* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = icmp ne i32 %55, %58
  br i1 %59, label %60, label %91

60:                                               ; preds = %47
  %61 = load i32, i32* @verbosity, align 4
  %62 = icmp sge i32 %61, 0
  br i1 %62, label %63, label %73

63:                                               ; preds = %60
  %64 = load i32, i32* @stderr, align 4
  %65 = load %struct.metafile*, %struct.metafile** %7, align 8
  %66 = getelementptr inbounds %struct.metafile, %struct.metafile* %65, i32 0, i32 4
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* %5, align 4
  %69 = load %struct.metafile*, %struct.metafile** %7, align 8
  %70 = getelementptr inbounds %struct.metafile, %struct.metafile* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = call i32 (i32, i8*, ...) @fprintf(i32 %64, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.3, i64 0, i64 0), i32 %67, i32 %68, i32 %71)
  br label %73

73:                                               ; preds = %63, %60
  %74 = load %struct.metafile*, %struct.metafile** %7, align 8
  %75 = getelementptr inbounds %struct.metafile, %struct.metafile* %74, i32 0, i32 3
  %76 = load i64, i64* %75, align 8
  %77 = load %struct.metafile*, %struct.metafile** %7, align 8
  %78 = getelementptr inbounds %struct.metafile, %struct.metafile* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @zzfree(i64 %76, i32 %79)
  %81 = load %struct.metafile*, %struct.metafile** %7, align 8
  %82 = getelementptr inbounds %struct.metafile, %struct.metafile* %81, i32 0, i32 3
  store i64 0, i64* %82, align 8
  %83 = load %struct.metafile*, %struct.metafile** %7, align 8
  %84 = getelementptr inbounds %struct.metafile, %struct.metafile* %83, i32 0, i32 2
  store %struct.aio_connection* null, %struct.aio_connection** %84, align 8
  %85 = load i32, i32* @tot_aio_fails, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* @tot_aio_fails, align 4
  %87 = load %struct.metafile*, %struct.metafile** %7, align 8
  %88 = getelementptr inbounds %struct.metafile, %struct.metafile* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = or i32 %89, 1
  store i32 %90, i32* %88, align 4
  store i32 0, i32* %3, align 4
  br label %141

91:                                               ; preds = %47
  %92 = load i32, i32* %5, align 4
  %93 = load %struct.metafile*, %struct.metafile** %7, align 8
  %94 = getelementptr inbounds %struct.metafile, %struct.metafile* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = icmp eq i32 %92, %95
  %97 = zext i1 %96 to i32
  %98 = call i32 @assert(i32 %97)
  %99 = load i32, i32* %5, align 4
  %100 = load i32, i32* @tot_aio_loaded_bytes, align 4
  %101 = add nsw i32 %100, %99
  store i32 %101, i32* @tot_aio_loaded_bytes, align 4
  %102 = load i32, i32* @verbosity, align 4
  %103 = icmp sgt i32 %102, 2
  br i1 %103, label %104, label %108

104:                                              ; preds = %91
  %105 = load i32, i32* @stderr, align 4
  %106 = load i32, i32* %5, align 4
  %107 = call i32 (i32, i8*, ...) @fprintf(i32 %105, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0), i32 %106)
  br label %108

108:                                              ; preds = %104, %91
  %109 = load %struct.metafile*, %struct.metafile** %7, align 8
  %110 = getelementptr inbounds %struct.metafile, %struct.metafile* %109, i32 0, i32 3
  %111 = load i64, i64* %110, align 8
  %112 = load %struct.metafile*, %struct.metafile** %7, align 8
  %113 = getelementptr inbounds %struct.metafile, %struct.metafile* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = load %struct.metafile*, %struct.metafile** %7, align 8
  %116 = getelementptr inbounds %struct.metafile, %struct.metafile* %115, i32 0, i32 4
  %117 = load i32, i32* %116, align 8
  %118 = call i32 @onload_counter(i64 %111, i32 %114, i32 %117, i32 0)
  %119 = load %struct.metafile*, %struct.metafile** %7, align 8
  %120 = getelementptr inbounds %struct.metafile, %struct.metafile* %119, i32 0, i32 3
  %121 = load i64, i64* %120, align 8
  %122 = load %struct.metafile*, %struct.metafile** %7, align 8
  %123 = getelementptr inbounds %struct.metafile, %struct.metafile* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = call i32 @zzfree(i64 %121, i32 %124)
  %126 = load %struct.metafile*, %struct.metafile** %7, align 8
  %127 = getelementptr inbounds %struct.metafile, %struct.metafile* %126, i32 0, i32 3
  store i64 0, i64* %127, align 8
  %128 = load %struct.metafile*, %struct.metafile** %7, align 8
  %129 = getelementptr inbounds %struct.metafile, %struct.metafile* %128, i32 0, i32 2
  store %struct.aio_connection* null, %struct.aio_connection** %129, align 8
  %130 = load %struct.metafile*, %struct.metafile** %7, align 8
  %131 = getelementptr inbounds %struct.metafile, %struct.metafile* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = and i32 %132, -2
  store i32 %133, i32* %131, align 4
  %134 = load %struct.metafile*, %struct.metafile** %7, align 8
  %135 = getelementptr inbounds %struct.metafile, %struct.metafile* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = load i32, i32* @tot_user_metafile_bytes, align 4
  %138 = add nsw i32 %137, %136
  store i32 %138, i32* @tot_user_metafile_bytes, align 4
  %139 = load i32, i32* @tot_user_metafiles, align 4
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* @tot_user_metafiles, align 4
  store i32 1, i32* %3, align 4
  br label %141

141:                                              ; preds = %108, %73
  %142 = load i32, i32* %3, align 4
  ret i32 %142
}

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @zzfree(i64, i32) #1

declare dso_local i32 @onload_counter(i64, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
