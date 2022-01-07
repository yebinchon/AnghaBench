; ModuleID = '/home/carl/AnghaBench/lab/engine/code/ui/extr_ui_shared.c_String_Alloc.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/ui/extr_ui_shared.c_String_Alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8*, %struct.TYPE_4__* }

@String_Alloc.staticNULL = internal global i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i32 0, i32 0), align 8
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@strHandle = common dso_local global %struct.TYPE_4__** null, align 8
@strPoolIndex = common dso_local global i32 0, align 4
@STRING_POOL_SIZE = common dso_local global i32 0, align 4
@strPool = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @String_Alloc(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %9 = load i8*, i8** %3, align 8
  %10 = icmp eq i8* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store i8* null, i8** %2, align 8
  br label %119

12:                                               ; preds = %1
  %13 = load i8*, i8** %3, align 8
  %14 = load i8, i8* %13, align 1
  %15 = sext i8 %14 to i32
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %12
  %18 = load i8*, i8** @String_Alloc.staticNULL, align 8
  store i8* %18, i8** %2, align 8
  br label %119

19:                                               ; preds = %12
  %20 = load i8*, i8** %3, align 8
  %21 = call i32 @hashForString(i8* %20)
  store i32 %21, i32* %5, align 4
  %22 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @strHandle, align 8
  %23 = load i32, i32* %5, align 4
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %22, i64 %24
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  store %struct.TYPE_4__* %26, %struct.TYPE_4__** %6, align 8
  br label %27

27:                                               ; preds = %41, %19
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %29 = icmp ne %struct.TYPE_4__* %28, null
  br i1 %29, label %30, label %45

30:                                               ; preds = %27
  %31 = load i8*, i8** %3, align 8
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i8*, i8** %33, align 8
  %35 = call i64 @strcmp(i8* %31, i8* %34)
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %30
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i8*, i8** %39, align 8
  store i8* %40, i8** %2, align 8
  br label %119

41:                                               ; preds = %30
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 1
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %43, align 8
  store %struct.TYPE_4__* %44, %struct.TYPE_4__** %6, align 8
  br label %27

45:                                               ; preds = %27
  %46 = load i8*, i8** %3, align 8
  %47 = call i32 @strlen(i8* %46)
  store i32 %47, i32* %4, align 4
  %48 = load i32, i32* %4, align 4
  %49 = load i32, i32* @strPoolIndex, align 4
  %50 = add nsw i32 %48, %49
  %51 = add nsw i32 %50, 1
  %52 = load i32, i32* @STRING_POOL_SIZE, align 4
  %53 = icmp slt i32 %51, %52
  br i1 %53, label %54, label %118

54:                                               ; preds = %45
  %55 = load i32, i32* @strPoolIndex, align 4
  store i32 %55, i32* %8, align 4
  %56 = load i8*, i8** @strPool, align 8
  %57 = load i32, i32* @strPoolIndex, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i8, i8* %56, i64 %58
  %60 = load i8*, i8** %3, align 8
  %61 = call i32 @strcpy(i8* %59, i8* %60)
  %62 = load i32, i32* %4, align 4
  %63 = add nsw i32 %62, 1
  %64 = load i32, i32* @strPoolIndex, align 4
  %65 = add nsw i32 %64, %63
  store i32 %65, i32* @strPoolIndex, align 4
  %66 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @strHandle, align 8
  %67 = load i32, i32* %5, align 4
  %68 = zext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %66, i64 %68
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %69, align 8
  store %struct.TYPE_4__* %70, %struct.TYPE_4__** %6, align 8
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  store %struct.TYPE_4__* %71, %struct.TYPE_4__** %7, align 8
  br label %72

72:                                               ; preds = %82, %54
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %74 = icmp ne %struct.TYPE_4__* %73, null
  br i1 %74, label %75, label %80

75:                                               ; preds = %72
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 1
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %77, align 8
  %79 = icmp ne %struct.TYPE_4__* %78, null
  br label %80

80:                                               ; preds = %75, %72
  %81 = phi i1 [ false, %72 ], [ %79, %75 ]
  br i1 %81, label %82, label %87

82:                                               ; preds = %80
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  store %struct.TYPE_4__* %83, %struct.TYPE_4__** %7, align 8
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 1
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** %85, align 8
  store %struct.TYPE_4__* %86, %struct.TYPE_4__** %6, align 8
  br label %72

87:                                               ; preds = %80
  %88 = call %struct.TYPE_4__* @UI_Alloc(i32 16)
  store %struct.TYPE_4__* %88, %struct.TYPE_4__** %6, align 8
  %89 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %90 = icmp ne %struct.TYPE_4__* %89, null
  br i1 %90, label %92, label %91

91:                                               ; preds = %87
  store i8* null, i8** %2, align 8
  br label %119

92:                                               ; preds = %87
  %93 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 1
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %94, align 8
  %95 = load i8*, i8** @strPool, align 8
  %96 = load i32, i32* %8, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i8, i8* %95, i64 %97
  %99 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 0
  store i8* %98, i8** %100, align 8
  %101 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %102 = icmp ne %struct.TYPE_4__* %101, null
  br i1 %102, label %103, label %107

103:                                              ; preds = %92
  %104 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %105 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 1
  store %struct.TYPE_4__* %104, %struct.TYPE_4__** %106, align 8
  br label %113

107:                                              ; preds = %92
  %108 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %109 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @strHandle, align 8
  %110 = load i32, i32* %5, align 4
  %111 = zext i32 %110 to i64
  %112 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %109, i64 %111
  store %struct.TYPE_4__* %108, %struct.TYPE_4__** %112, align 8
  br label %113

113:                                              ; preds = %107, %103
  %114 = load i8*, i8** @strPool, align 8
  %115 = load i32, i32* %8, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i8, i8* %114, i64 %116
  store i8* %117, i8** %2, align 8
  br label %119

118:                                              ; preds = %45
  store i8* null, i8** %2, align 8
  br label %119

119:                                              ; preds = %118, %113, %91, %37, %17, %11
  %120 = load i8*, i8** %2, align 8
  ret i8* %120
}

declare dso_local i32 @hashForString(i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local %struct.TYPE_4__* @UI_Alloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
