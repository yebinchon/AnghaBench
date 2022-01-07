; ModuleID = '/home/carl/AnghaBench/git/t/helper/extr_test-serve-v2.c_cmd__serve_v2.c'
source_filename = "/home/carl/AnghaBench/git/t/helper/extr_test-serve-v2.c_cmd__serve_v2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.serve_options = type { i32, i32 }
%struct.option = type { i32 }

@SERVE_OPTIONS_INIT = common dso_local global %struct.serve_options zeroinitializer, align 4
@.str = private unnamed_addr constant [14 x i8] c"stateless-rpc\00", align 1
@.str.1 = private unnamed_addr constant [46 x i8] c"quit after a single request/response exchange\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"advertise-capabilities\00", align 1
@.str.3 = private unnamed_addr constant [48 x i8] c"exit immediately after advertising capabilities\00", align 1
@serve_usage = common dso_local global i32 0, align 4
@PARSE_OPT_KEEP_DASHDASH = common dso_local global i32 0, align 4
@PARSE_OPT_KEEP_UNKNOWN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cmd__serve_v2(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca %struct.serve_options, align 4
  %6 = alloca [3 x %struct.option], align 4
  %7 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  %8 = bitcast %struct.serve_options* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %8, i8* align 4 bitcast (%struct.serve_options* @SERVE_OPTIONS_INIT to i8*), i64 8, i1 false)
  %9 = getelementptr inbounds [3 x %struct.option], [3 x %struct.option]* %6, i64 0, i64 0
  %10 = getelementptr inbounds %struct.serve_options, %struct.serve_options* %5, i32 0, i32 1
  %11 = call i32 @N_(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0))
  %12 = call i32 @OPT_BOOL(i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32* %10, i32 %11)
  %13 = getelementptr inbounds %struct.option, %struct.option* %9, i32 0, i32 0
  store i32 %12, i32* %13, align 4
  %14 = getelementptr inbounds %struct.option, %struct.option* %9, i64 1
  %15 = getelementptr inbounds %struct.serve_options, %struct.serve_options* %5, i32 0, i32 0
  %16 = call i32 @N_(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i64 0, i64 0))
  %17 = call i32 @OPT_BOOL(i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32* %15, i32 %16)
  %18 = getelementptr inbounds %struct.option, %struct.option* %14, i32 0, i32 0
  store i32 %17, i32* %18, align 4
  %19 = getelementptr inbounds %struct.option, %struct.option* %14, i64 1
  %20 = call i32 (...) @OPT_END()
  %21 = getelementptr inbounds %struct.option, %struct.option* %19, i32 0, i32 0
  store i32 %20, i32* %21, align 4
  %22 = call i8* (...) @setup_git_directory()
  store i8* %22, i8** %7, align 8
  %23 = load i32, i32* %3, align 4
  %24 = load i8**, i8*** %4, align 8
  %25 = load i8*, i8** %7, align 8
  %26 = getelementptr inbounds [3 x %struct.option], [3 x %struct.option]* %6, i64 0, i64 0
  %27 = load i32, i32* @serve_usage, align 4
  %28 = load i32, i32* @PARSE_OPT_KEEP_DASHDASH, align 4
  %29 = load i32, i32* @PARSE_OPT_KEEP_UNKNOWN, align 4
  %30 = or i32 %28, %29
  %31 = call i32 @parse_options(i32 %23, i8** %24, i8* %25, %struct.option* %26, i32 %27, i32 %30)
  store i32 %31, i32* %3, align 4
  %32 = call i32 @serve(%struct.serve_options* %5)
  ret i32 0
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @OPT_BOOL(i32, i8*, i32*, i32) #2

declare dso_local i32 @N_(i8*) #2

declare dso_local i32 @OPT_END(...) #2

declare dso_local i8* @setup_git_directory(...) #2

declare dso_local i32 @parse_options(i32, i8**, i8*, %struct.option*, i32, i32) #2

declare dso_local i32 @serve(%struct.serve_options*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
