; ModuleID = '/home/carl/AnghaBench/git/extr_parse-options.c_parse_options_start_1.c'
source_filename = "/home/carl/AnghaBench/git/extr_parse-options.c_parse_options_start_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.parse_opt_ctx_t = type { i32, i8**, i32, i8**, i8*, i32, i32 }
%struct.option = type { i32 }

@PARSE_OPT_ONE_SHOT = common dso_local global i32 0, align 4
@PARSE_OPT_KEEP_ARGV0 = common dso_local global i32 0, align 4
@PARSE_OPT_KEEP_UNKNOWN = common dso_local global i32 0, align 4
@PARSE_OPT_STOP_AT_NON_OPTION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"STOP_AT_NON_OPTION and KEEP_UNKNOWN don't go together\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"Can't keep argv0 if you don't have it\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.parse_opt_ctx_t*, i32, i8**, i8*, %struct.option*, i32)* @parse_options_start_1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parse_options_start_1(%struct.parse_opt_ctx_t* %0, i32 %1, i8** %2, i8* %3, %struct.option* %4, i32 %5) #0 {
  %7 = alloca %struct.parse_opt_ctx_t*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8**, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.option*, align 8
  %12 = alloca i32, align 4
  store %struct.parse_opt_ctx_t* %0, %struct.parse_opt_ctx_t** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8** %2, i8*** %9, align 8
  store i8* %3, i8** %10, align 8
  store %struct.option* %4, %struct.option** %11, align 8
  store i32 %5, i32* %12, align 4
  %13 = load i32, i32* %8, align 4
  %14 = load %struct.parse_opt_ctx_t*, %struct.parse_opt_ctx_t** %7, align 8
  %15 = getelementptr inbounds %struct.parse_opt_ctx_t, %struct.parse_opt_ctx_t* %14, i32 0, i32 0
  store i32 %13, i32* %15, align 8
  %16 = load i8**, i8*** %9, align 8
  %17 = load %struct.parse_opt_ctx_t*, %struct.parse_opt_ctx_t** %7, align 8
  %18 = getelementptr inbounds %struct.parse_opt_ctx_t, %struct.parse_opt_ctx_t* %17, i32 0, i32 1
  store i8** %16, i8*** %18, align 8
  %19 = load i32, i32* %12, align 4
  %20 = load i32, i32* @PARSE_OPT_ONE_SHOT, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %32, label %23

23:                                               ; preds = %6
  %24 = load %struct.parse_opt_ctx_t*, %struct.parse_opt_ctx_t** %7, align 8
  %25 = getelementptr inbounds %struct.parse_opt_ctx_t, %struct.parse_opt_ctx_t* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = add nsw i32 %26, -1
  store i32 %27, i32* %25, align 8
  %28 = load %struct.parse_opt_ctx_t*, %struct.parse_opt_ctx_t** %7, align 8
  %29 = getelementptr inbounds %struct.parse_opt_ctx_t, %struct.parse_opt_ctx_t* %28, i32 0, i32 1
  %30 = load i8**, i8*** %29, align 8
  %31 = getelementptr inbounds i8*, i8** %30, i32 1
  store i8** %31, i8*** %29, align 8
  br label %32

32:                                               ; preds = %23, %6
  %33 = load %struct.parse_opt_ctx_t*, %struct.parse_opt_ctx_t** %7, align 8
  %34 = getelementptr inbounds %struct.parse_opt_ctx_t, %struct.parse_opt_ctx_t* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.parse_opt_ctx_t*, %struct.parse_opt_ctx_t** %7, align 8
  %37 = getelementptr inbounds %struct.parse_opt_ctx_t, %struct.parse_opt_ctx_t* %36, i32 0, i32 2
  store i32 %35, i32* %37, align 8
  %38 = load i8**, i8*** %9, align 8
  %39 = load %struct.parse_opt_ctx_t*, %struct.parse_opt_ctx_t** %7, align 8
  %40 = getelementptr inbounds %struct.parse_opt_ctx_t, %struct.parse_opt_ctx_t* %39, i32 0, i32 3
  store i8** %38, i8*** %40, align 8
  %41 = load i8*, i8** %10, align 8
  %42 = load %struct.parse_opt_ctx_t*, %struct.parse_opt_ctx_t** %7, align 8
  %43 = getelementptr inbounds %struct.parse_opt_ctx_t, %struct.parse_opt_ctx_t* %42, i32 0, i32 4
  store i8* %41, i8** %43, align 8
  %44 = load i32, i32* %12, align 4
  %45 = load i32, i32* @PARSE_OPT_KEEP_ARGV0, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  %48 = zext i1 %47 to i32
  %49 = load %struct.parse_opt_ctx_t*, %struct.parse_opt_ctx_t** %7, align 8
  %50 = getelementptr inbounds %struct.parse_opt_ctx_t, %struct.parse_opt_ctx_t* %49, i32 0, i32 5
  store i32 %48, i32* %50, align 8
  %51 = load i32, i32* %12, align 4
  %52 = load %struct.parse_opt_ctx_t*, %struct.parse_opt_ctx_t** %7, align 8
  %53 = getelementptr inbounds %struct.parse_opt_ctx_t, %struct.parse_opt_ctx_t* %52, i32 0, i32 6
  store i32 %51, i32* %53, align 4
  %54 = load i32, i32* %12, align 4
  %55 = load i32, i32* @PARSE_OPT_KEEP_UNKNOWN, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %70

58:                                               ; preds = %32
  %59 = load i32, i32* %12, align 4
  %60 = load i32, i32* @PARSE_OPT_STOP_AT_NON_OPTION, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %70

63:                                               ; preds = %58
  %64 = load i32, i32* %12, align 4
  %65 = load i32, i32* @PARSE_OPT_ONE_SHOT, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %70, label %68

68:                                               ; preds = %63
  %69 = call i32 @BUG(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0))
  br label %70

70:                                               ; preds = %68, %63, %58, %32
  %71 = load i32, i32* %12, align 4
  %72 = load i32, i32* @PARSE_OPT_ONE_SHOT, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %82

75:                                               ; preds = %70
  %76 = load i32, i32* %12, align 4
  %77 = load i32, i32* @PARSE_OPT_KEEP_ARGV0, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %75
  %81 = call i32 @BUG(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  br label %82

82:                                               ; preds = %80, %75, %70
  %83 = load %struct.option*, %struct.option** %11, align 8
  %84 = call i32 @parse_options_check(%struct.option* %83)
  ret void
}

declare dso_local i32 @BUG(i8*) #1

declare dso_local i32 @parse_options_check(%struct.option*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
