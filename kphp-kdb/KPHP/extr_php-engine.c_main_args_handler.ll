; ModuleID = '/home/carl/AnghaBench/kphp-kdb/KPHP/extr_php-engine.c_main_args_handler.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/KPHP/extr_php-engine.c_main_args_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@optarg = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [27 x i8] c"-D option, can't find '='\0A\00", align 1
@http_port = common dso_local global i8* null, align 8
@rpc_port = common dso_local global i8* null, align 8
@rpc_client_host = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [27 x i8] c"-w option, can't find ':'\0A\00", align 1
@rpc_client_port = common dso_local global i8* null, align 8
@workers_n = common dso_local global i8* null, align 8
@MAX_WORKERS = common dso_local global i8* null, align 8
@master_flag = common dso_local global i32 0, align 4
@master_port = common dso_local global i8* null, align 8
@cluster_name = common dso_local global i8* null, align 8
@script_timeout = common dso_local global i32 0, align 4
@MAX_SCRIPT_TIMEOUT = common dso_local global i32 0, align 4
@run_once = common dso_local global i32 0, align 4
@no_sql = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main_args_handler(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  switch i32 %8, label %85 [
    i32 68, label %9
    i32 72, label %25
    i32 114, label %28
    i32 119, label %31
    i32 69, label %45
    i32 102, label %48
    i32 112, label %61
    i32 115, label %64
    i32 84, label %66
    i32 116, label %69
    i32 111, label %83
    i32 113, label %84
  ]

9:                                                ; preds = %1
  %10 = load i8*, i8** @optarg, align 8
  store i8* %10, i8** %4, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = call i8* @strchr(i8* %11, i8 signext 61)
  store i8* %12, i8** %6, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = icmp eq i8* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %9
  %16 = call i32 @vkprintf(i32 -1, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %17 = call i32 (...) @usage()
  store i32 2, i32* %2, align 4
  br label %87

18:                                               ; preds = %9
  %19 = load i8*, i8** %6, align 8
  %20 = getelementptr inbounds i8, i8* %19, i64 1
  store i8* %20, i8** %5, align 8
  %21 = load i8*, i8** %6, align 8
  store i8 0, i8* %21, align 1
  %22 = load i8*, i8** %4, align 8
  %23 = load i8*, i8** %5, align 8
  %24 = call i32 @ini_set(i8* %22, i8* %23)
  br label %86

25:                                               ; preds = %1
  %26 = load i8*, i8** @optarg, align 8
  %27 = call i8* @atoi(i8* %26)
  store i8* %27, i8** @http_port, align 8
  br label %86

28:                                               ; preds = %1
  %29 = load i8*, i8** @optarg, align 8
  %30 = call i8* @atoi(i8* %29)
  store i8* %30, i8** @rpc_port, align 8
  br label %86

31:                                               ; preds = %1
  %32 = load i8*, i8** @optarg, align 8
  store i8* %32, i8** @rpc_client_host, align 8
  %33 = load i8*, i8** @rpc_client_host, align 8
  %34 = call i8* @strrchr(i8* %33, i8 signext 58)
  store i8* %34, i8** %7, align 8
  %35 = load i8*, i8** %7, align 8
  %36 = icmp eq i8* %35, null
  br i1 %36, label %37, label %40

37:                                               ; preds = %31
  %38 = call i32 @vkprintf(i32 -1, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %39 = call i32 (...) @usage()
  store i32 2, i32* %2, align 4
  br label %87

40:                                               ; preds = %31
  %41 = load i8*, i8** %7, align 8
  %42 = getelementptr inbounds i8, i8* %41, i32 1
  store i8* %42, i8** %7, align 8
  store i8 0, i8* %41, align 1
  %43 = load i8*, i8** %7, align 8
  %44 = call i8* @atoi(i8* %43)
  store i8* %44, i8** @rpc_client_port, align 8
  br label %86

45:                                               ; preds = %1
  %46 = load i8*, i8** @optarg, align 8
  %47 = call i32 @read_engine_tag(i8* %46)
  br label %86

48:                                               ; preds = %1
  %49 = load i8*, i8** @optarg, align 8
  %50 = call i8* @atoi(i8* %49)
  store i8* %50, i8** @workers_n, align 8
  %51 = load i8*, i8** @workers_n, align 8
  %52 = icmp uge i8* %51, null
  br i1 %52, label %53, label %60

53:                                               ; preds = %48
  %54 = load i8*, i8** @workers_n, align 8
  %55 = load i8*, i8** @MAX_WORKERS, align 8
  %56 = icmp ugt i8* %54, %55
  br i1 %56, label %57, label %59

57:                                               ; preds = %53
  %58 = load i8*, i8** @MAX_WORKERS, align 8
  store i8* %58, i8** @workers_n, align 8
  br label %59

59:                                               ; preds = %57, %53
  store i32 1, i32* @master_flag, align 4
  br label %60

60:                                               ; preds = %59, %48
  br label %86

61:                                               ; preds = %1
  %62 = load i8*, i8** @optarg, align 8
  %63 = call i8* @atoi(i8* %62)
  store i8* %63, i8** @master_port, align 8
  br label %86

64:                                               ; preds = %1
  %65 = load i8*, i8** @optarg, align 8
  store i8* %65, i8** @cluster_name, align 8
  br label %86

66:                                               ; preds = %1
  %67 = load i8*, i8** @optarg, align 8
  %68 = call i32 @read_tl_config(i8* %67)
  br label %86

69:                                               ; preds = %1
  %70 = load i8*, i8** @optarg, align 8
  %71 = call i8* @atoi(i8* %70)
  %72 = ptrtoint i8* %71 to i32
  store i32 %72, i32* @script_timeout, align 4
  %73 = load i32, i32* @script_timeout, align 4
  %74 = icmp slt i32 %73, 1
  br i1 %74, label %75, label %76

75:                                               ; preds = %69
  store i32 1, i32* @script_timeout, align 4
  br label %76

76:                                               ; preds = %75, %69
  %77 = load i32, i32* @script_timeout, align 4
  %78 = load i32, i32* @MAX_SCRIPT_TIMEOUT, align 4
  %79 = icmp sgt i32 %77, %78
  br i1 %79, label %80, label %82

80:                                               ; preds = %76
  %81 = load i32, i32* @MAX_SCRIPT_TIMEOUT, align 4
  store i32 %81, i32* @script_timeout, align 4
  br label %82

82:                                               ; preds = %80, %76
  br label %86

83:                                               ; preds = %1
  store i32 1, i32* @run_once, align 4
  br label %86

84:                                               ; preds = %1
  store i32 1, i32* @no_sql, align 4
  br label %86

85:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %87

86:                                               ; preds = %84, %83, %82, %66, %64, %61, %60, %45, %40, %28, %25, %18
  store i32 1, i32* %2, align 4
  br label %87

87:                                               ; preds = %86, %85, %37, %15
  %88 = load i32, i32* %2, align 4
  ret i32 %88
}

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @vkprintf(i32, i8*) #1

declare dso_local i32 @usage(...) #1

declare dso_local i32 @ini_set(i8*, i8*) #1

declare dso_local i8* @atoi(i8*) #1

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i32 @read_engine_tag(i8*) #1

declare dso_local i32 @read_tl_config(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
