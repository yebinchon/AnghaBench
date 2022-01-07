; ModuleID = '/home/carl/AnghaBench/kphp-kdb/news/extr_news-data.c_load_metafile_aio.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/news/extr_news-data.c_load_metafile_aio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.metafile = type { i32, i32* }
%struct.TYPE_2__ = type { i32, i32 }

@large_users_number = common dso_local global i32 0, align 4
@large_metafiles = common dso_local global %struct.metafile* null, align 8
@large_users = common dso_local global %struct.TYPE_2__* null, align 8
@index_large_data_offset = common dso_local global i32 0, align 4
@verbosity = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [74 x i8] c"loading metafile %d for user %d (%ld bytes at position %lld) in aio mode\0A\00", align 1
@.str.1 = private unnamed_addr constant [55 x i8] c"Previous AIO query failed at %p, scheduling a new one\0A\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"No previous aio found for this metafile\0A\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"AIO query creating...\0A\00", align 1
@idx_fd = common dso_local global i32 0, align 4
@ct_metafile_aio = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [19 x i8] c"AIO query created\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @load_metafile_aio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @load_metafile_aio(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.metafile*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i32 %0, i32* %2, align 4
  %7 = call i32 (...) @WaitAioArrClear()
  %8 = load i32, i32* %2, align 4
  %9 = icmp sle i32 0, %8
  br i1 %9, label %10, label %14

10:                                               ; preds = %1
  %11 = load i32, i32* %2, align 4
  %12 = load i32, i32* @large_users_number, align 4
  %13 = icmp slt i32 %11, %12
  br label %14

14:                                               ; preds = %10, %1
  %15 = phi i1 [ false, %1 ], [ %13, %10 ]
  %16 = zext i1 %15 to i32
  %17 = call i32 @assert(i32 %16)
  %18 = load %struct.metafile*, %struct.metafile** @large_metafiles, align 8
  %19 = load i32, i32* %2, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.metafile, %struct.metafile* %18, i64 %20
  %22 = getelementptr inbounds %struct.metafile, %struct.metafile* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @assert(i32 %23)
  %25 = load %struct.metafile*, %struct.metafile** @large_metafiles, align 8
  %26 = load i32, i32* %2, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.metafile, %struct.metafile* %25, i64 %27
  store %struct.metafile* %28, %struct.metafile** %3, align 8
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** @large_users, align 8
  %30 = load i32, i32* %2, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %4, align 4
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** @large_users, align 8
  %36 = load i32, i32* %2, align 4
  %37 = add nsw i32 %36, 1
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** @large_users, align 8
  %43 = load i32, i32* %2, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = sub nsw i32 %41, %47
  %49 = sext i32 %48 to i64
  %50 = mul i64 8, %49
  store i64 %50, i64* %5, align 8
  %51 = load i32, i32* @index_large_data_offset, align 4
  %52 = sext i32 %51 to i64
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** @large_users, align 8
  %54 = load i32, i32* %2, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = sext i32 %58 to i64
  %60 = mul i64 8, %59
  %61 = add i64 %52, %60
  store i64 %61, i64* %6, align 8
  %62 = load i32, i32* @verbosity, align 4
  %63 = icmp sge i32 %62, 2
  br i1 %63, label %64, label %71

64:                                               ; preds = %14
  %65 = load i32, i32* @stderr, align 4
  %66 = load i32, i32* %2, align 4
  %67 = load i32, i32* %4, align 4
  %68 = load i64, i64* %5, align 8
  %69 = load i64, i64* %6, align 8
  %70 = call i32 (i32, i8*, ...) @fprintf(i32 %65, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str, i64 0, i64 0), i32 %66, i32 %67, i64 %68, i64 %69)
  br label %71

71:                                               ; preds = %64, %14
  %72 = load %struct.metafile*, %struct.metafile** %3, align 8
  %73 = getelementptr inbounds %struct.metafile, %struct.metafile* %72, i32 0, i32 1
  %74 = load i32*, i32** %73, align 8
  %75 = icmp ne i32* %74, null
  br i1 %75, label %76, label %112

76:                                               ; preds = %71
  %77 = load %struct.metafile*, %struct.metafile** %3, align 8
  %78 = getelementptr inbounds %struct.metafile, %struct.metafile* %77, i32 0, i32 1
  %79 = load i32*, i32** %78, align 8
  %80 = call i32 @check_aio_completion(i32* %79)
  %81 = load %struct.metafile*, %struct.metafile** %3, align 8
  %82 = getelementptr inbounds %struct.metafile, %struct.metafile* %81, i32 0, i32 1
  %83 = load i32*, i32** %82, align 8
  %84 = icmp ne i32* %83, null
  br i1 %84, label %85, label %90

