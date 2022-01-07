; ModuleID = '/home/carl/AnghaBench/lab/engine/code/qcommon/extr_files.c_FS_IsDemoExt.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/qcommon/extr_files.c_FS_IsDemoExt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@DEMOEXT = common dso_local global i32 0, align 4
@com_protocol = common dso_local global %struct.TYPE_3__* null, align 8
@qtrue = common dso_local global i32 0, align 4
@demo_protocols = common dso_local global i32* null, align 8
@qfalse = common dso_local global i32 0, align 4
@com_legacyprotocol = common dso_local global %struct.TYPE_4__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @FS_IsDemoExt(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i8*, i8** %4, align 8
  %10 = call i8* @strrchr(i8* %9, i8 signext 46)
  store i8* %10, i8** %6, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %13, label %59

13:                                               ; preds = %2
  %14 = load i8*, i8** %6, align 8
  %15 = getelementptr inbounds i8, i8* %14, i64 1
  %16 = load i32, i32* @DEMOEXT, align 4
  %17 = load i32, i32* @DEMOEXT, align 4
  %18 = call i32 @ARRAY_LEN(i32 %17)
  %19 = sub nsw i32 %18, 1
  %20 = call i32 @Q_stricmpn(i8* %15, i32 %16, i32 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %59, label %22

22:                                               ; preds = %13
  %23 = load i8*, i8** %6, align 8
  %24 = load i32, i32* @DEMOEXT, align 4
  %25 = call i32 @ARRAY_LEN(i32 %24)
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i8, i8* %23, i64 %26
  %28 = call i32 @atoi(i8* %27)
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* %8, align 4
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** @com_protocol, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = icmp eq i32 %29, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %22
  %35 = load i32, i32* @qtrue, align 4
  store i32 %35, i32* %3, align 4
  br label %61

36:                                               ; preds = %22
  store i32 0, i32* %7, align 4
  br label %37

37:                                               ; preds = %55, %36
  %38 = load i32*, i32** @demo_protocols, align 8
  %39 = load i32, i32* %7, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %58

44:                                               ; preds = %37
  %45 = load i32*, i32** @demo_protocols, align 8
  %46 = load i32, i32* %7, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %8, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %54

52:                                               ; preds = %44
  %53 = load i32, i32* @qtrue, align 4
  store i32 %53, i32* %3, align 4
  br label %61

54:                                               ; preds = %44
  br label %55

55:                                               ; preds = %54
  %56 = load i32, i32* %7, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %7, align 4
  br label %37

58:                                               ; preds = %37
  br label %59

59:                                               ; preds = %58, %13, %2
  %60 = load i32, i32* @qfalse, align 4
  store i32 %60, i32* %3, align 4
  br label %61

61:                                               ; preds = %59, %52, %34
  %62 = load i32, i32* %3, align 4
  ret i32 %62
}

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i32 @Q_stricmpn(i8*, i32, i32) #1

declare dso_local i32 @ARRAY_LEN(i32) #1

declare dso_local i32 @atoi(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
