; ModuleID = '/home/carl/AnghaBench/lab/q3map2/common/extr_vfs.c_vfsGetFileCount.c'
source_filename = "/home/carl/AnghaBench/lab/q3map2/common/extr_vfs.c_vfsGetFileCount.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64 }
%struct.TYPE_6__ = type { i32 }

@NAME_MAX = common dso_local global i32 0, align 4
@g_pakFiles = common dso_local global %struct.TYPE_7__* null, align 8
@g_numDirs = common dso_local global i32 0, align 4
@g_strDirs = common dso_local global i8** null, align 8
@R_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vfsGetFileCount(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_7__*, align 8
  %10 = alloca %struct.TYPE_6__*, align 8
  store i8* %0, i8** %2, align 8
  store i32 0, i32* %4, align 4
  %11 = load i32, i32* @NAME_MAX, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %5, align 8
  %14 = alloca i8, i64 %12, align 16
  store i64 %12, i64* %6, align 8
  %15 = load i32, i32* @NAME_MAX, align 4
  %16 = zext i32 %15 to i64
  %17 = alloca i8, i64 %16, align 16
  store i64 %16, i64* %7, align 8
  %18 = load i8*, i8** %2, align 8
  %19 = call i32 @strcpy(i8* %14, i8* %18)
  %20 = call i32 @vfsFixDOSName(i8* %14)
  %21 = call i8* @g_ascii_strdown(i8* %14, i32 -1)
  store i8* %21, i8** %8, align 8
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** @g_pakFiles, align 8
  store %struct.TYPE_7__* %22, %struct.TYPE_7__** %9, align 8
  br label %23

23:                                               ; preds = %41, %1
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %25 = icmp ne %struct.TYPE_7__* %24, null
  br i1 %25, label %26, label %44

26:                                               ; preds = %23
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = inttoptr i64 %29 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %30, %struct.TYPE_6__** %10, align 8
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i8*, i8** %8, align 8
  %35 = call i64 @strcmp(i32 %33, i8* %34)
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %26
  %38 = load i32, i32* %4, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %4, align 4
  br label %40

40:                                               ; preds = %37, %26
  br label %41

41:                                               ; preds = %40
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %43 = call %struct.TYPE_7__* @g_slist_next(%struct.TYPE_7__* %42)
  store %struct.TYPE_7__* %43, %struct.TYPE_7__** %9, align 8
  br label %23

44:                                               ; preds = %23
  store i32 0, i32* %3, align 4
  br label %45

45:                                               ; preds = %65, %44
  %46 = load i32, i32* %3, align 4
  %47 = load i32, i32* @g_numDirs, align 4
  %48 = icmp slt i32 %46, %47
  br i1 %48, label %49, label %68

49:                                               ; preds = %45
  %50 = load i8**, i8*** @g_strDirs, align 8
  %51 = load i32, i32* %3, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i8*, i8** %50, i64 %52
  %54 = load i8*, i8** %53, align 8
  %55 = call i32 @strcpy(i8* %17, i8* %54)
  %56 = load i8*, i8** %8, align 8
  %57 = call i32 @strcat(i8* %17, i8* %56)
  %58 = load i32, i32* @R_OK, align 4
  %59 = call i64 @access(i8* %17, i32 %58)
  %60 = icmp eq i64 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %49
  %62 = load i32, i32* %4, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %4, align 4
  br label %64

64:                                               ; preds = %61, %49
  br label %65

65:                                               ; preds = %64
  %66 = load i32, i32* %3, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %3, align 4
  br label %45

68:                                               ; preds = %45
  %69 = load i8*, i8** %8, align 8
  %70 = call i32 @g_free(i8* %69)
  %71 = load i32, i32* %4, align 4
  %72 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %72)
  ret i32 %71
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @strcpy(i8*, i8*) #2

declare dso_local i32 @vfsFixDOSName(i8*) #2

declare dso_local i8* @g_ascii_strdown(i8*, i32) #2

declare dso_local i64 @strcmp(i32, i8*) #2

declare dso_local %struct.TYPE_7__* @g_slist_next(%struct.TYPE_7__*) #2

declare dso_local i32 @strcat(i8*, i8*) #2

declare dso_local i64 @access(i8*, i32) #2

declare dso_local i32 @g_free(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
