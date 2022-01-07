; ModuleID = '/home/carl/AnghaBench/lab/engine/code/client/extr_cl_keys.c_CL_ParseBinding.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/client/extr_cl_keys.c_CL_ParseBinding.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i32* }

@MAX_STRING_CHARS = common dso_local global i32 0, align 4
@clc = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@CA_DISCONNECTED = common dso_local global i64 0, align 8
@keys = common dso_local global %struct.TYPE_3__* null, align 8
@.str = private unnamed_addr constant [12 x i8] c"%c%s %d %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CL_ParseBinding(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca [1024 x i8], align 16
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %15 = load i32, i32* @MAX_STRING_CHARS, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %7, align 8
  %18 = alloca i8, i64 %16, align 16
  store i64 %16, i64* %8, align 8
  store i8* %18, i8** %9, align 8
  %19 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @clc, i32 0, i32 0), align 8
  %20 = load i64, i64* @CA_DISCONNECTED, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %26

22:                                               ; preds = %3
  %23 = call i64 (...) @Key_GetCatcher()
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %22
  store i32 1, i32* %13, align 4
  br label %131

26:                                               ; preds = %22, %3
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** @keys, align 8
  %28 = load i32, i32* %4, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = icmp ne i32* %32, null
  br i1 %33, label %34, label %44

34:                                               ; preds = %26
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** @keys, align 8
  %36 = load i32, i32* %4, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 0
  %42 = load i32, i32* %41, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %34, %26
  store i32 1, i32* %13, align 4
  br label %131

45:                                               ; preds = %34
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** @keys, align 8
  %47 = load i32, i32* %4, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = trunc i64 %16 to i32
  %53 = call i32 @Q_strncpyz(i8* %18, i32* %51, i32 %52)
  %54 = call i64 (...) @Key_GetCatcher()
  %55 = icmp eq i64 %54, 0
  %56 = zext i1 %55 to i32
  store i32 %56, i32* %11, align 4
  %57 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @clc, i32 0, i32 0), align 8
  %58 = load i64, i64* @CA_DISCONNECTED, align 8
  %59 = icmp ne i64 %57, %58
  %60 = zext i1 %59 to i32
  store i32 %60, i32* %12, align 4
  br label %61

61:                                               ; preds = %127, %45
  br label %62

62:                                               ; preds = %61
  br label %63

63:                                               ; preds = %68, %62
  %64 = load i8*, i8** %9, align 8
  %65 = load i8, i8* %64, align 1
  %66 = call i64 @isspace(i8 signext %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %63
  %69 = load i8*, i8** %9, align 8
  %70 = getelementptr inbounds i8, i8* %69, i32 1
  store i8* %70, i8** %9, align 8
  br label %63

71:                                               ; preds = %63
  %72 = load i8*, i8** %9, align 8
  %73 = call i8* @strchr(i8* %72, i8 signext 59)
  store i8* %73, i8** %10, align 8
  %74 = load i8*, i8** %10, align 8
  %75 = icmp ne i8* %74, null
  br i1 %75, label %76, label %78

76:                                               ; preds = %71
  %77 = load i8*, i8** %10, align 8
  store i8 0, i8* %77, align 1
  br label %78

78:                                               ; preds = %76, %71
  %79 = load i8*, i8** %9, align 8
  %80 = load i8, i8* %79, align 1
  %81 = sext i8 %80 to i32
  %82 = icmp eq i32 %81, 43
  br i1 %82, label %83, label %107

83:                                               ; preds = %78
  %84 = load i32, i32* %11, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %92, label %86

86:                                               ; preds = %83
  %87 = load i32, i32* %12, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %106

89:                                               ; preds = %86
  %90 = load i32, i32* %5, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %106, label %92

92:                                               ; preds = %89, %83
  %93 = getelementptr inbounds [1024 x i8], [1024 x i8]* %14, i64 0, i64 0
  %94 = load i32, i32* %5, align 4
  %95 = icmp ne i32 %94, 0
  %96 = zext i1 %95 to i64
  %97 = select i1 %95, i32 43, i32 45
  %98 = trunc i32 %97 to i8
  %99 = load i8*, i8** %9, align 8
  %100 = getelementptr inbounds i8, i8* %99, i64 1
  %101 = load i32, i32* %4, align 4
  %102 = load i32, i32* %6, align 4
  %103 = call i32 @Com_sprintf(i8* %93, i32 1024, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8 signext %98, i8* %100, i32 %101, i32 %102)
  %104 = getelementptr inbounds [1024 x i8], [1024 x i8]* %14, i64 0, i64 0
  %105 = call i32 @Cbuf_AddText(i8* %104)
  br label %106

106:                                              ; preds = %92, %89, %86
  br label %123

107:                                              ; preds = %78
  %108 = load i32, i32* %5, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %122

110:                                              ; preds = %107
  %111 = load i32, i32* %11, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %117, label %113

113:                                              ; preds = %110
  %114 = load i8*, i8** %9, align 8
  %115 = call i64 @CL_BindUICommand(i8* %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %121

117:                                              ; preds = %113, %110
  %118 = load i8*, i8** %9, align 8
  %119 = call i32 @Cbuf_AddText(i8* %118)
  %120 = call i32 @Cbuf_AddText(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %121

121:                                              ; preds = %117, %113
  br label %122

122:                                              ; preds = %121, %107
  br label %123

123:                                              ; preds = %122, %106
  %124 = load i8*, i8** %10, align 8
  %125 = icmp ne i8* %124, null
  br i1 %125, label %127, label %126

126:                                              ; preds = %123
  br label %130

127:                                              ; preds = %123
  %128 = load i8*, i8** %10, align 8
  %129 = getelementptr inbounds i8, i8* %128, i64 1
  store i8* %129, i8** %9, align 8
  br label %61

130:                                              ; preds = %126
  store i32 0, i32* %13, align 4
  br label %131

131:                                              ; preds = %130, %44, %25
  %132 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %132)
  %133 = load i32, i32* %13, align 4
  switch i32 %133, label %135 [
    i32 0, label %134
    i32 1, label %134
  ]

134:                                              ; preds = %131, %131
  ret void

135:                                              ; preds = %131
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @Key_GetCatcher(...) #2

declare dso_local i32 @Q_strncpyz(i8*, i32*, i32) #2

declare dso_local i64 @isspace(i8 signext) #2

declare dso_local i8* @strchr(i8*, i8 signext) #2

declare dso_local i32 @Com_sprintf(i8*, i32, i8*, i8 signext, i8*, i32, i32) #2

declare dso_local i32 @Cbuf_AddText(i8*) #2

declare dso_local i64 @CL_BindUICommand(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
