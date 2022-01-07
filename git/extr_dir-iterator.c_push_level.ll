; ModuleID = '/home/carl/AnghaBench/git/extr_dir-iterator.c_push_level.c'
source_filename = "/home/carl/AnghaBench/git/extr_dir-iterator.c_push_level.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dir_iterator_int = type { i64, %struct.TYPE_3__, %struct.dir_iterator_level*, i32 }
%struct.TYPE_3__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32* }
%struct.dir_iterator_level = type { i32, i32 }

@errno = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"error opening directory '%s'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dir_iterator_int*)* @push_level to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @push_level(%struct.dir_iterator_int* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dir_iterator_int*, align 8
  %4 = alloca %struct.dir_iterator_level*, align 8
  %5 = alloca i32, align 4
  store %struct.dir_iterator_int* %0, %struct.dir_iterator_int** %3, align 8
  %6 = load %struct.dir_iterator_int*, %struct.dir_iterator_int** %3, align 8
  %7 = getelementptr inbounds %struct.dir_iterator_int, %struct.dir_iterator_int* %6, i32 0, i32 2
  %8 = load %struct.dir_iterator_level*, %struct.dir_iterator_level** %7, align 8
  %9 = load %struct.dir_iterator_int*, %struct.dir_iterator_int** %3, align 8
  %10 = getelementptr inbounds %struct.dir_iterator_int, %struct.dir_iterator_int* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = add nsw i64 %11, 1
  %13 = load %struct.dir_iterator_int*, %struct.dir_iterator_int** %3, align 8
  %14 = getelementptr inbounds %struct.dir_iterator_int, %struct.dir_iterator_int* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @ALLOC_GROW(%struct.dir_iterator_level* %8, i64 %12, i32 %15)
  %17 = load %struct.dir_iterator_int*, %struct.dir_iterator_int** %3, align 8
  %18 = getelementptr inbounds %struct.dir_iterator_int, %struct.dir_iterator_int* %17, i32 0, i32 2
  %19 = load %struct.dir_iterator_level*, %struct.dir_iterator_level** %18, align 8
  %20 = load %struct.dir_iterator_int*, %struct.dir_iterator_int** %3, align 8
  %21 = getelementptr inbounds %struct.dir_iterator_int, %struct.dir_iterator_int* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = add nsw i64 %22, 1
  store i64 %23, i64* %21, align 8
  %24 = getelementptr inbounds %struct.dir_iterator_level, %struct.dir_iterator_level* %19, i64 %22
  store %struct.dir_iterator_level* %24, %struct.dir_iterator_level** %4, align 8
  %25 = load %struct.dir_iterator_int*, %struct.dir_iterator_int** %3, align 8
  %26 = getelementptr inbounds %struct.dir_iterator_int, %struct.dir_iterator_int* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 1
  %29 = load i32*, i32** %28, align 8
  %30 = load %struct.dir_iterator_int*, %struct.dir_iterator_int** %3, align 8
  %31 = getelementptr inbounds %struct.dir_iterator_int, %struct.dir_iterator_int* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = sub nsw i32 %34, 1
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %29, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @is_dir_sep(i32 %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %46, label %41

41:                                               ; preds = %1
  %42 = load %struct.dir_iterator_int*, %struct.dir_iterator_int** %3, align 8
  %43 = getelementptr inbounds %struct.dir_iterator_int, %struct.dir_iterator_int* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = call i32 @strbuf_addch(%struct.TYPE_4__* %44, i8 signext 47)
  br label %46

46:                                               ; preds = %41, %1
  %47 = load %struct.dir_iterator_int*, %struct.dir_iterator_int** %3, align 8
  %48 = getelementptr inbounds %struct.dir_iterator_int, %struct.dir_iterator_int* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.dir_iterator_level*, %struct.dir_iterator_level** %4, align 8
  %53 = getelementptr inbounds %struct.dir_iterator_level, %struct.dir_iterator_level* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 4
  %54 = load %struct.dir_iterator_int*, %struct.dir_iterator_int** %3, align 8
  %55 = getelementptr inbounds %struct.dir_iterator_int, %struct.dir_iterator_int* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 1
  %58 = load i32*, i32** %57, align 8
  %59 = call i32 @opendir(i32* %58)
  %60 = load %struct.dir_iterator_level*, %struct.dir_iterator_level** %4, align 8
  %61 = getelementptr inbounds %struct.dir_iterator_level, %struct.dir_iterator_level* %60, i32 0, i32 1
  store i32 %59, i32* %61, align 4
  %62 = load %struct.dir_iterator_level*, %struct.dir_iterator_level** %4, align 8
  %63 = getelementptr inbounds %struct.dir_iterator_level, %struct.dir_iterator_level* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %84, label %66

66:                                               ; preds = %46
  %67 = load i32, i32* @errno, align 4
  store i32 %67, i32* %5, align 4
  %68 = load i32, i32* @errno, align 4
  %69 = load i32, i32* @ENOENT, align 4
  %70 = icmp ne i32 %68, %69
  br i1 %70, label %71, label %78

71:                                               ; preds = %66
  %72 = load %struct.dir_iterator_int*, %struct.dir_iterator_int** %3, align 8
  %73 = getelementptr inbounds %struct.dir_iterator_int, %struct.dir_iterator_int* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 1
  %76 = load i32*, i32** %75, align 8
  %77 = call i32 @warning_errno(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32* %76)
  br label %78

78:                                               ; preds = %71, %66
  %79 = load %struct.dir_iterator_int*, %struct.dir_iterator_int** %3, align 8
  %80 = getelementptr inbounds %struct.dir_iterator_int, %struct.dir_iterator_int* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = add nsw i64 %81, -1
  store i64 %82, i64* %80, align 8
  %83 = load i32, i32* %5, align 4
  store i32 %83, i32* @errno, align 4
  store i32 -1, i32* %2, align 4
  br label %85

84:                                               ; preds = %46
  store i32 0, i32* %2, align 4
  br label %85

85:                                               ; preds = %84, %78
  %86 = load i32, i32* %2, align 4
  ret i32 %86
}

declare dso_local i32 @ALLOC_GROW(%struct.dir_iterator_level*, i64, i32) #1

declare dso_local i32 @is_dir_sep(i32) #1

declare dso_local i32 @strbuf_addch(%struct.TYPE_4__*, i8 signext) #1

declare dso_local i32 @opendir(i32*) #1

declare dso_local i32 @warning_errno(i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
