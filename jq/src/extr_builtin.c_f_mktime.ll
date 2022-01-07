; ModuleID = '/home/carl/AnghaBench/jq/src/extr_builtin.c_f_mktime.c'
source_filename = "/home/carl/AnghaBench/jq/src/extr_builtin.c_f_mktime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tm = type { i32 }

@JV_KIND_ARRAY = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [29 x i8] c"mktime requires array inputs\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"mktime requires parsed datetime inputs\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"invalid gmtime representation\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"mktime not supported on this platform\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @f_mktime to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @f_mktime(i32* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.tm, align 4
  %7 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = call i64 @jv_get_kind(i32 %8)
  %10 = load i64, i64* @JV_KIND_ARRAY, align 8
  %11 = icmp ne i64 %9, %10
  br i1 %11, label %12, label %16

12:                                               ; preds = %2
  %13 = load i32, i32* %5, align 4
  %14 = call i32 @jv_string(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %15 = call i32 @ret_error(i32 %13, i32 %14)
  store i32 %15, i32* %3, align 4
  br label %48

16:                                               ; preds = %2
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @jv_copy(i32 %17)
  %19 = call i32 @jv_array_length(i32 %18)
  %20 = icmp slt i32 %19, 6
  br i1 %20, label %21, label %25

21:                                               ; preds = %16
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @jv_string(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  %24 = call i32 @ret_error(i32 %22, i32 %23)
  store i32 %24, i32* %3, align 4
  br label %48

25:                                               ; preds = %16
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @jv2tm(i32 %26, %struct.tm* %6)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %25
  %30 = call i32 @jv_string(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  %31 = call i32 @jv_invalid_with_msg(i32 %30)
  store i32 %31, i32* %3, align 4
  br label %48

32:                                               ; preds = %25
  %33 = call i64 @my_mktime(%struct.tm* %6)
  store i64 %33, i64* %7, align 8
  %34 = load i64, i64* %7, align 8
  %35 = icmp eq i64 %34, -1
  br i1 %35, label %36, label %39

36:                                               ; preds = %32
  %37 = call i32 @jv_string(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  %38 = call i32 @jv_invalid_with_msg(i32 %37)
  store i32 %38, i32* %3, align 4
  br label %48

39:                                               ; preds = %32
  %40 = load i64, i64* %7, align 8
  %41 = icmp eq i64 %40, -2
  br i1 %41, label %42, label %45

42:                                               ; preds = %39
  %43 = call i32 @jv_string(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0))
  %44 = call i32 @jv_invalid_with_msg(i32 %43)
  store i32 %44, i32* %3, align 4
  br label %48

45:                                               ; preds = %39
  %46 = load i64, i64* %7, align 8
  %47 = call i32 @jv_number(i64 %46)
  store i32 %47, i32* %3, align 4
  br label %48

48:                                               ; preds = %45, %42, %36, %29, %21, %12
  %49 = load i32, i32* %3, align 4
  ret i32 %49
}

declare dso_local i64 @jv_get_kind(i32) #1

declare dso_local i32 @ret_error(i32, i32) #1

declare dso_local i32 @jv_string(i8*) #1

declare dso_local i32 @jv_array_length(i32) #1

declare dso_local i32 @jv_copy(i32) #1

declare dso_local i32 @jv2tm(i32, %struct.tm*) #1

declare dso_local i32 @jv_invalid_with_msg(i32) #1

declare dso_local i64 @my_mktime(%struct.tm*) #1

declare dso_local i32 @jv_number(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
