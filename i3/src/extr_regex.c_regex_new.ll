; ModuleID = '/home/carl/AnghaBench/i3/src/extr_regex.c_regex_new.c'
source_filename = "/home/carl/AnghaBench/i3/src/extr_regex.c_regex_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regex = type { i32, i32, i32 }

@PCRE_UTF8 = common dso_local global i32 0, align 4
@PCRE_UCP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"PCRE regular expression compilation failed at %d: %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"PCRE regular expression studying failed: %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.regex* @regex_new(i8* %0) #0 {
  %2 = alloca %struct.regex*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.regex*, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %9 = call %struct.regex* @scalloc(i32 1, i32 12)
  store %struct.regex* %9, %struct.regex** %7, align 8
  %10 = load i8*, i8** %3, align 8
  %11 = call i32 @sstrdup(i8* %10)
  %12 = load %struct.regex*, %struct.regex** %7, align 8
  %13 = getelementptr inbounds %struct.regex, %struct.regex* %12, i32 0, i32 2
  store i32 %11, i32* %13, align 4
  %14 = load i32, i32* @PCRE_UTF8, align 4
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* @PCRE_UCP, align 4
  %16 = load i32, i32* %8, align 4
  %17 = or i32 %16, %15
  store i32 %17, i32* %8, align 4
  br label %18

18:                                               ; preds = %29, %1
  %19 = load i8*, i8** %3, align 8
  %20 = load i32, i32* %8, align 4
  %21 = call i32 @pcre_compile2(i8* %19, i32 %20, i32* %5, i8** %4, i32* %6, i32* null)
  %22 = load %struct.regex*, %struct.regex** %7, align 8
  %23 = getelementptr inbounds %struct.regex, %struct.regex* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 4
  %24 = icmp ne i32 %21, 0
  %25 = xor i1 %24, true
  br i1 %25, label %26, label %40

26:                                               ; preds = %18
  %27 = load i32, i32* %5, align 4
  %28 = icmp eq i32 %27, 32
  br i1 %28, label %29, label %34

29:                                               ; preds = %26
  %30 = load i32, i32* @PCRE_UTF8, align 4
  %31 = xor i32 %30, -1
  %32 = load i32, i32* %8, align 4
  %33 = and i32 %32, %31
  store i32 %33, i32* %8, align 4
  br label %18

34:                                               ; preds = %26
  %35 = load i32, i32* %6, align 4
  %36 = load i8*, i8** %4, align 8
  %37 = call i32 (i8*, ...) @ELOG(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i32 %35, i8* %36)
  %38 = load %struct.regex*, %struct.regex** %7, align 8
  %39 = call i32 @regex_free(%struct.regex* %38)
  store %struct.regex* null, %struct.regex** %2, align 8
  br label %54

40:                                               ; preds = %18
  %41 = load %struct.regex*, %struct.regex** %7, align 8
  %42 = getelementptr inbounds %struct.regex, %struct.regex* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @pcre_study(i32 %43, i32 0, i8** %4)
  %45 = load %struct.regex*, %struct.regex** %7, align 8
  %46 = getelementptr inbounds %struct.regex, %struct.regex* %45, i32 0, i32 1
  store i32 %44, i32* %46, align 4
  %47 = load i8*, i8** %4, align 8
  %48 = icmp ne i8* %47, null
  br i1 %48, label %49, label %52

49:                                               ; preds = %40
  %50 = load i8*, i8** %4, align 8
  %51 = call i32 (i8*, ...) @ELOG(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i8* %50)
  br label %52

52:                                               ; preds = %49, %40
  %53 = load %struct.regex*, %struct.regex** %7, align 8
  store %struct.regex* %53, %struct.regex** %2, align 8
  br label %54

54:                                               ; preds = %52, %34
  %55 = load %struct.regex*, %struct.regex** %2, align 8
  ret %struct.regex* %55
}

declare dso_local %struct.regex* @scalloc(i32, i32) #1

declare dso_local i32 @sstrdup(i8*) #1

declare dso_local i32 @pcre_compile2(i8*, i32, i32*, i8**, i32*, i32*) #1

declare dso_local i32 @ELOG(i8*, ...) #1

declare dso_local i32 @regex_free(%struct.regex*) #1

declare dso_local i32 @pcre_study(i32, i32, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
