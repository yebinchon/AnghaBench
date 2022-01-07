; ModuleID = '/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-index.c_onload_ad_metafile.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-index.c_onload_ad_metafile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connection = type { i32 }
%struct.aio_connection = type { i64, i64 }
%struct.TYPE_3__ = type { i32, i64, i32, %struct.aio_connection*, %struct.advert* }
%struct.advert = type { i32, %struct.TYPE_3__*, i32 }

@verbosity = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"onload_ad_metafile(%p,%d)\0A\00", align 1
@ct_aio = common dso_local global i64 0, align 8
@aio_read_errors = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [111 x i8] c"ERROR reading ad %d data from index at position %lld [pending aio queries: %lld]: read %d bytes out of %d: %m\0A\00", align 1
@active_aio_queries = common dso_local global i32 0, align 4
@allocated_metafile_bytes = common dso_local global i64 0, align 8
@allocated_metafiles = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [90 x i8] c"*** Read ad %d data from index at position %lld: read %d bytes at address %p, magic %08x\0A\00", align 1
@RBuff = common dso_local global i32 0, align 4
@RBuffEnd = common dso_local global i32 0, align 4
@idx_bytes = common dso_local global i64 0, align 8
@idx_metafile_pos = common dso_local global i64 0, align 8
@ADF_ANCIENT = common dso_local global i32 0, align 4
@ancient_ads_pending = common dso_local global i32 0, align 4
@ancient_ads_aio_loaded = common dso_local global i32 0, align 4
@ancient_ads_aio_loaded_bytes = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @onload_ad_metafile(%struct.connection* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.connection*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.aio_connection*, align 8
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca %struct.advert*, align 8
  %9 = alloca i64, align 8
  store %struct.connection* %0, %struct.connection** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load i64, i64* @verbosity, align 8
  %11 = icmp sgt i64 %10, 0
  br i1 %11, label %12, label %19

12:                                               ; preds = %2
  %13 = load i32, i32* @stderr, align 4
  %14 = load %struct.connection*, %struct.connection** %4, align 8
  %15 = ptrtoint %struct.connection* %14 to i32
  %16 = load i32, i32* %5, align 4
  %17 = sext i32 %16 to i64
  %18 = call i32 (i32, i8*, i32, i64, ...) @fprintf(i32 %13, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %15, i64 %17)
  br label %19

19:                                               ; preds = %12, %2
  %20 = load %struct.connection*, %struct.connection** %4, align 8
  %21 = bitcast %struct.connection* %20 to %struct.aio_connection*
  store %struct.aio_connection* %21, %struct.aio_connection** %6, align 8
  %22 = load %struct.aio_connection*, %struct.aio_connection** %6, align 8
  %23 = getelementptr inbounds %struct.aio_connection, %struct.aio_connection* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = inttoptr i64 %24 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %25, %struct.TYPE_3__** %7, align 8
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 4
  %28 = load %struct.advert*, %struct.advert** %27, align 8
  store %struct.advert* %28, %struct.advert** %8, align 8
  %29 = load %struct.aio_connection*, %struct.aio_connection** %6, align 8
  %30 = getelementptr inbounds %struct.aio_connection, %struct.aio_connection* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @ct_aio, align 8
  %33 = icmp eq i64 %31, %32
  %34 = zext i1 %33 to i32
  %35 = call i32 @assert(i32 %34)
  %36 = load %struct.advert*, %struct.advert** %8, align 8
  %37 = getelementptr inbounds %struct.advert, %struct.advert* %36, i32 0, i32 1
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %37, align 8
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %40 = icmp eq %struct.TYPE_3__* %38, %39
  %41 = zext i1 %40 to i32
  %42 = call i32 @assert(i32 %41)
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 3
  %45 = load %struct.aio_connection*, %struct.aio_connection** %44, align 8
  %46 = load %struct.aio_connection*, %struct.aio_connection** %6, align 8
  %47 = icmp eq %struct.aio_connection* %45, %46
  %48 = zext i1 %47 to i32
  %49 = call i32 @assert(i32 %48)
  %50 = load i32, i32* %5, align 4
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = icmp slt i32 %50, %53
  br i1 %54, label %55, label %89

55:                                               ; preds = %19
  %56 = load i32, i32* @aio_read_errors, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* @aio_read_errors, align 4
  %58 = load i64, i64* @verbosity, align 8
  %59 = icmp sge i64 %58, 0
  br i1 %59, label %60, label %74

60:                                               ; preds = %55
  %61 = load i32, i32* @stderr, align 4
  %62 = load %struct.advert*, %struct.advert** %8, align 8
  %63 = getelementptr inbounds %struct.advert, %struct.advert* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = load i32, i32* @active_aio_queries, align 4
  %69 = load i32, i32* %5, align 4
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = call i32 (i32, i8*, i32, i64, ...) @fprintf(i32 %61, i8* getelementptr inbounds ([111 x i8], [111 x i8]* @.str.1, i64 0, i64 0), i32 %64, i64 %67, i32 %68, i32 %69, i32 %72)
  br label %74

74:                                               ; preds = %60, %55
  %75 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = sext i32 %77 to i64
  %79 = load i64, i64* @allocated_metafile_bytes, align 8
  %80 = sub nsw i64 %79, %78
  store i64 %80, i64* @allocated_metafile_bytes, align 8
  %81 = load i32, i32* @allocated_metafiles, align 4
  %82 = add nsw i32 %81, -1
  store i32 %82, i32* @allocated_metafiles, align 4
  %83 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 3
  store %struct.aio_connection* null, %struct.aio_connection** %84, align 8
  %85 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %86 = call i32 @free(%struct.TYPE_3__* %85)
  %87 = load %struct.advert*, %struct.advert** %8, align 8
  %88 = getelementptr inbounds %struct.advert, %struct.advert* %87, i32 0, i32 1
  store %struct.TYPE_3__* null, %struct.TYPE_3__** %88, align 8
  store i32 0, i32* %3, align 4
  br label %183

89:                                               ; preds = %19
  %90 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 3
  store %struct.aio_connection* null, %struct.aio_connection** %91, align 8
  %92 = load i64, i64* @verbosity, align 8
  %93 = icmp sgt i64 %92, 0
  br i1 %93, label %94, label %113

94:                                               ; preds = %89
  %95 = load i32, i32* @stderr, align 4
  %96 = load %struct.advert*, %struct.advert** %8, align 8
  %97 = getelementptr inbounds %struct.advert, %struct.advert* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = load i32, i32* %5, align 4
  %103 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 8
  %106 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 8
  %109 = sext i32 %108 to i64
  %110 = inttoptr i64 %109 to i32*
  %111 = load i32, i32* %110, align 4
  %112 = call i32 (i32, i8*, i32, i64, ...) @fprintf(i32 %95, i8* getelementptr inbounds ([90 x i8], [90 x i8]* @.str.2, i64 0, i64 0), i32 %98, i64 %101, i32 %102, i32 %105, i32 %111)
  br label %113

113:                                              ; preds = %94, %89
  %114 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %115 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 8
  store i32 %116, i32* @RBuff, align 4
  %117 = load i32, i32* @RBuff, align 4
  %118 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %119 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = add nsw i32 %117, %120
  store i32 %121, i32* @RBuffEnd, align 4
  %122 = load i64, i64* @idx_bytes, align 8
  store i64 %122, i64* %9, align 8
  %123 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %124 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %123, i32 0, i32 1
  %125 = load i64, i64* %124, align 8
  %126 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %127 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = sext i32 %128 to i64
  %130 = add nsw i64 %125, %129
  store i64 %130, i64* @idx_bytes, align 8
  %131 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %132 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %131, i32 0, i32 1
  %133 = load i64, i64* %132, align 8
  %134 = call i32 @idx_fake_readpos(i64 %133)
  %135 = load %struct.advert*, %struct.advert** %8, align 8
  %136 = getelementptr inbounds %struct.advert, %struct.advert* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %139 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = sext i32 %140 to i64
  %142 = call i32 @idx_read_ad(i32 %137, i32 1, i64 %141)
  %143 = call i32 (...) @idx_check_crc()
  %144 = load i64, i64* @idx_metafile_pos, align 8
  %145 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %146 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = sext i32 %147 to i64
  %149 = icmp eq i64 %144, %148
  %150 = zext i1 %149 to i32
  %151 = call i32 @assert(i32 %150)
  %152 = load i64, i64* %9, align 8
  store i64 %152, i64* @idx_bytes, align 8
  store i32 0, i32* @RBuff, align 4
  store i32 0, i32* @RBuffEnd, align 4
  %153 = load i32, i32* @ADF_ANCIENT, align 4
  %154 = xor i32 %153, -1
  %155 = load %struct.advert*, %struct.advert** %8, align 8
  %156 = getelementptr inbounds %struct.advert, %struct.advert* %155, i32 0, i32 2
  %157 = load i32, i32* %156, align 8
  %158 = and i32 %157, %154
  store i32 %158, i32* %156, align 8
  %159 = load i32, i32* @ancient_ads_pending, align 4
  %160 = add nsw i32 %159, -1
  store i32 %160, i32* @ancient_ads_pending, align 4
  %161 = load i32, i32* @ancient_ads_aio_loaded, align 4
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* @ancient_ads_aio_loaded, align 4
  %163 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %164 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 8
  %166 = sext i32 %165 to i64
  %167 = load i64, i64* @ancient_ads_aio_loaded_bytes, align 8
  %168 = add nsw i64 %167, %166
  store i64 %168, i64* @ancient_ads_aio_loaded_bytes, align 8
  %169 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %170 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 8
  %172 = sext i32 %171 to i64
  %173 = load i64, i64* @allocated_metafile_bytes, align 8
  %174 = sub nsw i64 %173, %172
  store i64 %174, i64* @allocated_metafile_bytes, align 8
  %175 = load i32, i32* @allocated_metafiles, align 4
  %176 = add nsw i32 %175, -1
  store i32 %176, i32* @allocated_metafiles, align 4
  %177 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %178 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %177, i32 0, i32 3
  store %struct.aio_connection* null, %struct.aio_connection** %178, align 8
  %179 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %180 = call i32 @free(%struct.TYPE_3__* %179)
  %181 = load %struct.advert*, %struct.advert** %8, align 8
  %182 = getelementptr inbounds %struct.advert, %struct.advert* %181, i32 0, i32 1
  store %struct.TYPE_3__* null, %struct.TYPE_3__** %182, align 8
  store i32 1, i32* %3, align 4
  br label %183

183:                                              ; preds = %113, %74
  %184 = load i32, i32* %3, align 4
  ret i32 %184
}

declare dso_local i32 @fprintf(i32, i8*, i32, i64, ...) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @free(%struct.TYPE_3__*) #1

declare dso_local i32 @idx_fake_readpos(i64) #1

declare dso_local i32 @idx_read_ad(i32, i32, i64) #1

declare dso_local i32 @idx_check_crc(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
