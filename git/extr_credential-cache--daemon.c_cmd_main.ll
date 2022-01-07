; ModuleID = '/home/carl/AnghaBench/git/extr_credential-cache--daemon.c_cmd_main.c'
source_filename = "/home/carl/AnghaBench/git/extr_credential-cache--daemon.c_cmd_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tempfile = type { i32 }
%struct.option = type { i32 }

@cmd_main.usage = internal global [2 x i8*] [i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i32 0, i32 0), i8* null], align 16
@.str = private unnamed_addr constant [50 x i8] c"git-credential-cache--daemon [opts] <socket_path>\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"print debugging messages to stderr\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"credentialcache.ignoresighup\00", align 1
@.str.4 = private unnamed_addr constant [42 x i8] c"socket directory must be an absolute path\00", align 1
@SIGHUP = common dso_local global i32 0, align 4
@SIG_IGN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cmd_main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca %struct.tempfile*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [2 x %struct.option], align 4
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %10 = getelementptr inbounds [2 x %struct.option], [2 x %struct.option]* %9, i64 0, i64 0
  %11 = call i32 @N_(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  %12 = call i32 @OPT_BOOL(i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32* %8, i32 %11)
  %13 = getelementptr inbounds %struct.option, %struct.option* %10, i32 0, i32 0
  store i32 %12, i32* %13, align 4
  %14 = getelementptr inbounds %struct.option, %struct.option* %10, i64 1
  %15 = call i32 (...) @OPT_END()
  %16 = getelementptr inbounds %struct.option, %struct.option* %14, i32 0, i32 0
  store i32 %15, i32* %16, align 4
  %17 = call i32 @git_config_get_bool(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i32* %7)
  %18 = load i32, i32* %3, align 4
  %19 = load i8**, i8*** %4, align 8
  %20 = getelementptr inbounds [2 x %struct.option], [2 x %struct.option]* %9, i64 0, i64 0
  %21 = call i32 @parse_options(i32 %18, i8** %19, i32* null, %struct.option* %20, i8** getelementptr inbounds ([2 x i8*], [2 x i8*]* @cmd_main.usage, i64 0, i64 0), i32 0)
  store i32 %21, i32* %3, align 4
  %22 = load i8**, i8*** %4, align 8
  %23 = getelementptr inbounds i8*, i8** %22, i64 0
  %24 = load i8*, i8** %23, align 8
  store i8* %24, i8** %6, align 8
  %25 = load i8*, i8** %6, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %2
  %28 = getelementptr inbounds [2 x %struct.option], [2 x %struct.option]* %9, i64 0, i64 0
  %29 = call i32 @usage_with_options(i8** getelementptr inbounds ([2 x i8*], [2 x i8*]* @cmd_main.usage, i64 0, i64 0), %struct.option* %28)
  br label %30

30:                                               ; preds = %27, %2
  %31 = load i8*, i8** %6, align 8
  %32 = call i32 @is_absolute_path(i8* %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %36, label %34

34:                                               ; preds = %30
  %35 = call i32 @die(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i64 0, i64 0))
  br label %36

36:                                               ; preds = %34, %30
  %37 = load i8*, i8** %6, align 8
  %38 = call i32 @init_socket_directory(i8* %37)
  %39 = load i8*, i8** %6, align 8
  %40 = call %struct.tempfile* @register_tempfile(i8* %39)
  store %struct.tempfile* %40, %struct.tempfile** %5, align 8
  %41 = load i32, i32* %7, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %36
  %44 = load i32, i32* @SIGHUP, align 4
  %45 = load i32, i32* @SIG_IGN, align 4
  %46 = call i32 @signal(i32 %44, i32 %45)
  br label %47

47:                                               ; preds = %43, %36
  %48 = load i8*, i8** %6, align 8
  %49 = load i32, i32* %8, align 4
  %50 = call i32 @serve_cache(i8* %48, i32 %49)
  %51 = call i32 @delete_tempfile(%struct.tempfile** %5)
  ret i32 0
}

declare dso_local i32 @OPT_BOOL(i32, i8*, i32*, i32) #1

declare dso_local i32 @N_(i8*) #1

declare dso_local i32 @OPT_END(...) #1

declare dso_local i32 @git_config_get_bool(i8*, i32*) #1

declare dso_local i32 @parse_options(i32, i8**, i32*, %struct.option*, i8**, i32) #1

declare dso_local i32 @usage_with_options(i8**, %struct.option*) #1

declare dso_local i32 @is_absolute_path(i8*) #1

declare dso_local i32 @die(i8*) #1

declare dso_local i32 @init_socket_directory(i8*) #1

declare dso_local %struct.tempfile* @register_tempfile(i8*) #1

declare dso_local i32 @signal(i32, i32) #1

declare dso_local i32 @serve_cache(i8*, i32) #1

declare dso_local i32 @delete_tempfile(%struct.tempfile**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
