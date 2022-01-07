; ModuleID = '/home/carl/AnghaBench/i3/src/extr_regex.c_regex_matches.c'
source_filename = "/home/carl/AnghaBench/i3/src/extr_regex.c_regex_matches.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regex = type { i32, i32, i32 }

@.str = private unnamed_addr constant [38 x i8] c"Regular expression \22%s\22 matches \22%s\22\0A\00", align 1
@PCRE_ERROR_NOMATCH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"Regular expression \22%s\22 does not match \22%s\22\0A\00", align 1
@.str.2 = private unnamed_addr constant [89 x i8] c"PCRE error %d while trying to use regular expression \22%s\22 on input \22%s\22, see pcreapi(3)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @regex_matches(%struct.regex* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.regex*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.regex* %0, %struct.regex** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load %struct.regex*, %struct.regex** %4, align 8
  %8 = getelementptr inbounds %struct.regex, %struct.regex* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.regex*, %struct.regex** %4, align 8
  %11 = getelementptr inbounds %struct.regex, %struct.regex* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = load i8*, i8** %5, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = call i32 @strlen(i8* %14)
  %16 = call i32 @pcre_exec(i32 %9, i32 %12, i8* %13, i32 %15, i32 0, i32 0, i32* null, i32 0)
  store i32 %16, i32* %6, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %2
  %19 = load %struct.regex*, %struct.regex** %4, align 8
  %20 = getelementptr inbounds %struct.regex, %struct.regex* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i8*, i8** %5, align 8
  %23 = call i32 @LOG(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %21, i8* %22)
  store i32 1, i32* %3, align 4
  br label %41

24:                                               ; preds = %2
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* @PCRE_ERROR_NOMATCH, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %34

28:                                               ; preds = %24
  %29 = load %struct.regex*, %struct.regex** %4, align 8
  %30 = getelementptr inbounds %struct.regex, %struct.regex* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i8*, i8** %5, align 8
  %33 = call i32 @LOG(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i32 %31, i8* %32)
  store i32 0, i32* %3, align 4
  br label %41

34:                                               ; preds = %24
  %35 = load i32, i32* %6, align 4
  %36 = load %struct.regex*, %struct.regex** %4, align 8
  %37 = getelementptr inbounds %struct.regex, %struct.regex* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i8*, i8** %5, align 8
  %40 = call i32 @ELOG(i8* getelementptr inbounds ([89 x i8], [89 x i8]* @.str.2, i64 0, i64 0), i32 %35, i32 %38, i8* %39)
  store i32 0, i32* %3, align 4
  br label %41

41:                                               ; preds = %34, %28, %18
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

declare dso_local i32 @pcre_exec(i32, i32, i8*, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @LOG(i8*, i32, i8*) #1

declare dso_local i32 @ELOG(i8*, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
