; ModuleID = '/home/carl/AnghaBench/git/extr_split-index.c_read_link_extension.c'
source_filename = "/home/carl/AnghaBench/git/extr_split-index.c_read_link_extension.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }
%struct.index_state = type { i32 }
%struct.split_index = type { i8*, i8*, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@the_hash_algo = common dso_local global %struct.TYPE_4__* null, align 8
@.str = private unnamed_addr constant [35 x i8] c"corrupt link extension (too short)\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"corrupt delete bitmap in link extension\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"corrupt replace bitmap in link extension\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"garbage at the end of link extension\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @read_link_extension(%struct.index_state* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.index_state*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.split_index*, align 8
  %10 = alloca i32, align 4
  store %struct.index_state* %0, %struct.index_state** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load i8*, i8** %6, align 8
  store i8* %11, i8** %8, align 8
  %12 = load i64, i64* %7, align 8
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** @the_hash_algo, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ult i64 %12, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %3
  %18 = call i32 @error(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  store i32 %18, i32* %4, align 4
  br label %85

19:                                               ; preds = %3
  %20 = load %struct.index_state*, %struct.index_state** %5, align 8
  %21 = call %struct.split_index* @init_split_index(%struct.index_state* %20)
  store %struct.split_index* %21, %struct.split_index** %9, align 8
  %22 = load %struct.split_index*, %struct.split_index** %9, align 8
  %23 = getelementptr inbounds %struct.split_index, %struct.split_index* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i8*, i8** %8, align 8
  %27 = call i32 @hashcpy(i32 %25, i8* %26)
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** @the_hash_algo, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i8*, i8** %8, align 8
  %32 = getelementptr inbounds i8, i8* %31, i64 %30
  store i8* %32, i8** %8, align 8
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** @the_hash_algo, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* %7, align 8
  %37 = sub i64 %36, %35
  store i64 %37, i64* %7, align 8
  %38 = load i64, i64* %7, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %19
  store i32 0, i32* %4, align 4
  br label %85

41:                                               ; preds = %19
  %42 = call i8* (...) @ewah_new()
  %43 = load %struct.split_index*, %struct.split_index** %9, align 8
  %44 = getelementptr inbounds %struct.split_index, %struct.split_index* %43, i32 0, i32 1
  store i8* %42, i8** %44, align 8
  %45 = load %struct.split_index*, %struct.split_index** %9, align 8
  %46 = getelementptr inbounds %struct.split_index, %struct.split_index* %45, i32 0, i32 1
  %47 = load i8*, i8** %46, align 8
  %48 = load i8*, i8** %8, align 8
  %49 = load i64, i64* %7, align 8
  %50 = call i32 @ewah_read_mmap(i8* %47, i8* %48, i64 %49)
  store i32 %50, i32* %10, align 4
  %51 = load i32, i32* %10, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %41
  %54 = call i32 @error(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  store i32 %54, i32* %4, align 4
  br label %85

55:                                               ; preds = %41
  %56 = load i32, i32* %10, align 4
  %57 = load i8*, i8** %8, align 8
  %58 = sext i32 %56 to i64
  %59 = getelementptr inbounds i8, i8* %57, i64 %58
  store i8* %59, i8** %8, align 8
  %60 = load i32, i32* %10, align 4
  %61 = sext i32 %60 to i64
  %62 = load i64, i64* %7, align 8
  %63 = sub i64 %62, %61
  store i64 %63, i64* %7, align 8
  %64 = call i8* (...) @ewah_new()
  %65 = load %struct.split_index*, %struct.split_index** %9, align 8
  %66 = getelementptr inbounds %struct.split_index, %struct.split_index* %65, i32 0, i32 0
  store i8* %64, i8** %66, align 8
  %67 = load %struct.split_index*, %struct.split_index** %9, align 8
  %68 = getelementptr inbounds %struct.split_index, %struct.split_index* %67, i32 0, i32 0
  %69 = load i8*, i8** %68, align 8
  %70 = load i8*, i8** %8, align 8
  %71 = load i64, i64* %7, align 8
  %72 = call i32 @ewah_read_mmap(i8* %69, i8* %70, i64 %71)
  store i32 %72, i32* %10, align 4
  %73 = load i32, i32* %10, align 4
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %55
  %76 = call i32 @error(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0))
  store i32 %76, i32* %4, align 4
  br label %85

77:                                               ; preds = %55
  %78 = load i32, i32* %10, align 4
  %79 = sext i32 %78 to i64
  %80 = load i64, i64* %7, align 8
  %81 = icmp ne i64 %79, %80
  br i1 %81, label %82, label %84

82:                                               ; preds = %77
  %83 = call i32 @error(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0))
  store i32 %83, i32* %4, align 4
  br label %85

84:                                               ; preds = %77
  store i32 0, i32* %4, align 4
  br label %85

85:                                               ; preds = %84, %82, %75, %53, %40, %17
  %86 = load i32, i32* %4, align 4
  ret i32 %86
}

declare dso_local i32 @error(i8*) #1

declare dso_local %struct.split_index* @init_split_index(%struct.index_state*) #1

declare dso_local i32 @hashcpy(i32, i8*) #1

declare dso_local i8* @ewah_new(...) #1

declare dso_local i32 @ewah_read_mmap(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
