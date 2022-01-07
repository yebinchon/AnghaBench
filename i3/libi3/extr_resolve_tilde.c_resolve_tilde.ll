; ModuleID = '/home/carl/AnghaBench/i3/libi3/extr_resolve_tilde.c_resolve_tilde.c'
source_filename = "/home/carl/AnghaBench/i3/libi3/extr_resolve_tilde.c_resolve_tilde.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i8** }

@resolve_tilde.globbuf = internal global %struct.TYPE_4__ zeroinitializer, align 8
@GLOB_TILDE = common dso_local global i32 0, align 4
@GLOB_NOMATCH = common dso_local global i32 0, align 4
@EXIT_FAILURE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"glob() failed\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @resolve_tilde(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %7 = load i8*, i8** %2, align 8
  %8 = call i8* @strchr(i8* %7, i8 signext 47)
  store i8* %8, i8** %4, align 8
  %9 = load i8*, i8** %2, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = icmp ne i8* %10, null
  br i1 %11, label %12, label %18

12:                                               ; preds = %1
  %13 = load i8*, i8** %4, align 8
  %14 = load i8*, i8** %2, align 8
  %15 = ptrtoint i8* %13 to i64
  %16 = ptrtoint i8* %14 to i64
  %17 = sub i64 %15, %16
  br label %21

18:                                               ; preds = %1
  %19 = load i8*, i8** %2, align 8
  %20 = call i64 @strlen(i8* %19)
  br label %21

21:                                               ; preds = %18, %12
  %22 = phi i64 [ %17, %12 ], [ %20, %18 ]
  %23 = call i8* @sstrndup(i8* %9, i64 %22)
  store i8* %23, i8** %3, align 8
  %24 = load i8*, i8** %3, align 8
  %25 = load i32, i32* @GLOB_TILDE, align 4
  %26 = call i32 @glob(i8* %24, i32 %25, i32* null, %struct.TYPE_4__* @resolve_tilde.globbuf)
  store i32 %26, i32* %6, align 4
  %27 = load i8*, i8** %3, align 8
  %28 = call i32 @free(i8* %27)
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* @GLOB_NOMATCH, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %35, label %32

32:                                               ; preds = %21
  %33 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @resolve_tilde.globbuf, i32 0, i32 0), align 8
  %34 = icmp ne i32 %33, 1
  br i1 %34, label %35, label %38

35:                                               ; preds = %32, %21
  %36 = load i8*, i8** %2, align 8
  %37 = call i8* @sstrdup(i8* %36)
  store i8* %37, i8** %5, align 8
  br label %72

38:                                               ; preds = %32
  %39 = load i32, i32* %6, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %38
  %42 = load i32, i32* @EXIT_FAILURE, align 4
  %43 = call i32 @err(i32 %42, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %71

44:                                               ; preds = %38
  %45 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @resolve_tilde.globbuf, i32 0, i32 1), align 8
  %46 = getelementptr inbounds i8*, i8** %45, i64 0
  %47 = load i8*, i8** %46, align 8
  store i8* %47, i8** %3, align 8
  %48 = load i8*, i8** %3, align 8
  %49 = call i64 @strlen(i8* %48)
  %50 = load i8*, i8** %4, align 8
  %51 = icmp ne i8* %50, null
  br i1 %51, label %52, label %55

52:                                               ; preds = %44
  %53 = load i8*, i8** %4, align 8
  %54 = call i64 @strlen(i8* %53)
  br label %56

55:                                               ; preds = %44
  br label %56

56:                                               ; preds = %55, %52
  %57 = phi i64 [ %54, %52 ], [ 0, %55 ]
  %58 = add i64 %49, %57
  %59 = add i64 %58, 1
  %60 = call i8* @scalloc(i64 %59, i32 1)
  store i8* %60, i8** %5, align 8
  %61 = load i8*, i8** %5, align 8
  %62 = load i8*, i8** %3, align 8
  %63 = call i32 @strcpy(i8* %61, i8* %62)
  %64 = load i8*, i8** %4, align 8
  %65 = icmp ne i8* %64, null
  br i1 %65, label %66, label %70

66:                                               ; preds = %56
  %67 = load i8*, i8** %5, align 8
  %68 = load i8*, i8** %4, align 8
  %69 = call i32 @strcat(i8* %67, i8* %68)
  br label %70

70:                                               ; preds = %66, %56
  br label %71

71:                                               ; preds = %70, %41
  br label %72

72:                                               ; preds = %71, %35
  %73 = call i32 @globfree(%struct.TYPE_4__* @resolve_tilde.globbuf)
  %74 = load i8*, i8** %5, align 8
  ret i8* %74
}

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i8* @sstrndup(i8*, i64) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @glob(i8*, i32, i32*, %struct.TYPE_4__*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i8* @sstrdup(i8*) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i8* @scalloc(i64, i32) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @strcat(i8*, i8*) #1

declare dso_local i32 @globfree(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
