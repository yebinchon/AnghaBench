; ModuleID = '/home/carl/AnghaBench/git/extr_parse-options.c_opt_command_mode_error.c'
source_filename = "/home/carl/AnghaBench/git/extr_parse-options.c_opt_command_mode_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i8* }
%struct.option = type { i64, i64, i32, i64, i64 }

@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 8
@OPTION_END = common dso_local global i64 0, align 8
@OPTION_CMDMODE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [5 x i8] c"--%s\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"-%c\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"%s is incompatible with %s\00", align 1
@PARSE_OPT_ERROR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [38 x i8] c"%s : incompatible with something else\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.option*, %struct.option*, i32)* @opt_command_mode_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @opt_command_mode_error(%struct.option* %0, %struct.option* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.option*, align 8
  %6 = alloca %struct.option*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.option*, align 8
  %9 = alloca %struct.strbuf, align 8
  store %struct.option* %0, %struct.option** %5, align 8
  store %struct.option* %1, %struct.option** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = bitcast %struct.strbuf* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %10, i8* align 8 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 8, i1 false)
  %11 = load %struct.option*, %struct.option** %6, align 8
  store %struct.option* %11, %struct.option** %8, align 8
  br label %12

12:                                               ; preds = %72, %3
  %13 = load %struct.option*, %struct.option** %8, align 8
  %14 = getelementptr inbounds %struct.option, %struct.option* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @OPTION_END, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %75

18:                                               ; preds = %12
  %19 = load %struct.option*, %struct.option** %8, align 8
  %20 = load %struct.option*, %struct.option** %5, align 8
  %21 = icmp eq %struct.option* %19, %20
  br i1 %21, label %46, label %22

22:                                               ; preds = %18
  %23 = load %struct.option*, %struct.option** %8, align 8
  %24 = getelementptr inbounds %struct.option, %struct.option* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @OPTION_CMDMODE, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %46, label %28

28:                                               ; preds = %22
  %29 = load %struct.option*, %struct.option** %8, align 8
  %30 = getelementptr inbounds %struct.option, %struct.option* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.option*, %struct.option** %5, align 8
  %33 = getelementptr inbounds %struct.option, %struct.option* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %31, %34
  br i1 %35, label %46, label %36

36:                                               ; preds = %28
  %37 = load %struct.option*, %struct.option** %8, align 8
  %38 = getelementptr inbounds %struct.option, %struct.option* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.option*, %struct.option** %5, align 8
  %41 = getelementptr inbounds %struct.option, %struct.option* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = inttoptr i64 %42 to i32*
  %44 = load i32, i32* %43, align 4
  %45 = icmp ne i32 %39, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %36, %28, %22, %18
  br label %72

47:                                               ; preds = %36
  %48 = load %struct.option*, %struct.option** %8, align 8
  %49 = getelementptr inbounds %struct.option, %struct.option* %48, i32 0, i32 4
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %47
  %53 = load %struct.option*, %struct.option** %8, align 8
  %54 = getelementptr inbounds %struct.option, %struct.option* %53, i32 0, i32 4
  %55 = load i64, i64* %54, align 8
  %56 = call i32 @strbuf_addf(%struct.strbuf* %9, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i64 %55)
  br label %62

57:                                               ; preds = %47
  %58 = load %struct.option*, %struct.option** %8, align 8
  %59 = getelementptr inbounds %struct.option, %struct.option* %58, i32 0, i32 3
  %60 = load i64, i64* %59, align 8
  %61 = call i32 @strbuf_addf(%struct.strbuf* %9, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i64 %60)
  br label %62

62:                                               ; preds = %57, %52
  %63 = call i32 @_(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  %64 = load %struct.option*, %struct.option** %5, align 8
  %65 = load i32, i32* %7, align 4
  %66 = call i32 @optname(%struct.option* %64, i32 %65)
  %67 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %9, i32 0, i32 0
  %68 = load i8*, i8** %67, align 8
  %69 = call i32 (i32, i32, ...) @error(i32 %63, i32 %66, i8* %68)
  %70 = call i32 @strbuf_release(%struct.strbuf* %9)
  %71 = load i32, i32* @PARSE_OPT_ERROR, align 4
  store i32 %71, i32* %4, align 4
  br label %81

72:                                               ; preds = %46
  %73 = load %struct.option*, %struct.option** %8, align 8
  %74 = getelementptr inbounds %struct.option, %struct.option* %73, i32 1
  store %struct.option* %74, %struct.option** %8, align 8
  br label %12

75:                                               ; preds = %12
  %76 = call i32 @_(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0))
  %77 = load %struct.option*, %struct.option** %5, align 8
  %78 = load i32, i32* %7, align 4
  %79 = call i32 @optname(%struct.option* %77, i32 %78)
  %80 = call i32 (i32, i32, ...) @error(i32 %76, i32 %79)
  store i32 %80, i32* %4, align 4
  br label %81

81:                                               ; preds = %75, %62
  %82 = load i32, i32* %4, align 4
  ret i32 %82
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @strbuf_addf(%struct.strbuf*, i8*, i64) #2

declare dso_local i32 @error(i32, i32, ...) #2

declare dso_local i32 @_(i8*) #2

declare dso_local i32 @optname(%struct.option*, i32) #2

declare dso_local i32 @strbuf_release(%struct.strbuf*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
