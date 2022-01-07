; ModuleID = '/home/carl/AnghaBench/jq/src/extr_jq_test.c_test_err_cb.c'
source_filename = "/home/carl/AnghaBench/jq/src/extr_jq_test.c_test_err_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.err_data = type { i32 }

@JV_KIND_STRING = common dso_local global i64 0, align 8
@JV_PRINT_INVALID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"jq: error\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @test_err_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_err_cb(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.err_data*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i8*, i8** %3, align 8
  %7 = bitcast i8* %6 to %struct.err_data*
  store %struct.err_data* %7, %struct.err_data** %5, align 8
  %8 = load i32, i32* %4, align 4
  %9 = call i64 @jv_get_kind(i32 %8)
  %10 = load i64, i64* @JV_KIND_STRING, align 8
  %11 = icmp ne i64 %9, %10
  br i1 %11, label %12, label %16

12:                                               ; preds = %2
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* @JV_PRINT_INVALID, align 4
  %15 = call i32 @jv_dump_string(i32 %13, i32 %14)
  store i32 %15, i32* %4, align 4
  br label %16

16:                                               ; preds = %12, %2
  %17 = load i32, i32* %4, align 4
  %18 = call i8* @jv_string_value(i32 %17)
  %19 = call i32 @strncmp(i8* %18, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 9)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %28, label %21

21:                                               ; preds = %16
  %22 = load %struct.err_data*, %struct.err_data** %5, align 8
  %23 = getelementptr inbounds %struct.err_data, %struct.err_data* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %4, align 4
  %26 = call i8* @jv_string_value(i32 %25)
  %27 = call i32 @snprintf(i32 %24, i32 4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %26)
  br label %28

28:                                               ; preds = %21, %16
  %29 = load %struct.err_data*, %struct.err_data** %5, align 8
  %30 = getelementptr inbounds %struct.err_data, %struct.err_data* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i8* @strchr(i32 %31, i8 signext 10)
  %33 = icmp ne i8* %32, null
  br i1 %33, label %34, label %39

34:                                               ; preds = %28
  %35 = load %struct.err_data*, %struct.err_data** %5, align 8
  %36 = getelementptr inbounds %struct.err_data, %struct.err_data* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i8* @strchr(i32 %37, i8 signext 10)
  store i8 0, i8* %38, align 1
  br label %39

39:                                               ; preds = %34, %28
  %40 = load i32, i32* %4, align 4
  %41 = call i32 @jv_free(i32 %40)
  ret void
}

declare dso_local i64 @jv_get_kind(i32) #1

declare dso_local i32 @jv_dump_string(i32, i32) #1

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

declare dso_local i8* @jv_string_value(i32) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i8*) #1

declare dso_local i8* @strchr(i32, i8 signext) #1

declare dso_local i32 @jv_free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
