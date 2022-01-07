; ModuleID = '/home/carl/AnghaBench/kphp-kdb/pmemcached/extr_pmemcached-index-disk.c_load_metafile.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/pmemcached/extr_pmemcached-index-disk.c_load_metafile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.metafile = type { i8*, i64*, i32*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i64, i64 }

@metafile_number = common dso_local global i32 0, align 4
@metafiles = common dso_local global %struct.metafile* null, align 8
@verbosity = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"loading metafile %d in aio mode\0A\00", align 1
@.str.1 = private unnamed_addr constant [55 x i8] c"Previous AIO query failed at %p, scheduling a new one\0A\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"No previous aio found for this metafile\0A\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"Error: memory leak at load_metafile.\0A\00", align 1
@.str.4 = private unnamed_addr constant [54 x i8] c"no space to load metafile - cannot allocate %d bytes\0A\00", align 1
@allocated_metafile_bytes = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [23 x i8] c"AIO query creating...\0A\00", align 1
@idx_fd = common dso_local global i32 0, align 4
@ct_metafile_aio = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [19 x i8] c"AIO query created\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @load_metafile(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.metafile*, align 8
  store i32 %0, i32* %2, align 4
  %4 = call i32 (...) @WaitAioArrClear()
  %5 = load i32, i32* %2, align 4
  %6 = load i32, i32* @metafile_number, align 4
  %7 = icmp slt i32 %5, %6
  %8 = zext i1 %7 to i32
  %9 = call i32 @assert(i32 %8)
  %10 = load %struct.metafile*, %struct.metafile** @metafiles, align 8
  %11 = load i32, i32* %2, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds %struct.metafile, %struct.metafile* %10, i64 %12
  store %struct.metafile* %13, %struct.metafile** %3, align 8
  %14 = load i32, i32* @verbosity, align 4
  %15 = icmp sge i32 %14, 3
  br i1 %15, label %16, label %20

16:                                               ; preds = %1
  %17 = load i32, i32* @stderr, align 4
  %18 = load i32, i32* %2, align 4
  %19 = call i32 (i32, i8*, ...) @fprintf(i32 %17, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %18)
  br label %20

20:                                               ; preds = %16, %1
  %21 = load %struct.metafile*, %struct.metafile** %3, align 8
  %22 = getelementptr inbounds %struct.metafile, %struct.metafile* %21, i32 0, i32 2
  %23 = load i32*, i32** %22, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %25, label %50

25:                                               ; preds = %20
  %26 = load %struct.metafile*, %struct.metafile** %3, align 8
  %27 = getelementptr inbounds %struct.metafile, %struct.metafile* %26, i32 0, i32 2
  %28 = load i32*, i32** %27, align 8
  %29 = call i32 @check_aio_completion(i32* %28)
  %30 = load %struct.metafile*, %struct.metafile** %3, align 8
  %31 = getelementptr inbounds %struct.metafile, %struct.metafile* %30, i32 0, i32 2
  %32 = load i32*, i32** %31, align 8
  %33 = icmp ne i32* %32, null
  br i1 %33, label %34, label %39

34:                                               ; preds = %25
  %35 = load %struct.metafile*, %struct.metafile** %3, align 8
  %36 = getelementptr inbounds %struct.metafile, %struct.metafile* %35, i32 0, i32 2
  %37 = load i32*, i32** %36, align 8
  %38 = call i32 @WaitAioArrAdd(i32* %37)
  br label %157

39:                                               ; preds = %25
  %40 = load %struct.metafile*, %struct.metafile** %3, align 8
  %41 = getelementptr inbounds %struct.metafile, %struct.metafile* %40, i32 0, i32 0
  %42 = load i8*, i8** %41, align 8
  %43 = icmp ne i8* %42, null
  br i1 %43, label %44, label %45

44:                                               ; preds = %39
  br label %157

