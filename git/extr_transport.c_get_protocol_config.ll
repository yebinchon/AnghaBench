; ModuleID = '/home/carl/AnghaBench/git/extr_transport.c_get_protocol_config.c'
source_filename = "/home/carl/AnghaBench/git/extr_transport.c_get_protocol_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [18 x i8] c"protocol.%s.allow\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"protocol.allow\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"http\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"https\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"git\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"ssh\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"file\00", align 1
@PROTOCOL_ALLOW_ALWAYS = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [4 x i8] c"ext\00", align 1
@PROTOCOL_ALLOW_NEVER = common dso_local global i32 0, align 4
@PROTOCOL_ALLOW_USER_ONLY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @get_protocol_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_protocol_config(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = call i8* @xstrfmt(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i8* %8)
  store i8* %9, i8** %4, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = call i32 @git_config_get_string(i8* %10, i8** %5)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %22, label %13

13:                                               ; preds = %1
  %14 = load i8*, i8** %4, align 8
  %15 = load i8*, i8** %5, align 8
  %16 = call i32 @parse_protocol_config(i8* %14, i8* %15)
  store i32 %16, i32* %6, align 4
  %17 = load i8*, i8** %4, align 8
  %18 = call i32 @free(i8* %17)
  %19 = load i8*, i8** %5, align 8
  %20 = call i32 @free(i8* %19)
  %21 = load i32, i32* %6, align 4
  store i32 %21, i32* %2, align 4
  br label %63

22:                                               ; preds = %1
  %23 = load i8*, i8** %4, align 8
  %24 = call i32 @free(i8* %23)
  %25 = call i32 @git_config_get_string(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i8** %5)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %33, label %27

27:                                               ; preds = %22
  %28 = load i8*, i8** %5, align 8
  %29 = call i32 @parse_protocol_config(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i8* %28)
  store i32 %29, i32* %7, align 4
  %30 = load i8*, i8** %5, align 8
  %31 = call i32 @free(i8* %30)
  %32 = load i32, i32* %7, align 4
  store i32 %32, i32* %2, align 4
  br label %63

33:                                               ; preds = %22
  %34 = load i8*, i8** %3, align 8
  %35 = call i32 @strcmp(i8* %34, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %53

37:                                               ; preds = %33
  %38 = load i8*, i8** %3, align 8
  %39 = call i32 @strcmp(i8* %38, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %53

41:                                               ; preds = %37
  %42 = load i8*, i8** %3, align 8
  %43 = call i32 @strcmp(i8* %42, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %53

45:                                               ; preds = %41
  %46 = load i8*, i8** %3, align 8
  %47 = call i32 @strcmp(i8* %46, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %45
  %50 = load i8*, i8** %3, align 8
  %51 = call i32 @strcmp(i8* %50, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %55, label %53

53:                                               ; preds = %49, %45, %41, %37, %33
  %54 = load i32, i32* @PROTOCOL_ALLOW_ALWAYS, align 4
  store i32 %54, i32* %2, align 4
  br label %63

55:                                               ; preds = %49
  %56 = load i8*, i8** %3, align 8
  %57 = call i32 @strcmp(i8* %56, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0))
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %61, label %59

59:                                               ; preds = %55
  %60 = load i32, i32* @PROTOCOL_ALLOW_NEVER, align 4
  store i32 %60, i32* %2, align 4
  br label %63

61:                                               ; preds = %55
  %62 = load i32, i32* @PROTOCOL_ALLOW_USER_ONLY, align 4
  store i32 %62, i32* %2, align 4
  br label %63

63:                                               ; preds = %61, %59, %53, %27, %13
  %64 = load i32, i32* %2, align 4
  ret i32 %64
}

declare dso_local i8* @xstrfmt(i8*, i8*) #1

declare dso_local i32 @git_config_get_string(i8*, i8**) #1

declare dso_local i32 @parse_protocol_config(i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
