; ModuleID = '/home/carl/AnghaBench/lab/engine/code/qcommon/extr_vm.c_VM_LoadSymbols.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/qcommon/extr_vm.c_VM_LoadSymbols.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_6__ = type { i32, i32*, i32, %struct.TYPE_7__*, i32 }
%struct.TYPE_7__ = type { i32, i32, %struct.TYPE_7__* }
%union.anon = type { i8* }

@MAX_QPATH = common dso_local global i32 0, align 4
@com_developer = common dso_local global %struct.TYPE_8__* null, align 8
@.str = private unnamed_addr constant [10 x i8] c"vm/%s.map\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"Couldn't load symbol file: %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"WARNING: incomplete line at end of file\0A\00", align 1
@h_high = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [27 x i8] c"%i symbols parsed from %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @VM_LoadSymbols(%struct.TYPE_6__* %0) #0 {
  %2 = alloca %struct.TYPE_6__*, align 8
  %3 = alloca %union.anon, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_7__**, align 8
  %10 = alloca %struct.TYPE_7__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %2, align 8
  %17 = load i32, i32* @MAX_QPATH, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %6, align 8
  %20 = alloca i8, i64 %18, align 16
  store i64 %18, i64* %7, align 8
  %21 = load i32, i32* @MAX_QPATH, align 4
  %22 = zext i32 %21 to i64
  %23 = alloca i8, i64 %22, align 16
  store i64 %22, i64* %8, align 8
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** @com_developer, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %1
  store i32 1, i32* %16, align 4
  br label %137

29:                                               ; preds = %1
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 4
  %32 = load i32, i32* %31, align 8
  %33 = trunc i64 %18 to i32
  %34 = call i32 @COM_StripExtension(i32 %32, i8* %20, i32 %33)
  %35 = trunc i64 %22 to i32
  %36 = call i32 @Com_sprintf(i8* %23, i32 %35, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* %20)
  %37 = bitcast %union.anon* %3 to i8**
  %38 = call i32 @FS_ReadFile(i8* %23, i8** %37)
  %39 = bitcast %union.anon* %3 to i8**
  %40 = load i8*, i8** %39, align 8
  %41 = icmp ne i8* %40, null
  br i1 %41, label %44, label %42

42:                                               ; preds = %29
  %43 = call i32 (i8*, ...) @Com_Printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i8* %23)
  store i32 1, i32* %16, align 4
  br label %137

44:                                               ; preds = %29
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  store i32 %47, i32* %15, align 4
  %48 = bitcast %union.anon* %3 to i8**
  %49 = load i8*, i8** %48, align 8
  store i8* %49, i8** %4, align 8
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 3
  store %struct.TYPE_7__** %51, %struct.TYPE_7__*** %9, align 8
  store i32 0, i32* %11, align 4
  br label %52

52:                                               ; preds = %115, %65, %44
  br label %53

53:                                               ; preds = %52
  %54 = call i8* @COM_Parse(i8** %4)
  store i8* %54, i8** %5, align 8
  %55 = load i8*, i8** %5, align 8
  %56 = getelementptr inbounds i8, i8* %55, i64 0
  %57 = load i8, i8* %56, align 1
  %58 = icmp ne i8 %57, 0
  br i1 %58, label %60, label %59

59:                                               ; preds = %53
  br label %128

60:                                               ; preds = %53
  %61 = load i8*, i8** %5, align 8
  %62 = call i32 @ParseHex(i8* %61)
  store i32 %62, i32* %14, align 4
  %63 = load i32, i32* %14, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %60
  %66 = call i8* @COM_Parse(i8** %4)
  %67 = call i8* @COM_Parse(i8** %4)
  br label %52

68:                                               ; preds = %60
  %69 = call i8* @COM_Parse(i8** %4)
  store i8* %69, i8** %5, align 8
  %70 = load i8*, i8** %5, align 8
  %71 = getelementptr inbounds i8, i8* %70, i64 0
  %72 = load i8, i8* %71, align 1
  %73 = icmp ne i8 %72, 0
  br i1 %73, label %76, label %74

74:                                               ; preds = %68
  %75 = call i32 (i8*, ...) @Com_Printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0))
  br label %128

