; ModuleID = '/home/carl/AnghaBench/kphp-kdb/news/extr_news-data.c_load_metafile.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/news/extr_news-data.c_load_metafile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i64 }
%struct.TYPE_3__ = type { i32 }

@large_users_number = common dso_local global i32 0, align 4
@large_metafiles = common dso_local global %struct.TYPE_4__* null, align 8
@verbosity = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [74 x i8] c"forced re-loading of pending aio query for large metafile %d without aio\0A\00", align 1
@metafiles_cache_loading = common dso_local global i32 0, align 4
@metafiles_cache_ok = common dso_local global i32 0, align 4
@large_users = common dso_local global %struct.TYPE_3__* null, align 8
@allocated_metafiles_size = common dso_local global i64 0, align 8
@max_allocated_metafiles_size = common dso_local global i64 0, align 8
@idx_fd = common dso_local global i32 0, align 4
@index_large_data_offset = common dso_local global i64 0, align 8
@SEEK_SET = common dso_local global i32 0, align 4
@metafiles_loaded = common dso_local global i32 0, align 4
@metafiles_cache_miss = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @load_metafile(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp sle i32 0, %7
  br i1 %8, label %9, label %13

9:                                                ; preds = %2
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* @large_users_number, align 4
  %12 = icmp slt i32 %10, %11
  br label %13

13:                                               ; preds = %9, %2
  %14 = phi i1 [ false, %2 ], [ %12, %9 ]
  %15 = zext i1 %14 to i32
  %16 = call i32 @assert(i32 %15)
  %17 = load i32, i32* %5, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %53

19:                                               ; preds = %13
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** @large_metafiles, align 8
  %21 = load i32, i32* %4, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %53

27:                                               ; preds = %19
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** @large_metafiles, align 8
  %29 = load i32, i32* %4, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %53

35:                                               ; preds = %27
  %36 = load i64, i64* @verbosity, align 8
  %37 = icmp sge i64 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %35
  %39 = load i32, i32* @stderr, align 4
  %40 = load i32, i32* %4, align 4
  %41 = call i32 @fprintf(i32 %39, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str, i64 0, i64 0), i32 %40)
  br label %42

42:                                               ; preds = %38, %35
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** @large_metafiles, align 8
  %44 = load i32, i32* %4, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  store i64 0, i64* %47, align 8
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** @large_metafiles, align 8
  %49 = load i32, i32* %4, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 1
  store i64 0, i64* %52, align 8
  br label %53

53:                                               ; preds = %42, %27, %19, %13
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** @large_metafiles, align 8
  %55 = load i32, i32* %4, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %90

61:                                               ; preds = %53
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** @large_metafiles, align 8
  %63 = load i32, i32* %4, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %83

69:                                               ; preds = %61
  %70 = load i32, i32* %4, align 4
  %71 = call i32 @load_metafile_aio(i32 %70)
  %72 = load i32, i32* @metafiles_cache_loading, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* @metafiles_cache_loading, align 4
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** @large_metafiles, align 8
  %75 = load i32, i32* %4, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %82, label %81

81:                                               ; preds = %69
  store i32 1, i32* %3, align 4
  br label %182

82:                                               ; preds = %69
  store i32 -2, i32* %3, align 4
  br label %182

83:                                               ; preds = %61
  %84 = load i32, i32* %5, align 4
  %85 = icmp sgt i32 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %83
  %87 = load i32, i32* @metafiles_cache_ok, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* @metafiles_cache_ok, align 4
  br label %89

89:                                               ; preds = %86, %83
  store i32 1, i32* %3, align 4
  br label %182

90:                                               ; preds = %53
  %91 = load %struct.TYPE_4__*, %struct.TYPE_4__** @large_metafiles, align 8
  %92 = load i32, i32* %4, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i64 %93
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = icmp ne i64 %96, 0
  %98 = xor i1 %97, true
  %99 = zext i1 %98 to i32
  %100 = call i32 @assert(i32 %99)
  %101 = load %struct.TYPE_3__*, %struct.TYPE_3__** @large_users, align 8
  %102 = load i32, i32* %4, align 4
  %103 = add nsw i32 %102, 1
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i64 %104
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.TYPE_3__*, %struct.TYPE_3__** @large_users, align 8
  %109 = load i32, i32* %4, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %108, i64 %110
  %112 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = sub nsw i32 %107, %113
  %115 = sext i32 %114 to i64
  %116 = mul i64 8, %115
  store i64 %116, i64* %6, align 8
  br label %117

