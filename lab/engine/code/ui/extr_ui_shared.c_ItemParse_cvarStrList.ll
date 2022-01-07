; ModuleID = '/home/carl/AnghaBench/lab/engine/code/ui/extr_ui_shared.c_ItemParse_cvarStrList.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/ui/extr_ui_shared.c_ItemParse_cvarStrList.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64 }
%struct.TYPE_7__ = type { i8* }
%struct.TYPE_8__ = type { i64, i8**, i8**, i32 }

@qfalse = common dso_local global i32 0, align 4
@qtrue = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"end of file inside menu item\00", align 1
@MAX_MULTI_CVARS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ItemParse_cvarStrList(%struct.TYPE_9__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_7__, align 8
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %10 = call i32 @Item_ValidateTypeData(%struct.TYPE_9__* %9)
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @qfalse, align 4
  store i32 %16, i32* %3, align 4
  br label %108

17:                                               ; preds = %2
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = inttoptr i64 %20 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %21, %struct.TYPE_8__** %7, align 8
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 0
  store i64 0, i64* %23, align 8
  %24 = load i32, i32* @qtrue, align 4
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 3
  store i32 %24, i32* %26, align 8
  %27 = load i32, i32* %5, align 4
  %28 = call i32 @trap_PC_ReadToken(i32 %27, %struct.TYPE_7__* %6)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %32, label %30

30:                                               ; preds = %17
  %31 = load i32, i32* @qfalse, align 4
  store i32 %31, i32* %3, align 4
  br label %108

32:                                               ; preds = %17
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 0
  %34 = load i8*, i8** %33, align 8
  %35 = load i8, i8* %34, align 1
  %36 = sext i8 %35 to i32
  %37 = icmp ne i32 %36, 123
  br i1 %37, label %38, label %40

38:                                               ; preds = %32
  %39 = load i32, i32* @qfalse, align 4
  store i32 %39, i32* %3, align 4
  br label %108

40:                                               ; preds = %32
  store i32 0, i32* %8, align 4
  br label %41

41:                                               ; preds = %40, %69, %107
  %42 = load i32, i32* %5, align 4
  %43 = call i32 @trap_PC_ReadToken(i32 %42, %struct.TYPE_7__* %6)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %49, label %45

45:                                               ; preds = %41
  %46 = load i32, i32* %5, align 4
  %47 = call i32 @PC_SourceError(i32 %46, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %48 = load i32, i32* @qfalse, align 4
  store i32 %48, i32* %3, align 4
  br label %108

49:                                               ; preds = %41
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 0
  %51 = load i8*, i8** %50, align 8
  %52 = load i8, i8* %51, align 1
  %53 = sext i8 %52 to i32
  %54 = icmp eq i32 %53, 125
  br i1 %54, label %55, label %57

55:                                               ; preds = %49
  %56 = load i32, i32* @qtrue, align 4
  store i32 %56, i32* %3, align 4
  br label %108

57:                                               ; preds = %49
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 0
  %59 = load i8*, i8** %58, align 8
  %60 = load i8, i8* %59, align 1
  %61 = sext i8 %60 to i32
  %62 = icmp eq i32 %61, 44
  br i1 %62, label %69, label %63

63:                                               ; preds = %57
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 0
  %65 = load i8*, i8** %64, align 8
  %66 = load i8, i8* %65, align 1
  %67 = sext i8 %66 to i32
  %68 = icmp eq i32 %67, 59
  br i1 %68, label %69, label %70

69:                                               ; preds = %63, %57
  br label %41

70:                                               ; preds = %63
  %71 = load i32, i32* %8, align 4
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %84

73:                                               ; preds = %70
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 0
  %75 = load i8*, i8** %74, align 8
  %76 = call i8* @String_Alloc(i8* %75)
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 2
  %79 = load i8**, i8*** %78, align 8
  %80 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = getelementptr inbounds i8*, i8** %79, i64 %82
  store i8* %76, i8** %83, align 8
  store i32 1, i32* %8, align 4
  br label %107

84:                                               ; preds = %70
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 0
  %86 = load i8*, i8** %85, align 8
  %87 = call i8* @String_Alloc(i8* %86)
  %88 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 1
  %90 = load i8**, i8*** %89, align 8
  %91 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = getelementptr inbounds i8*, i8** %90, i64 %93
  store i8* %87, i8** %94, align 8
  store i32 0, i32* %8, align 4
  %95 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = add i64 %97, 1
  store i64 %98, i64* %96, align 8
  %99 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* @MAX_MULTI_CVARS, align 8
  %103 = icmp uge i64 %101, %102
  br i1 %103, label %104, label %106

104:                                              ; preds = %84
  %105 = load i32, i32* @qfalse, align 4
  store i32 %105, i32* %3, align 4
  br label %108

106:                                              ; preds = %84
  br label %107

107:                                              ; preds = %106, %73
  br label %41

108:                                              ; preds = %104, %55, %45, %38, %30, %15
  %109 = load i32, i32* %3, align 4
  ret i32 %109
}

declare dso_local i32 @Item_ValidateTypeData(%struct.TYPE_9__*) #1

declare dso_local i32 @trap_PC_ReadToken(i32, %struct.TYPE_7__*) #1

declare dso_local i32 @PC_SourceError(i32, i8*) #1

declare dso_local i8* @String_Alloc(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
