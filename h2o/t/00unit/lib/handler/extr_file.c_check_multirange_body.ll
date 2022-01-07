; ModuleID = '/home/carl/AnghaBench/h2o/t/00unit/lib/handler/extr_file.c_check_multirange_body.c'
source_filename = "/home/carl/AnghaBench/h2o/t/00unit/lib/handler/extr_file.c_check_multirange_body.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@.str = private unnamed_addr constant [3 x i8] c"\0D\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"--\00", align 1
@BOUNDARY_SIZE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"\0D\0A--\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"--\0D\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, %struct.TYPE_3__*, i64)* @check_multirange_body to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_multirange_body(i8* %0, i8* %1, %struct.TYPE_3__* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_3__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.TYPE_3__*, align 8
  %12 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store %struct.TYPE_3__* %2, %struct.TYPE_3__** %8, align 8
  store i64 %3, i64* %9, align 8
  %13 = load i8*, i8** %6, align 8
  store i8* %13, i8** %10, align 8
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  store %struct.TYPE_3__* %14, %struct.TYPE_3__** %11, align 8
  store i32 0, i32* %12, align 4
  br label %15

15:                                               ; preds = %80, %4
  %16 = load i64, i64* %9, align 8
  %17 = add i64 %16, -1
  store i64 %17, i64* %9, align 8
  %18 = icmp ne i64 %16, 0
  br i1 %18, label %19, label %89

19:                                               ; preds = %15
  %20 = load i32, i32* %12, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %33

22:                                               ; preds = %19
  %23 = load i8*, i8** %10, align 8
  %24 = call i32 @H2O_STRLIT(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %25 = sext i32 %24 to i64
  %26 = inttoptr i64 %25 to i8*
  %27 = call i32 (i8*, i32, i8*, ...) @h2o_memis(i8* %23, i32 2, i8* %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %22
  store i32 0, i32* %5, align 4
  br label %118

30:                                               ; preds = %22
  %31 = load i8*, i8** %10, align 8
  %32 = getelementptr inbounds i8, i8* %31, i64 2
  store i8* %32, i8** %10, align 8
  br label %34

33:                                               ; preds = %19
  store i32 1, i32* %12, align 4
  br label %34

34:                                               ; preds = %33, %30
  %35 = load i8*, i8** %10, align 8
  %36 = call i32 @H2O_STRLIT(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %37 = sext i32 %36 to i64
  %38 = inttoptr i64 %37 to i8*
  %39 = call i32 (i8*, i32, i8*, ...) @h2o_memis(i8* %35, i32 2, i8* %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %34
  store i32 0, i32* %5, align 4
  br label %118

42:                                               ; preds = %34
  %43 = load i8*, i8** %10, align 8
  %44 = getelementptr inbounds i8, i8* %43, i64 2
  store i8* %44, i8** %10, align 8
  %45 = load i8*, i8** %10, align 8
  %46 = load i32, i32* @BOUNDARY_SIZE, align 4
  %47 = load i8*, i8** %7, align 8
  %48 = load i32, i32* @BOUNDARY_SIZE, align 4
  %49 = call i32 (i8*, i32, i8*, ...) @h2o_memis(i8* %45, i32 %46, i8* %47, i32 %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %42
  store i32 0, i32* %5, align 4
  br label %118

52:                                               ; preds = %42
  %53 = load i8*, i8** %10, align 8
  %54 = getelementptr inbounds i8, i8* %53, i64 20
  store i8* %54, i8** %10, align 8
  %55 = load i8*, i8** %10, align 8
  %56 = call i32 @H2O_STRLIT(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %57 = sext i32 %56 to i64
  %58 = inttoptr i64 %57 to i8*
  %59 = call i32 (i8*, i32, i8*, ...) @h2o_memis(i8* %55, i32 2, i8* %58)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %62, label %61

61:                                               ; preds = %52
  store i32 0, i32* %5, align 4
  br label %118

62:                                               ; preds = %52
  %63 = load i8*, i8** %10, align 8
  %64 = getelementptr inbounds i8, i8* %63, i64 2
  store i8* %64, i8** %10, align 8
  %65 = load i8*, i8** %10, align 8
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = sext i32 %71 to i64
  %73 = inttoptr i64 %72 to i8*
  %74 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i32 (i8*, i32, i8*, ...) @h2o_memis(i8* %65, i32 %68, i8* %73, i32 %76)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %80, label %79

79:                                               ; preds = %62
  store i32 0, i32* %5, align 4
  br label %118

80:                                               ; preds = %62
  %81 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load i8*, i8** %10, align 8
  %85 = sext i32 %83 to i64
  %86 = getelementptr inbounds i8, i8* %84, i64 %85
  store i8* %86, i8** %10, align 8
  %87 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 1
  store %struct.TYPE_3__* %88, %struct.TYPE_3__** %11, align 8
  br label %15

89:                                               ; preds = %15
  %90 = load i8*, i8** %10, align 8
  %91 = call i32 @H2O_STRLIT(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %92 = sext i32 %91 to i64
  %93 = inttoptr i64 %92 to i8*
  %94 = call i32 (i8*, i32, i8*, ...) @h2o_memis(i8* %90, i32 4, i8* %93)
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %97, label %96

96:                                               ; preds = %89
  store i32 0, i32* %5, align 4
  br label %118

97:                                               ; preds = %89
  %98 = load i8*, i8** %10, align 8
  %99 = getelementptr inbounds i8, i8* %98, i64 4
  store i8* %99, i8** %10, align 8
  %100 = load i8*, i8** %10, align 8
  %101 = load i32, i32* @BOUNDARY_SIZE, align 4
  %102 = load i8*, i8** %7, align 8
  %103 = load i32, i32* @BOUNDARY_SIZE, align 4
  %104 = call i32 (i8*, i32, i8*, ...) @h2o_memis(i8* %100, i32 %101, i8* %102, i32 %103)
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %107, label %106

106:                                              ; preds = %97
  store i32 0, i32* %5, align 4
  br label %118

107:                                              ; preds = %97
  %108 = load i8*, i8** %10, align 8
  %109 = getelementptr inbounds i8, i8* %108, i64 20
  store i8* %109, i8** %10, align 8
  %110 = load i8*, i8** %10, align 8
  %111 = call i32 @H2O_STRLIT(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %112 = sext i32 %111 to i64
  %113 = inttoptr i64 %112 to i8*
  %114 = call i32 (i8*, i32, i8*, ...) @h2o_memis(i8* %110, i32 4, i8* %113)
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %117, label %116

116:                                              ; preds = %107
  store i32 0, i32* %5, align 4
  br label %118

117:                                              ; preds = %107
  store i32 1, i32* %5, align 4
  br label %118

118:                                              ; preds = %117, %116, %106, %96, %79, %61, %51, %41, %29
  %119 = load i32, i32* %5, align 4
  ret i32 %119
}

declare dso_local i32 @h2o_memis(i8*, i32, i8*, ...) #1

declare dso_local i32 @H2O_STRLIT(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
