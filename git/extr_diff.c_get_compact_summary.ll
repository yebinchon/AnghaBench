; ModuleID = '/home/carl/AnghaBench/git/extr_diff.c_get_compact_summary.c'
source_filename = "/home/carl/AnghaBench/git/extr_diff.c_get_compact_summary.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.diff_filepair = type { i64, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@DIFF_STATUS_ADDED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [7 x i8] c"new +l\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"new +x\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"new\00", align 1
@DIFF_STATUS_DELETED = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [5 x i8] c"gone\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"mode -l\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"mode +l\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"mode +x\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"mode -x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.diff_filepair*, i32)* @get_compact_summary to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @get_compact_summary(%struct.diff_filepair* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.diff_filepair*, align 8
  %5 = alloca i32, align 4
  store %struct.diff_filepair* %0, %struct.diff_filepair** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %42, label %8

8:                                                ; preds = %2
  %9 = load %struct.diff_filepair*, %struct.diff_filepair** %4, align 8
  %10 = getelementptr inbounds %struct.diff_filepair, %struct.diff_filepair* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @DIFF_STATUS_ADDED, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %33

14:                                               ; preds = %8
  %15 = load %struct.diff_filepair*, %struct.diff_filepair** %4, align 8
  %16 = getelementptr inbounds %struct.diff_filepair, %struct.diff_filepair* %15, i32 0, i32 1
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i64 @S_ISLNK(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %14
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8** %3, align 8
  br label %114

23:                                               ; preds = %14
  %24 = load %struct.diff_filepair*, %struct.diff_filepair** %4, align 8
  %25 = getelementptr inbounds %struct.diff_filepair, %struct.diff_filepair* %24, i32 0, i32 1
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = and i32 %28, 511
  %30 = icmp eq i32 %29, 493
  br i1 %30, label %31, label %32

31:                                               ; preds = %23
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8** %3, align 8
  br label %114

32:                                               ; preds = %23
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8** %3, align 8
  br label %114

33:                                               ; preds = %8
  %34 = load %struct.diff_filepair*, %struct.diff_filepair** %4, align 8
  %35 = getelementptr inbounds %struct.diff_filepair, %struct.diff_filepair* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @DIFF_STATUS_DELETED, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %33
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8** %3, align 8
  br label %114

40:                                               ; preds = %33
  br label %41

41:                                               ; preds = %40
  br label %42

42:                                               ; preds = %41, %2
  %43 = load %struct.diff_filepair*, %struct.diff_filepair** %4, align 8
  %44 = getelementptr inbounds %struct.diff_filepair, %struct.diff_filepair* %43, i32 0, i32 2
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i64 @S_ISLNK(i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %59

50:                                               ; preds = %42
  %51 = load %struct.diff_filepair*, %struct.diff_filepair** %4, align 8
  %52 = getelementptr inbounds %struct.diff_filepair, %struct.diff_filepair* %51, i32 0, i32 1
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i64 @S_ISLNK(i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %59, label %58

58:                                               ; preds = %50
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i8** %3, align 8
  br label %114

59:                                               ; preds = %50, %42
  %60 = load %struct.diff_filepair*, %struct.diff_filepair** %4, align 8
  %61 = getelementptr inbounds %struct.diff_filepair, %struct.diff_filepair* %60, i32 0, i32 2
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i64 @S_ISLNK(i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %76, label %67

67:                                               ; preds = %59
  %68 = load %struct.diff_filepair*, %struct.diff_filepair** %4, align 8
  %69 = getelementptr inbounds %struct.diff_filepair, %struct.diff_filepair* %68, i32 0, i32 1
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i64 @S_ISLNK(i32 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %67
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i8** %3, align 8
  br label %114

76:                                               ; preds = %67, %59
  %77 = load %struct.diff_filepair*, %struct.diff_filepair** %4, align 8
  %78 = getelementptr inbounds %struct.diff_filepair, %struct.diff_filepair* %77, i32 0, i32 2
  %79 = load %struct.TYPE_3__*, %struct.TYPE_3__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = and i32 %81, 511
  %83 = icmp eq i32 %82, 420
  br i1 %83, label %84, label %93

84:                                               ; preds = %76
  %85 = load %struct.diff_filepair*, %struct.diff_filepair** %4, align 8
  %86 = getelementptr inbounds %struct.diff_filepair, %struct.diff_filepair* %85, i32 0, i32 1
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = and i32 %89, 511
  %91 = icmp eq i32 %90, 493
  br i1 %91, label %92, label %93

92:                                               ; preds = %84
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i8** %3, align 8
  br label %114

93:                                               ; preds = %84, %76
  %94 = load %struct.diff_filepair*, %struct.diff_filepair** %4, align 8
  %95 = getelementptr inbounds %struct.diff_filepair, %struct.diff_filepair* %94, i32 0, i32 2
  %96 = load %struct.TYPE_3__*, %struct.TYPE_3__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = and i32 %98, 511
  %100 = icmp eq i32 %99, 493
  br i1 %100, label %101, label %110

101:                                              ; preds = %93
  %102 = load %struct.diff_filepair*, %struct.diff_filepair** %4, align 8
  %103 = getelementptr inbounds %struct.diff_filepair, %struct.diff_filepair* %102, i32 0, i32 1
  %104 = load %struct.TYPE_4__*, %struct.TYPE_4__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = and i32 %106, 511
  %108 = icmp eq i32 %107, 420
  br i1 %108, label %109, label %110

109:                                              ; preds = %101
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i8** %3, align 8
  br label %114

110:                                              ; preds = %101, %93
  br label %111

111:                                              ; preds = %110
  br label %112

112:                                              ; preds = %111
  br label %113

113:                                              ; preds = %112
  store i8* null, i8** %3, align 8
  br label %114

114:                                              ; preds = %113, %109, %92, %75, %58, %39, %32, %31, %22
  %115 = load i8*, i8** %3, align 8
  ret i8* %115
}

declare dso_local i64 @S_ISLNK(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
