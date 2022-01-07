; ModuleID = '/home/carl/AnghaBench/jq/src/extr_util.c_get_home.c'
source_filename = "/home/carl/AnghaBench/jq/src/extr_util.c_get_home.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.passwd = type { i8* }

@.str = private unnamed_addr constant [5 x i8] c"HOME\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"Could not find home directory.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_home() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca %struct.passwd*, align 8
  %4 = call i8* @getenv(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i8* %4, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = icmp ne i8* %5, null
  br i1 %6, label %21, label %7

7:                                                ; preds = %0
  %8 = call i32 (...) @getuid()
  %9 = call %struct.passwd* @getpwuid(i32 %8)
  store %struct.passwd* %9, %struct.passwd** %3, align 8
  %10 = load %struct.passwd*, %struct.passwd** %3, align 8
  %11 = icmp ne %struct.passwd* %10, null
  br i1 %11, label %12, label %17

12:                                               ; preds = %7
  %13 = load %struct.passwd*, %struct.passwd** %3, align 8
  %14 = getelementptr inbounds %struct.passwd, %struct.passwd* %13, i32 0, i32 0
  %15 = load i8*, i8** %14, align 8
  %16 = call i32 @jv_string(i8* %15)
  store i32 %16, i32* %1, align 4
  br label %20

17:                                               ; preds = %7
  %18 = call i32 @jv_string(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %19 = call i32 @jv_invalid_with_msg(i32 %18)
  store i32 %19, i32* %1, align 4
  br label %20

20:                                               ; preds = %17, %12
  br label %24

21:                                               ; preds = %0
  %22 = load i8*, i8** %2, align 8
  %23 = call i32 @jv_string(i8* %22)
  store i32 %23, i32* %1, align 4
  br label %24

24:                                               ; preds = %21, %20
  %25 = load i32, i32* %1, align 4
  ret i32 %25
}

declare dso_local i8* @getenv(i8*) #1

declare dso_local %struct.passwd* @getpwuid(i32) #1

declare dso_local i32 @getuid(...) #1

declare dso_local i32 @jv_string(i8*) #1

declare dso_local i32 @jv_invalid_with_msg(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
