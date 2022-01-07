; ModuleID = '/home/carl/AnghaBench/lab/engine/code/qcommon/extr_net_chan.c_NET_StringToAdr.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/qcommon/extr_net_chan.c_NET_StringToAdr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i8*, i32 }

@MAX_STRING_CHARS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"localhost\00", align 1
@NA_LOOPBACK = common dso_local global i32 0, align 4
@NA_BAD = common dso_local global i32 0, align 4
@PORT_SERVER = common dso_local global i16 0, align 2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @NET_StringToAdr(i8* %0, %struct.TYPE_5__* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load i32, i32* @MAX_STRING_CHARS, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %8, align 8
  %16 = alloca i8, i64 %14, align 16
  store i64 %14, i64* %9, align 8
  store i8* null, i8** %11, align 8
  %17 = load i8*, i8** %5, align 8
  %18 = call i32 @strcmp(i8* %17, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %26, label %20

20:                                               ; preds = %3
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %22 = call i32 @Com_Memset(%struct.TYPE_5__* %21, i32 0, i32 16)
  %23 = load i32, i32* @NA_LOOPBACK, align 4
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 1
  store i32 %23, i32* %25, align 8
  store i32 1, i32* %4, align 4
  store i32 1, i32* %12, align 4
  br label %94

26:                                               ; preds = %3
  %27 = load i8*, i8** %5, align 8
  %28 = trunc i64 %14 to i32
  %29 = call i32 @Q_strncpyz(i8* %16, i8* %27, i32 %28)
  %30 = load i8, i8* %16, align 16
  %31 = sext i8 %30 to i32
  %32 = icmp eq i32 %31, 91
  br i1 %32, label %36, label %33

33:                                               ; preds = %26
  %34 = call i32 @Q_CountChar(i8* %16, i8 signext 58)
  %35 = icmp sgt i32 %34, 1
  br i1 %35, label %36, label %60

36:                                               ; preds = %33, %26
  %37 = call i8* @strchr(i8* %16, i8 signext 93)
  store i8* %37, i8** %10, align 8
  %38 = load i8*, i8** %10, align 8
  %39 = icmp ne i8* %38, null
  br i1 %39, label %40, label %52

40:                                               ; preds = %36
  %41 = load i8*, i8** %10, align 8
  store i8 0, i8* %41, align 1
  %42 = load i8*, i8** %10, align 8
  %43 = getelementptr inbounds i8, i8* %42, i32 1
  store i8* %43, i8** %10, align 8
  %44 = load i8*, i8** %10, align 8
  %45 = load i8, i8* %44, align 1
  %46 = sext i8 %45 to i32
  %47 = icmp eq i32 %46, 58
  br i1 %47, label %48, label %51

48:                                               ; preds = %40
  %49 = load i8*, i8** %10, align 8
  %50 = getelementptr inbounds i8, i8* %49, i64 1
  store i8* %50, i8** %11, align 8
  br label %51

51:                                               ; preds = %48, %40
  br label %52

52:                                               ; preds = %51, %36
  %53 = load i8, i8* %16, align 16
  %54 = sext i8 %53 to i32
  %55 = icmp eq i32 %54, 91
  br i1 %55, label %56, label %58

56:                                               ; preds = %52
  %57 = getelementptr inbounds i8, i8* %16, i64 1
  store i8* %57, i8** %10, align 8
  br label %59

58:                                               ; preds = %52
  store i8* %16, i8** %10, align 8
  br label %59

59:                                               ; preds = %58, %56
  br label %69

60:                                               ; preds = %33
  %61 = call i8* @strchr(i8* %16, i8 signext 58)
  store i8* %61, i8** %11, align 8
  %62 = load i8*, i8** %11, align 8
  %63 = icmp ne i8* %62, null
  br i1 %63, label %64, label %68

64:                                               ; preds = %60
  %65 = load i8*, i8** %11, align 8
  store i8 0, i8* %65, align 1
  %66 = load i8*, i8** %11, align 8
  %67 = getelementptr inbounds i8, i8* %66, i32 1
  store i8* %67, i8** %11, align 8
  br label %68

68:                                               ; preds = %64, %60
  store i8* %16, i8** %10, align 8
  br label %69

69:                                               ; preds = %68, %59
  %70 = load i8*, i8** %10, align 8
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %72 = load i32, i32* %7, align 4
  %73 = call i32 @Sys_StringToAdr(i8* %70, %struct.TYPE_5__* %71, i32 %72)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %79, label %75

75:                                               ; preds = %69
  %76 = load i32, i32* @NA_BAD, align 4
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 1
  store i32 %76, i32* %78, align 8
  store i32 0, i32* %4, align 4
  store i32 1, i32* %12, align 4
  br label %94

79:                                               ; preds = %69
  %80 = load i8*, i8** %11, align 8
  %81 = icmp ne i8* %80, null
  br i1 %81, label %82, label %89

82:                                               ; preds = %79
  %83 = load i8*, i8** %11, align 8
  %84 = call i64 @atoi(i8* %83)
  %85 = trunc i64 %84 to i16
  %86 = call i8* @BigShort(i16 signext %85)
  %87 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 0
  store i8* %86, i8** %88, align 8
  store i32 1, i32* %4, align 4
  store i32 1, i32* %12, align 4
  br label %94

89:                                               ; preds = %79
  %90 = load i16, i16* @PORT_SERVER, align 2
  %91 = call i8* @BigShort(i16 signext %90)
  %92 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 0
  store i8* %91, i8** %93, align 8
  store i32 2, i32* %4, align 4
  store i32 1, i32* %12, align 4
  br label %94

94:                                               ; preds = %89, %82, %75, %20
  %95 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %95)
  %96 = load i32, i32* %4, align 4
  ret i32 %96
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @strcmp(i8*, i8*) #2

declare dso_local i32 @Com_Memset(%struct.TYPE_5__*, i32, i32) #2

declare dso_local i32 @Q_strncpyz(i8*, i8*, i32) #2

declare dso_local i32 @Q_CountChar(i8*, i8 signext) #2

declare dso_local i8* @strchr(i8*, i8 signext) #2

declare dso_local i32 @Sys_StringToAdr(i8*, %struct.TYPE_5__*, i32) #2

declare dso_local i8* @BigShort(i16 signext) #2

declare dso_local i64 @atoi(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
