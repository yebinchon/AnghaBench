; ModuleID = '/home/carl/AnghaBench/git/extr_dir-iterator.c_dir_iterator_advance.c'
source_filename = "/home/carl/AnghaBench/git/extr_dir-iterator.c_dir_iterator_advance.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dir_iterator = type { i32 }
%struct.dir_iterator_int = type { i32, i32, %struct.TYPE_5__, %struct.dir_iterator_level* }
%struct.TYPE_5__ = type { %struct.TYPE_6__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.dir_iterator_level = type { i32, i32 }
%struct.dirent = type { i32 }

@errno = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i64 0, align 8
@DIR_ITERATOR_PEDANTIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"error reading directory '%s'\00", align 1
@ITER_OK = common dso_local global i32 0, align 4
@ITER_ERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dir_iterator_advance(%struct.dir_iterator* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dir_iterator*, align 8
  %4 = alloca %struct.dir_iterator_int*, align 8
  %5 = alloca %struct.dirent*, align 8
  %6 = alloca %struct.dir_iterator_level*, align 8
  store %struct.dir_iterator* %0, %struct.dir_iterator** %3, align 8
  %7 = load %struct.dir_iterator*, %struct.dir_iterator** %3, align 8
  %8 = bitcast %struct.dir_iterator* %7 to %struct.dir_iterator_int*
  store %struct.dir_iterator_int* %8, %struct.dir_iterator_int** %4, align 8
  %9 = load %struct.dir_iterator_int*, %struct.dir_iterator_int** %4, align 8
  %10 = getelementptr inbounds %struct.dir_iterator_int, %struct.dir_iterator_int* %9, i32 0, i32 2
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i64 @S_ISDIR(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %39

16:                                               ; preds = %1
  %17 = load %struct.dir_iterator_int*, %struct.dir_iterator_int** %4, align 8
  %18 = call i64 @push_level(%struct.dir_iterator_int* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %39

20:                                               ; preds = %16
  %21 = load i64, i64* @errno, align 8
  %22 = load i64, i64* @ENOENT, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %32

24:                                               ; preds = %20
  %25 = load %struct.dir_iterator_int*, %struct.dir_iterator_int** %4, align 8
  %26 = getelementptr inbounds %struct.dir_iterator_int, %struct.dir_iterator_int* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @DIR_ITERATOR_PEDANTIC, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %24
  br label %117

32:                                               ; preds = %24, %20
  %33 = load %struct.dir_iterator_int*, %struct.dir_iterator_int** %4, align 8
  %34 = getelementptr inbounds %struct.dir_iterator_int, %struct.dir_iterator_int* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %32
  br label %117

38:                                               ; preds = %32
  br label %39

39:                                               ; preds = %38, %16, %1
  br label %40

40:                                               ; preds = %39, %89, %96, %114
  %41 = load %struct.dir_iterator_int*, %struct.dir_iterator_int** %4, align 8
  %42 = getelementptr inbounds %struct.dir_iterator_int, %struct.dir_iterator_int* %41, i32 0, i32 3
  %43 = load %struct.dir_iterator_level*, %struct.dir_iterator_level** %42, align 8
  %44 = load %struct.dir_iterator_int*, %struct.dir_iterator_int** %4, align 8
  %45 = getelementptr inbounds %struct.dir_iterator_int, %struct.dir_iterator_int* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = sub nsw i32 %46, 1
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.dir_iterator_level, %struct.dir_iterator_level* %43, i64 %48
  store %struct.dir_iterator_level* %49, %struct.dir_iterator_level** %6, align 8
  %50 = load %struct.dir_iterator_int*, %struct.dir_iterator_int** %4, align 8
  %51 = getelementptr inbounds %struct.dir_iterator_int, %struct.dir_iterator_int* %50, i32 0, i32 2
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  %53 = load %struct.dir_iterator_level*, %struct.dir_iterator_level** %6, align 8
  %54 = getelementptr inbounds %struct.dir_iterator_level, %struct.dir_iterator_level* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @strbuf_setlen(%struct.TYPE_6__* %52, i32 %55)
  store i64 0, i64* @errno, align 8
  %57 = load %struct.dir_iterator_level*, %struct.dir_iterator_level** %6, align 8
  %58 = getelementptr inbounds %struct.dir_iterator_level, %struct.dir_iterator_level* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call %struct.dirent* @readdir(i32 %59)
  store %struct.dirent* %60, %struct.dirent** %5, align 8
  %61 = load %struct.dirent*, %struct.dirent** %5, align 8
  %62 = icmp ne %struct.dirent* %61, null
  br i1 %62, label %90, label %63

63:                                               ; preds = %40
  %64 = load i64, i64* @errno, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %81

66:                                               ; preds = %63
  %67 = load %struct.dir_iterator_int*, %struct.dir_iterator_int** %4, align 8
  %68 = getelementptr inbounds %struct.dir_iterator_int, %struct.dir_iterator_int* %67, i32 0, i32 2
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @warning_errno(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %71)
  %73 = load %struct.dir_iterator_int*, %struct.dir_iterator_int** %4, align 8
  %74 = getelementptr inbounds %struct.dir_iterator_int, %struct.dir_iterator_int* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* @DIR_ITERATOR_PEDANTIC, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %66
  br label %117

80:                                               ; preds = %66
  br label %89

81:                                               ; preds = %63
  %82 = load %struct.dir_iterator_int*, %struct.dir_iterator_int** %4, align 8
  %83 = call i64 @pop_level(%struct.dir_iterator_int* %82)
  %84 = icmp eq i64 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %81
  %86 = load %struct.dir_iterator*, %struct.dir_iterator** %3, align 8
  %87 = call i32 @dir_iterator_abort(%struct.dir_iterator* %86)
  store i32 %87, i32* %2, align 4
  br label %121

88:                                               ; preds = %81
  br label %89

89:                                               ; preds = %88, %80
  br label %40

90:                                               ; preds = %40
  %91 = load %struct.dirent*, %struct.dirent** %5, align 8
  %92 = getelementptr inbounds %struct.dirent, %struct.dirent* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = call i64 @is_dot_or_dotdot(i32 %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %90
  br label %40

97:                                               ; preds = %90
  %98 = load %struct.dir_iterator_int*, %struct.dir_iterator_int** %4, align 8
  %99 = load %struct.dirent*, %struct.dirent** %5, align 8
  %100 = call i64 @prepare_next_entry_data(%struct.dir_iterator_int* %98, %struct.dirent* %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %115

102:                                              ; preds = %97
  %103 = load i64, i64* @errno, align 8
  %104 = load i64, i64* @ENOENT, align 8
  %105 = icmp ne i64 %103, %104
  br i1 %105, label %106, label %114

106:                                              ; preds = %102
  %107 = load %struct.dir_iterator_int*, %struct.dir_iterator_int** %4, align 8
  %108 = getelementptr inbounds %struct.dir_iterator_int, %struct.dir_iterator_int* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = load i32, i32* @DIR_ITERATOR_PEDANTIC, align 4
  %111 = and i32 %109, %110
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %114

113:                                              ; preds = %106
  br label %117

114:                                              ; preds = %106, %102
  br label %40

115:                                              ; preds = %97
  %116 = load i32, i32* @ITER_OK, align 4
  store i32 %116, i32* %2, align 4
  br label %121

117:                                              ; preds = %113, %79, %37, %31
  %118 = load %struct.dir_iterator*, %struct.dir_iterator** %3, align 8
  %119 = call i32 @dir_iterator_abort(%struct.dir_iterator* %118)
  %120 = load i32, i32* @ITER_ERROR, align 4
  store i32 %120, i32* %2, align 4
  br label %121

121:                                              ; preds = %117, %115, %85
  %122 = load i32, i32* %2, align 4
  ret i32 %122
}

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i64 @push_level(%struct.dir_iterator_int*) #1

declare dso_local i32 @strbuf_setlen(%struct.TYPE_6__*, i32) #1

declare dso_local %struct.dirent* @readdir(i32) #1

declare dso_local i32 @warning_errno(i8*, i32) #1

declare dso_local i64 @pop_level(%struct.dir_iterator_int*) #1

declare dso_local i32 @dir_iterator_abort(%struct.dir_iterator*) #1

declare dso_local i64 @is_dot_or_dotdot(i32) #1

declare dso_local i64 @prepare_next_entry_data(%struct.dir_iterator_int*, %struct.dirent*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
