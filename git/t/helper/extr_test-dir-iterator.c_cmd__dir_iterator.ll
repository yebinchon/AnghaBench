; ModuleID = '/home/carl/AnghaBench/git/t/helper/extr_test-dir-iterator.c_cmd__dir_iterator.c'
source_filename = "/home/carl/AnghaBench/git/t/helper/extr_test-dir-iterator.c_cmd__dir_iterator.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dir_iterator = type { i8*, i8*, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i8* }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c"--\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"--follow-symlinks\00", align 1
@DIR_ITERATOR_FOLLOW_SYMLINKS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"--pedantic\00", align 1
@DIR_ITERATOR_PEDANTIC = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [20 x i8] c"invalid option '%s'\00", align 1
@.str.4 = private unnamed_addr constant [51 x i8] c"dir-iterator needs exactly one non-option argument\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"dir_iterator_begin failure: %s\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@EXIT_FAILURE = common dso_local global i32 0, align 4
@ITER_OK = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [5 x i8] c"[d] \00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"[f] \00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"[s] \00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"[?] \00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"(%s) [%s] %s\0A\00", align 1
@ITER_DONE = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [30 x i8] c"dir_iterator_advance failure\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cmd__dir_iterator(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.dir_iterator*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %7, align 4
  %9 = load i8**, i8*** %5, align 8
  %10 = getelementptr inbounds i8*, i8** %9, i32 1
  store i8** %10, i8*** %5, align 8
  %11 = load i32, i32* %4, align 4
  %12 = add nsw i32 %11, -1
  store i32 %12, i32* %4, align 4
  br label %13

13:                                               ; preds = %48, %2
  %14 = load i8**, i8*** %5, align 8
  %15 = load i8*, i8** %14, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %17, label %22

17:                                               ; preds = %13
  %18 = load i8**, i8*** %5, align 8
  %19 = load i8*, i8** %18, align 8
  %20 = call i64 @starts_with(i8* %19, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %21 = icmp ne i64 %20, 0
  br label %22

22:                                               ; preds = %17, %13
  %23 = phi i1 [ false, %13 ], [ %21, %17 ]
  br i1 %23, label %24, label %53

24:                                               ; preds = %22
  %25 = load i8**, i8*** %5, align 8
  %26 = load i8*, i8** %25, align 8
  %27 = call i64 @strcmp(i8* %26, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %24
  %30 = load i32, i32* @DIR_ITERATOR_FOLLOW_SYMLINKS, align 4
  %31 = load i32, i32* %7, align 4
  %32 = or i32 %31, %30
  store i32 %32, i32* %7, align 4
  br label %47

33:                                               ; preds = %24
  %34 = load i8**, i8*** %5, align 8
  %35 = load i8*, i8** %34, align 8
  %36 = call i64 @strcmp(i8* %35, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %33
  %39 = load i32, i32* @DIR_ITERATOR_PEDANTIC, align 4
  %40 = load i32, i32* %7, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %7, align 4
  br label %46

42:                                               ; preds = %33
  %43 = load i8**, i8*** %5, align 8
  %44 = load i8*, i8** %43, align 8
  %45 = call i32 (i8*, ...) @die(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i8* %44)
  br label %46

46:                                               ; preds = %42, %38
  br label %47

47:                                               ; preds = %46, %29
  br label %48

48:                                               ; preds = %47
  %49 = load i8**, i8*** %5, align 8
  %50 = getelementptr inbounds i8*, i8** %49, i32 1
  store i8** %50, i8*** %5, align 8
  %51 = load i32, i32* %4, align 4
  %52 = add nsw i32 %51, -1
  store i32 %52, i32* %4, align 4
  br label %13

53:                                               ; preds = %22
  %54 = load i8**, i8*** %5, align 8
  %55 = load i8*, i8** %54, align 8
  %56 = icmp ne i8* %55, null
  br i1 %56, label %57, label %60

57:                                               ; preds = %53
  %58 = load i32, i32* %4, align 4
  %59 = icmp ne i32 %58, 1
  br i1 %59, label %60, label %62

60:                                               ; preds = %57, %53
  %61 = call i32 (i8*, ...) @die(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.4, i64 0, i64 0))
  br label %62

62:                                               ; preds = %60, %57
  %63 = load i8**, i8*** %5, align 8
  %64 = load i8*, i8** %63, align 8
  %65 = load i32, i32* %7, align 4
  %66 = call %struct.dir_iterator* @dir_iterator_begin(i8* %64, i32 %65)
  store %struct.dir_iterator* %66, %struct.dir_iterator** %6, align 8
  %67 = load %struct.dir_iterator*, %struct.dir_iterator** %6, align 8
  %68 = icmp ne %struct.dir_iterator* %67, null
  br i1 %68, label %75, label %69

69:                                               ; preds = %62
  %70 = load i32, i32* @errno, align 4
  %71 = call i8* @error_name(i32 %70)
  %72 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0), i8* %71)
  %73 = load i32, i32* @EXIT_FAILURE, align 4
  %74 = call i32 @exit(i32 %73) #3
  unreachable

