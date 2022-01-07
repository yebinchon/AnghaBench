; ModuleID = '/home/carl/AnghaBench/git/refs/extr_packed-backend.c_load_contents.c'
source_filename = "/home/carl/AnghaBench/git/refs/extr_packed-backend.c_load_contents.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snapshot = type { i32, i32, i64, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.stat = type { i32 }

@O_RDONLY = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [17 x i8] c"couldn't read %s\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"couldn't stat %s\00", align 1
@mmap_strategy = common dso_local global i64 0, align 8
@MMAP_NONE = common dso_local global i64 0, align 8
@SMALL_FILE_SIZE = common dso_local global i64 0, align 8
@PROT_READ = common dso_local global i32 0, align 4
@MAP_PRIVATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snapshot*)* @load_contents to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @load_contents(%struct.snapshot* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snapshot*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.stat, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.snapshot* %0, %struct.snapshot** %3, align 8
  %8 = load %struct.snapshot*, %struct.snapshot** %3, align 8
  %9 = getelementptr inbounds %struct.snapshot, %struct.snapshot* %8, i32 0, i32 4
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @O_RDONLY, align 4
  %14 = call i32 @open(i32 %12, i32 %13)
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %4, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %30

17:                                               ; preds = %1
  %18 = load i64, i64* @errno, align 8
  %19 = load i64, i64* @ENOENT, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %17
  store i32 0, i32* %2, align 4
  br label %116

22:                                               ; preds = %17
  %23 = load %struct.snapshot*, %struct.snapshot** %3, align 8
  %24 = getelementptr inbounds %struct.snapshot, %struct.snapshot* %23, i32 0, i32 4
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @die_errno(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %27)
  br label %29

29:                                               ; preds = %22
  br label %30

30:                                               ; preds = %29, %1
  %31 = load %struct.snapshot*, %struct.snapshot** %3, align 8
  %32 = getelementptr inbounds %struct.snapshot, %struct.snapshot* %31, i32 0, i32 5
  %33 = load i32, i32* %4, align 4
  %34 = call i32 @stat_validity_update(i32* %32, i32 %33)
  %35 = load i32, i32* %4, align 4
  %36 = call i64 @fstat(i32 %35, %struct.stat* %5)
  %37 = icmp slt i64 %36, 0
  br i1 %37, label %38, label %45

38:                                               ; preds = %30
  %39 = load %struct.snapshot*, %struct.snapshot** %3, align 8
  %40 = getelementptr inbounds %struct.snapshot, %struct.snapshot* %39, i32 0, i32 4
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @die_errno(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %43)
  br label %45

45:                                               ; preds = %38, %30
  %46 = getelementptr inbounds %struct.stat, %struct.stat* %5, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i64 @xsize_t(i32 %47)
  store i64 %48, i64* %6, align 8
  %49 = load i64, i64* %6, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %54, label %51

51:                                               ; preds = %45
  %52 = load i32, i32* %4, align 4
  %53 = call i32 @close(i32 %52)
  store i32 0, i32* %2, align 4
  br label %116

54:                                               ; preds = %45
  %55 = load i64, i64* @mmap_strategy, align 8
  %56 = load i64, i64* @MMAP_NONE, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %62, label %58

58:                                               ; preds = %54
  %59 = load i64, i64* %6, align 8
  %60 = load i64, i64* @SMALL_FILE_SIZE, align 8
  %61 = icmp ule i64 %59, %60
  br i1 %61, label %62, label %89

62:                                               ; preds = %58, %54
  %63 = load i64, i64* %6, align 8
  %64 = call i32 @xmalloc(i64 %63)
  %65 = load %struct.snapshot*, %struct.snapshot** %3, align 8
  %66 = getelementptr inbounds %struct.snapshot, %struct.snapshot* %65, i32 0, i32 1
  store i32 %64, i32* %66, align 4
  %67 = load i32, i32* %4, align 4
  %68 = load %struct.snapshot*, %struct.snapshot** %3, align 8
  %69 = getelementptr inbounds %struct.snapshot, %struct.snapshot* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load i64, i64* %6, align 8
  %72 = call i64 @read_in_full(i32 %67, i32 %70, i64 %71)
  store i64 %72, i64* %7, align 8
  %73 = load i64, i64* %7, align 8
  %74 = icmp ult i64 %73, 0
  br i1 %74, label %79, label %75

75:                                               ; preds = %62
  %76 = load i64, i64* %7, align 8
  %77 = load i64, i64* %6, align 8
  %78 = icmp ne i64 %76, %77
  br i1 %78, label %79, label %86

79:                                               ; preds = %75, %62
  %80 = load %struct.snapshot*, %struct.snapshot** %3, align 8
  %81 = getelementptr inbounds %struct.snapshot, %struct.snapshot* %80, i32 0, i32 4
  %82 = load %struct.TYPE_2__*, %struct.TYPE_2__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @die_errno(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %84)
  br label %86

86:                                               ; preds = %79, %75
  %87 = load %struct.snapshot*, %struct.snapshot** %3, align 8
  %88 = getelementptr inbounds %struct.snapshot, %struct.snapshot* %87, i32 0, i32 0
  store i32 0, i32* %88, align 8
  br label %99

89:                                               ; preds = %58
  %90 = load i64, i64* %6, align 8
  %91 = load i32, i32* @PROT_READ, align 4
  %92 = load i32, i32* @MAP_PRIVATE, align 4
  %93 = load i32, i32* %4, align 4
  %94 = call i32 @xmmap(i32* null, i64 %90, i32 %91, i32 %92, i32 %93, i32 0)
  %95 = load %struct.snapshot*, %struct.snapshot** %3, align 8
  %96 = getelementptr inbounds %struct.snapshot, %struct.snapshot* %95, i32 0, i32 1
  store i32 %94, i32* %96, align 4
  %97 = load %struct.snapshot*, %struct.snapshot** %3, align 8
  %98 = getelementptr inbounds %struct.snapshot, %struct.snapshot* %97, i32 0, i32 0
  store i32 1, i32* %98, align 8
  br label %99

99:                                               ; preds = %89, %86
  br label %100

100:                                              ; preds = %99
  %101 = load i32, i32* %4, align 4
  %102 = call i32 @close(i32 %101)
  %103 = load %struct.snapshot*, %struct.snapshot** %3, align 8
  %104 = getelementptr inbounds %struct.snapshot, %struct.snapshot* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.snapshot*, %struct.snapshot** %3, align 8
  %107 = getelementptr inbounds %struct.snapshot, %struct.snapshot* %106, i32 0, i32 3
  store i32 %105, i32* %107, align 8
  %108 = load %struct.snapshot*, %struct.snapshot** %3, align 8
  %109 = getelementptr inbounds %struct.snapshot, %struct.snapshot* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = sext i32 %110 to i64
  %112 = load i64, i64* %6, align 8
  %113 = add i64 %111, %112
  %114 = load %struct.snapshot*, %struct.snapshot** %3, align 8
  %115 = getelementptr inbounds %struct.snapshot, %struct.snapshot* %114, i32 0, i32 2
  store i64 %113, i64* %115, align 8
  store i32 1, i32* %2, align 4
  br label %116

116:                                              ; preds = %100, %51, %21
  %117 = load i32, i32* %2, align 4
  ret i32 %117
}

declare dso_local i32 @open(i32, i32) #1

declare dso_local i32 @die_errno(i8*, i32) #1

declare dso_local i32 @stat_validity_update(i32*, i32) #1

declare dso_local i64 @fstat(i32, %struct.stat*) #1

declare dso_local i64 @xsize_t(i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @xmalloc(i64) #1

declare dso_local i64 @read_in_full(i32, i32, i64) #1

declare dso_local i32 @xmmap(i32*, i64, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
