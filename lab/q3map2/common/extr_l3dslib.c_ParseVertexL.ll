; ModuleID = '/home/carl/AnghaBench/lab/q3map2/common/extr_l3dslib.c_ParseVertexL.c'
source_filename = "/home/carl/AnghaBench/lab/q3map2/common/extr_l3dslib.c_ParseVertexL.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@vertsfound = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Error: Multiple vertex chunks\00", align 1
@bytesread = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"Error: unexpected end of file\00", align 1
@MAXVERTS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"Error: Too many vertices\00", align 1
@fverts = common dso_local global i16** null, align 8
@trisfound = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ParseVertexL(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i16, align 2
  store i32* %0, i32** %2, align 8
  %8 = load i32, i32* @vertsfound, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = call i32 @Error(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %12

12:                                               ; preds = %10, %1
  store i32 1, i32* @vertsfound, align 4
  %13 = load i32, i32* @bytesread, align 4
  store i32 %13, i32* %5, align 4
  %14 = load i32*, i32** %2, align 8
  %15 = call i64 @feof(i32* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %12
  %18 = call i32 @Error(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  br label %19

19:                                               ; preds = %17, %12
  %20 = load i32*, i32** %2, align 8
  %21 = call i32 @fread(i16* %7, i32 2, i32 1, i32* %20)
  %22 = load i32, i32* @bytesread, align 4
  %23 = sext i32 %22 to i64
  %24 = add i64 %23, 2
  %25 = trunc i64 %24 to i32
  store i32 %25, i32* @bytesread, align 4
  %26 = load i16, i16* %7, align 2
  %27 = zext i16 %26 to i32
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* @MAXVERTS, align 4
  %30 = icmp sgt i32 %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %19
  %32 = call i32 @Error(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  br label %33

33:                                               ; preds = %31, %19
  store i32 0, i32* %3, align 4
  br label %34

34:                                               ; preds = %67, %33
  %35 = load i32, i32* %3, align 4
  %36 = load i32, i32* %6, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %70

38:                                               ; preds = %34
  store i32 0, i32* %4, align 4
  br label %39

39:                                               ; preds = %63, %38
  %40 = load i32, i32* %4, align 4
  %41 = icmp slt i32 %40, 3
  br i1 %41, label %42, label %66

42:                                               ; preds = %39
  %43 = load i32*, i32** %2, align 8
  %44 = call i64 @feof(i32* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %42
  %47 = call i32 @Error(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  br label %48

48:                                               ; preds = %46, %42
  %49 = load i16**, i16*** @fverts, align 8
  %50 = load i32, i32* %3, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i16*, i16** %49, i64 %51
  %53 = load i16*, i16** %52, align 8
  %54 = load i32, i32* %4, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i16, i16* %53, i64 %55
  %57 = load i32*, i32** %2, align 8
  %58 = call i32 @fread(i16* %56, i32 4, i32 1, i32* %57)
  %59 = load i32, i32* @bytesread, align 4
  %60 = sext i32 %59 to i64
  %61 = add i64 %60, 4
  %62 = trunc i64 %61 to i32
  store i32 %62, i32* @bytesread, align 4
  br label %63

63:                                               ; preds = %48
  %64 = load i32, i32* %4, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %4, align 4
  br label %39

66:                                               ; preds = %39
  br label %67

67:                                               ; preds = %66
  %68 = load i32, i32* %3, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %3, align 4
  br label %34

70:                                               ; preds = %34
  %71 = load i32, i32* @vertsfound, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %78

73:                                               ; preds = %70
  %74 = load i64, i64* @trisfound, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %73
  %77 = call i32 (...) @StoreAliasTriangles()
  br label %78

78:                                               ; preds = %76, %73, %70
  %79 = load i32, i32* @bytesread, align 4
  %80 = load i32, i32* %5, align 4
  %81 = sub nsw i32 %79, %80
  ret i32 %81
}

declare dso_local i32 @Error(i8*) #1

declare dso_local i64 @feof(i32*) #1

declare dso_local i32 @fread(i16*, i32, i32, i32*) #1

declare dso_local i32 @StoreAliasTriangles(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