45:                                               ; preds = %39
  %46 = load i32, i32* @stderr, align 4
  %47 = load %struct.metafile*, %struct.metafile** %3, align 8
  %48 = call i32 (i32, i8*, ...) @fprintf(i32 %46, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0), %struct.metafile* %47)
  br label %49

49:                                               ; preds = %45
  br label %57

50:                                               ; preds = %20
  %51 = load i32, i32* @verbosity, align 4
  %52 = icmp sge i32 %51, 4
  br i1 %52, label %53, label %56

53:                                               ; preds = %50
  %54 = load i32, i32* @stderr, align 4
  %55 = call i32 (i32, i8*, ...) @fprintf(i32 %54, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0))
  br label %56

56:                                               ; preds = %53, %50
  br label %57

57:                                               ; preds = %56, %49
  %58 = load %struct.metafile*, %struct.metafile** %3, align 8
  %59 = getelementptr inbounds %struct.metafile, %struct.metafile* %58, i32 0, i32 0
  %60 = load i8*, i8** %59, align 8
  %61 = icmp ne i8* %60, null
  br i1 %61, label %62, label %65

62:                                               ; preds = %57
  %63 = load i32, i32* @stderr, align 4
  %64 = call i32 (i32, i8*, ...) @fprintf(i32 %63, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0))
  br label %157

65:                                               ; preds = %57
  %66 = call i32 (...) @free_metafiles()
  br label %67

67:                                               ; preds = %65, %95
  %68 = load %struct.metafile*, %struct.metafile** %3, align 8
  %69 = getelementptr inbounds %struct.metafile, %struct.metafile* %68, i32 0, i32 3
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = call i64 @zzmalloc(i32 %72)
  %74 = inttoptr i64 %73 to i64*
  %75 = load %struct.metafile*, %struct.metafile** %3, align 8
  %76 = getelementptr inbounds %struct.metafile, %struct.metafile* %75, i32 0, i32 1
  store i64* %74, i64** %76, align 8
  %77 = load %struct.metafile*, %struct.metafile** %3, align 8
  %78 = getelementptr inbounds %struct.metafile, %struct.metafile* %77, i32 0, i32 1
  %79 = load i64*, i64** %78, align 8
  %80 = icmp ne i64* %79, null
  br i1 %80, label %81, label %95

81:                                               ; preds = %67
  %82 = load %struct.metafile*, %struct.metafile** %3, align 8
  %83 = getelementptr inbounds %struct.metafile, %struct.metafile* %82, i32 0, i32 1
  %84 = load i64*, i64** %83, align 8
  %85 = load %struct.metafile*, %struct.metafile** %3, align 8
  %86 = getelementptr inbounds %struct.metafile, %struct.metafile* %85, i32 0, i32 3
  %87 = load %struct.TYPE_2__*, %struct.TYPE_2__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i64, i64* %84, i64 %90
  %92 = bitcast i64* %91 to i8*
  %93 = load %struct.metafile*, %struct.metafile** %3, align 8
  %94 = getelementptr inbounds %struct.metafile, %struct.metafile* %93, i32 0, i32 0
  store i8* %92, i8** %94, align 8
  br label %103

95:                                               ; preds = %67
  %96 = load i32, i32* @stderr, align 4
  %97 = load %struct.metafile*, %struct.metafile** %3, align 8
  %98 = getelementptr inbounds %struct.metafile, %struct.metafile* %97, i32 0, i32 3
  %99 = load %struct.TYPE_2__*, %struct.TYPE_2__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = call i32 (i32, i8*, ...) @fprintf(i32 %96, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.4, i64 0, i64 0), i32 %101)
  br label %67

