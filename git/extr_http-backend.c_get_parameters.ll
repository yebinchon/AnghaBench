; ModuleID = '/home/carl/AnghaBench/git/extr_http-backend.c_get_parameters.c'
source_filename = "/home/carl/AnghaBench/git/extr_http-backend.c_get_parameters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.string_list = type { i32 }
%struct.string_list_item = type { i8* }

@query_params = common dso_local global %struct.string_list* null, align 8
@.str = private unnamed_addr constant [13 x i8] c"QUERY_STRING\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.string_list* ()* @get_parameters to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.string_list* @get_parameters() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.string_list_item*, align 8
  %5 = load %struct.string_list*, %struct.string_list** @query_params, align 8
  %6 = icmp ne %struct.string_list* %5, null
  br i1 %6, label %42, label %7

7:                                                ; preds = %0
  %8 = call i8* @getenv(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  store i8* %8, i8** %1, align 8
  %9 = call %struct.string_list* @xcalloc(i32 1, i32 4)
  store %struct.string_list* %9, %struct.string_list** @query_params, align 8
  br label %10

10:                                               ; preds = %37, %7
  %11 = load i8*, i8** %1, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %13, label %18

13:                                               ; preds = %10
  %14 = load i8*, i8** %1, align 8
  %15 = load i8, i8* %14, align 1
  %16 = sext i8 %15 to i32
  %17 = icmp ne i32 %16, 0
  br label %18

18:                                               ; preds = %13, %10
  %19 = phi i1 [ false, %10 ], [ %17, %13 ]
  br i1 %19, label %20, label %41

20:                                               ; preds = %18
  %21 = call i8* @url_decode_parameter_name(i8** %1)
  store i8* %21, i8** %2, align 8
  %22 = call i8* @url_decode_parameter_value(i8** %1)
  store i8* %22, i8** %3, align 8
  %23 = load %struct.string_list*, %struct.string_list** @query_params, align 8
  %24 = load i8*, i8** %2, align 8
  %25 = call %struct.string_list_item* @string_list_lookup(%struct.string_list* %23, i8* %24)
  store %struct.string_list_item* %25, %struct.string_list_item** %4, align 8
  %26 = load %struct.string_list_item*, %struct.string_list_item** %4, align 8
  %27 = icmp ne %struct.string_list_item* %26, null
  br i1 %27, label %32, label %28

28:                                               ; preds = %20
  %29 = load %struct.string_list*, %struct.string_list** @query_params, align 8
  %30 = load i8*, i8** %2, align 8
  %31 = call %struct.string_list_item* @string_list_insert(%struct.string_list* %29, i8* %30)
  store %struct.string_list_item* %31, %struct.string_list_item** %4, align 8
  br label %37

32:                                               ; preds = %20
  %33 = load %struct.string_list_item*, %struct.string_list_item** %4, align 8
  %34 = getelementptr inbounds %struct.string_list_item, %struct.string_list_item* %33, i32 0, i32 0
  %35 = load i8*, i8** %34, align 8
  %36 = call i32 @free(i8* %35)
  br label %37

37:                                               ; preds = %32, %28
  %38 = load i8*, i8** %3, align 8
  %39 = load %struct.string_list_item*, %struct.string_list_item** %4, align 8
  %40 = getelementptr inbounds %struct.string_list_item, %struct.string_list_item* %39, i32 0, i32 0
  store i8* %38, i8** %40, align 8
  br label %10

41:                                               ; preds = %18
  br label %42

42:                                               ; preds = %41, %0
  %43 = load %struct.string_list*, %struct.string_list** @query_params, align 8
  ret %struct.string_list* %43
}

declare dso_local i8* @getenv(i8*) #1

declare dso_local %struct.string_list* @xcalloc(i32, i32) #1

declare dso_local i8* @url_decode_parameter_name(i8**) #1

declare dso_local i8* @url_decode_parameter_value(i8**) #1

declare dso_local %struct.string_list_item* @string_list_lookup(%struct.string_list*, i8*) #1

declare dso_local %struct.string_list_item* @string_list_insert(%struct.string_list*, i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
