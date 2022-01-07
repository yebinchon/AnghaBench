; ModuleID = '/home/carl/AnghaBench/lab/engine/code/bspc/extr_l_bsp_q3.c_Q3_UnparseEntities.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/bspc/extr_l_bsp_q3.c_Q3_UnparseEntities.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i8*, i8*, %struct.TYPE_3__* }

@q3_dentdata = common dso_local global i8* null, align 8
@num_entities = common dso_local global i32 0, align 4
@entities = common dso_local global %struct.TYPE_4__* null, align 8
@.str = private unnamed_addr constant [3 x i8] c"{\0A\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"\22%s\22 \22%s\22\0A\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"}\0A\00", align 1
@Q3_MAX_MAP_ENTSTRING = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [21 x i8] c"Entity text too long\00", align 1
@q3_entdatasize = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Q3_UnparseEntities() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca [2048 x i8], align 16
  %5 = alloca i32, align 4
  %6 = load i8*, i8** @q3_dentdata, align 8
  store i8* %6, i8** %1, align 8
  %7 = load i8*, i8** %1, align 8
  store i8* %7, i8** %2, align 8
  %8 = load i8*, i8** %2, align 8
  store i8 0, i8* %8, align 1
  store i32 0, i32* %5, align 4
  br label %9

9:                                                ; preds = %72, %0
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* @num_entities, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %75

13:                                               ; preds = %9
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** @entities, align 8
  %15 = load i32, i32* %5, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i64 %16
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  store %struct.TYPE_3__* %19, %struct.TYPE_3__** %3, align 8
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %21 = icmp ne %struct.TYPE_3__* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %13
  br label %72

23:                                               ; preds = %13
  %24 = load i8*, i8** %2, align 8
  %25 = call i32 @strcat(i8* %24, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %26 = load i8*, i8** %2, align 8
  %27 = getelementptr inbounds i8, i8* %26, i64 2
  store i8* %27, i8** %2, align 8
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** @entities, align 8
  %29 = load i32, i32* %5, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %32, align 8
  store %struct.TYPE_3__* %33, %struct.TYPE_3__** %3, align 8
  br label %34

34:                                               ; preds = %54, %23
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %36 = icmp ne %struct.TYPE_3__* %35, null
  br i1 %36, label %37, label %58

37:                                               ; preds = %34
  %38 = getelementptr inbounds [2048 x i8], [2048 x i8]* %4, i64 0, i64 0
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i8*, i8** %40, align 8
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 1
  %44 = load i8*, i8** %43, align 8
  %45 = call i32 @sprintf(i8* %38, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8* %41, i8* %44)
  %46 = load i8*, i8** %2, align 8
  %47 = getelementptr inbounds [2048 x i8], [2048 x i8]* %4, i64 0, i64 0
  %48 = call i32 @strcat(i8* %46, i8* %47)
  %49 = getelementptr inbounds [2048 x i8], [2048 x i8]* %4, i64 0, i64 0
  %50 = call i32 @strlen(i8* %49)
  %51 = load i8*, i8** %2, align 8
  %52 = sext i32 %50 to i64
  %53 = getelementptr inbounds i8, i8* %51, i64 %52
  store i8* %53, i8** %2, align 8
  br label %54

54:                                               ; preds = %37
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 2
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %56, align 8
  store %struct.TYPE_3__* %57, %struct.TYPE_3__** %3, align 8
  br label %34

58:                                               ; preds = %34
  %59 = load i8*, i8** %2, align 8
  %60 = call i32 @strcat(i8* %59, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %61 = load i8*, i8** %2, align 8
  %62 = getelementptr inbounds i8, i8* %61, i64 2
  store i8* %62, i8** %2, align 8
  %63 = load i8*, i8** %2, align 8
  %64 = load i8*, i8** %1, align 8
  %65 = load i32, i32* @Q3_MAX_MAP_ENTSTRING, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i8, i8* %64, i64 %66
  %68 = icmp ugt i8* %63, %67
  br i1 %68, label %69, label %71

69:                                               ; preds = %58
  %70 = call i32 @Error(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  br label %71

71:                                               ; preds = %69, %58
  br label %72

72:                                               ; preds = %71, %22
  %73 = load i32, i32* %5, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %5, align 4
  br label %9

75:                                               ; preds = %9
  %76 = load i8*, i8** %2, align 8
  %77 = load i8*, i8** %1, align 8
  %78 = ptrtoint i8* %76 to i64
  %79 = ptrtoint i8* %77 to i64
  %80 = sub i64 %78, %79
  %81 = add nsw i64 %80, 1
  %82 = trunc i64 %81 to i32
  store i32 %82, i32* @q3_entdatasize, align 4
  ret void
}

declare dso_local i32 @strcat(i8*, i8*) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*, i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @Error(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
