; ModuleID = '/home/carl/AnghaBench/lab/q3map2/common/extr_vfs.c_vfsInitPakFile.c'
source_filename = "/home/carl/AnghaBench/lab/q3map2/common/extr_vfs.c_vfsInitPakFile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i64 }
%struct.TYPE_16__ = type { i32, %struct.TYPE_16__*, i32, i32 }
%struct.TYPE_15__ = type { i32 }

@g_unzFiles = common dso_local global i32 0, align 4
@UNZ_OK = common dso_local global i32 0, align 4
@NAME_MAX = common dso_local global i32 0, align 4
@g_pakFiles = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @vfsInitPakFile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vfsInitPakFile(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_14__, align 8
  %4 = alloca %struct.TYPE_16__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_15__, align 4
  %11 = alloca %struct.TYPE_16__*, align 8
  %12 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %13 = load i8*, i8** %2, align 8
  %14 = call %struct.TYPE_16__* @unzOpen(i8* %13)
  store %struct.TYPE_16__* %14, %struct.TYPE_16__** %4, align 8
  %15 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %16 = icmp eq %struct.TYPE_16__* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  br label %94

18:                                               ; preds = %1
  %19 = load i32, i32* @g_unzFiles, align 4
  %20 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %21 = call i32 @g_slist_append(i32 %19, %struct.TYPE_16__* %20)
  store i32 %21, i32* @g_unzFiles, align 4
  %22 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %23 = call i32 @unzGetGlobalInfo(%struct.TYPE_16__* %22, %struct.TYPE_14__* %3)
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* @UNZ_OK, align 4
  %26 = icmp ne i32 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %18
  br label %94

28:                                               ; preds = %18
  %29 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %30 = call i32 @unzGoToFirstFile(%struct.TYPE_16__* %29)
  store i64 0, i64* %5, align 8
  br label %31

31:                                               ; preds = %91, %28
  %32 = load i64, i64* %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %3, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp slt i64 %32, %34
  br i1 %35, label %36, label %94

36:                                               ; preds = %31
  %37 = load i32, i32* @NAME_MAX, align 4
  %38 = zext i32 %37 to i64
  %39 = call i8* @llvm.stacksave()
  store i8* %39, i8** %7, align 8
  %40 = alloca i8, i64 %38, align 16
  store i64 %38, i64* %8, align 8
  %41 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %42 = trunc i64 %38 to i32
  %43 = call i32 @unzGetCurrentFileInfo(%struct.TYPE_16__* %41, %struct.TYPE_15__* %10, i8* %40, i32 %42, i32* null, i32 0, i32* null, i32 0)
  store i32 %43, i32* %6, align 4
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* @UNZ_OK, align 4
  %46 = icmp ne i32 %44, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %36
  store i32 2, i32* %12, align 4
  br label %87

48:                                               ; preds = %36
  %49 = call i64 @safe_malloc(i32 24)
  %50 = inttoptr i64 %49 to %struct.TYPE_16__*
  store %struct.TYPE_16__* %50, %struct.TYPE_16__** %11, align 8
  %51 = load i32, i32* @g_pakFiles, align 4
  %52 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %53 = call i32 @g_slist_append(i32 %51, %struct.TYPE_16__* %52)
  store i32 %53, i32* @g_pakFiles, align 4
  %54 = call i32 @vfsFixDOSName(i8* %40)
  %55 = call i8* @g_ascii_strdown(i8* %40, i32 -1)
  store i8* %55, i8** %9, align 8
  %56 = load i8*, i8** %9, align 8
  %57 = call i32 @strdup(i8* %56)
  %58 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %59 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %58, i32 0, i32 3
  store i32 %57, i32* %59, align 4
  %60 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %10, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %63 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %62, i32 0, i32 2
  store i32 %61, i32* %63, align 8
  %64 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %65 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %66 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %65, i32 0, i32 1
  store %struct.TYPE_16__* %64, %struct.TYPE_16__** %66, align 8
  %67 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %68 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %67, i32 0, i32 0
  %69 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %70 = call i32 @memcpy(i32* %68, %struct.TYPE_16__* %69, i32 4)
  %71 = load i64, i64* %5, align 8
  %72 = add nsw i64 %71, 1
  %73 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %3, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = icmp slt i64 %72, %74
  br i1 %75, label %76, label %84

76:                                               ; preds = %48
  %77 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %78 = call i32 @unzGoToNextFile(%struct.TYPE_16__* %77)
  store i32 %78, i32* %6, align 4
  %79 = load i32, i32* %6, align 4
  %80 = load i32, i32* @UNZ_OK, align 4
  %81 = icmp ne i32 %79, %80
  br i1 %81, label %82, label %83

82:                                               ; preds = %76
  store i32 2, i32* %12, align 4
  br label %87

83:                                               ; preds = %76
  br label %84

84:                                               ; preds = %83, %48
  %85 = load i8*, i8** %9, align 8
  %86 = call i32 @g_free(i8* %85)
  store i32 0, i32* %12, align 4
  br label %87

87:                                               ; preds = %84, %82, %47
  %88 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %88)
  %89 = load i32, i32* %12, align 4
  switch i32 %89, label %95 [
    i32 0, label %90
    i32 2, label %94
  ]

90:                                               ; preds = %87
  br label %91

91:                                               ; preds = %90
  %92 = load i64, i64* %5, align 8
  %93 = add nsw i64 %92, 1
  store i64 %93, i64* %5, align 8
  br label %31

94:                                               ; preds = %17, %27, %87, %31
  ret void

95:                                               ; preds = %87
  unreachable
}

declare dso_local %struct.TYPE_16__* @unzOpen(i8*) #1

declare dso_local i32 @g_slist_append(i32, %struct.TYPE_16__*) #1

declare dso_local i32 @unzGetGlobalInfo(%struct.TYPE_16__*, %struct.TYPE_14__*) #1

declare dso_local i32 @unzGoToFirstFile(%struct.TYPE_16__*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @unzGetCurrentFileInfo(%struct.TYPE_16__*, %struct.TYPE_15__*, i8*, i32, i32*, i32, i32*, i32) #1

declare dso_local i64 @safe_malloc(i32) #1

declare dso_local i32 @vfsFixDOSName(i8*) #1

declare dso_local i8* @g_ascii_strdown(i8*, i32) #1

declare dso_local i32 @strdup(i8*) #1

declare dso_local i32 @memcpy(i32*, %struct.TYPE_16__*, i32) #1

declare dso_local i32 @unzGoToNextFile(%struct.TYPE_16__*) #1

declare dso_local i32 @g_free(i8*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
