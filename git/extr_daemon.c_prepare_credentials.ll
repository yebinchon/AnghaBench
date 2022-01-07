; ModuleID = '/home/carl/AnghaBench/git/extr_daemon.c_prepare_credentials.c'
source_filename = "/home/carl/AnghaBench/git/extr_daemon.c_prepare_credentials.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.credentials = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.group = type { i32 }

@prepare_credentials.c = internal global %struct.credentials zeroinitializer, align 8
@.str = private unnamed_addr constant [20 x i8] c"user not found - %s\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"group not found - %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.credentials* (i8*, i8*)* @prepare_credentials to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.credentials* @prepare_credentials(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.group*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = call %struct.TYPE_2__* @getpwnam(i8* %6)
  store %struct.TYPE_2__* %7, %struct.TYPE_2__** getelementptr inbounds (%struct.credentials, %struct.credentials* @prepare_credentials.c, i32 0, i32 1), align 8
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** getelementptr inbounds (%struct.credentials, %struct.credentials* @prepare_credentials.c, i32 0, i32 1), align 8
  %9 = icmp ne %struct.TYPE_2__* %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %2
  %11 = load i8*, i8** %3, align 8
  %12 = call i32 @die(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i8* %11)
  br label %13

13:                                               ; preds = %10, %2
  %14 = load i8*, i8** %4, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %20, label %16

16:                                               ; preds = %13
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** getelementptr inbounds (%struct.credentials, %struct.credentials* @prepare_credentials.c, i32 0, i32 1), align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* getelementptr inbounds (%struct.credentials, %struct.credentials* @prepare_credentials.c, i32 0, i32 0), align 8
  br label %32

20:                                               ; preds = %13
  %21 = load i8*, i8** %4, align 8
  %22 = call %struct.group* @getgrnam(i8* %21)
  store %struct.group* %22, %struct.group** %5, align 8
  %23 = load %struct.group*, %struct.group** %5, align 8
  %24 = icmp ne %struct.group* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %20
  %26 = load i8*, i8** %4, align 8
  %27 = call i32 @die(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i8* %26)
  br label %28

28:                                               ; preds = %25, %20
  %29 = load %struct.group*, %struct.group** %5, align 8
  %30 = getelementptr inbounds %struct.group, %struct.group* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* getelementptr inbounds (%struct.credentials, %struct.credentials* @prepare_credentials.c, i32 0, i32 0), align 8
  br label %32

32:                                               ; preds = %28, %16
  ret %struct.credentials* @prepare_credentials.c
}

declare dso_local %struct.TYPE_2__* @getpwnam(i8*) #1

declare dso_local i32 @die(i8*, i8*) #1

declare dso_local %struct.group* @getgrnam(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
