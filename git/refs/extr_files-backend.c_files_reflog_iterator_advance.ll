; ModuleID = '/home/carl/AnghaBench/git/refs/extr_files-backend.c_files_reflog_iterator_advance.c'
source_filename = "/home/carl/AnghaBench/git/refs/extr_files-backend.c_files_reflog_iterator_advance.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ref_iterator = type { i32 }
%struct.files_reflog_iterator = type { %struct.dir_iterator*, %struct.TYPE_6__, i32, i32 }
%struct.dir_iterator = type { i8*, i32, %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_6__ = type { i32, i32*, i32 }

@ITER_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c".lock\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"bad ref for %s\00", align 1
@ITER_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ref_iterator*)* @files_reflog_iterator_advance to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @files_reflog_iterator_advance(%struct.ref_iterator* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ref_iterator*, align 8
  %4 = alloca %struct.files_reflog_iterator*, align 8
  %5 = alloca %struct.dir_iterator*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ref_iterator* %0, %struct.ref_iterator** %3, align 8
  %8 = load %struct.ref_iterator*, %struct.ref_iterator** %3, align 8
  %9 = bitcast %struct.ref_iterator* %8 to %struct.files_reflog_iterator*
  store %struct.files_reflog_iterator* %9, %struct.files_reflog_iterator** %4, align 8
  %10 = load %struct.files_reflog_iterator*, %struct.files_reflog_iterator** %4, align 8
  %11 = getelementptr inbounds %struct.files_reflog_iterator, %struct.files_reflog_iterator* %10, i32 0, i32 0
  %12 = load %struct.dir_iterator*, %struct.dir_iterator** %11, align 8
  store %struct.dir_iterator* %12, %struct.dir_iterator** %5, align 8
  br label %13

13:                                               ; preds = %53, %41, %34, %25, %1
  %14 = load %struct.dir_iterator*, %struct.dir_iterator** %5, align 8
  %15 = call i32 @dir_iterator_advance(%struct.dir_iterator* %14)
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* @ITER_OK, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %76

18:                                               ; preds = %13
  %19 = load %struct.dir_iterator*, %struct.dir_iterator** %5, align 8
  %20 = getelementptr inbounds %struct.dir_iterator, %struct.dir_iterator* %19, i32 0, i32 3
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @S_ISREG(i32 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %18
  br label %13

26:                                               ; preds = %18
  %27 = load %struct.dir_iterator*, %struct.dir_iterator** %5, align 8
  %28 = getelementptr inbounds %struct.dir_iterator, %struct.dir_iterator* %27, i32 0, i32 0
  %29 = load i8*, i8** %28, align 8
  %30 = getelementptr inbounds i8, i8* %29, i64 0
  %31 = load i8, i8* %30, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp eq i32 %32, 46
  br i1 %33, label %34, label %35

34:                                               ; preds = %26
  br label %13

35:                                               ; preds = %26
  %36 = load %struct.dir_iterator*, %struct.dir_iterator** %5, align 8
  %37 = getelementptr inbounds %struct.dir_iterator, %struct.dir_iterator* %36, i32 0, i32 0
  %38 = load i8*, i8** %37, align 8
  %39 = call i64 @ends_with(i8* %38, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %35
  br label %13

42:                                               ; preds = %35
  %43 = load %struct.files_reflog_iterator*, %struct.files_reflog_iterator** %4, align 8
  %44 = getelementptr inbounds %struct.files_reflog_iterator, %struct.files_reflog_iterator* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.dir_iterator*, %struct.dir_iterator** %5, align 8
  %47 = getelementptr inbounds %struct.dir_iterator, %struct.dir_iterator* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.files_reflog_iterator*, %struct.files_reflog_iterator** %4, align 8
  %50 = getelementptr inbounds %struct.files_reflog_iterator, %struct.files_reflog_iterator* %49, i32 0, i32 2
  %51 = call i64 @refs_read_ref_full(i32 %45, i32 %48, i32 0, i32* %50, i32* %7)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %42
  %54 = load %struct.dir_iterator*, %struct.dir_iterator** %5, align 8
  %55 = getelementptr inbounds %struct.dir_iterator, %struct.dir_iterator* %54, i32 0, i32 2
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @error(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %57)
  br label %13

59:                                               ; preds = %42
  %60 = load %struct.dir_iterator*, %struct.dir_iterator** %5, align 8
  %61 = getelementptr inbounds %struct.dir_iterator, %struct.dir_iterator* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.files_reflog_iterator*, %struct.files_reflog_iterator** %4, align 8
  %64 = getelementptr inbounds %struct.files_reflog_iterator, %struct.files_reflog_iterator* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 2
  store i32 %62, i32* %65, align 8
  %66 = load %struct.files_reflog_iterator*, %struct.files_reflog_iterator** %4, align 8
  %67 = getelementptr inbounds %struct.files_reflog_iterator, %struct.files_reflog_iterator* %66, i32 0, i32 2
  %68 = load %struct.files_reflog_iterator*, %struct.files_reflog_iterator** %4, align 8
  %69 = getelementptr inbounds %struct.files_reflog_iterator, %struct.files_reflog_iterator* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 1
  store i32* %67, i32** %70, align 8
  %71 = load i32, i32* %7, align 4
  %72 = load %struct.files_reflog_iterator*, %struct.files_reflog_iterator** %4, align 8
  %73 = getelementptr inbounds %struct.files_reflog_iterator, %struct.files_reflog_iterator* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 0
  store i32 %71, i32* %74, align 8
  %75 = load i32, i32* @ITER_OK, align 4
  store i32 %75, i32* %2, align 4
  br label %87

76:                                               ; preds = %13
  %77 = load %struct.files_reflog_iterator*, %struct.files_reflog_iterator** %4, align 8
  %78 = getelementptr inbounds %struct.files_reflog_iterator, %struct.files_reflog_iterator* %77, i32 0, i32 0
  store %struct.dir_iterator* null, %struct.dir_iterator** %78, align 8
  %79 = load %struct.ref_iterator*, %struct.ref_iterator** %3, align 8
  %80 = call i32 @ref_iterator_abort(%struct.ref_iterator* %79)
  %81 = load i32, i32* @ITER_ERROR, align 4
  %82 = icmp eq i32 %80, %81
  br i1 %82, label %83, label %85

83:                                               ; preds = %76
  %84 = load i32, i32* @ITER_ERROR, align 4
  store i32 %84, i32* %6, align 4
  br label %85

85:                                               ; preds = %83, %76
  %86 = load i32, i32* %6, align 4
  store i32 %86, i32* %2, align 4
  br label %87

87:                                               ; preds = %85, %59
  %88 = load i32, i32* %2, align 4
  ret i32 %88
}

declare dso_local i32 @dir_iterator_advance(%struct.dir_iterator*) #1

declare dso_local i32 @S_ISREG(i32) #1

declare dso_local i64 @ends_with(i8*, i8*) #1

declare dso_local i64 @refs_read_ref_full(i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @error(i8*, i32) #1

declare dso_local i32 @ref_iterator_abort(%struct.ref_iterator*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
