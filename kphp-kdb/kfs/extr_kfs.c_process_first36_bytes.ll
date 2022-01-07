; ModuleID = '/home/carl/AnghaBench/kphp-kdb/kfs/extr_kfs.c_process_first36_bytes.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/kfs/extr_kfs.c_process_first36_bytes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kfs_file_info = type { i8*, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }
%struct.lev_start = type { i32 }
%struct.lev_rotate_from = type { i32, i32, i32, i32, i32 }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [94 x i8] c"warning: binlog file %s has different hash in header (%016llX) and continue record (%016llX)\0A\00", align 1
@.str.1 = private unnamed_addr constant [113 x i8] c"warning: binlog file %s has different hash of previous binlog in header (%016llX) and continue record (%016llX)\0A\00", align 1
@.str.2 = private unnamed_addr constant [89 x i8] c"warning: binlog file %s has different crc32 in header (%08X) and continue record (%08X)\0A\00", align 1
@.str.3 = private unnamed_addr constant [89 x i8] c"warning: binlog file %s has different timestamp in header (%d) and continue record (%d)\0A\00", align 1
@.str.4 = private unnamed_addr constant [59 x i8] c"warning: binlog file %s begins with wrong entry type %08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kfs_file_info*, i32, i32, %struct.lev_start*)* @process_first36_bytes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @process_first36_bytes(%struct.kfs_file_info* %0, i32 %1, i32 %2, %struct.lev_start* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.kfs_file_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.lev_start*, align 8
  store %struct.kfs_file_info* %0, %struct.kfs_file_info** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.lev_start* %3, %struct.lev_start** %9, align 8
  %10 = load %struct.lev_start*, %struct.lev_start** %9, align 8
  %11 = getelementptr inbounds %struct.lev_start, %struct.lev_start* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  switch i32 %12, label %177 [
    i32 128, label %13
    i32 129, label %21
  ]

13:                                               ; preds = %4
  %14 = load i32, i32* %8, align 4
  %15 = sext i32 %14 to i64
  %16 = icmp uge i64 %15, 0
  %17 = zext i1 %16 to i32
  %18 = call i32 @assert(i32 %17)
  %19 = load %struct.kfs_file_info*, %struct.kfs_file_info** %6, align 8
  %20 = getelementptr inbounds %struct.kfs_file_info, %struct.kfs_file_info* %19, i32 0, i32 2
  store i32 0, i32* %20, align 8
  br label %191

21:                                               ; preds = %4
  %22 = load i32, i32* %8, align 4
  %23 = sext i32 %22 to i64
  %24 = icmp uge i64 %23, 20
  %25 = zext i1 %24 to i32
  %26 = call i32 @assert(i32 %25)
  %27 = load %struct.lev_start*, %struct.lev_start** %9, align 8
  %28 = bitcast %struct.lev_start* %27 to %struct.lev_rotate_from*
  %29 = getelementptr inbounds %struct.lev_rotate_from, %struct.lev_rotate_from* %28, i32 0, i32 4
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.kfs_file_info*, %struct.kfs_file_info** %6, align 8
  %32 = getelementptr inbounds %struct.kfs_file_info, %struct.kfs_file_info* %31, i32 0, i32 2
  store i32 %30, i32* %32, align 8
  %33 = load %struct.kfs_file_info*, %struct.kfs_file_info** %6, align 8
  %34 = getelementptr inbounds %struct.kfs_file_info, %struct.kfs_file_info* %33, i32 0, i32 1
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = icmp ne %struct.TYPE_2__* %35, null
  br i1 %36, label %37, label %68

37:                                               ; preds = %21
  %38 = load %struct.kfs_file_info*, %struct.kfs_file_info** %6, align 8
  %39 = getelementptr inbounds %struct.kfs_file_info, %struct.kfs_file_info* %38, i32 0, i32 1
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.lev_start*, %struct.lev_start** %9, align 8
  %44 = bitcast %struct.lev_start* %43 to %struct.lev_rotate_from*
  %45 = getelementptr inbounds %struct.lev_rotate_from, %struct.lev_rotate_from* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 4
  %47 = icmp ne i32 %42, %46
  br i1 %47, label %48, label %68

48:                                               ; preds = %37
  %49 = load i32, i32* @stderr, align 4
  %50 = load %struct.kfs_file_info*, %struct.kfs_file_info** %6, align 8
  %51 = getelementptr inbounds %struct.kfs_file_info, %struct.kfs_file_info* %50, i32 0, i32 0
  %52 = load i8*, i8** %51, align 8
  %53 = load %struct.kfs_file_info*, %struct.kfs_file_info** %6, align 8
  %54 = getelementptr inbounds %struct.kfs_file_info, %struct.kfs_file_info* %53, i32 0, i32 1
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.lev_start*, %struct.lev_start** %9, align 8
  %59 = bitcast %struct.lev_start* %58 to %struct.lev_rotate_from*
  %60 = getelementptr inbounds %struct.lev_rotate_from, %struct.lev_rotate_from* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 4
  %62 = call i32 (i32, i8*, i8*, i32, ...) @fprintf(i32 %49, i8* getelementptr inbounds ([94 x i8], [94 x i8]* @.str, i64 0, i64 0), i8* %52, i32 %57, i32 %61)
  %63 = load i32, i32* %7, align 4
  %64 = call i32 @close(i32 %63)
  %65 = icmp sge i32 %64, 0
  %66 = zext i1 %65 to i32
  %67 = call i32 @assert(i32 %66)
  store i32 -2, i32* %5, align 4
  br label %192

