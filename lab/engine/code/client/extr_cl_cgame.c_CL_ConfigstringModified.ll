; ModuleID = '/home/carl/AnghaBench/lab/engine/code/client/extr_cl_cgame.c_CL_ConfigstringModified.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/client/extr_cl_cgame.c_CL_ConfigstringModified.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i8*, i32*, i32 }

@MAX_CONFIGSTRINGS = common dso_local global i32 0, align 4
@ERR_DROP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"CL_ConfigstringModified: bad index %i\00", align 1
@cl = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@MAX_GAMESTATE_CHARS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"MAX_GAMESTATE_CHARS exceeded\00", align 1
@CS_SYSTEMINFO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CL_ConfigstringModified() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_4__, align 8
  %7 = alloca i32, align 4
  %8 = call i32 @Cmd_Argv(i32 1)
  %9 = call i32 @atoi(i32 %8)
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %0
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* @MAX_CONFIGSTRINGS, align 4
  %15 = icmp sge i32 %13, %14
  br i1 %15, label %16, label %20

16:                                               ; preds = %12, %0
  %17 = load i32, i32* @ERR_DROP, align 4
  %18 = load i32, i32* %4, align 4
  %19 = call i32 (i32, i8*, ...) @Com_Error(i32 %17, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %18)
  br label %20

20:                                               ; preds = %16, %12
  %21 = call i8* @Cmd_ArgsFrom(i32 2)
  store i8* %21, i8** %2, align 8
  %22 = load i8*, i8** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @cl, i32 0, i32 0, i32 0), align 8
  %23 = load i32*, i32** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @cl, i32 0, i32 0, i32 1), align 8
  %24 = load i32, i32* %4, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i8, i8* %22, i64 %28
  store i8* %29, i8** %1, align 8
  %30 = load i8*, i8** %1, align 8
  %31 = load i8*, i8** %2, align 8
  %32 = call i32 @strcmp(i8* %30, i8* %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %20
  br label %104

35:                                               ; preds = %20
  %36 = bitcast %struct.TYPE_4__* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %36, i8* align 8 bitcast (%struct.TYPE_5__* @cl to i8*), i64 24, i1 false)
  %37 = call i32 @Com_Memset(%struct.TYPE_4__* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @cl, i32 0, i32 0), i32 0, i32 24)
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @cl, i32 0, i32 0, i32 2), align 8
  store i32 0, i32* %3, align 4
  br label %38

38:                                               ; preds = %95, %35
  %39 = load i32, i32* %3, align 4
  %40 = load i32, i32* @MAX_CONFIGSTRINGS, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %98

42:                                               ; preds = %38
  %43 = load i32, i32* %3, align 4
  %44 = load i32, i32* %4, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %42
  %47 = load i8*, i8** %2, align 8
  store i8* %47, i8** %5, align 8
  br label %59

48:                                               ; preds = %42
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %50 = load i8*, i8** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 1
  %52 = load i32*, i32** %51, align 8
  %53 = load i32, i32* %3, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i8, i8* %50, i64 %57
  store i8* %58, i8** %5, align 8
  br label %59

59:                                               ; preds = %48, %46
  %60 = load i8*, i8** %5, align 8
  %61 = getelementptr inbounds i8, i8* %60, i64 0
  %62 = load i8, i8* %61, align 1
  %63 = icmp ne i8 %62, 0
  br i1 %63, label %65, label %64

64:                                               ; preds = %59
  br label %95

65:                                               ; preds = %59
  %66 = load i8*, i8** %5, align 8
  %67 = call i32 @strlen(i8* %66)
  store i32 %67, i32* %7, align 4
  %68 = load i32, i32* %7, align 4
  %69 = add nsw i32 %68, 1
  %70 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @cl, i32 0, i32 0, i32 2), align 8
  %71 = add nsw i32 %69, %70
  %72 = load i32, i32* @MAX_GAMESTATE_CHARS, align 4
  %73 = icmp sgt i32 %71, %72
  br i1 %73, label %74, label %77

74:                                               ; preds = %65
  %75 = load i32, i32* @ERR_DROP, align 4
  %76 = call i32 (i32, i8*, ...) @Com_Error(i32 %75, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  br label %77

77:                                               ; preds = %74, %65
  %78 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @cl, i32 0, i32 0, i32 2), align 8
  %79 = load i32*, i32** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @cl, i32 0, i32 0, i32 1), align 8
  %80 = load i32, i32* %3, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i32, i32* %79, i64 %81
  store i32 %78, i32* %82, align 4
  %83 = load i8*, i8** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @cl, i32 0, i32 0, i32 0), align 8
  %84 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @cl, i32 0, i32 0, i32 2), align 8
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i8, i8* %83, i64 %85
  %87 = load i8*, i8** %5, align 8
  %88 = load i32, i32* %7, align 4
  %89 = add nsw i32 %88, 1
  %90 = call i32 @Com_Memcpy(i8* %86, i8* %87, i32 %89)
  %91 = load i32, i32* %7, align 4
  %92 = add nsw i32 %91, 1
  %93 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @cl, i32 0, i32 0, i32 2), align 8
  %94 = add nsw i32 %93, %92
  store i32 %94, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @cl, i32 0, i32 0, i32 2), align 8
  br label %95

95:                                               ; preds = %77, %64
  %96 = load i32, i32* %3, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %3, align 4
  br label %38

98:                                               ; preds = %38
  %99 = load i32, i32* %4, align 4
  %100 = load i32, i32* @CS_SYSTEMINFO, align 4
  %101 = icmp eq i32 %99, %100
  br i1 %101, label %102, label %104

102:                                              ; preds = %98
  %103 = call i32 (...) @CL_SystemInfoChanged()
  br label %104

104:                                              ; preds = %34, %102, %98
  ret void
}

declare dso_local i32 @atoi(i32) #1

declare dso_local i32 @Cmd_Argv(i32) #1

declare dso_local i32 @Com_Error(i32, i8*, ...) #1

declare dso_local i8* @Cmd_ArgsFrom(i32) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @Com_Memset(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @Com_Memcpy(i8*, i8*, i32) #1

declare dso_local i32 @CL_SystemInfoChanged(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