117:                                              ; preds = %128, %90
  %118 = load i64, i64* @allocated_metafiles_size, align 8
  %119 = load i64, i64* %6, align 8
  %120 = add nsw i64 %118, %119
  %121 = load i64, i64* @max_allocated_metafiles_size, align 8
  %122 = icmp sgt i64 %120, %121
  br i1 %122, label %123, label %126

123:                                              ; preds = %117
  %124 = call i32 (...) @free_by_LRU()
  %125 = icmp ne i32 %124, 0
  br label %126

126:                                              ; preds = %123, %117
  %127 = phi i1 [ false, %117 ], [ %125, %123 ]
  br i1 %127, label %128, label %129

128:                                              ; preds = %126
  br label %117

129:                                              ; preds = %126
  br label %130

130:                                              ; preds = %140, %129
  %131 = load i64, i64* %6, align 8
  %132 = call i64 @metafile_alloc(i64 %131)
  %133 = load %struct.TYPE_4__*, %struct.TYPE_4__** @large_metafiles, align 8
  %134 = load i32, i32* %4, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %133, i64 %135
  %137 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %136, i32 0, i32 0
  store i64 %132, i64* %137, align 8
  %138 = icmp ne i64 %132, 0
  %139 = xor i1 %138, true
  br i1 %139, label %140, label %143

140:                                              ; preds = %130
  %141 = call i32 (...) @free_by_LRU()
  %142 = call i32 @assert(i32 %141)
  br label %130

143:                                              ; preds = %130
  %144 = load i32, i32* %5, align 4
  %145 = icmp sle i32 %144, 0
  br i1 %145, label %146, label %177

146:                                              ; preds = %143
  %147 = load i32, i32* @idx_fd, align 4
  %148 = load i64, i64* @index_large_data_offset, align 8
  %149 = load %struct.TYPE_3__*, %struct.TYPE_3__** @large_users, align 8
  %150 = load i32, i32* %4, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %149, i64 %151
  %153 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 4
  %155 = sext i32 %154 to i64
  %156 = mul i64 8, %155
  %157 = add i64 %148, %156
  %158 = load i32, i32* @SEEK_SET, align 4
  %159 = call i32 @lseek(i32 %147, i64 %157, i32 %158)
  %160 = load i32, i32* @idx_fd, align 4
  %161 = load %struct.TYPE_4__*, %struct.TYPE_4__** @large_metafiles, align 8
  %162 = load i32, i32* %4, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %161, i64 %163
  %165 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %164, i32 0, i32 0
  %166 = load i64, i64* %165, align 8
  %167 = load i64, i64* %6, align 8
  %168 = call i64 @read(i32 %160, i64 %166, i64 %167)
  %169 = load i64, i64* %6, align 8
  %170 = icmp eq i64 %168, %169
  %171 = zext i1 %170 to i32
  %172 = call i32 @assert(i32 %171)
  %173 = load i32, i32* %4, align 4
  %174 = call i32 @add_use(i32 %173)
  %175 = load i32, i32* @metafiles_loaded, align 4
  %176 = add nsw i32 %175, 1
  store i32 %176, i32* @metafiles_loaded, align 4
  store i32 1, i32* %3, align 4
  br label %182

177:                                              ; preds = %143
  %178 = load i32, i32* %4, align 4
  %179 = call i32 @load_metafile_aio(i32 %178)
  %180 = load i32, i32* @metafiles_cache_miss, align 4
  %181 = add nsw i32 %180, 1
  store i32 %181, i32* @metafiles_cache_miss, align 4
  store i32 -2, i32* %3, align 4
  br label %182

182:                                              ; preds = %177, %146, %89, %82, %81
  %183 = load i32, i32* %3, align 4
  ret i32 %183
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @fprintf(i32, i8*, i32) #1

declare dso_local i32 @load_metafile_aio(i32) #1

declare dso_local i32 @free_by_LRU(...) #1

declare dso_local i64 @metafile_alloc(i64) #1

declare dso_local i32 @lseek(i32, i64, i32) #1

declare dso_local i64 @read(i32, i64, i64) #1

declare dso_local i32 @add_use(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
