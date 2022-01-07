; ModuleID = '/home/carl/AnghaBench/lab/engine/code/q3_ui/extr_ui_sppostgame.c_Prepname.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/q3_ui/extr_ui_sppostgame.c_Prepname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8**, i64* }

@MAX_INFO_STRING = common dso_local global i32 0, align 4
@CS_PLAYERS = common dso_local global i64 0, align 8
@postgameMenuInfo = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@.str = private unnamed_addr constant [2 x i8] c"n\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @Prepname to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @Prepname(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca [64 x i8], align 16
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store i32 %0, i32* %2, align 4
  %7 = load i32, i32* @MAX_INFO_STRING, align 4
  %8 = zext i32 %7 to i64
  %9 = call i8* @llvm.stacksave()
  store i8* %9, i8** %5, align 8
  %10 = alloca i8, i64 %8, align 16
  store i64 %8, i64* %6, align 8
  %11 = load i64, i64* @CS_PLAYERS, align 8
  %12 = load i64*, i64** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @postgameMenuInfo, i32 0, i32 1), align 8
  %13 = load i32, i32* %2, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i64, i64* %12, i64 %14
  %16 = load i64, i64* %15, align 8
  %17 = add nsw i64 %11, %16
  %18 = load i32, i32* @MAX_INFO_STRING, align 4
  %19 = call i32 @trap_GetConfigString(i64 %17, i8* %10, i32 %18)
  %20 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 0
  %21 = call i8* @Info_ValueForKey(i8* %10, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %22 = call i32 @Q_strncpyz(i8* %20, i8* %21, i32 64)
  %23 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 0
  %24 = call i32 @Q_CleanStr(i8* %23)
  %25 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 0
  %26 = call i32 @strlen(i8* %25)
  store i32 %26, i32* %3, align 4
  br label %27

27:                                               ; preds = %36, %1
  %28 = load i32, i32* %3, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %27
  %31 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 0
  %32 = call i32 @UI_ProportionalStringWidth(i8* %31)
  %33 = icmp sgt i32 %32, 256
  br label %34

34:                                               ; preds = %30, %27
  %35 = phi i1 [ false, %27 ], [ %33, %30 ]
  br i1 %35, label %36, label %42

36:                                               ; preds = %34
  %37 = load i32, i32* %3, align 4
  %38 = add nsw i32 %37, -1
  store i32 %38, i32* %3, align 4
  %39 = load i32, i32* %3, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 %40
  store i8 0, i8* %41, align 1
  br label %27

42:                                               ; preds = %34
  %43 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @postgameMenuInfo, i32 0, i32 0), align 8
  %44 = load i32, i32* %2, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i8*, i8** %43, i64 %45
  %47 = load i8*, i8** %46, align 8
  %48 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 0
  %49 = call i32 @Q_strncpyz(i8* %47, i8* %48, i32 8)
  %50 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %50)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @trap_GetConfigString(i64, i8*, i32) #2

declare dso_local i32 @Q_strncpyz(i8*, i8*, i32) #2

declare dso_local i8* @Info_ValueForKey(i8*, i8*) #2

declare dso_local i32 @Q_CleanStr(i8*) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @UI_ProportionalStringWidth(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
