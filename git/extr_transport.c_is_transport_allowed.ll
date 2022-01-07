; ModuleID = '/home/carl/AnghaBench/git/extr_transport.c_is_transport_allowed.c'
source_filename = "/home/carl/AnghaBench/git/extr_transport.c_is_transport_allowed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.string_list = type { i32 }

@.str = private unnamed_addr constant [23 x i8] c"GIT_PROTOCOL_FROM_USER\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"invalid protocol_allow_config type\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @is_transport_allowed(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.string_list*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = call %struct.string_list* (...) @protocol_whitelist()
  store %struct.string_list* %7, %struct.string_list** %6, align 8
  %8 = load %struct.string_list*, %struct.string_list** %6, align 8
  %9 = icmp ne %struct.string_list* %8, null
  br i1 %9, label %10, label %14

10:                                               ; preds = %2
  %11 = load %struct.string_list*, %struct.string_list** %6, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = call i32 @string_list_has_string(%struct.string_list* %11, i8* %12)
  store i32 %13, i32* %3, align 4
  br label %28

14:                                               ; preds = %2
  %15 = load i8*, i8** %4, align 8
  %16 = call i32 @get_protocol_config(i8* %15)
  switch i32 %16, label %26 [
    i32 130, label %17
    i32 129, label %18
    i32 128, label %19
  ]

17:                                               ; preds = %14
  store i32 1, i32* %3, align 4
  br label %28

18:                                               ; preds = %14
  store i32 0, i32* %3, align 4
  br label %28

19:                                               ; preds = %14
  %20 = load i32, i32* %5, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %19
  %23 = call i32 @git_env_bool(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 1)
  store i32 %23, i32* %5, align 4
  br label %24

24:                                               ; preds = %22, %19
  %25 = load i32, i32* %5, align 4
  store i32 %25, i32* %3, align 4
  br label %28

26:                                               ; preds = %14
  %27 = call i32 @BUG(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  br label %28

28:                                               ; preds = %26, %24, %18, %17, %10
  %29 = load i32, i32* %3, align 4
  ret i32 %29
}

declare dso_local %struct.string_list* @protocol_whitelist(...) #1

declare dso_local i32 @string_list_has_string(%struct.string_list*, i8*) #1

declare dso_local i32 @get_protocol_config(i8*) #1

declare dso_local i32 @git_env_bool(i8*, i32) #1

declare dso_local i32 @BUG(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