76:                                               ; preds = %68
  %77 = load i8*, i8** %5, align 8
  %78 = call i32 @ParseHex(i8* %77)
  store i32 %78, i32* %12, align 4
  %79 = call i8* @COM_Parse(i8** %4)
  store i8* %79, i8** %5, align 8
  %80 = load i8*, i8** %5, align 8
  %81 = getelementptr inbounds i8, i8* %80, i64 0
  %82 = load i8, i8* %81, align 1
  %83 = icmp ne i8 %82, 0
  br i1 %83, label %86, label %84

84:                                               ; preds = %76
  %85 = call i32 (i8*, ...) @Com_Printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0))
  br label %128

86:                                               ; preds = %76
  %87 = load i8*, i8** %5, align 8
  %88 = call i32 @strlen(i8* %87)
  store i32 %88, i32* %13, align 4
  %89 = load i32, i32* %13, align 4
  %90 = sext i32 %89 to i64
  %91 = add i64 16, %90
  %92 = trunc i64 %91 to i32
  %93 = load i32, i32* @h_high, align 4
  %94 = call %struct.TYPE_7__* @Hunk_Alloc(i32 %92, i32 %93)
  store %struct.TYPE_7__* %94, %struct.TYPE_7__** %10, align 8
  %95 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %96 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %9, align 8
  store %struct.TYPE_7__* %95, %struct.TYPE_7__** %96, align 8
  %97 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i32 0, i32 2
  store %struct.TYPE_7__** %98, %struct.TYPE_7__*** %9, align 8
  %99 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i32 0, i32 2
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %100, align 8
  %101 = load i32, i32* %12, align 4
  %102 = icmp sge i32 %101, 0
  br i1 %102, label %103, label %115

103:                                              ; preds = %86
  %104 = load i32, i32* %12, align 4
  %105 = load i32, i32* %15, align 4
  %106 = icmp slt i32 %104, %105
  br i1 %106, label %107, label %115

107:                                              ; preds = %103
  %108 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 1
  %110 = load i32*, i32** %109, align 8
  %111 = load i32, i32* %12, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i32, i32* %110, i64 %112
  %114 = load i32, i32* %113, align 4
  store i32 %114, i32* %12, align 4
  br label %115

115:                                              ; preds = %107, %103, %86
  %116 = load i32, i32* %12, align 4
  %117 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %118 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %117, i32 0, i32 0
  store i32 %116, i32* %118, align 8
  %119 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %120 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = load i8*, i8** %5, align 8
  %123 = load i32, i32* %13, align 4
  %124 = add nsw i32 %123, 1
  %125 = call i32 @Q_strncpyz(i32 %121, i8* %122, i32 %124)
  %126 = load i32, i32* %11, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %11, align 4
  br label %52

128:                                              ; preds = %84, %74, %59
  %129 = load i32, i32* %11, align 4
  %130 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %131 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %130, i32 0, i32 2
  store i32 %129, i32* %131, align 8
  %132 = load i32, i32* %11, align 4
  %133 = call i32 (i8*, ...) @Com_Printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i32 %132, i8* %23)
  %134 = bitcast %union.anon* %3 to i8**
  %135 = load i8*, i8** %134, align 8
  %136 = call i32 @FS_FreeFile(i8* %135)
  store i32 0, i32* %16, align 4
  br label %137

137:                                              ; preds = %128, %42, %28
  %138 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %138)
  %139 = load i32, i32* %16, align 4
  switch i32 %139, label %141 [
    i32 0, label %140
    i32 1, label %140
  ]

140:                                              ; preds = %137, %137
  ret void

141:                                              ; preds = %137
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @COM_StripExtension(i32, i8*, i32) #2

declare dso_local i32 @Com_sprintf(i8*, i32, i8*, i8*) #2

declare dso_local i32 @FS_ReadFile(i8*, i8**) #2

declare dso_local i32 @Com_Printf(i8*, ...) #2

declare dso_local i8* @COM_Parse(i8**) #2

declare dso_local i32 @ParseHex(i8*) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local %struct.TYPE_7__* @Hunk_Alloc(i32, i32) #2

declare dso_local i32 @Q_strncpyz(i32, i8*, i32) #2

declare dso_local i32 @FS_FreeFile(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
