; ModuleID = '/home/carl/AnghaBench/lab/engine/code/server/extr_sv_ccmds.c_SV_WriteBans.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/server/extr_sv_ccmds.c_SV_WriteBans.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32* }
%struct.TYPE_4__ = type { i32, i32, i32 }

@MAX_QPATH = common dso_local global i32 0, align 4
@sv_banFile = common dso_local global %struct.TYPE_5__* null, align 8
@.str = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@serverBansCount = common dso_local global i32 0, align 4
@serverBans = common dso_local global %struct.TYPE_4__* null, align 8
@.str.1 = private unnamed_addr constant [10 x i8] c"%d %s %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @SV_WriteBans to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @SV_WriteBans() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca [128 x i8], align 16
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = load i32, i32* @MAX_QPATH, align 4
  %9 = zext i32 %8 to i64
  %10 = call i8* @llvm.stacksave()
  store i8* %10, i8** %3, align 8
  %11 = alloca i8, i64 %9, align 16
  store i64 %9, i64* %4, align 8
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** @sv_banFile, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %16, label %22

16:                                               ; preds = %0
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** @sv_banFile, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %16, %0
  store i32 1, i32* %5, align 4
  br label %67

23:                                               ; preds = %16
  %24 = trunc i64 %9 to i32
  %25 = call i32 (...) @FS_GetCurrentGameDir()
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** @sv_banFile, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = ptrtoint i32* %28 to i32
  %30 = call i32 (i8*, i32, i8*, i32, i32, ...) @Com_sprintf(i8* %11, i32 %24, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %25, i32 %29)
  %31 = call i32 @FS_SV_FOpenFileWrite(i8* %11)
  store i32 %31, i32* %2, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %66

33:                                               ; preds = %23
  store i32 0, i32* %1, align 4
  br label %34

34:                                               ; preds = %60, %33
  %35 = load i32, i32* %1, align 4
  %36 = load i32, i32* @serverBansCount, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %63

38:                                               ; preds = %34
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** @serverBans, align 8
  %40 = load i32, i32* %1, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i64 %41
  store %struct.TYPE_4__* %42, %struct.TYPE_4__** %7, align 8
  %43 = getelementptr inbounds [128 x i8], [128 x i8]* %6, i64 0, i64 0
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @NET_AdrToString(i32 %49)
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 (i8*, i32, i8*, i32, i32, ...) @Com_sprintf(i8* %43, i32 128, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %46, i32 %50, i32 %53)
  %55 = getelementptr inbounds [128 x i8], [128 x i8]* %6, i64 0, i64 0
  %56 = getelementptr inbounds [128 x i8], [128 x i8]* %6, i64 0, i64 0
  %57 = call i32 @strlen(i8* %56)
  %58 = load i32, i32* %2, align 4
  %59 = call i32 @FS_Write(i8* %55, i32 %57, i32 %58)
  br label %60

60:                                               ; preds = %38
  %61 = load i32, i32* %1, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %1, align 4
  br label %34

63:                                               ; preds = %34
  %64 = load i32, i32* %2, align 4
  %65 = call i32 @FS_FCloseFile(i32 %64)
  br label %66

66:                                               ; preds = %63, %23
  store i32 0, i32* %5, align 4
  br label %67

67:                                               ; preds = %66, %22
  %68 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %68)
  %69 = load i32, i32* %5, align 4
  switch i32 %69, label %71 [
    i32 0, label %70
    i32 1, label %70
  ]

70:                                               ; preds = %67, %67
  ret void

71:                                               ; preds = %67
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @Com_sprintf(i8*, i32, i8*, i32, i32, ...) #2

declare dso_local i32 @FS_GetCurrentGameDir(...) #2

declare dso_local i32 @FS_SV_FOpenFileWrite(i8*) #2

declare dso_local i32 @NET_AdrToString(i32) #2

declare dso_local i32 @FS_Write(i8*, i32, i32) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @FS_FCloseFile(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
