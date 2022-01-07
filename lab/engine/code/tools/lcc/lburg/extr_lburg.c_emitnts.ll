; ModuleID = '/home/carl/AnghaBench/lab/engine/code/tools/lcc/lburg/extr_lburg.c_emitnts.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/tools/lcc/lburg/extr_lburg.c_emitnts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, %struct.TYPE_3__*, i32 }

@.str = private unnamed_addr constant [36 x i8] c"static short %Pnts_%d[] = { %s0 };\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"\0Astatic short *%Pnts[] = {\0A\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"%10,%1/* %d */\0A\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"%1%Pnts_%d,%1/* %d */\0A\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"};\0A\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i32)* @emitnts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @emitnts(%struct.TYPE_3__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca [1024 x i8], align 16
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = add nsw i32 %11, 1
  %13 = sext i32 %12 to i64
  %14 = mul i64 %13, 4
  %15 = trunc i64 %14 to i32
  %16 = call i8* @alloc(i32 %15)
  %17 = bitcast i8* %16 to i32*
  store i32* %17, i32** %8, align 8
  %18 = load i32, i32* %4, align 4
  %19 = add nsw i32 %18, 1
  %20 = sext i32 %19 to i64
  %21 = mul i64 %20, 8
  %22 = trunc i64 %21 to i32
  %23 = call i8* @alloc(i32 %22)
  %24 = bitcast i8* %23 to i8**
  store i8** %24, i8*** %9, align 8
  store i32 0, i32* %6, align 4
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  store %struct.TYPE_3__* %25, %struct.TYPE_3__** %5, align 8
  br label %26

26:                                               ; preds = %85, %2
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %28 = icmp ne %struct.TYPE_3__* %27, null
  br i1 %28, label %29, label %89

29:                                               ; preds = %26
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = getelementptr inbounds [1024 x i8], [1024 x i8]* %10, i64 0, i64 0
  %34 = call i64* @computents(i32 %32, i8* %33)
  store i64 0, i64* %34, align 8
  store i32 0, i32* %7, align 4
  br label %35

35:                                               ; preds = %54, %29
  %36 = load i8**, i8*** %9, align 8
  %37 = load i32, i32* %7, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i8*, i8** %36, i64 %38
  %40 = load i8*, i8** %39, align 8
  %41 = icmp ne i8* %40, null
  br i1 %41, label %42, label %51

42:                                               ; preds = %35
  %43 = load i8**, i8*** %9, align 8
  %44 = load i32, i32* %7, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i8*, i8** %43, i64 %45
  %47 = load i8*, i8** %46, align 8
  %48 = getelementptr inbounds [1024 x i8], [1024 x i8]* %10, i64 0, i64 0
  %49 = call i64 @strcmp(i8* %47, i8* %48)
  %50 = icmp ne i64 %49, 0
  br label %51

51:                                               ; preds = %42, %35
  %52 = phi i1 [ false, %35 ], [ %50, %42 ]
  br i1 %52, label %53, label %57

53:                                               ; preds = %51
  br label %54

54:                                               ; preds = %53
  %55 = load i32, i32* %7, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %7, align 4
  br label %35

57:                                               ; preds = %51
  %58 = load i8**, i8*** %9, align 8
  %59 = load i32, i32* %7, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i8*, i8** %58, i64 %60
  %62 = load i8*, i8** %61, align 8
  %63 = icmp eq i8* %62, null
  br i1 %63, label %64, label %78

64:                                               ; preds = %57
  %65 = load i32, i32* %7, align 4
  %66 = getelementptr inbounds [1024 x i8], [1024 x i8]* %10, i64 0, i64 0
  %67 = call i32 (i8*, ...) @print(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %65, i8* %66)
  %68 = getelementptr inbounds [1024 x i8], [1024 x i8]* %10, i64 0, i64 0
  %69 = call i32 @strlen(i8* %68)
  %70 = add nsw i32 %69, 1
  %71 = call i8* @alloc(i32 %70)
  %72 = getelementptr inbounds [1024 x i8], [1024 x i8]* %10, i64 0, i64 0
  %73 = call i8* @strcpy(i8* %71, i8* %72)
  %74 = load i8**, i8*** %9, align 8
  %75 = load i32, i32* %7, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i8*, i8** %74, i64 %76
  store i8* %73, i8** %77, align 8
  br label %78

78:                                               ; preds = %64, %57
  %79 = load i32, i32* %7, align 4
  %80 = load i32*, i32** %8, align 8
  %81 = load i32, i32* %6, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %6, align 4
  %83 = sext i32 %81 to i64
  %84 = getelementptr inbounds i32, i32* %80, i64 %83
  store i32 %79, i32* %84, align 4
  br label %85

85:                                               ; preds = %78
  %86 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 1
  %88 = load %struct.TYPE_3__*, %struct.TYPE_3__** %87, align 8
  store %struct.TYPE_3__* %88, %struct.TYPE_3__** %5, align 8
  br label %26

89:                                               ; preds = %26
  %90 = call i32 (i8*, ...) @print(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %7, align 4
  store i32 0, i32* %6, align 4
  %91 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  store %struct.TYPE_3__* %91, %struct.TYPE_3__** %5, align 8
  br label %92

92:                                               ; preds = %118, %89
  %93 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %94 = icmp ne %struct.TYPE_3__* %93, null
  br i1 %94, label %95, label %122

95:                                               ; preds = %92
  br label %96

96:                                               ; preds = %105, %95
  %97 = load i32, i32* %7, align 4
  %98 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = icmp slt i32 %97, %100
  br i1 %101, label %102, label %108

102:                                              ; preds = %96
  %103 = load i32, i32* %7, align 4
  %104 = call i32 (i8*, ...) @print(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32 %103)
  br label %105

105:                                              ; preds = %102
  %106 = load i32, i32* %7, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %7, align 4
  br label %96

108:                                              ; preds = %96
  %109 = load i32*, i32** %8, align 8
  %110 = load i32, i32* %6, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %6, align 4
  %112 = sext i32 %110 to i64
  %113 = getelementptr inbounds i32, i32* %109, i64 %112
  %114 = load i32, i32* %113, align 4
  %115 = load i32, i32* %7, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %7, align 4
  %117 = call i32 (i8*, ...) @print(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i32 %114, i32 %115)
  br label %118

118:                                              ; preds = %108
  %119 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %120 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %119, i32 0, i32 1
  %121 = load %struct.TYPE_3__*, %struct.TYPE_3__** %120, align 8
  store %struct.TYPE_3__* %121, %struct.TYPE_3__** %5, align 8
  br label %92

122:                                              ; preds = %92
  %123 = call i32 (i8*, ...) @print(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  ret void
}

declare dso_local i8* @alloc(i32) #1

declare dso_local i64* @computents(i32, i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @print(i8*, ...) #1

declare dso_local i8* @strcpy(i8*, i8*) #1

declare dso_local i32 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
