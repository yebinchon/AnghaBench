; ModuleID = '/home/carl/AnghaBench/kphp-kdb/common/extr_server-functions.c_change_user.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/common/extr_server-functions.c_change_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.passwd = type { i32, i32 }

@DEFAULT_ENGINE_USER = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [37 x i8] c"can't find the user %s to switch to\0A\00", align 1
@.str.1 = private unnamed_addr constant [47 x i8] c"failed to clear supplementary groups list: %m\0A\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"failed to load groups of user %s: %m\0A\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"failed to assume identity of user %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @change_user(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.passwd*, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %6 = call i64 (...) @getuid()
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %1
  %9 = call i64 (...) @geteuid()
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %11, label %60

11:                                               ; preds = %8, %1
  %12 = load i8*, i8** %3, align 8
  %13 = icmp eq i8* %12, null
  br i1 %13, label %19, label %14

14:                                               ; preds = %11
  %15 = load i8*, i8** %3, align 8
  %16 = load i8, i8* %15, align 1
  %17 = sext i8 %16 to i32
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %14, %11
  %20 = load i8*, i8** @DEFAULT_ENGINE_USER, align 8
  store i8* %20, i8** %3, align 8
  br label %21

21:                                               ; preds = %19, %14
  %22 = load i8*, i8** %3, align 8
  %23 = call %struct.passwd* @getpwnam(i8* %22)
  store %struct.passwd* %23, %struct.passwd** %4, align 8
  %24 = icmp eq %struct.passwd* %23, null
  br i1 %24, label %25, label %28

25:                                               ; preds = %21
  %26 = load i8*, i8** %3, align 8
  %27 = call i32 (i8*, ...) @kprintf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i8* %26)
  store i32 -1, i32* %2, align 4
  br label %61

28:                                               ; preds = %21
  %29 = load %struct.passwd*, %struct.passwd** %4, align 8
  %30 = getelementptr inbounds %struct.passwd, %struct.passwd* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %5, align 4
  %32 = call i64 @setgroups(i32 1, i32* %5)
  %33 = icmp slt i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %28
  %35 = call i32 (i8*, ...) @kprintf(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %61

36:                                               ; preds = %28
  %37 = load i8*, i8** %3, align 8
  %38 = load i32, i32* %5, align 4
  %39 = call i64 @initgroups(i8* %37, i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %36
  %42 = load i8*, i8** %3, align 8
  %43 = call i32 (i8*, ...) @kprintf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i8* %42)
  store i32 -1, i32* %2, align 4
  br label %61

44:                                               ; preds = %36
  %45 = load %struct.passwd*, %struct.passwd** %4, align 8
  %46 = getelementptr inbounds %struct.passwd, %struct.passwd* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i64 @setgid(i32 %47)
  %49 = icmp slt i64 %48, 0
  br i1 %49, label %56, label %50

50:                                               ; preds = %44
  %51 = load %struct.passwd*, %struct.passwd** %4, align 8
  %52 = getelementptr inbounds %struct.passwd, %struct.passwd* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i64 @setuid(i32 %53)
  %55 = icmp slt i64 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %50, %44
  %57 = load i8*, i8** %3, align 8
  %58 = call i32 (i8*, ...) @kprintf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), i8* %57)
  store i32 -1, i32* %2, align 4
  br label %61

59:                                               ; preds = %50
  br label %60

60:                                               ; preds = %59, %8
  store i32 0, i32* %2, align 4
  br label %61

61:                                               ; preds = %60, %56, %41, %34, %25
  %62 = load i32, i32* %2, align 4
  ret i32 %62
}

declare dso_local i64 @getuid(...) #1

declare dso_local i64 @geteuid(...) #1

declare dso_local %struct.passwd* @getpwnam(i8*) #1

declare dso_local i32 @kprintf(i8*, ...) #1

declare dso_local i64 @setgroups(i32, i32*) #1

declare dso_local i64 @initgroups(i8*, i32) #1

declare dso_local i64 @setgid(i32) #1

declare dso_local i64 @setuid(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
