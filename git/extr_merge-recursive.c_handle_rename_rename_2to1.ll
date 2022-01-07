; ModuleID = '/home/carl/AnghaBench/git/extr_merge-recursive.c_handle_rename_rename_2to1.c'
source_filename = "/home/carl/AnghaBench/git/extr_merge-recursive.c_handle_rename_rename_2to1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.merge_options = type { %struct.TYPE_14__*, i32, i32 }
%struct.TYPE_14__ = type { i32 }
%struct.rename_conflict_info = type { %struct.TYPE_16__*, %struct.TYPE_15__* }
%struct.TYPE_16__ = type { i32, %struct.TYPE_13__*, %struct.TYPE_11__* }
%struct.TYPE_13__ = type { %struct.diff_filespec* }
%struct.diff_filespec = type { i8* }
%struct.TYPE_11__ = type { %struct.diff_filespec*, %struct.diff_filespec* }
%struct.TYPE_15__ = type { i32, %struct.TYPE_12__*, %struct.TYPE_10__* }
%struct.TYPE_12__ = type { %struct.diff_filespec* }
%struct.TYPE_10__ = type { %struct.diff_filespec*, %struct.diff_filespec* }
%struct.merge_file_info = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i8* }

@.str = private unnamed_addr constant [67 x i8] c"CONFLICT (rename/rename): Rename %s->%s in %s. Rename %s->%s in %s\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"version of %s from %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.merge_options*, %struct.rename_conflict_info*)* @handle_rename_rename_2to1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_rename_rename_2to1(%struct.merge_options* %0, %struct.rename_conflict_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.merge_options*, align 8
  %5 = alloca %struct.rename_conflict_info*, align 8
  %6 = alloca %struct.diff_filespec*, align 8
  %7 = alloca %struct.diff_filespec*, align 8
  %8 = alloca %struct.diff_filespec*, align 8
  %9 = alloca %struct.diff_filespec*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.merge_file_info, align 8
  %14 = alloca %struct.merge_file_info, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.merge_options* %0, %struct.merge_options** %4, align 8
  store %struct.rename_conflict_info* %1, %struct.rename_conflict_info** %5, align 8
  %17 = load %struct.rename_conflict_info*, %struct.rename_conflict_info** %5, align 8
  %18 = getelementptr inbounds %struct.rename_conflict_info, %struct.rename_conflict_info* %17, i32 0, i32 1
  %19 = load %struct.TYPE_15__*, %struct.TYPE_15__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %19, i32 0, i32 2
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 1
  %23 = load %struct.diff_filespec*, %struct.diff_filespec** %22, align 8
  store %struct.diff_filespec* %23, %struct.diff_filespec** %6, align 8
  %24 = load %struct.rename_conflict_info*, %struct.rename_conflict_info** %5, align 8
  %25 = getelementptr inbounds %struct.rename_conflict_info, %struct.rename_conflict_info* %24, i32 0, i32 0
  %26 = load %struct.TYPE_16__*, %struct.TYPE_16__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %26, i32 0, i32 2
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 0, i32 1
  %30 = load %struct.diff_filespec*, %struct.diff_filespec** %29, align 8
  store %struct.diff_filespec* %30, %struct.diff_filespec** %7, align 8
  %31 = load %struct.rename_conflict_info*, %struct.rename_conflict_info** %5, align 8
  %32 = getelementptr inbounds %struct.rename_conflict_info, %struct.rename_conflict_info* %31, i32 0, i32 1
  %33 = load %struct.TYPE_15__*, %struct.TYPE_15__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %33, i32 0, i32 2
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 0
  %37 = load %struct.diff_filespec*, %struct.diff_filespec** %36, align 8
  store %struct.diff_filespec* %37, %struct.diff_filespec** %8, align 8
  %38 = load %struct.rename_conflict_info*, %struct.rename_conflict_info** %5, align 8
  %39 = getelementptr inbounds %struct.rename_conflict_info, %struct.rename_conflict_info* %38, i32 0, i32 0
  %40 = load %struct.TYPE_16__*, %struct.TYPE_16__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %40, i32 0, i32 2
  %42 = load %struct.TYPE_11__*, %struct.TYPE_11__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %42, i32 0, i32 0
  %44 = load %struct.diff_filespec*, %struct.diff_filespec** %43, align 8
  store %struct.diff_filespec* %44, %struct.diff_filespec** %9, align 8
  %45 = load %struct.diff_filespec*, %struct.diff_filespec** %8, align 8
  %46 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %45, i32 0, i32 0
  %47 = load i8*, i8** %46, align 8
  store i8* %47, i8** %10, align 8
  %48 = load %struct.merge_options*, %struct.merge_options** %4, align 8
  %49 = call i32 @_(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str, i64 0, i64 0))
  %50 = load %struct.diff_filespec*, %struct.diff_filespec** %6, align 8
  %51 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %50, i32 0, i32 0
  %52 = load i8*, i8** %51, align 8
  %53 = load %struct.diff_filespec*, %struct.diff_filespec** %8, align 8
  %54 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %53, i32 0, i32 0
  %55 = load i8*, i8** %54, align 8
  %56 = load %struct.rename_conflict_info*, %struct.rename_conflict_info** %5, align 8
  %57 = getelementptr inbounds %struct.rename_conflict_info, %struct.rename_conflict_info* %56, i32 0, i32 1
  %58 = load %struct.TYPE_15__*, %struct.TYPE_15__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.diff_filespec*, %struct.diff_filespec** %7, align 8
  %62 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %61, i32 0, i32 0
  %63 = load i8*, i8** %62, align 8
  %64 = load %struct.diff_filespec*, %struct.diff_filespec** %9, align 8
  %65 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %64, i32 0, i32 0
  %66 = load i8*, i8** %65, align 8
  %67 = load %struct.rename_conflict_info*, %struct.rename_conflict_info** %5, align 8
  %68 = getelementptr inbounds %struct.rename_conflict_info, %struct.rename_conflict_info* %67, i32 0, i32 0
  %69 = load %struct.TYPE_16__*, %struct.TYPE_16__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @output(%struct.merge_options* %48, i32 1, i32 %49, i8* %52, i8* %55, i32 %60, i8* %63, i8* %66, i32 %71)
  %73 = load i8*, i8** %10, align 8
  %74 = load %struct.diff_filespec*, %struct.diff_filespec** %6, align 8
  %75 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %74, i32 0, i32 0
  %76 = load i8*, i8** %75, align 8
  %77 = call i8* @xstrfmt(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i8* %73, i8* %76)
  store i8* %77, i8** %11, align 8
  %78 = load i8*, i8** %10, align 8
  %79 = load %struct.diff_filespec*, %struct.diff_filespec** %7, align 8
  %80 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %79, i32 0, i32 0
  %81 = load i8*, i8** %80, align 8
  %82 = call i8* @xstrfmt(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i8* %78, i8* %81)
  store i8* %82, i8** %12, align 8
  %83 = load %struct.rename_conflict_info*, %struct.rename_conflict_info** %5, align 8
  %84 = getelementptr inbounds %struct.rename_conflict_info, %struct.rename_conflict_info* %83, i32 0, i32 1
  %85 = load %struct.TYPE_15__*, %struct.TYPE_15__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = load %struct.merge_options*, %struct.merge_options** %4, align 8
  %89 = getelementptr inbounds %struct.merge_options, %struct.merge_options* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 4
  %91 = icmp eq i32 %87, %90
  %92 = zext i1 %91 to i64
  %93 = select i1 %91, i32 3, i32 2
  store i32 %93, i32* %15, align 4
  %94 = load i32, i32* %15, align 4
  %95 = xor i32 %94, 1
  store i32 %95, i32* %16, align 4
  %96 = load %struct.diff_filespec*, %struct.diff_filespec** %6, align 8
  %97 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %96, i32 0, i32 0
  %98 = load i8*, i8** %97, align 8
  %99 = load %struct.rename_conflict_info*, %struct.rename_conflict_info** %5, align 8
  %100 = getelementptr inbounds %struct.rename_conflict_info, %struct.rename_conflict_info* %99, i32 0, i32 1
  %101 = load %struct.TYPE_15__*, %struct.TYPE_15__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %101, i32 0, i32 1
  %103 = load %struct.TYPE_12__*, %struct.TYPE_12__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %103, i32 0, i32 0
  %105 = load %struct.diff_filespec*, %struct.diff_filespec** %104, align 8
  %106 = load i32, i32* %15, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %105, i64 %107
  %109 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %108, i32 0, i32 0
  store i8* %98, i8** %109, align 8
  %110 = load %struct.diff_filespec*, %struct.diff_filespec** %7, align 8
  %111 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %110, i32 0, i32 0
  %112 = load i8*, i8** %111, align 8
  %113 = load %struct.rename_conflict_info*, %struct.rename_conflict_info** %5, align 8
  %114 = getelementptr inbounds %struct.rename_conflict_info, %struct.rename_conflict_info* %113, i32 0, i32 0
  %115 = load %struct.TYPE_16__*, %struct.TYPE_16__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %115, i32 0, i32 1
  %117 = load %struct.TYPE_13__*, %struct.TYPE_13__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %117, i32 0, i32 0
  %119 = load %struct.diff_filespec*, %struct.diff_filespec** %118, align 8
  %120 = load i32, i32* %16, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %119, i64 %121
  %123 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %122, i32 0, i32 0
  store i8* %112, i8** %123, align 8
  %124 = load %struct.merge_options*, %struct.merge_options** %4, align 8
  %125 = load %struct.diff_filespec*, %struct.diff_filespec** %6, align 8
  %126 = load %struct.diff_filespec*, %struct.diff_filespec** %8, align 8
  %127 = load %struct.rename_conflict_info*, %struct.rename_conflict_info** %5, align 8
  %128 = getelementptr inbounds %struct.rename_conflict_info, %struct.rename_conflict_info* %127, i32 0, i32 1
  %129 = load %struct.TYPE_15__*, %struct.TYPE_15__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %129, i32 0, i32 1
  %131 = load %struct.TYPE_12__*, %struct.TYPE_12__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %131, i32 0, i32 0
  %133 = load %struct.diff_filespec*, %struct.diff_filespec** %132, align 8
  %134 = load i32, i32* %15, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %133, i64 %135
  %137 = load i8*, i8** %11, align 8
  %138 = load %struct.merge_options*, %struct.merge_options** %4, align 8
  %139 = getelementptr inbounds %struct.merge_options, %struct.merge_options* %138, i32 0, i32 2
  %140 = load i32, i32* %139, align 4
  %141 = load %struct.merge_options*, %struct.merge_options** %4, align 8
  %142 = getelementptr inbounds %struct.merge_options, %struct.merge_options* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 8
  %144 = load %struct.merge_options*, %struct.merge_options** %4, align 8
  %145 = getelementptr inbounds %struct.merge_options, %struct.merge_options* %144, i32 0, i32 0
  %146 = load %struct.TYPE_14__*, %struct.TYPE_14__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = mul nsw i32 %148, 2
  %150 = add nsw i32 1, %149
  %151 = call i64 @merge_mode_and_contents(%struct.merge_options* %124, %struct.diff_filespec* %125, %struct.diff_filespec* %126, %struct.diff_filespec* %136, i8* %137, i32 %140, i32 %143, i32 %150, %struct.merge_file_info* %13)
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %183, label %153

