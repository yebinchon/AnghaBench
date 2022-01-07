; ModuleID = '/home/carl/AnghaBench/h2o/src/extr_setuidgid.c_main.c'
source_filename = "/home/carl/AnghaBench/h2o/src/extr_setuidgid.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.passwd = type { i32, i32, i32 }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"no command (usage: setuidgid user cmd args...)\0A\00", align 1
@EX_CONFIG = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [17 x i8] c"unknown user:%s\0A\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"getpwnam\00", align 1
@EX_OSERR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [14 x i8] c"setgid failed\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"initgroups failed\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"setuid failed\00", align 1
@.str.6 = private unnamed_addr constant [36 x i8] c"execvp failed to launch file:%s:%s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.passwd*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %7 = load i32, i32* %4, align 4
  %8 = icmp slt i32 %7, 3
  br i1 %8, label %9, label %13

9:                                                ; preds = %2
  %10 = load i32, i32* @stderr, align 4
  %11 = call i32 (i32, i8*, ...) @fprintf(i32 %10, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  %12 = load i32, i32* @EX_CONFIG, align 4
  store i32 %12, i32* %3, align 4
  br label %80

13:                                               ; preds = %2
  %14 = load i32, i32* %4, align 4
  %15 = add nsw i32 %14, -1
  store i32 %15, i32* %4, align 4
  %16 = load i8**, i8*** %5, align 8
  %17 = getelementptr inbounds i8*, i8** %16, i32 1
  store i8** %17, i8*** %5, align 8
  store i64 0, i64* @errno, align 8
  %18 = load i8**, i8*** %5, align 8
  %19 = load i8*, i8** %18, align 8
  %20 = call %struct.passwd* @getpwnam(i8* %19)
  store %struct.passwd* %20, %struct.passwd** %6, align 8
  %21 = icmp eq %struct.passwd* %20, null
  br i1 %21, label %22, label %34

22:                                               ; preds = %13
  %23 = load i64, i64* @errno, align 8
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %22
  %26 = load i32, i32* @stderr, align 4
  %27 = load i8**, i8*** %5, align 8
  %28 = load i8*, i8** %27, align 8
  %29 = call i32 (i32, i8*, ...) @fprintf(i32 %26, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i8* %28)
  %30 = load i32, i32* @EX_CONFIG, align 4
  store i32 %30, i32* %3, align 4
  br label %80

31:                                               ; preds = %22
  %32 = call i32 @perror(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %33 = load i32, i32* @EX_OSERR, align 4
  store i32 %33, i32* %3, align 4
  br label %80

34:                                               ; preds = %13
  %35 = load i32, i32* %4, align 4
  %36 = add nsw i32 %35, -1
  store i32 %36, i32* %4, align 4
  %37 = load i8**, i8*** %5, align 8
  %38 = getelementptr inbounds i8*, i8** %37, i32 1
  store i8** %38, i8*** %5, align 8
  %39 = load %struct.passwd*, %struct.passwd** %6, align 8
  %40 = getelementptr inbounds %struct.passwd, %struct.passwd* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i64 @setgid(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %34
  %45 = call i32 @perror(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  %46 = load i32, i32* @EX_OSERR, align 4
  store i32 %46, i32* %3, align 4
  br label %80

47:                                               ; preds = %34
  %48 = load %struct.passwd*, %struct.passwd** %6, align 8
  %49 = getelementptr inbounds %struct.passwd, %struct.passwd* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.passwd*, %struct.passwd** %6, align 8
  %52 = getelementptr inbounds %struct.passwd, %struct.passwd* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call i64 @initgroups(i32 %50, i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %47
  %57 = call i32 @perror(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0))
  %58 = load i32, i32* @EX_OSERR, align 4
  store i32 %58, i32* %3, align 4
  br label %80

59:                                               ; preds = %47
  %60 = load %struct.passwd*, %struct.passwd** %6, align 8
  %61 = getelementptr inbounds %struct.passwd, %struct.passwd* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i64 @setuid(i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %59
  %66 = call i32 @perror(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0))
  %67 = load i32, i32* @EX_OSERR, align 4
  store i32 %67, i32* %3, align 4
  br label %80

68:                                               ; preds = %59
  %69 = load i8**, i8*** %5, align 8
  %70 = load i8*, i8** %69, align 8
  %71 = load i8**, i8*** %5, align 8
  %72 = call i32 @execvp(i8* %70, i8** %71)
  %73 = load i32, i32* @stderr, align 4
  %74 = load i8**, i8*** %5, align 8
  %75 = load i8*, i8** %74, align 8
  %76 = load i64, i64* @errno, align 8
  %77 = call i8* @strerror(i64 %76)
  %78 = call i32 (i32, i8*, ...) @fprintf(i32 %73, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i64 0, i64 0), i8* %75, i8* %77)
  %79 = load i32, i32* @EX_OSERR, align 4
  store i32 %79, i32* %3, align 4
  br label %80

80:                                               ; preds = %68, %65, %56, %44, %31, %25, %9
  %81 = load i32, i32* %3, align 4
  ret i32 %81
}

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local %struct.passwd* @getpwnam(i8*) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i64 @setgid(i32) #1

declare dso_local i64 @initgroups(i32, i32) #1

declare dso_local i64 @setuid(i32) #1

declare dso_local i32 @execvp(i8*, i8**) #1

declare dso_local i8* @strerror(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
