; ModuleID = '/home/carl/AnghaBench/git/extr_csum-file.c_finalize_hashfile.c'
source_filename = "/home/carl/AnghaBench/git/extr_csum-file.c_finalize_hashfile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 (i32, i32*)* }
%struct.hashfile = type { i64, i64, i32, i32, i32 }

@the_hash_algo = common dso_local global %struct.TYPE_2__* null, align 8
@CSUM_HASH_IN_STREAM = common dso_local global i32 0, align 4
@CSUM_FSYNC = common dso_local global i32 0, align 4
@CSUM_CLOSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"%s: sha1 file error on close\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"%s: error when reading the tail of sha1 file\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"%s: sha1 file has trailing garbage\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @finalize_hashfile(%struct.hashfile* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.hashfile*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8, align 1
  %9 = alloca i32, align 4
  store %struct.hashfile* %0, %struct.hashfile** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.hashfile*, %struct.hashfile** %4, align 8
  %11 = call i32 @hashflush(%struct.hashfile* %10)
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** @the_hash_algo, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 1
  %14 = load i32 (i32, i32*)*, i32 (i32, i32*)** %13, align 8
  %15 = load %struct.hashfile*, %struct.hashfile** %4, align 8
  %16 = getelementptr inbounds %struct.hashfile, %struct.hashfile* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.hashfile*, %struct.hashfile** %4, align 8
  %19 = getelementptr inbounds %struct.hashfile, %struct.hashfile* %18, i32 0, i32 4
  %20 = call i32 %14(i32 %17, i32* %19)
  %21 = load i8*, i8** %5, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %23, label %29

23:                                               ; preds = %3
  %24 = load i8*, i8** %5, align 8
  %25 = load %struct.hashfile*, %struct.hashfile** %4, align 8
  %26 = getelementptr inbounds %struct.hashfile, %struct.hashfile* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @hashcpy(i8* %24, i32 %27)
  br label %29

29:                                               ; preds = %23, %3
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* @CSUM_HASH_IN_STREAM, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %43

34:                                               ; preds = %29
  %35 = load %struct.hashfile*, %struct.hashfile** %4, align 8
  %36 = load %struct.hashfile*, %struct.hashfile** %4, align 8
  %37 = getelementptr inbounds %struct.hashfile, %struct.hashfile* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** @the_hash_algo, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @flush(%struct.hashfile* %35, i32 %38, i32 %41)
  br label %43

43:                                               ; preds = %34, %29
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* @CSUM_FSYNC, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %56

48:                                               ; preds = %43
  %49 = load %struct.hashfile*, %struct.hashfile** %4, align 8
  %50 = getelementptr inbounds %struct.hashfile, %struct.hashfile* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.hashfile*, %struct.hashfile** %4, align 8
  %53 = getelementptr inbounds %struct.hashfile, %struct.hashfile* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @fsync_or_die(i64 %51, i32 %54)
  br label %56

56:                                               ; preds = %48, %43
  %57 = load i32, i32* %6, align 4
  %58 = load i32, i32* @CSUM_CLOSE, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %73

61:                                               ; preds = %56
  %62 = load %struct.hashfile*, %struct.hashfile** %4, align 8
  %63 = getelementptr inbounds %struct.hashfile, %struct.hashfile* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = call i64 @close(i64 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %72

67:                                               ; preds = %61
  %68 = load %struct.hashfile*, %struct.hashfile** %4, align 8
  %69 = getelementptr inbounds %struct.hashfile, %struct.hashfile* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @die_errno(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %70)
  br label %72

72:                                               ; preds = %67, %61
  store i32 0, i32* %7, align 4
  br label %78

73:                                               ; preds = %56
  %74 = load %struct.hashfile*, %struct.hashfile** %4, align 8
  %75 = getelementptr inbounds %struct.hashfile, %struct.hashfile* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = trunc i64 %76 to i32
  store i32 %77, i32* %7, align 4
  br label %78

78:                                               ; preds = %73, %72
  %79 = load %struct.hashfile*, %struct.hashfile** %4, align 8
  %80 = getelementptr inbounds %struct.hashfile, %struct.hashfile* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = icmp sle i64 0, %81
  br i1 %82, label %83, label %115

83:                                               ; preds = %78
  %84 = load %struct.hashfile*, %struct.hashfile** %4, align 8
  %85 = getelementptr inbounds %struct.hashfile, %struct.hashfile* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = call i32 @read_in_full(i64 %86, i8* %8, i32 1)
  store i32 %87, i32* %9, align 4
  %88 = load i32, i32* %9, align 4
  %89 = icmp slt i32 %88, 0
  br i1 %89, label %90, label %95

90:                                               ; preds = %83
  %91 = load %struct.hashfile*, %struct.hashfile** %4, align 8
  %92 = getelementptr inbounds %struct.hashfile, %struct.hashfile* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 8
  %94 = call i32 @die_errno(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i32 %93)
  br label %95

95:                                               ; preds = %90, %83
  %96 = load i32, i32* %9, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %103

98:                                               ; preds = %95
  %99 = load %struct.hashfile*, %struct.hashfile** %4, align 8
  %100 = getelementptr inbounds %struct.hashfile, %struct.hashfile* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 8
  %102 = call i32 @die(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 %101)
  br label %103

103:                                              ; preds = %98, %95
  %104 = load %struct.hashfile*, %struct.hashfile** %4, align 8
  %105 = getelementptr inbounds %struct.hashfile, %struct.hashfile* %104, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  %107 = call i64 @close(i64 %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %114

109:                                              ; preds = %103
  %110 = load %struct.hashfile*, %struct.hashfile** %4, align 8
  %111 = getelementptr inbounds %struct.hashfile, %struct.hashfile* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 8
  %113 = call i32 @die_errno(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %112)
  br label %114

114:                                              ; preds = %109, %103
  br label %115

115:                                              ; preds = %114, %78
  %116 = load %struct.hashfile*, %struct.hashfile** %4, align 8
  %117 = call i32 @free(%struct.hashfile* %116)
  %118 = load i32, i32* %7, align 4
  ret i32 %118
}

declare dso_local i32 @hashflush(%struct.hashfile*) #1

declare dso_local i32 @hashcpy(i8*, i32) #1

declare dso_local i32 @flush(%struct.hashfile*, i32, i32) #1

declare dso_local i32 @fsync_or_die(i64, i32) #1

declare dso_local i64 @close(i64) #1

declare dso_local i32 @die_errno(i8*, i32) #1

declare dso_local i32 @read_in_full(i64, i8*, i32) #1

declare dso_local i32 @die(i8*, i32) #1

declare dso_local i32 @free(%struct.hashfile*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