75:                                               ; preds = %62
  br label %76

76:                                               ; preds = %112, %75
  %77 = load %struct.dir_iterator*, %struct.dir_iterator** %6, align 8
  %78 = call i32 @dir_iterator_advance(%struct.dir_iterator* %77)
  store i32 %78, i32* %8, align 4
  %79 = load i32, i32* @ITER_OK, align 4
  %80 = icmp eq i32 %78, %79
  br i1 %80, label %81, label %124

81:                                               ; preds = %76
  %82 = load %struct.dir_iterator*, %struct.dir_iterator** %6, align 8
  %83 = getelementptr inbounds %struct.dir_iterator, %struct.dir_iterator* %82, i32 0, i32 3
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = call i64 @S_ISDIR(i32 %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %81
  %89 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  br label %112

90:                                               ; preds = %81
  %91 = load %struct.dir_iterator*, %struct.dir_iterator** %6, align 8
  %92 = getelementptr inbounds %struct.dir_iterator, %struct.dir_iterator* %91, i32 0, i32 3
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = call i64 @S_ISREG(i32 %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %99

97:                                               ; preds = %90
  %98 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0))
  br label %111

99:                                               ; preds = %90
  %100 = load %struct.dir_iterator*, %struct.dir_iterator** %6, align 8
  %101 = getelementptr inbounds %struct.dir_iterator, %struct.dir_iterator* %100, i32 0, i32 3
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = call i64 @S_ISLNK(i32 %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %108

106:                                              ; preds = %99
  %107 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0))
  br label %110

108:                                              ; preds = %99
  %109 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0))
  br label %110

110:                                              ; preds = %108, %106
  br label %111

111:                                              ; preds = %110, %97
  br label %112

112:                                              ; preds = %111, %88
  %113 = load %struct.dir_iterator*, %struct.dir_iterator** %6, align 8
  %114 = getelementptr inbounds %struct.dir_iterator, %struct.dir_iterator* %113, i32 0, i32 0
  %115 = load i8*, i8** %114, align 8
  %116 = load %struct.dir_iterator*, %struct.dir_iterator** %6, align 8
  %117 = getelementptr inbounds %struct.dir_iterator, %struct.dir_iterator* %116, i32 0, i32 1
  %118 = load i8*, i8** %117, align 8
  %119 = load %struct.dir_iterator*, %struct.dir_iterator** %6, align 8
  %120 = getelementptr inbounds %struct.dir_iterator, %struct.dir_iterator* %119, i32 0, i32 2
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i32 0, i32 0
  %122 = load i8*, i8** %121, align 8
  %123 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i64 0, i64 0), i8* %115, i8* %118, i8* %122)
  br label %76

124:                                              ; preds = %76
  %125 = load i32, i32* %8, align 4
  %126 = load i32, i32* @ITER_DONE, align 4
  %127 = icmp ne i32 %125, %126
  br i1 %127, label %128, label %130

128:                                              ; preds = %124
  %129 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.11, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %131

130:                                              ; preds = %124
  store i32 0, i32* %3, align 4
  br label %131

131:                                              ; preds = %130, %128
  %132 = load i32, i32* %3, align 4
  ret i32 %132
}

declare dso_local i64 @starts_with(i8*, i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @die(i8*, ...) #1

declare dso_local %struct.dir_iterator* @dir_iterator_begin(i8*, i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i8* @error_name(i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @dir_iterator_advance(%struct.dir_iterator*) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i64 @S_ISREG(i32) #1

declare dso_local i64 @S_ISLNK(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
