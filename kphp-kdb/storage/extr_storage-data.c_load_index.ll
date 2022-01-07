; ModuleID = '/home/carl/AnghaBench/kphp-kdb/storage/extr_storage-data.c_load_index.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/storage/extr_storage-data.c_load_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32, i32, %struct.storage_index_header*, %struct.storage_index_header*, %struct.storage_index_header*, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_7__* }
%struct.storage_index_header = type { i64, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.lev_crc32 = type { i64, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@idx_fd = common dso_local global i32 0, align 4
@STORAGE_INDEX_MAGIC = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [31 x i8] c"index file is not for storage\0A\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"md5 table is corrupted in snapshot: %s\0A\00", align 1
@idx_crc32_complement = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"crc32 not matched in snapshot: %s\0A\00", align 1
@bytes_read = common dso_local global i32 0, align 4
@snapshot_size = common dso_local global i32 0, align 4
@index_size = common dso_local global i32 0, align 4
@idx_docs = common dso_local global i32 0, align 4
@tot_docs = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @load_index(%struct.TYPE_6__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca %struct.storage_index_header, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.lev_crc32, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 14
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  store %struct.TYPE_7__* %14, %struct.TYPE_7__** %5, align 8
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %16 = icmp eq %struct.TYPE_7__* %15, null
  br i1 %16, label %17, label %28

17:                                               ; preds = %1
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 2
  store i32 0, i32* %19, align 8
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 10
  store i32 0, i32* %21, align 4
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 9
  store i32 0, i32* %23, align 8
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 1
  store i32 0, i32* %25, align 4
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  store i32 0, i32* %27, align 8
  store i32 0, i32* %2, align 4
  br label %203

28:                                               ; preds = %1
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  store i32 %31, i32* @idx_fd, align 4
  %32 = call i32 (...) @clearin()
  %33 = call i32 @bread(%struct.storage_index_header* %6, i32 48)
  %34 = getelementptr inbounds %struct.storage_index_header, %struct.storage_index_header* %6, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @STORAGE_INDEX_MAGIC, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %28
  %39 = call i32 (i8*, ...) @kprintf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %203

40:                                               ; preds = %28
  %41 = getelementptr inbounds %struct.storage_index_header, %struct.storage_index_header* %6, i32 0, i32 9
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 13
  store i32 %42, i32* %44, align 8
  %45 = getelementptr inbounds %struct.storage_index_header, %struct.storage_index_header* %6, i32 0, i32 8
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 12
  store i32 %46, i32* %48, align 4
  %49 = getelementptr inbounds %struct.storage_index_header, %struct.storage_index_header* %6, i32 0, i32 7
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 11
  store i32 %50, i32* %52, align 8
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 0
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 2
  store i32 %57, i32* %59, align 8
  %60 = getelementptr inbounds %struct.storage_index_header, %struct.storage_index_header* %6, i32 0, i32 6
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 10
  store i32 %61, i32* %63, align 4
  %64 = getelementptr inbounds %struct.storage_index_header, %struct.storage_index_header* %6, i32 0, i32 5
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 9
  store i32 %65, i32* %67, align 8
  %68 = getelementptr inbounds %struct.storage_index_header, %struct.storage_index_header* %6, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 1
  store i32 %69, i32* %71, align 4
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 0
  store i32 %69, i32* %73, align 8
  %74 = getelementptr inbounds %struct.storage_index_header, %struct.storage_index_header* %6, i32 0, i32 4
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 8
  store i32 %75, i32* %77, align 4
  %78 = getelementptr inbounds %struct.storage_index_header, %struct.storage_index_header* %6, i32 0, i32 3
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 7
  store i32 %79, i32* %81, align 8
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 7
  %84 = load i32, i32* %83, align 8
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %147

86:                                               ; preds = %40
  %87 = getelementptr inbounds %struct.storage_index_header, %struct.storage_index_header* %6, i32 0, i32 1
  %88 = load i32, i32* %87, align 8
  %89 = shl i32 %88, 4
  store i32 %89, i32* %7, align 4
  %90 = load i32, i32* %7, align 4
  %91 = lshr i32 %90, 1
  store i32 %91, i32* %8, align 4
  %92 = load i32, i32* %7, align 4
  %93 = call i8* @tszmalloc(i32 %92)
  %94 = bitcast i8* %93 to %struct.storage_index_header*
  %95 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 5
  store %struct.storage_index_header* %94, %struct.storage_index_header** %96, align 8
  %97 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 5
  %99 = load %struct.storage_index_header*, %struct.storage_index_header** %98, align 8
  %100 = load i32, i32* %7, align 4
  %101 = call i32 @bread(%struct.storage_index_header* %99, i32 %100)
  %102 = load i32, i32* %8, align 4
  %103 = call i8* @tszmalloc(i32 %102)
  %104 = bitcast i8* %103 to %struct.storage_index_header*
  %105 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 6
  store %struct.storage_index_header* %104, %struct.storage_index_header** %106, align 8
  %107 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 6
  %109 = load %struct.storage_index_header*, %struct.storage_index_header** %108, align 8
  %110 = load i32, i32* %8, align 4
  %111 = call i32 @bread(%struct.storage_index_header* %109, i32 %110)
  store i32 1, i32* %4, align 4
  br label %112

112:                                              ; preds = %143, %86
  %113 = load i32, i32* %4, align 4
  %114 = getelementptr inbounds %struct.storage_index_header, %struct.storage_index_header* %6, i32 0, i32 1
  %115 = load i32, i32* %114, align 8
  %116 = icmp slt i32 %113, %115
  br i1 %116, label %117, label %146

117:                                              ; preds = %112
  %118 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 5
  %120 = load %struct.storage_index_header*, %struct.storage_index_header** %119, align 8
  %121 = load i32, i32* %4, align 4
  %122 = sub nsw i32 %121, 1
  %123 = shl i32 %122, 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds %struct.storage_index_header, %struct.storage_index_header* %120, i64 %124
  %126 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %127 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %126, i32 0, i32 5
  %128 = load %struct.storage_index_header*, %struct.storage_index_header** %127, align 8
  %129 = load i32, i32* %4, align 4
  %130 = shl i32 %129, 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds %struct.storage_index_header, %struct.storage_index_header* %128, i64 %131
  %133 = call i64 @memcmp(%struct.storage_index_header* %125, %struct.storage_index_header* %132, i32 16)
  %134 = icmp sge i64 %133, 0
  br i1 %134, label %135, label %142

135:                                              ; preds = %117
  %136 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %137 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %136, i32 0, i32 0
  %138 = load %struct.TYPE_5__*, %struct.TYPE_5__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = call i32 (i8*, ...) @kprintf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %140)
  store i32 -1, i32* %2, align 4
  br label %203

142:                                              ; preds = %117
  br label %143

143:                                              ; preds = %142
  %144 = load i32, i32* %4, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %4, align 4
  br label %112

146:                                              ; preds = %112
  br label %162

147:                                              ; preds = %40
  %148 = getelementptr inbounds %struct.storage_index_header, %struct.storage_index_header* %6, i32 0, i32 1
  %149 = load i32, i32* %148, align 8
  %150 = add nsw i32 %149, 1
  %151 = shl i32 %150, 3
  store i32 %151, i32* %9, align 4
  %152 = load i32, i32* %9, align 4
  %153 = call i8* @tszmalloc(i32 %152)
  %154 = bitcast i8* %153 to %struct.storage_index_header*
  %155 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %156 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %155, i32 0, i32 4
  store %struct.storage_index_header* %154, %struct.storage_index_header** %156, align 8
  %157 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %158 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %157, i32 0, i32 4
  %159 = load %struct.storage_index_header*, %struct.storage_index_header** %158, align 8
  %160 = load i32, i32* %9, align 4
  %161 = call i32 @bread(%struct.storage_index_header* %159, i32 %160)
  br label %162

162:                                              ; preds = %147, %146
  %163 = load i32, i32* @idx_crc32_complement, align 4
  %164 = xor i32 %163, -1
  store i32 %164, i32* %10, align 4
  %165 = bitcast %struct.lev_crc32* %11 to %struct.storage_index_header*
  %166 = call i32 @bread(%struct.storage_index_header* %165, i32 48)
  %167 = load i32, i32* %10, align 4
  %168 = getelementptr inbounds %struct.lev_crc32, %struct.lev_crc32* %11, i32 0, i32 2
  %169 = load i32, i32* %168, align 4
  %170 = icmp ne i32 %167, %169
  br i1 %170, label %171, label %178

171:                                              ; preds = %162
  %172 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %173 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %172, i32 0, i32 0
  %174 = load %struct.TYPE_5__*, %struct.TYPE_5__** %173, align 8
  %175 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %174, i32 0, i32 1
  %176 = load i32, i32* %175, align 4
  %177 = call i32 (i8*, ...) @kprintf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 %176)
  store i32 -2, i32* %2, align 4
  br label %203

178:                                              ; preds = %162
  %179 = load i32, i32* @bytes_read, align 4
  %180 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %181 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %180, i32 0, i32 3
  store i32 %179, i32* %181, align 4
  %182 = load i32, i32* @snapshot_size, align 4
  %183 = add nsw i32 %182, %179
  store i32 %183, i32* @snapshot_size, align 4
  %184 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %185 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %184, i32 0, i32 0
  %186 = load %struct.TYPE_5__*, %struct.TYPE_5__** %185, align 8
  %187 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 4
  %189 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %190 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %189, i32 0, i32 2
  store i32 %188, i32* %190, align 8
  %191 = load i32, i32* @index_size, align 4
  %192 = add nsw i32 %191, %188
  store i32 %192, i32* @index_size, align 4
  %193 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %194 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %193, i32 0, i32 1
  %195 = load i32, i32* %194, align 4
  %196 = load i32, i32* @idx_docs, align 4
  %197 = add nsw i32 %196, %195
  store i32 %197, i32* @idx_docs, align 4
  %198 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %199 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %198, i32 0, i32 1
  %200 = load i32, i32* %199, align 4
  %201 = load i32, i32* @tot_docs, align 4
  %202 = add nsw i32 %201, %200
  store i32 %202, i32* @tot_docs, align 4
  store i32 0, i32* %2, align 4
  br label %203

203:                                              ; preds = %178, %171, %135, %38, %17
  %204 = load i32, i32* %2, align 4
  ret i32 %204
}

declare dso_local i32 @clearin(...) #1

declare dso_local i32 @bread(%struct.storage_index_header*, i32) #1

declare dso_local i32 @kprintf(i8*, ...) #1

declare dso_local i8* @tszmalloc(i32) #1

declare dso_local i64 @memcmp(%struct.storage_index_header*, %struct.storage_index_header*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