68:                                               ; preds = %37, %21
  %69 = load %struct.kfs_file_info*, %struct.kfs_file_info** %6, align 8
  %70 = getelementptr inbounds %struct.kfs_file_info, %struct.kfs_file_info* %69, i32 0, i32 1
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** %70, align 8
  %72 = icmp ne %struct.TYPE_2__* %71, null
  br i1 %72, label %73, label %104

73:                                               ; preds = %68
  %74 = load %struct.kfs_file_info*, %struct.kfs_file_info** %6, align 8
  %75 = getelementptr inbounds %struct.kfs_file_info, %struct.kfs_file_info* %74, i32 0, i32 1
  %76 = load %struct.TYPE_2__*, %struct.TYPE_2__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.lev_start*, %struct.lev_start** %9, align 8
  %80 = bitcast %struct.lev_start* %79 to %struct.lev_rotate_from*
  %81 = getelementptr inbounds %struct.lev_rotate_from, %struct.lev_rotate_from* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 4
  %83 = icmp ne i32 %78, %82
  br i1 %83, label %84, label %104

84:                                               ; preds = %73
  %85 = load i32, i32* @stderr, align 4
  %86 = load %struct.kfs_file_info*, %struct.kfs_file_info** %6, align 8
  %87 = getelementptr inbounds %struct.kfs_file_info, %struct.kfs_file_info* %86, i32 0, i32 0
  %88 = load i8*, i8** %87, align 8
  %89 = load %struct.kfs_file_info*, %struct.kfs_file_info** %6, align 8
  %90 = getelementptr inbounds %struct.kfs_file_info, %struct.kfs_file_info* %89, i32 0, i32 1
  %91 = load %struct.TYPE_2__*, %struct.TYPE_2__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.lev_start*, %struct.lev_start** %9, align 8
  %95 = bitcast %struct.lev_start* %94 to %struct.lev_rotate_from*
  %96 = getelementptr inbounds %struct.lev_rotate_from, %struct.lev_rotate_from* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 4
  %98 = call i32 (i32, i8*, i8*, i32, ...) @fprintf(i32 %85, i8* getelementptr inbounds ([113 x i8], [113 x i8]* @.str.1, i64 0, i64 0), i8* %88, i32 %93, i32 %97)
  %99 = load i32, i32* %7, align 4
  %100 = call i32 @close(i32 %99)
  %101 = icmp sge i32 %100, 0
  %102 = zext i1 %101 to i32
  %103 = call i32 @assert(i32 %102)
  store i32 -2, i32* %5, align 4
  br label %192

104:                                              ; preds = %73, %68
  %105 = load %struct.kfs_file_info*, %struct.kfs_file_info** %6, align 8
  %106 = getelementptr inbounds %struct.kfs_file_info, %struct.kfs_file_info* %105, i32 0, i32 1
  %107 = load %struct.TYPE_2__*, %struct.TYPE_2__** %106, align 8
  %108 = icmp ne %struct.TYPE_2__* %107, null
  br i1 %108, label %109, label %140

109:                                              ; preds = %104
  %110 = load %struct.kfs_file_info*, %struct.kfs_file_info** %6, align 8
  %111 = getelementptr inbounds %struct.kfs_file_info, %struct.kfs_file_info* %110, i32 0, i32 1
  %112 = load %struct.TYPE_2__*, %struct.TYPE_2__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.lev_start*, %struct.lev_start** %9, align 8
  %116 = bitcast %struct.lev_start* %115 to %struct.lev_rotate_from*
  %117 = getelementptr inbounds %struct.lev_rotate_from, %struct.lev_rotate_from* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = icmp ne i32 %114, %118
  br i1 %119, label %120, label %140

