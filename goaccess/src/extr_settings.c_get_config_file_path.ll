; ModuleID = '/home/carl/AnghaBench/goaccess/src/extr_settings.c_get_config_file_path.c'
source_filename = "/home/carl/AnghaBench/goaccess/src/extr_settings.c_get_config_file_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8*, i64 }

@conf = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@.str = private unnamed_addr constant [45 x i8] c"Unable to open the specified config file. %s\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @get_config_file_path() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  store i8* null, i8** %2, align 8
  store i8* null, i8** %3, align 8
  %5 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @conf, i32 0, i32 0), align 8
  %6 = icmp ne i8* %5, null
  br i1 %6, label %7, label %18

7:                                                ; preds = %0
  %8 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @conf, i32 0, i32 0), align 8
  %9 = call i8* @realpath(i8* %8, i32* null)
  store i8* %9, i8** %3, align 8
  %10 = load i8*, i8** %3, align 8
  %11 = icmp eq i8* %10, null
  br i1 %11, label %12, label %16

12:                                               ; preds = %7
  %13 = load i32, i32* @errno, align 4
  %14 = call i32 @strerror(i32 %13)
  %15 = call i32 @FATAL(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %14)
  br label %16

16:                                               ; preds = %12, %7
  %17 = load i8*, i8** %3, align 8
  store i8* %17, i8** %1, align 8
  br label %49

18:                                               ; preds = %0
  %19 = call i8* (...) @get_home()
  store i8* %19, i8** %2, align 8
  %20 = load i8*, i8** %2, align 8
  %21 = call i8* @realpath(i8* %20, i32* null)
  store i8* %21, i8** %3, align 8
  %22 = load i8*, i8** %2, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %24, label %27

24:                                               ; preds = %18
  %25 = load i8*, i8** %2, align 8
  %26 = call i32 @free(i8* %25)
  br label %27

27:                                               ; preds = %24, %18
  %28 = load i8*, i8** %3, align 8
  %29 = call i32* @fopen(i8* %28, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32* %29, i32** %4, align 8
  %30 = icmp eq i32* %29, null
  br i1 %30, label %31, label %44

31:                                               ; preds = %27
  %32 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @conf, i32 0, i32 1), align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %44

34:                                               ; preds = %31
  %35 = call i8* (...) @get_global_config()
  store i8* %35, i8** %2, align 8
  %36 = load i8*, i8** %2, align 8
  %37 = call i8* @realpath(i8* %36, i32* null)
  store i8* %37, i8** %3, align 8
  %38 = load i8*, i8** %2, align 8
  %39 = icmp ne i8* %38, null
  br i1 %39, label %40, label %43

40:                                               ; preds = %34
  %41 = load i8*, i8** %2, align 8
  %42 = call i32 @free(i8* %41)
  br label %43

43:                                               ; preds = %40, %34
  br label %47

44:                                               ; preds = %31, %27
  %45 = load i32*, i32** %4, align 8
  %46 = call i32 @fclose(i32* %45)
  br label %47

47:                                               ; preds = %44, %43
  %48 = load i8*, i8** %3, align 8
  store i8* %48, i8** %1, align 8
  br label %49

49:                                               ; preds = %47, %16
  %50 = load i8*, i8** %1, align 8
  ret i8* %50
}

declare dso_local i8* @realpath(i8*, i32*) #1

declare dso_local i32 @FATAL(i8*, i32) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i8* @get_home(...) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i8* @get_global_config(...) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
