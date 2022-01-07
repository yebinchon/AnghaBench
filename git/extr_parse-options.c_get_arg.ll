; ModuleID = '/home/carl/AnghaBench/git/extr_parse-options.c_get_arg.c'
source_filename = "/home/carl/AnghaBench/git/extr_parse-options.c_get_arg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.parse_opt_ctx_t = type { i8*, i32, i8** }
%struct.option = type { i32, i64 }

@PARSE_OPT_LASTARG_DEFAULT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"%s requires a value\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.parse_opt_ctx_t*, %struct.option*, i32, i8**)* @get_arg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_arg(%struct.parse_opt_ctx_t* %0, %struct.option* %1, i32 %2, i8** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.parse_opt_ctx_t*, align 8
  %7 = alloca %struct.option*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8**, align 8
  store %struct.parse_opt_ctx_t* %0, %struct.parse_opt_ctx_t** %6, align 8
  store %struct.option* %1, %struct.option** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8** %3, i8*** %9, align 8
  %10 = load %struct.parse_opt_ctx_t*, %struct.parse_opt_ctx_t** %6, align 8
  %11 = getelementptr inbounds %struct.parse_opt_ctx_t, %struct.parse_opt_ctx_t* %10, i32 0, i32 0
  %12 = load i8*, i8** %11, align 8
  %13 = icmp ne i8* %12, null
  br i1 %13, label %14, label %21

14:                                               ; preds = %4
  %15 = load %struct.parse_opt_ctx_t*, %struct.parse_opt_ctx_t** %6, align 8
  %16 = getelementptr inbounds %struct.parse_opt_ctx_t, %struct.parse_opt_ctx_t* %15, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  %18 = load i8**, i8*** %9, align 8
  store i8* %17, i8** %18, align 8
  %19 = load %struct.parse_opt_ctx_t*, %struct.parse_opt_ctx_t** %6, align 8
  %20 = getelementptr inbounds %struct.parse_opt_ctx_t, %struct.parse_opt_ctx_t* %19, i32 0, i32 0
  store i8* null, i8** %20, align 8
  br label %63

21:                                               ; preds = %4
  %22 = load %struct.parse_opt_ctx_t*, %struct.parse_opt_ctx_t** %6, align 8
  %23 = getelementptr inbounds %struct.parse_opt_ctx_t, %struct.parse_opt_ctx_t* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = icmp eq i32 %24, 1
  br i1 %25, label %26, label %39

26:                                               ; preds = %21
  %27 = load %struct.option*, %struct.option** %7, align 8
  %28 = getelementptr inbounds %struct.option, %struct.option* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @PARSE_OPT_LASTARG_DEFAULT, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %26
  %34 = load %struct.option*, %struct.option** %7, align 8
  %35 = getelementptr inbounds %struct.option, %struct.option* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = inttoptr i64 %36 to i8*
  %38 = load i8**, i8*** %9, align 8
  store i8* %37, i8** %38, align 8
  br label %62

39:                                               ; preds = %26, %21
  %40 = load %struct.parse_opt_ctx_t*, %struct.parse_opt_ctx_t** %6, align 8
  %41 = getelementptr inbounds %struct.parse_opt_ctx_t, %struct.parse_opt_ctx_t* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = icmp sgt i32 %42, 1
  br i1 %43, label %44, label %55

44:                                               ; preds = %39
  %45 = load %struct.parse_opt_ctx_t*, %struct.parse_opt_ctx_t** %6, align 8
  %46 = getelementptr inbounds %struct.parse_opt_ctx_t, %struct.parse_opt_ctx_t* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = add nsw i32 %47, -1
  store i32 %48, i32* %46, align 8
  %49 = load %struct.parse_opt_ctx_t*, %struct.parse_opt_ctx_t** %6, align 8
  %50 = getelementptr inbounds %struct.parse_opt_ctx_t, %struct.parse_opt_ctx_t* %49, i32 0, i32 2
  %51 = load i8**, i8*** %50, align 8
  %52 = getelementptr inbounds i8*, i8** %51, i32 1
  store i8** %52, i8*** %50, align 8
  %53 = load i8*, i8** %52, align 8
  %54 = load i8**, i8*** %9, align 8
  store i8* %53, i8** %54, align 8
  br label %61

55:                                               ; preds = %39
  %56 = call i32 @_(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %57 = load %struct.option*, %struct.option** %7, align 8
  %58 = load i32, i32* %8, align 4
  %59 = call i32 @optname(%struct.option* %57, i32 %58)
  %60 = call i32 @error(i32 %56, i32 %59)
  store i32 %60, i32* %5, align 4
  br label %64

61:                                               ; preds = %44
  br label %62

62:                                               ; preds = %61, %33
  br label %63

63:                                               ; preds = %62, %14
  store i32 0, i32* %5, align 4
  br label %64

64:                                               ; preds = %63, %55
  %65 = load i32, i32* %5, align 4
  ret i32 %65
}

declare dso_local i32 @error(i32, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @optname(%struct.option*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