85:                                               ; preds = %76
  %86 = load %struct.metafile*, %struct.metafile** %3, align 8
  %87 = getelementptr inbounds %struct.metafile, %struct.metafile* %86, i32 0, i32 1
  %88 = load i32*, i32** %87, align 8
  %89 = call i32 @WaitAioArrAdd(i32* %88)
  br label %156

90:                                               ; preds = %76
  %91 = load %struct.metafile*, %struct.metafile** %3, align 8
  %92 = getelementptr inbounds %struct.metafile, %struct.metafile* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %90
  br label %156

96:                                               ; preds = %90
  %97 = load i32, i32* @stderr, align 4
  %98 = load %struct.metafile*, %struct.metafile** %3, align 8
  %99 = call i32 (i32, i8*, ...) @fprintf(i32 %97, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0), %struct.metafile* %98)
  br label %100

100:                                              ; preds = %107, %96
  %101 = load i64, i64* %5, align 8
  %102 = call i32 @metafile_alloc(i64 %101)
  %103 = load %struct.metafile*, %struct.metafile** %3, align 8
  %104 = getelementptr inbounds %struct.metafile, %struct.metafile* %103, i32 0, i32 0
  store i32 %102, i32* %104, align 8
  %105 = icmp ne i32 %102, 0
  %106 = xor i1 %105, true
  br i1 %106, label %107, label %110

107:                                              ; preds = %100
  %108 = call i32 (...) @free_by_LRU()
  %109 = call i32 @assert(i32 %108)
  br label %100

110:                                              ; preds = %100
  br label %111

111:                                              ; preds = %110
  br label %119

112:                                              ; preds = %71
  %113 = load i32, i32* @verbosity, align 4
  %114 = icmp sge i32 %113, 4
  br i1 %114, label %115, label %118

115:                                              ; preds = %112
  %116 = load i32, i32* @stderr, align 4
  %117 = call i32 (i32, i8*, ...) @fprintf(i32 %116, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0))
  br label %118

118:                                              ; preds = %115, %112
  br label %119

119:                                              ; preds = %118, %111
  %120 = load i32, i32* @verbosity, align 4
  %121 = icmp sge i32 %120, 4
  br i1 %121, label %122, label %125

122:                                              ; preds = %119
  %123 = load i32, i32* @stderr, align 4
  %124 = call i32 (i32, i8*, ...) @fprintf(i32 %123, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  br label %125

125:                                              ; preds = %122, %119
  %126 = load %struct.metafile*, %struct.metafile** %3, align 8
  %127 = getelementptr inbounds %struct.metafile, %struct.metafile* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = call i32 @assert(i32 %128)
  %130 = load i32, i32* @idx_fd, align 4
  %131 = load %struct.metafile*, %struct.metafile** %3, align 8
  %132 = getelementptr inbounds %struct.metafile, %struct.metafile* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = load i64, i64* %6, align 8
  %135 = load i64, i64* %5, align 8
  %136 = load %struct.metafile*, %struct.metafile** %3, align 8
  %137 = call i32* @create_aio_read_connection(i32 %130, i32 %133, i64 %134, i64 %135, i32* @ct_metafile_aio, %struct.metafile* %136)
  %138 = load %struct.metafile*, %struct.metafile** %3, align 8
  %139 = getelementptr inbounds %struct.metafile, %struct.metafile* %138, i32 0, i32 1
  store i32* %137, i32** %139, align 8
  %140 = load i32, i32* @verbosity, align 4
  %141 = icmp sge i32 %140, 4
  br i1 %141, label %142, label %145

142:                                              ; preds = %125
  %143 = load i32, i32* @stderr, align 4
  %144 = call i32 (i32, i8*, ...) @fprintf(i32 %143, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0))
  br label %145

145:                                              ; preds = %142, %125
  %146 = load %struct.metafile*, %struct.metafile** %3, align 8
  %147 = getelementptr inbounds %struct.metafile, %struct.metafile* %146, i32 0, i32 1
  %148 = load i32*, i32** %147, align 8
  %149 = icmp ne i32* %148, null
  %150 = zext i1 %149 to i32
  %151 = call i32 @assert(i32 %150)
  %152 = load %struct.metafile*, %struct.metafile** %3, align 8
  %153 = getelementptr inbounds %struct.metafile, %struct.metafile* %152, i32 0, i32 1
  %154 = load i32*, i32** %153, align 8
  %155 = call i32 @WaitAioArrAdd(i32* %154)
  br label %156

156:                                              ; preds = %145, %95, %85
  ret void
}

declare dso_local i32 @WaitAioArrClear(...) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @check_aio_completion(i32*) #1

declare dso_local i32 @WaitAioArrAdd(i32*) #1

declare dso_local i32 @metafile_alloc(i64) #1

declare dso_local i32 @free_by_LRU(...) #1

declare dso_local i32* @create_aio_read_connection(i32, i32, i64, i64, i32*, %struct.metafile*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
