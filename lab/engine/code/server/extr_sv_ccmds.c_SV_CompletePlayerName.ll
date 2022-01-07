; ModuleID = '/home/carl/AnghaBench/lab/engine/code/server/extr_sv_ccmds.c_SV_CompletePlayerName.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/server/extr_sv_ccmds.c_SV_CompletePlayerName.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32 }

@MAX_CLIENTS = common dso_local global i32 0, align 4
@MAX_NAME_LENGTH = common dso_local global i32 0, align 4
@sv_maxclients = common dso_local global %struct.TYPE_6__* null, align 8
@svs = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@Com_strCompare = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @SV_CompletePlayerName to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @SV_CompletePlayerName(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_4__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = icmp eq i32 %13, 2
  br i1 %14, label %15, label %86

15:                                               ; preds = %2
  %16 = load i32, i32* @MAX_CLIENTS, align 4
  %17 = zext i32 %16 to i64
  %18 = load i32, i32* @MAX_NAME_LENGTH, align 4
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %5, align 8
  %21 = mul nuw i64 %17, %19
  %22 = alloca i8, i64 %21, align 16
  store i64 %17, i64* %6, align 8
  store i64 %19, i64* %7, align 8
  %23 = load i32, i32* @MAX_CLIENTS, align 4
  %24 = zext i32 %23 to i64
  %25 = alloca i8*, i64 %24, align 16
  store i64 %24, i64* %8, align 8
  store i32 0, i32* %11, align 4
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** @sv_maxclients, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %12, align 4
  store i32 0, i32* %10, align 4
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @svs, i32 0, i32 0), align 8
  store %struct.TYPE_4__* %29, %struct.TYPE_4__** %9, align 8
  br label %30

30:                                               ; preds = %73, %15
  %31 = load i32, i32* %10, align 4
  %32 = load i32, i32* %12, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %78

34:                                               ; preds = %30
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %34
  br label %73

40:                                               ; preds = %34
  %41 = load i32, i32* %10, align 4
  %42 = load i32, i32* @MAX_CLIENTS, align 4
  %43 = icmp sge i32 %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %40
  br label %78

45:                                               ; preds = %40
  %46 = load i32, i32* %11, align 4
  %47 = sext i32 %46 to i64
  %48 = mul nsw i64 %47, %19
  %49 = getelementptr inbounds i8, i8* %22, i64 %48
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* %11, align 4
  %54 = sext i32 %53 to i64
  %55 = mul nsw i64 %54, %19
  %56 = getelementptr inbounds i8, i8* %22, i64 %55
  %57 = trunc i64 %19 to i32
  %58 = call i32 @Q_strncpyz(i8* %49, i32 %52, i32 %57)
  %59 = load i32, i32* %11, align 4
  %60 = sext i32 %59 to i64
  %61 = mul nsw i64 %60, %19
  %62 = getelementptr inbounds i8, i8* %22, i64 %61
  %63 = call i32 @Q_CleanStr(i8* %62)
  %64 = load i32, i32* %11, align 4
  %65 = sext i32 %64 to i64
  %66 = mul nsw i64 %65, %19
  %67 = getelementptr inbounds i8, i8* %22, i64 %66
  %68 = load i32, i32* %11, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i8*, i8** %25, i64 %69
  store i8* %67, i8** %70, align 8
  %71 = load i32, i32* %11, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %11, align 4
  br label %73

73:                                               ; preds = %45, %39
  %74 = load i32, i32* %10, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %10, align 4
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 1
  store %struct.TYPE_4__* %77, %struct.TYPE_4__** %9, align 8
  br label %30

78:                                               ; preds = %44, %30
  %79 = bitcast i8** %25 to i8*
  %80 = load i32, i32* %11, align 4
  %81 = load i32, i32* @Com_strCompare, align 4
  %82 = call i32 @qsort(i8* %79, i32 %80, i32 8, i32 %81)
  %83 = load i32, i32* %11, align 4
  %84 = call i32 @Field_CompletePlayerName(i8** %25, i32 %83)
  %85 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %85)
  br label %86

86:                                               ; preds = %78, %2
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @Q_strncpyz(i8*, i32, i32) #2

declare dso_local i32 @Q_CleanStr(i8*) #2

declare dso_local i32 @qsort(i8*, i32, i32, i32) #2

declare dso_local i32 @Field_CompletePlayerName(i8**, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
