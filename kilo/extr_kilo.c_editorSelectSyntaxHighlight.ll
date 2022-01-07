; ModuleID = '/home/carl/AnghaBench/kilo/extr_kilo.c_editorSelectSyntaxHighlight.c'
source_filename = "/home/carl/AnghaBench/kilo/extr_kilo.c_editorSelectSyntaxHighlight.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.editorSyntax = type { i8** }
%struct.TYPE_2__ = type { %struct.editorSyntax* }

@HLDB_ENTRIES = common dso_local global i32 0, align 4
@HLDB = common dso_local global %struct.editorSyntax* null, align 8
@E = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @editorSelectSyntaxHighlight(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.editorSyntax*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  store i32 0, i32* %3, align 4
  br label %8

8:                                                ; preds = %72, %1
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* @HLDB_ENTRIES, align 4
  %11 = icmp ult i32 %9, %10
  br i1 %11, label %12, label %75

12:                                               ; preds = %8
  %13 = load %struct.editorSyntax*, %struct.editorSyntax** @HLDB, align 8
  %14 = load i32, i32* %3, align 4
  %15 = zext i32 %14 to i64
  %16 = getelementptr inbounds %struct.editorSyntax, %struct.editorSyntax* %13, i64 %15
  store %struct.editorSyntax* %16, %struct.editorSyntax** %4, align 8
  store i32 0, i32* %5, align 4
  br label %17

17:                                               ; preds = %68, %12
  %18 = load %struct.editorSyntax*, %struct.editorSyntax** %4, align 8
  %19 = getelementptr inbounds %struct.editorSyntax, %struct.editorSyntax* %18, i32 0, i32 0
  %20 = load i8**, i8*** %19, align 8
  %21 = load i32, i32* %5, align 4
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds i8*, i8** %20, i64 %22
  %24 = load i8*, i8** %23, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %26, label %71

26:                                               ; preds = %17
  %27 = load %struct.editorSyntax*, %struct.editorSyntax** %4, align 8
  %28 = getelementptr inbounds %struct.editorSyntax, %struct.editorSyntax* %27, i32 0, i32 0
  %29 = load i8**, i8*** %28, align 8
  %30 = load i32, i32* %5, align 4
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds i8*, i8** %29, i64 %31
  %33 = load i8*, i8** %32, align 8
  %34 = call i32 @strlen(i8* %33)
  store i32 %34, i32* %7, align 4
  %35 = load i8*, i8** %2, align 8
  %36 = load %struct.editorSyntax*, %struct.editorSyntax** %4, align 8
  %37 = getelementptr inbounds %struct.editorSyntax, %struct.editorSyntax* %36, i32 0, i32 0
  %38 = load i8**, i8*** %37, align 8
  %39 = load i32, i32* %5, align 4
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds i8*, i8** %38, i64 %40
  %42 = load i8*, i8** %41, align 8
  %43 = call i8* @strstr(i8* %35, i8* %42)
  store i8* %43, i8** %6, align 8
  %44 = icmp ne i8* %43, null
  br i1 %44, label %45, label %68

45:                                               ; preds = %26
  %46 = load %struct.editorSyntax*, %struct.editorSyntax** %4, align 8
  %47 = getelementptr inbounds %struct.editorSyntax, %struct.editorSyntax* %46, i32 0, i32 0
  %48 = load i8**, i8*** %47, align 8
  %49 = load i32, i32* %5, align 4
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds i8*, i8** %48, i64 %50
  %52 = load i8*, i8** %51, align 8
  %53 = getelementptr inbounds i8, i8* %52, i64 0
  %54 = load i8, i8* %53, align 1
  %55 = sext i8 %54 to i32
  %56 = icmp ne i32 %55, 46
  br i1 %56, label %65, label %57

57:                                               ; preds = %45
  %58 = load i8*, i8** %6, align 8
  %59 = load i32, i32* %7, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i8, i8* %58, i64 %60
  %62 = load i8, i8* %61, align 1
  %63 = sext i8 %62 to i32
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %57, %45
  %66 = load %struct.editorSyntax*, %struct.editorSyntax** %4, align 8
  store %struct.editorSyntax* %66, %struct.editorSyntax** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @E, i32 0, i32 0), align 8
  br label %75

67:                                               ; preds = %57
  br label %68

68:                                               ; preds = %67, %26
  %69 = load i32, i32* %5, align 4
  %70 = add i32 %69, 1
  store i32 %70, i32* %5, align 4
  br label %17

71:                                               ; preds = %17
  br label %72

72:                                               ; preds = %71
  %73 = load i32, i32* %3, align 4
  %74 = add i32 %73, 1
  store i32 %74, i32* %3, align 4
  br label %8

75:                                               ; preds = %65, %8
  ret void
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @strstr(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
