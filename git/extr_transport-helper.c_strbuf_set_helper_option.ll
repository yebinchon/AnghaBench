; ModuleID = '/home/carl/AnghaBench/git/extr_transport-helper.c_strbuf_set_helper_option.c'
source_filename = "/home/carl/AnghaBench/git/extr_transport-helper.c_strbuf_set_helper_option.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.helper_data = type { i32 }
%struct.strbuf = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c"ok\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"error\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"unsupported\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"%s unexpectedly said: '%s'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.helper_data*, %struct.strbuf*)* @strbuf_set_helper_option to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @strbuf_set_helper_option(%struct.helper_data* %0, %struct.strbuf* %1) #0 {
  %3 = alloca %struct.helper_data*, align 8
  %4 = alloca %struct.strbuf*, align 8
  %5 = alloca i32, align 4
  store %struct.helper_data* %0, %struct.helper_data** %3, align 8
  store %struct.strbuf* %1, %struct.strbuf** %4, align 8
  %6 = load %struct.helper_data*, %struct.helper_data** %3, align 8
  %7 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %8 = call i32 @sendline(%struct.helper_data* %6, %struct.strbuf* %7)
  %9 = load %struct.helper_data*, %struct.helper_data** %3, align 8
  %10 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %11 = call i64 @recvline(%struct.helper_data* %9, %struct.strbuf* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = call i32 @exit(i32 128) #3
  unreachable

15:                                               ; preds = %2
  %16 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %17 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @strcmp(i32 %18, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %15
  store i32 0, i32* %5, align 4
  br label %47

22:                                               ; preds = %15
  %23 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %24 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i64 @starts_with(i32 %25, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %22
  store i32 -1, i32* %5, align 4
  br label %46

29:                                               ; preds = %22
  %30 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %31 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @strcmp(i32 %32, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %29
  store i32 1, i32* %5, align 4
  br label %45

36:                                               ; preds = %29
  %37 = call i32 @_(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  %38 = load %struct.helper_data*, %struct.helper_data** %3, align 8
  %39 = getelementptr inbounds %struct.helper_data, %struct.helper_data* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %42 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @warning(i32 %37, i32 %40, i32 %43)
  store i32 1, i32* %5, align 4
  br label %45

45:                                               ; preds = %36, %35
  br label %46

46:                                               ; preds = %45, %28
  br label %47

47:                                               ; preds = %46, %21
  %48 = load i32, i32* %5, align 4
  ret i32 %48
}

declare dso_local i32 @sendline(%struct.helper_data*, %struct.strbuf*) #1

declare dso_local i64 @recvline(%struct.helper_data*, %struct.strbuf*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @strcmp(i32, i8*) #1

declare dso_local i64 @starts_with(i32, i8*) #1

declare dso_local i32 @warning(i32, i32, i32) #1

declare dso_local i32 @_(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
