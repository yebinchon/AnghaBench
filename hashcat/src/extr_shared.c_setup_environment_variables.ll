; ModuleID = '/home/carl/AnghaBench/hashcat/src/extr_shared.c_setup_environment_variables.c'
source_filename = "/home/carl/AnghaBench/hashcat/src/extr_shared.c_setup_environment_variables.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8* }

@.str = private unnamed_addr constant [8 x i8] c"COMPUTE\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"DISPLAY=%s\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"DISPLAY\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"DISPLAY=:0\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"TMPDIR\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"TMPDIR=%s\00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c"CL_CONFIG_USE_VECTORIZER\00", align 1
@.str.7 = private unnamed_addr constant [31 x i8] c"CL_CONFIG_USE_VECTORIZER=False\00", align 1
@CW_SYNC_WINENV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @setup_environment_variables(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  %6 = call i8* @getenv(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  store i8* %6, i8** %3, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = icmp ne i8* %7, null
  br i1 %8, label %9, label %16

9:                                                ; preds = %1
  %10 = load i8*, i8** %3, align 8
  %11 = call i32 @hc_asprintf(i8** %4, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8* %10)
  %12 = load i8*, i8** %4, align 8
  %13 = call i32 @putenv(i8* %12)
  %14 = load i8*, i8** %4, align 8
  %15 = call i32 @free(i8* %14)
  br label %22

16:                                               ; preds = %1
  %17 = call i8* @getenv(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %18 = icmp eq i8* %17, null
  br i1 %18, label %19, label %21

19:                                               ; preds = %16
  %20 = call i32 @putenv(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  br label %21

21:                                               ; preds = %19, %16
  br label %22

22:                                               ; preds = %21, %9
  %23 = call i8* @getenv(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  %24 = icmp eq i8* %23, null
  br i1 %24, label %25, label %32

25:                                               ; preds = %22
  store i8* null, i8** %5, align 8
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i8*, i8** %27, align 8
  %29 = call i32 @hc_asprintf(i8** %5, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i8* %28)
  %30 = load i8*, i8** %5, align 8
  %31 = call i32 @putenv(i8* %30)
  br label %32

32:                                               ; preds = %25, %22
  %33 = call i8* @getenv(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0))
  %34 = icmp eq i8* %33, null
  br i1 %34, label %35, label %37

35:                                               ; preds = %32
  %36 = call i32 @putenv(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.7, i64 0, i64 0))
  br label %37

37:                                               ; preds = %35, %32
  ret void
}

declare dso_local i8* @getenv(i8*) #1

declare dso_local i32 @hc_asprintf(i8**, i8*, i8*) #1

declare dso_local i32 @putenv(i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
