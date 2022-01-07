; ModuleID = '/home/carl/AnghaBench/lede/package/boot/rbcfg/src/extr_main.c_usage.c'
source_filename = "/home/carl/AnghaBench/lede/package/boot/rbcfg/src/extr_main.c_usage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rbcfg_env = type { i8*, i8*, i32, %struct.rbcfg_value* }
%struct.rbcfg_value = type { i8*, i8* }
%struct.rbcfg_command = type { i8*, i8*, i32, %struct.rbcfg_value* }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Usage: %s <command>\0A\00", align 1
@rbcfg_name = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [12 x i8] c"\0ACommands:\0A\00", align 1
@rbcfg_commands = common dso_local global %struct.rbcfg_env* null, align 8
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"\0AConfiguration options:\0A\00", align 1
@rbcfg_envs = common dso_local global %struct.rbcfg_env* null, align 8
@.str.5 = private unnamed_addr constant [6 x i8] c"\0A%s:\0A\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"\09%-12s %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @usage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usage() #0 {
  %1 = alloca [255 x i8], align 16
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.rbcfg_command*, align 8
  %5 = alloca %struct.rbcfg_env*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.rbcfg_value*, align 8
  %8 = load i32, i32* @stderr, align 4
  %9 = load i8*, i8** @rbcfg_name, align 8
  %10 = call i32 (i32, i8*, ...) @fprintf(i32 %8, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i8* %9)
  %11 = load i32, i32* @stderr, align 4
  %12 = call i32 (i32, i8*, ...) @fprintf(i32 %11, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %13

13:                                               ; preds = %35, %0
  %14 = load i32, i32* %3, align 4
  %15 = load %struct.rbcfg_env*, %struct.rbcfg_env** @rbcfg_commands, align 8
  %16 = call i32 @ARRAY_SIZE(%struct.rbcfg_env* %15)
  %17 = icmp slt i32 %14, %16
  br i1 %17, label %18, label %38

18:                                               ; preds = %13
  %19 = load %struct.rbcfg_env*, %struct.rbcfg_env** @rbcfg_commands, align 8
  %20 = load i32, i32* %3, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.rbcfg_env, %struct.rbcfg_env* %19, i64 %21
  %23 = bitcast %struct.rbcfg_env* %22 to %struct.rbcfg_command*
  store %struct.rbcfg_command* %23, %struct.rbcfg_command** %4, align 8
  %24 = getelementptr inbounds [255 x i8], [255 x i8]* %1, i64 0, i64 0
  %25 = load %struct.rbcfg_command*, %struct.rbcfg_command** %4, align 8
  %26 = getelementptr inbounds %struct.rbcfg_command, %struct.rbcfg_command* %25, i32 0, i32 0
  %27 = load i8*, i8** %26, align 8
  %28 = call i32 @snprintf(i8* %24, i32 255, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* %27)
  store i32 %28, i32* %2, align 4
  %29 = load i32, i32* %2, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [255 x i8], [255 x i8]* %1, i64 0, i64 %30
  store i8 0, i8* %31, align 1
  %32 = load i32, i32* @stderr, align 4
  %33 = getelementptr inbounds [255 x i8], [255 x i8]* %1, i64 0, i64 0
  %34 = call i32 (i32, i8*, ...) @fprintf(i32 %32, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* %33)
  br label %35

35:                                               ; preds = %18
  %36 = load i32, i32* %3, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %3, align 4
  br label %13

38:                                               ; preds = %13
  %39 = load i32, i32* @stderr, align 4
  %40 = call i32 (i32, i8*, ...) @fprintf(i32 %39, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %41

41:                                               ; preds = %81, %38
  %42 = load i32, i32* %3, align 4
  %43 = load %struct.rbcfg_env*, %struct.rbcfg_env** @rbcfg_envs, align 8
  %44 = call i32 @ARRAY_SIZE(%struct.rbcfg_env* %43)
  %45 = icmp slt i32 %42, %44
  br i1 %45, label %46, label %84

46:                                               ; preds = %41
  %47 = load %struct.rbcfg_env*, %struct.rbcfg_env** @rbcfg_envs, align 8
  %48 = load i32, i32* %3, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.rbcfg_env, %struct.rbcfg_env* %47, i64 %49
  store %struct.rbcfg_env* %50, %struct.rbcfg_env** %5, align 8
  %51 = load i32, i32* @stderr, align 4
  %52 = load %struct.rbcfg_env*, %struct.rbcfg_env** %5, align 8
  %53 = getelementptr inbounds %struct.rbcfg_env, %struct.rbcfg_env* %52, i32 0, i32 1
  %54 = load i8*, i8** %53, align 8
  %55 = call i32 (i32, i8*, ...) @fprintf(i32 %51, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i8* %54)
  store i32 0, i32* %6, align 4
  br label %56

56:                                               ; preds = %77, %46
  %57 = load i32, i32* %6, align 4
  %58 = load %struct.rbcfg_env*, %struct.rbcfg_env** %5, align 8
  %59 = getelementptr inbounds %struct.rbcfg_env, %struct.rbcfg_env* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = icmp slt i32 %57, %60
  br i1 %61, label %62, label %80

62:                                               ; preds = %56
  %63 = load %struct.rbcfg_env*, %struct.rbcfg_env** %5, align 8
  %64 = getelementptr inbounds %struct.rbcfg_env, %struct.rbcfg_env* %63, i32 0, i32 3
  %65 = load %struct.rbcfg_value*, %struct.rbcfg_value** %64, align 8
  %66 = load i32, i32* %6, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.rbcfg_value, %struct.rbcfg_value* %65, i64 %67
  store %struct.rbcfg_value* %68, %struct.rbcfg_value** %7, align 8
  %69 = load i32, i32* @stderr, align 4
  %70 = load %struct.rbcfg_value*, %struct.rbcfg_value** %7, align 8
  %71 = getelementptr inbounds %struct.rbcfg_value, %struct.rbcfg_value* %70, i32 0, i32 0
  %72 = load i8*, i8** %71, align 8
  %73 = load %struct.rbcfg_value*, %struct.rbcfg_value** %7, align 8
  %74 = getelementptr inbounds %struct.rbcfg_value, %struct.rbcfg_value* %73, i32 0, i32 1
  %75 = load i8*, i8** %74, align 8
  %76 = call i32 (i32, i8*, ...) @fprintf(i32 %69, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0), i8* %72, i8* %75)
  br label %77

77:                                               ; preds = %62
  %78 = load i32, i32* %6, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %6, align 4
  br label %56

80:                                               ; preds = %56
  br label %81

81:                                               ; preds = %80
  %82 = load i32, i32* %3, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %3, align 4
  br label %41

84:                                               ; preds = %41
  %85 = load i32, i32* @stderr, align 4
  %86 = call i32 (i32, i8*, ...) @fprintf(i32 %85, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  ret void
}

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @ARRAY_SIZE(%struct.rbcfg_env*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
