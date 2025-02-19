; ModuleID = '/home/carl/AnghaBench/kphp-kdb/common/extr_server-functions.c_change_user_group.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/common/extr_server-functions.c_change_user_group.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.passwd = type { i32, i64 }
%struct.group = type { i64 }

@DEFAULT_ENGINE_USER = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [56 x i8] c"change_user_group: can't find the user %s to switch to\0A\00", align 1
@.str.1 = private unnamed_addr constant [66 x i8] c"change_user_group: failed to clear supplementary groups list: %m\0A\00", align 1
@.str.2 = private unnamed_addr constant [57 x i8] c"change_user_group: can't find the group %s to switch to\0A\00", align 1
@.str.3 = private unnamed_addr constant [43 x i8] c"change_user_group: setgid (%d) failed. %m\0A\00", align 1
@.str.4 = private unnamed_addr constant [57 x i8] c"change_user_group: failed to assume identity of user %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @change_user_group(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.passwd*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.group*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = call i64 (...) @getuid()
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %2
  %12 = call i64 (...) @geteuid()
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %72

14:                                               ; preds = %11, %2
  %15 = load i8*, i8** %4, align 8
  %16 = icmp eq i8* %15, null
  br i1 %16, label %22, label %17

17:                                               ; preds = %14
  %18 = load i8*, i8** %4, align 8
  %19 = load i8, i8* %18, align 1
  %20 = sext i8 %19 to i32
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %17, %14
  %23 = load i8*, i8** @DEFAULT_ENGINE_USER, align 8
  store i8* %23, i8** %4, align 8
  br label %24

24:                                               ; preds = %22, %17
  %25 = load i8*, i8** %4, align 8
  %26 = call %struct.passwd* @getpwnam(i8* %25)
  store %struct.passwd* %26, %struct.passwd** %6, align 8
  %27 = icmp eq %struct.passwd* %26, null
  br i1 %27, label %28, label %31

28:                                               ; preds = %24
  %29 = load i8*, i8** %4, align 8
  %30 = call i32 (i8*, ...) @kprintf(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i8* %29)
  store i32 -1, i32* %3, align 4
  br label %73

31:                                               ; preds = %24
  %32 = load %struct.passwd*, %struct.passwd** %6, align 8
  %33 = getelementptr inbounds %struct.passwd, %struct.passwd* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  store i64 %34, i64* %7, align 8
  %35 = call i64 @setgroups(i32 1, i64* %7)
  %36 = icmp slt i64 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %31
  %38 = call i32 (i8*, ...) @kprintf(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %73

39:                                               ; preds = %31
  %40 = load i8*, i8** %5, align 8
  %41 = icmp ne i8* %40, null
  br i1 %41, label %42, label %54

42:                                               ; preds = %39
  %43 = load i8*, i8** %5, align 8
  %44 = call %struct.group* @getgrnam(i8* %43)
  store %struct.group* %44, %struct.group** %8, align 8
  %45 = load %struct.group*, %struct.group** %8, align 8
  %46 = icmp eq %struct.group* %45, null
  br i1 %46, label %47, label %50

47:                                               ; preds = %42
  %48 = load i8*, i8** %5, align 8
  %49 = call i32 (i8*, ...) @kprintf(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.2, i64 0, i64 0), i8* %48)
  store i32 -1, i32* %3, align 4
  br label %73

50:                                               ; preds = %42
  %51 = load %struct.group*, %struct.group** %8, align 8
  %52 = getelementptr inbounds %struct.group, %struct.group* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  store i64 %53, i64* %7, align 8
  br label %54

54:                                               ; preds = %50, %39
  %55 = load i64, i64* %7, align 8
  %56 = call i64 @setgid(i64 %55)
  %57 = icmp slt i64 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %54
  %59 = load i64, i64* %7, align 8
  %60 = trunc i64 %59 to i32
  %61 = call i32 (i8*, ...) @kprintf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0), i32 %60)
  store i32 -1, i32* %3, align 4
  br label %73

62:                                               ; preds = %54
  %63 = load %struct.passwd*, %struct.passwd** %6, align 8
  %64 = getelementptr inbounds %struct.passwd, %struct.passwd* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = call i64 @setuid(i32 %65)
  %67 = icmp slt i64 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %62
  %69 = load i8*, i8** %4, align 8
  %70 = call i32 (i8*, ...) @kprintf(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.4, i64 0, i64 0), i8* %69)
  store i32 -1, i32* %3, align 4
  br label %73

71:                                               ; preds = %62
  br label %72

72:                                               ; preds = %71, %11
  store i32 0, i32* %3, align 4
  br label %73

73:                                               ; preds = %72, %68, %58, %47, %37, %28
  %74 = load i32, i32* %3, align 4
  ret i32 %74
}

declare dso_local i64 @getuid(...) #1

declare dso_local i64 @geteuid(...) #1

declare dso_local %struct.passwd* @getpwnam(i8*) #1

declare dso_local i32 @kprintf(i8*, ...) #1

declare dso_local i64 @setgroups(i32, i64*) #1

declare dso_local %struct.group* @getgrnam(i8*) #1

declare dso_local i64 @setgid(i64) #1

declare dso_local i64 @setuid(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
