; ModuleID = '/home/carl/AnghaBench/lab/engine/code/tools/asm/extr_q3asm.c_LookupSymbol.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/tools/asm/extr_q3asm.c_LookupSymbol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_7__ = type { i64, %struct.TYPE_7__* }

@MAX_LINE_LENGTH = common dso_local global i32 0, align 4
@passNumber = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"%s_%i\00", align 1
@currentFileIndex = common dso_local global i32 0, align 4
@symtable = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"error: symbol %s undefined\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @LookupSymbol to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @LookupSymbol(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %10 = load i32, i32* @MAX_LINE_LENGTH, align 4
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %5, align 8
  %13 = alloca i8, i64 %11, align 16
  store i64 %11, i64* %6, align 8
  %14 = load i32, i32* @passNumber, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %73

17:                                               ; preds = %1
  %18 = load i8*, i8** %3, align 8
  %19 = getelementptr inbounds i8, i8* %18, i64 0
  %20 = load i8, i8* %19, align 1
  %21 = sext i8 %20 to i32
  %22 = icmp eq i32 %21, 36
  br i1 %22, label %23, label %27

23:                                               ; preds = %17
  %24 = load i8*, i8** %3, align 8
  %25 = load i32, i32* @currentFileIndex, align 4
  %26 = call i32 @sprintf(i8* %13, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %24, i32 %25)
  store i8* %13, i8** %3, align 8
  br label %27

27:                                               ; preds = %23, %17
  %28 = load i8*, i8** %3, align 8
  %29 = call i32 @HashString(i8* %28)
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* @symtable, align 4
  %31 = load i32, i32* %7, align 4
  %32 = call %struct.TYPE_7__* @hashtable_get(i32 %30, i32 %31)
  store %struct.TYPE_7__* %32, %struct.TYPE_7__** %8, align 8
  br label %33

33:                                               ; preds = %64, %27
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %35 = icmp ne %struct.TYPE_7__* %34, null
  br i1 %35, label %36, label %68

36:                                               ; preds = %33
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = inttoptr i64 %39 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %40, %struct.TYPE_6__** %4, align 8
  %41 = load i32, i32* %7, align 4
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = icmp eq i32 %41, %44
  br i1 %45, label %46, label %63

46:                                               ; preds = %36
  %47 = load i8*, i8** %3, align 8
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @strcmp(i8* %47, i32 %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %63, label %53

53:                                               ; preds = %46
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 2
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = add nsw i32 %58, %61
  store i32 %62, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %73

63:                                               ; preds = %46, %36
  br label %64

64:                                               ; preds = %63
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 1
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %66, align 8
  store %struct.TYPE_7__* %67, %struct.TYPE_7__** %8, align 8
  br label %33

68:                                               ; preds = %33
  %69 = load i8*, i8** %3, align 8
  %70 = call i32 @CodeError(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i8* %69)
  store i32 0, i32* @passNumber, align 4
  %71 = load i8*, i8** %3, align 8
  %72 = call i32 @DefineSymbol(i8* %71, i32 0)
  store i32 1, i32* @passNumber, align 4
  store i32 0, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %73

73:                                               ; preds = %68, %53, %16
  %74 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %74)
  %75 = load i32, i32* %2, align 4
  ret i32 %75
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @sprintf(i8*, i8*, i8*, i32) #2

declare dso_local i32 @HashString(i8*) #2

declare dso_local %struct.TYPE_7__* @hashtable_get(i32, i32) #2

declare dso_local i32 @strcmp(i8*, i32) #2

declare dso_local i32 @CodeError(i8*, i8*) #2

declare dso_local i32 @DefineSymbol(i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
