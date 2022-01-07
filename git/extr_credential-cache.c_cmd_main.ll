; ModuleID = '/home/carl/AnghaBench/git/extr_credential-cache.c_cmd_main.c'
source_filename = "/home/carl/AnghaBench/git/extr_credential-cache.c_cmd_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.option = type { i32 }

@.str = private unnamed_addr constant [42 x i8] c"git credential-cache [<options>] <action>\00", align 1
@__const.cmd_main.usage = private unnamed_addr constant [2 x i8*] [i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i32 0, i32 0), i8* null], align 16
@.str.1 = private unnamed_addr constant [8 x i8] c"timeout\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"number of seconds to cache credentials\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"socket\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"path\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"path of cache-daemon socket\00", align 1
@.str.6 = private unnamed_addr constant [52 x i8] c"unable to find a suitable socket path; use --socket\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"exit\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"get\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"erase\00", align 1
@FLAG_RELAY = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [6 x i8] c"store\00", align 1
@FLAG_SPAWN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cmd_main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca [2 x i8*], align 16
  %9 = alloca [3 x %struct.option], align 4
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  store i8* null, i8** %5, align 8
  store i32 900, i32* %6, align 4
  %10 = bitcast [2 x i8*]* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %10, i8* align 16 bitcast ([2 x i8*]* @__const.cmd_main.usage to i8*), i64 16, i1 false)
  %11 = getelementptr inbounds [3 x %struct.option], [3 x %struct.option]* %9, i64 0, i64 0
  %12 = call i32 @OPT_INTEGER(i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32* %6, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0))
  %13 = getelementptr inbounds %struct.option, %struct.option* %11, i32 0, i32 0
  store i32 %12, i32* %13, align 4
  %14 = getelementptr inbounds %struct.option, %struct.option* %11, i64 1
  %15 = call i32 @OPT_STRING(i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8** %5, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0))
  %16 = getelementptr inbounds %struct.option, %struct.option* %14, i32 0, i32 0
  store i32 %15, i32* %16, align 4
  %17 = getelementptr inbounds %struct.option, %struct.option* %14, i64 1
  %18 = call i32 (...) @OPT_END()
  %19 = getelementptr inbounds %struct.option, %struct.option* %17, i32 0, i32 0
  store i32 %18, i32* %19, align 4
  %20 = load i32, i32* %3, align 4
  %21 = load i8**, i8*** %4, align 8
  %22 = getelementptr inbounds [3 x %struct.option], [3 x %struct.option]* %9, i64 0, i64 0
  %23 = getelementptr inbounds [2 x i8*], [2 x i8*]* %8, i64 0, i64 0
  %24 = call i32 @parse_options(i32 %20, i8** %21, i32* null, %struct.option* %22, i8** %23, i32 0)
  store i32 %24, i32* %3, align 4
  %25 = load i32, i32* %3, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %2
  %28 = getelementptr inbounds [2 x i8*], [2 x i8*]* %8, i64 0, i64 0
  %29 = getelementptr inbounds [3 x %struct.option], [3 x %struct.option]* %9, i64 0, i64 0
  %30 = call i32 @usage_with_options(i8** %28, %struct.option* %29)
  br label %31

31:                                               ; preds = %27, %2
  %32 = load i8**, i8*** %4, align 8
  %33 = getelementptr inbounds i8*, i8** %32, i64 0
  %34 = load i8*, i8** %33, align 8
  store i8* %34, i8** %7, align 8
  %35 = load i8*, i8** %5, align 8
  %36 = icmp ne i8* %35, null
  br i1 %36, label %39, label %37

37:                                               ; preds = %31
  %38 = call i8* (...) @get_socket_path()
  store i8* %38, i8** %5, align 8
  br label %39

39:                                               ; preds = %37, %31
  %40 = load i8*, i8** %5, align 8
  %41 = icmp ne i8* %40, null
  br i1 %41, label %44, label %42

42:                                               ; preds = %39
  %43 = call i32 @die(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.6, i64 0, i64 0))
  br label %44

44:                                               ; preds = %42, %39
  %45 = load i8*, i8** %7, align 8
  %46 = call i32 @strcmp(i8* %45, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0))
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %53, label %48

48:                                               ; preds = %44
  %49 = load i8*, i8** %5, align 8
  %50 = load i8*, i8** %7, align 8
  %51 = load i32, i32* %6, align 4
  %52 = call i32 @do_cache(i8* %49, i8* %50, i32 %51, i32 0)
  br label %82

53:                                               ; preds = %44
  %54 = load i8*, i8** %7, align 8
  %55 = call i32 @strcmp(i8* %54, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0))
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %53
  %58 = load i8*, i8** %7, align 8
  %59 = call i32 @strcmp(i8* %58, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0))
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %67, label %61

61:                                               ; preds = %57, %53
  %62 = load i8*, i8** %5, align 8
  %63 = load i8*, i8** %7, align 8
  %64 = load i32, i32* %6, align 4
  %65 = load i32, i32* @FLAG_RELAY, align 4
  %66 = call i32 @do_cache(i8* %62, i8* %63, i32 %64, i32 %65)
  br label %81

67:                                               ; preds = %57
  %68 = load i8*, i8** %7, align 8
  %69 = call i32 @strcmp(i8* %68, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0))
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %79, label %71

71:                                               ; preds = %67
  %72 = load i8*, i8** %5, align 8
  %73 = load i8*, i8** %7, align 8
  %74 = load i32, i32* %6, align 4
  %75 = load i32, i32* @FLAG_RELAY, align 4
  %76 = load i32, i32* @FLAG_SPAWN, align 4
  %77 = or i32 %75, %76
  %78 = call i32 @do_cache(i8* %72, i8* %73, i32 %74, i32 %77)
  br label %80

79:                                               ; preds = %67
  br label %80

80:                                               ; preds = %79, %71
  br label %81

81:                                               ; preds = %80, %61
  br label %82

82:                                               ; preds = %81, %48
  ret i32 0
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @OPT_INTEGER(i32, i8*, i32*, i8*) #2

declare dso_local i32 @OPT_STRING(i32, i8*, i8**, i8*, i8*) #2

declare dso_local i32 @OPT_END(...) #2

declare dso_local i32 @parse_options(i32, i8**, i32*, %struct.option*, i8**, i32) #2

declare dso_local i32 @usage_with_options(i8**, %struct.option*) #2

declare dso_local i8* @get_socket_path(...) #2

declare dso_local i32 @die(i8*) #2

declare dso_local i32 @strcmp(i8*, i8*) #2

declare dso_local i32 @do_cache(i8*, i8*, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