103:                                              ; preds = %81
  %104 = load %struct.metafile*, %struct.metafile** %3, align 8
  %105 = getelementptr inbounds %struct.metafile, %struct.metafile* %104, i32 0, i32 3
  %106 = load %struct.TYPE_2__*, %struct.TYPE_2__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = load i32, i32* @allocated_metafile_bytes, align 4
  %110 = add nsw i32 %109, %108
  store i32 %110, i32* @allocated_metafile_bytes, align 4
  %111 = load i32, i32* @verbosity, align 4
  %112 = icmp sge i32 %111, 4
  br i1 %112, label %113, label %116

113:                                              ; preds = %103
  %114 = load i32, i32* @stderr, align 4
  %115 = call i32 (i32, i8*, ...) @fprintf(i32 %114, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0))
  br label %116

116:                                              ; preds = %113, %103
  %117 = load i32, i32* @idx_fd, align 4
  %118 = load %struct.metafile*, %struct.metafile** %3, align 8
  %119 = getelementptr inbounds %struct.metafile, %struct.metafile* %118, i32 0, i32 1
  %120 = load i64*, i64** %119, align 8
  %121 = load %struct.metafile*, %struct.metafile** %3, align 8
  %122 = getelementptr inbounds %struct.metafile, %struct.metafile* %121, i32 0, i32 3
  %123 = load %struct.TYPE_2__*, %struct.TYPE_2__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %123, i32 0, i32 3
  %125 = load i64, i64* %124, align 8
  %126 = load %struct.metafile*, %struct.metafile** %3, align 8
  %127 = getelementptr inbounds %struct.metafile, %struct.metafile* %126, i32 0, i32 3
  %128 = load %struct.TYPE_2__*, %struct.TYPE_2__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %128, i32 0, i32 2
  %130 = load i64, i64* %129, align 8
  %131 = add nsw i64 %125, %130
  %132 = load %struct.metafile*, %struct.metafile** %3, align 8
  %133 = getelementptr inbounds %struct.metafile, %struct.metafile* %132, i32 0, i32 3
  %134 = load %struct.TYPE_2__*, %struct.TYPE_2__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = load %struct.metafile*, %struct.metafile** %3, align 8
  %138 = call i32* @create_aio_read_connection(i32 %117, i64* %120, i64 %131, i32 %136, i32* @ct_metafile_aio, %struct.metafile* %137)
  %139 = load %struct.metafile*, %struct.metafile** %3, align 8
  %140 = getelementptr inbounds %struct.metafile, %struct.metafile* %139, i32 0, i32 2
  store i32* %138, i32** %140, align 8
  %141 = load i32, i32* @verbosity, align 4
  %142 = icmp sge i32 %141, 4
  br i1 %142, label %143, label %146

143:                                              ; preds = %116
  %144 = load i32, i32* @stderr, align 4
  %145 = call i32 (i32, i8*, ...) @fprintf(i32 %144, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0))
  br label %146

146:                                              ; preds = %143, %116
  %147 = load %struct.metafile*, %struct.metafile** %3, align 8
  %148 = getelementptr inbounds %struct.metafile, %struct.metafile* %147, i32 0, i32 2
  %149 = load i32*, i32** %148, align 8
  %150 = icmp ne i32* %149, null
  %151 = zext i1 %150 to i32
  %152 = call i32 @assert(i32 %151)
  %153 = load %struct.metafile*, %struct.metafile** %3, align 8
  %154 = getelementptr inbounds %struct.metafile, %struct.metafile* %153, i32 0, i32 2
  %155 = load i32*, i32** %154, align 8
  %156 = call i32 @WaitAioArrAdd(i32* %155)
  br label %157

157:                                              ; preds = %146, %62, %44, %34
  ret void
}

declare dso_local i32 @WaitAioArrClear(...) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @check_aio_completion(i32*) #1

declare dso_local i32 @WaitAioArrAdd(i32*) #1

declare dso_local i32 @free_metafiles(...) #1

declare dso_local i64 @zzmalloc(i32) #1

declare dso_local i32* @create_aio_read_connection(i32, i64*, i64, i32, i32*, %struct.metafile*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