120:                                              ; preds = %109
  %121 = load i32, i32* @stderr, align 4
  %122 = load %struct.kfs_file_info*, %struct.kfs_file_info** %6, align 8
  %123 = getelementptr inbounds %struct.kfs_file_info, %struct.kfs_file_info* %122, i32 0, i32 0
  %124 = load i8*, i8** %123, align 8
  %125 = load %struct.kfs_file_info*, %struct.kfs_file_info** %6, align 8
  %126 = getelementptr inbounds %struct.kfs_file_info, %struct.kfs_file_info* %125, i32 0, i32 1
  %127 = load %struct.TYPE_2__*, %struct.TYPE_2__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = load %struct.lev_start*, %struct.lev_start** %9, align 8
  %131 = bitcast %struct.lev_start* %130 to %struct.lev_rotate_from*
  %132 = getelementptr inbounds %struct.lev_rotate_from, %struct.lev_rotate_from* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = call i32 (i32, i8*, i8*, i32, ...) @fprintf(i32 %121, i8* getelementptr inbounds ([89 x i8], [89 x i8]* @.str.2, i64 0, i64 0), i8* %124, i32 %129, i32 %133)
  %135 = load i32, i32* %7, align 4
  %136 = call i32 @close(i32 %135)
  %137 = icmp sge i32 %136, 0
  %138 = zext i1 %137 to i32
  %139 = call i32 @assert(i32 %138)
  store i32 -2, i32* %5, align 4
  br label %192

140:                                              ; preds = %109, %104
  %141 = load %struct.kfs_file_info*, %struct.kfs_file_info** %6, align 8
  %142 = getelementptr inbounds %struct.kfs_file_info, %struct.kfs_file_info* %141, i32 0, i32 1
  %143 = load %struct.TYPE_2__*, %struct.TYPE_2__** %142, align 8
  %144 = icmp ne %struct.TYPE_2__* %143, null
  br i1 %144, label %145, label %176

145:                                              ; preds = %140
  %146 = load %struct.kfs_file_info*, %struct.kfs_file_info** %6, align 8
  %147 = getelementptr inbounds %struct.kfs_file_info, %struct.kfs_file_info* %146, i32 0, i32 1
  %148 = load %struct.TYPE_2__*, %struct.TYPE_2__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 4
  %151 = load %struct.lev_start*, %struct.lev_start** %9, align 8
  %152 = bitcast %struct.lev_start* %151 to %struct.lev_rotate_from*
  %153 = getelementptr inbounds %struct.lev_rotate_from, %struct.lev_rotate_from* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  %155 = icmp ne i32 %150, %154
  br i1 %155, label %156, label %176

156:                                              ; preds = %145
  %157 = load i32, i32* @stderr, align 4
  %158 = load %struct.kfs_file_info*, %struct.kfs_file_info** %6, align 8
  %159 = getelementptr inbounds %struct.kfs_file_info, %struct.kfs_file_info* %158, i32 0, i32 0
  %160 = load i8*, i8** %159, align 8
  %161 = load %struct.kfs_file_info*, %struct.kfs_file_info** %6, align 8
  %162 = getelementptr inbounds %struct.kfs_file_info, %struct.kfs_file_info* %161, i32 0, i32 1
  %163 = load %struct.TYPE_2__*, %struct.TYPE_2__** %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 4
  %166 = load %struct.lev_start*, %struct.lev_start** %9, align 8
  %167 = bitcast %struct.lev_start* %166 to %struct.lev_rotate_from*
  %168 = getelementptr inbounds %struct.lev_rotate_from, %struct.lev_rotate_from* %167, i32 0, i32 1
  %169 = load i32, i32* %168, align 4
  %170 = call i32 (i32, i8*, i8*, i32, ...) @fprintf(i32 %157, i8* getelementptr inbounds ([89 x i8], [89 x i8]* @.str.3, i64 0, i64 0), i8* %160, i32 %165, i32 %169)
  %171 = load i32, i32* %7, align 4
  %172 = call i32 @close(i32 %171)
  %173 = icmp sge i32 %172, 0
  %174 = zext i1 %173 to i32
  %175 = call i32 @assert(i32 %174)
  store i32 -2, i32* %5, align 4
  br label %192

176:                                              ; preds = %145, %140
  br label %191

177:                                              ; preds = %4
  %178 = load i32, i32* @stderr, align 4
  %179 = load %struct.kfs_file_info*, %struct.kfs_file_info** %6, align 8
  %180 = getelementptr inbounds %struct.kfs_file_info, %struct.kfs_file_info* %179, i32 0, i32 0
  %181 = load i8*, i8** %180, align 8
  %182 = load %struct.lev_start*, %struct.lev_start** %9, align 8
  %183 = getelementptr inbounds %struct.lev_start, %struct.lev_start* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 4
  %185 = call i32 (i32, i8*, i8*, i32, ...) @fprintf(i32 %178, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.4, i64 0, i64 0), i8* %181, i32 %184)
  %186 = load i32, i32* %7, align 4
  %187 = call i32 @close(i32 %186)
  %188 = icmp sge i32 %187, 0
  %189 = zext i1 %188 to i32
  %190 = call i32 @assert(i32 %189)
  store i32 -2, i32* %5, align 4
  br label %192

191:                                              ; preds = %176, %13
  store i32 0, i32* %5, align 4
  br label %192

192:                                              ; preds = %191, %177, %156, %120, %84, %48
  %193 = load i32, i32* %5, align 4
  ret i32 %193
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @fprintf(i32, i8*, i8*, i32, ...) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
