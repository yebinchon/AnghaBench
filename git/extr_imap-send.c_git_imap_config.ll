; ModuleID = '/home/carl/AnghaBench/git/extr_imap-send.c_git_imap_config.c'
source_filename = "/home/carl/AnghaBench/git/extr_imap-send.c_git_imap_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [15 x i8] c"imap.sslverify\00", align 1
@server = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"imap.preformattedhtml\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"imap.folder\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"imap.host\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"Missing value for 'imap.host'\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"imap:\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"imaps:\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"//\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"imap.user\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"imap.pass\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"imap.port\00", align 1
@.str.11 = private unnamed_addr constant [12 x i8] c"imap.tunnel\00", align 1
@.str.12 = private unnamed_addr constant [16 x i8] c"imap.authmethod\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @git_imap_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @git_imap_config() #0 {
  %1 = alloca i8*, align 8
  store i8* null, i8** %1, align 8
  %2 = call i32 @git_config_get_bool(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 9))
  %3 = call i32 @git_config_get_bool(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 8))
  %4 = call i32 @git_config_get_string(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 7))
  %5 = call i32 @git_config_get_value(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i8** %1)
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %38, label %7

7:                                                ; preds = %0
  %8 = load i8*, i8** %1, align 8
  %9 = icmp ne i8* %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %7
  %11 = call i32 @git_die_config(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0))
  br label %37

12:                                               ; preds = %7
  %13 = load i8*, i8** %1, align 8
  %14 = call i64 @starts_with(i8* %13, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %12
  %17 = load i8*, i8** %1, align 8
  %18 = getelementptr inbounds i8, i8* %17, i64 5
  store i8* %18, i8** %1, align 8
  br label %27

19:                                               ; preds = %12
  %20 = load i8*, i8** %1, align 8
  %21 = call i64 @starts_with(i8* %20, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0))
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %19
  %24 = load i8*, i8** %1, align 8
  %25 = getelementptr inbounds i8, i8* %24, i64 6
  store i8* %25, i8** %1, align 8
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 0), align 4
  br label %26

26:                                               ; preds = %23, %19
  br label %27

27:                                               ; preds = %26, %16
  %28 = load i8*, i8** %1, align 8
  %29 = call i64 @starts_with(i8* %28, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0))
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %27
  %32 = load i8*, i8** %1, align 8
  %33 = getelementptr inbounds i8, i8* %32, i64 2
  store i8* %33, i8** %1, align 8
  br label %34

34:                                               ; preds = %31, %27
  %35 = load i8*, i8** %1, align 8
  %36 = call i32 @xstrdup(i8* %35)
  store i32 %36, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 6), align 4
  br label %37

37:                                               ; preds = %34, %10
  br label %38

38:                                               ; preds = %37, %0
  %39 = call i32 @git_config_get_string(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0), i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 5))
  %40 = call i32 @git_config_get_string(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0), i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 4))
  %41 = call i32 @git_config_get_int(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0), i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 3))
  %42 = call i32 @git_config_get_string(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i64 0, i64 0), i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 2))
  %43 = call i32 @git_config_get_string(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.12, i64 0, i64 0), i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 1))
  ret void
}

declare dso_local i32 @git_config_get_bool(i8*, i32*) #1

declare dso_local i32 @git_config_get_string(i8*, i32*) #1

declare dso_local i32 @git_config_get_value(i8*, i8**) #1

declare dso_local i32 @git_die_config(i8*, i8*) #1

declare dso_local i64 @starts_with(i8*, i8*) #1

declare dso_local i32 @xstrdup(i8*) #1

declare dso_local i32 @git_config_get_int(i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
