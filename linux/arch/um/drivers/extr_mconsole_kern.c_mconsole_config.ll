; ModuleID = '/home/carl/AnghaBench/linux/arch/um/drivers/extr_mconsole_kern.c_mconsole_config.c'
source_filename = "/home/carl/AnghaBench/linux/arch/um/drivers/extr_mconsole_kern.c_mconsole_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mc_request = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8* }
%struct.mc_device = type { i8*, i32 (i8*, i8**)*, i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"config\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"Bad configuration option\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mconsole_config(%struct.mc_request* %0) #0 {
  %2 = alloca %struct.mc_request*, align 8
  %3 = alloca %struct.mc_device*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store %struct.mc_request* %0, %struct.mc_request** %2, align 8
  %8 = load %struct.mc_request*, %struct.mc_request** %2, align 8
  %9 = getelementptr inbounds %struct.mc_request, %struct.mc_request* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i8*, i8** %10, align 8
  store i8* %11, i8** %4, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %6, align 8
  %12 = call i64 @strlen(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %13 = load i8*, i8** %4, align 8
  %14 = getelementptr inbounds i8, i8* %13, i64 %12
  store i8* %14, i8** %4, align 8
  %15 = load i8*, i8** %4, align 8
  %16 = call i8* @skip_spaces(i8* %15)
  store i8* %16, i8** %4, align 8
  %17 = load i8*, i8** %4, align 8
  %18 = call %struct.mc_device* @mconsole_find_dev(i8* %17)
  store %struct.mc_device* %18, %struct.mc_device** %3, align 8
  %19 = load %struct.mc_device*, %struct.mc_device** %3, align 8
  %20 = icmp eq %struct.mc_device* %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %1
  %22 = load %struct.mc_request*, %struct.mc_request** %2, align 8
  %23 = call i32 @mconsole_reply(%struct.mc_request* %22, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 1, i32 0)
  br label %69

24:                                               ; preds = %1
  %25 = load i8*, i8** %4, align 8
  %26 = load %struct.mc_device*, %struct.mc_device** %3, align 8
  %27 = getelementptr inbounds %struct.mc_device, %struct.mc_device* %26, i32 0, i32 0
  %28 = load i8*, i8** %27, align 8
  %29 = call i64 @strlen(i8* %28)
  %30 = getelementptr inbounds i8, i8* %25, i64 %29
  store i8* %30, i8** %5, align 8
  %31 = load i8*, i8** %5, align 8
  store i8* %31, i8** %4, align 8
  br label %32

32:                                               ; preds = %44, %24
  %33 = load i8*, i8** %4, align 8
  %34 = load i8, i8* %33, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp ne i32 %35, 61
  br i1 %36, label %37, label %42

37:                                               ; preds = %32
  %38 = load i8*, i8** %4, align 8
  %39 = load i8, i8* %38, align 1
  %40 = sext i8 %39 to i32
  %41 = icmp ne i32 %40, 0
  br label %42

42:                                               ; preds = %37, %32
  %43 = phi i1 [ false, %32 ], [ %41, %37 ]
  br i1 %43, label %44, label %47

44:                                               ; preds = %42
  %45 = load i8*, i8** %4, align 8
  %46 = getelementptr inbounds i8, i8* %45, i32 1
  store i8* %46, i8** %4, align 8
  br label %32

47:                                               ; preds = %42
  %48 = load i8*, i8** %4, align 8
  %49 = load i8, i8* %48, align 1
  %50 = sext i8 %49 to i32
  %51 = icmp eq i32 %50, 61
  br i1 %51, label %52, label %62

52:                                               ; preds = %47
  %53 = load %struct.mc_device*, %struct.mc_device** %3, align 8
  %54 = getelementptr inbounds %struct.mc_device, %struct.mc_device* %53, i32 0, i32 1
  %55 = load i32 (i8*, i8**)*, i32 (i8*, i8**)** %54, align 8
  %56 = load i8*, i8** %5, align 8
  %57 = call i32 %55(i8* %56, i8** %6)
  store i32 %57, i32* %7, align 4
  %58 = load %struct.mc_request*, %struct.mc_request** %2, align 8
  %59 = load i8*, i8** %6, align 8
  %60 = load i32, i32* %7, align 4
  %61 = call i32 @mconsole_reply(%struct.mc_request* %58, i8* %59, i32 %60, i32 0)
  br label %69

62:                                               ; preds = %47
  %63 = load %struct.mc_device*, %struct.mc_device** %3, align 8
  %64 = getelementptr inbounds %struct.mc_device, %struct.mc_device* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.mc_request*, %struct.mc_request** %2, align 8
  %67 = load i8*, i8** %5, align 8
  %68 = call i32 @mconsole_get_config(i32 %65, %struct.mc_request* %66, i8* %67)
  br label %69

69:                                               ; preds = %21, %62, %52
  ret void
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i8* @skip_spaces(i8*) #1

declare dso_local %struct.mc_device* @mconsole_find_dev(i8*) #1

declare dso_local i32 @mconsole_reply(%struct.mc_request*, i8*, i32, i32) #1

declare dso_local i32 @mconsole_get_config(i32, %struct.mc_request*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
