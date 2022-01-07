; ModuleID = '/home/carl/AnghaBench/git/extr_parse-options.c_parse_nodash_opt.c'
source_filename = "/home/carl/AnghaBench/git/extr_parse-options.c_parse_nodash_opt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.parse_opt_ctx_t = type { i32 }
%struct.option = type { i64, i32, i8 }

@OPTION_END = common dso_local global i64 0, align 8
@PARSE_OPT_NODASH = common dso_local global i32 0, align 4
@OPT_SHORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.parse_opt_ctx_t*, i8*, %struct.option*)* @parse_nodash_opt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_nodash_opt(%struct.parse_opt_ctx_t* %0, i8* %1, %struct.option* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.parse_opt_ctx_t*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.option*, align 8
  %8 = alloca %struct.option*, align 8
  store %struct.parse_opt_ctx_t* %0, %struct.parse_opt_ctx_t** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.option* %2, %struct.option** %7, align 8
  %9 = load %struct.option*, %struct.option** %7, align 8
  store %struct.option* %9, %struct.option** %8, align 8
  br label %10

10:                                               ; preds = %47, %3
  %11 = load %struct.option*, %struct.option** %7, align 8
  %12 = getelementptr inbounds %struct.option, %struct.option* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @OPTION_END, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %50

16:                                               ; preds = %10
  %17 = load %struct.option*, %struct.option** %7, align 8
  %18 = getelementptr inbounds %struct.option, %struct.option* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @PARSE_OPT_NODASH, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %16
  br label %47

24:                                               ; preds = %16
  %25 = load %struct.option*, %struct.option** %7, align 8
  %26 = getelementptr inbounds %struct.option, %struct.option* %25, i32 0, i32 2
  %27 = load i8, i8* %26, align 4
  %28 = sext i8 %27 to i32
  %29 = load i8*, i8** %6, align 8
  %30 = getelementptr inbounds i8, i8* %29, i64 0
  %31 = load i8, i8* %30, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp eq i32 %28, %32
  br i1 %33, label %34, label %46

34:                                               ; preds = %24
  %35 = load i8*, i8** %6, align 8
  %36 = getelementptr inbounds i8, i8* %35, i64 1
  %37 = load i8, i8* %36, align 1
  %38 = sext i8 %37 to i32
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %34
  %41 = load %struct.parse_opt_ctx_t*, %struct.parse_opt_ctx_t** %5, align 8
  %42 = load %struct.option*, %struct.option** %7, align 8
  %43 = load %struct.option*, %struct.option** %8, align 8
  %44 = load i32, i32* @OPT_SHORT, align 4
  %45 = call i32 @get_value(%struct.parse_opt_ctx_t* %41, %struct.option* %42, %struct.option* %43, i32 %44)
  store i32 %45, i32* %4, align 4
  br label %51

46:                                               ; preds = %34, %24
  br label %47

47:                                               ; preds = %46, %23
  %48 = load %struct.option*, %struct.option** %7, align 8
  %49 = getelementptr inbounds %struct.option, %struct.option* %48, i32 1
  store %struct.option* %49, %struct.option** %7, align 8
  br label %10

50:                                               ; preds = %10
  store i32 -2, i32* %4, align 4
  br label %51

51:                                               ; preds = %50, %40
  %52 = load i32, i32* %4, align 4
  ret i32 %52
}

declare dso_local i32 @get_value(%struct.parse_opt_ctx_t*, %struct.option*, %struct.option*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