153:                                              ; preds = %2
  %154 = load %struct.merge_options*, %struct.merge_options** %4, align 8
  %155 = load %struct.diff_filespec*, %struct.diff_filespec** %7, align 8
  %156 = load %struct.rename_conflict_info*, %struct.rename_conflict_info** %5, align 8
  %157 = getelementptr inbounds %struct.rename_conflict_info, %struct.rename_conflict_info* %156, i32 0, i32 0
  %158 = load %struct.TYPE_16__*, %struct.TYPE_16__** %157, align 8
  %159 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %158, i32 0, i32 1
  %160 = load %struct.TYPE_13__*, %struct.TYPE_13__** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %160, i32 0, i32 0
  %162 = load %struct.diff_filespec*, %struct.diff_filespec** %161, align 8
  %163 = load i32, i32* %16, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %162, i64 %164
  %166 = load %struct.diff_filespec*, %struct.diff_filespec** %9, align 8
  %167 = load i8*, i8** %12, align 8
  %168 = load %struct.merge_options*, %struct.merge_options** %4, align 8
  %169 = getelementptr inbounds %struct.merge_options, %struct.merge_options* %168, i32 0, i32 2
  %170 = load i32, i32* %169, align 4
  %171 = load %struct.merge_options*, %struct.merge_options** %4, align 8
  %172 = getelementptr inbounds %struct.merge_options, %struct.merge_options* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 8
  %174 = load %struct.merge_options*, %struct.merge_options** %4, align 8
  %175 = getelementptr inbounds %struct.merge_options, %struct.merge_options* %174, i32 0, i32 0
  %176 = load %struct.TYPE_14__*, %struct.TYPE_14__** %175, align 8
  %177 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 4
  %179 = mul nsw i32 %178, 2
  %180 = add nsw i32 1, %179
  %181 = call i64 @merge_mode_and_contents(%struct.merge_options* %154, %struct.diff_filespec* %155, %struct.diff_filespec* %165, %struct.diff_filespec* %166, i8* %167, i32 %170, i32 %173, i32 %180, %struct.merge_file_info* %14)
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %183, label %184

183:                                              ; preds = %153, %2
  store i32 -1, i32* %3, align 4
  br label %216

184:                                              ; preds = %153
  %185 = load i8*, i8** %11, align 8
  %186 = call i32 @free(i8* %185)
  %187 = load i8*, i8** %12, align 8
  %188 = call i32 @free(i8* %187)
  %189 = load i8*, i8** %10, align 8
  %190 = getelementptr inbounds %struct.merge_file_info, %struct.merge_file_info* %13, i32 0, i32 0
  %191 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %190, i32 0, i32 0
  store i8* %189, i8** %191, align 8
  %192 = load i8*, i8** %10, align 8
  %193 = getelementptr inbounds %struct.merge_file_info, %struct.merge_file_info* %14, i32 0, i32 0
  %194 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %193, i32 0, i32 0
  store i8* %192, i8** %194, align 8
  %195 = load %struct.merge_options*, %struct.merge_options** %4, align 8
  %196 = load i8*, i8** %10, align 8
  %197 = load %struct.diff_filespec*, %struct.diff_filespec** %6, align 8
  %198 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %197, i32 0, i32 0
  %199 = load i8*, i8** %198, align 8
  %200 = load %struct.diff_filespec*, %struct.diff_filespec** %7, align 8
  %201 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %200, i32 0, i32 0
  %202 = load i8*, i8** %201, align 8
  %203 = load %struct.rename_conflict_info*, %struct.rename_conflict_info** %5, align 8
  %204 = getelementptr inbounds %struct.rename_conflict_info, %struct.rename_conflict_info* %203, i32 0, i32 1
  %205 = load %struct.TYPE_15__*, %struct.TYPE_15__** %204, align 8
  %206 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 8
  %208 = load %struct.rename_conflict_info*, %struct.rename_conflict_info** %5, align 8
  %209 = getelementptr inbounds %struct.rename_conflict_info, %struct.rename_conflict_info* %208, i32 0, i32 0
  %210 = load %struct.TYPE_16__*, %struct.TYPE_16__** %209, align 8
  %211 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %210, i32 0, i32 0
  %212 = load i32, i32* %211, align 8
  %213 = getelementptr inbounds %struct.merge_file_info, %struct.merge_file_info* %13, i32 0, i32 0
  %214 = getelementptr inbounds %struct.merge_file_info, %struct.merge_file_info* %14, i32 0, i32 0
  %215 = call i32 @handle_file_collision(%struct.merge_options* %195, i8* %196, i8* %199, i8* %202, i32 %207, i32 %212, %struct.TYPE_17__* %213, %struct.TYPE_17__* %214)
  store i32 %215, i32* %3, align 4
  br label %216

216:                                              ; preds = %184, %183
  %217 = load i32, i32* %3, align 4
  ret i32 %217
}

declare dso_local i32 @output(%struct.merge_options*, i32, i32, i8*, i8*, i32, i8*, i8*, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i8* @xstrfmt(i8*, i8*, i8*) #1

declare dso_local i64 @merge_mode_and_contents(%struct.merge_options*, %struct.diff_filespec*, %struct.diff_filespec*, %struct.diff_filespec*, i8*, i32, i32, i32, %struct.merge_file_info*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @handle_file_collision(%struct.merge_options*, i8*, i8*, i8*, i32, i32, %struct.TYPE_17__*, %struct.TYPE_17__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
